.class public Lcom/android/systemui/BatteryMeterView;
.super Landroid/widget/LinearLayout;
.source "BatteryMeterView.java"

# interfaces
.implements Lcom/android/systemui/DemoMode;
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
.implements Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/BatteryMeterView$1;
    }
.end annotation


# instance fields
.field private final mBatteryChargingView:Landroid/widget/ImageView;

.field private mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private mBatteryDigitalView:Landroid/widget/FrameLayout;

.field private final mBatteryIconView:Landroid/widget/ImageView;

.field private mBatteryPercentView:Landroid/widget/TextView;

.field private mBatteryStyle:I

.field private mBatteryTextColors:[I

.field private mBatteryTextDigitView:Landroid/widget/TextView;

.field private mCharging:Z

.field private mDarkIntensity:F

.field private mDemoMode:Z

.field private mDisabled:Z

.field private mExtremePowerSave:Z

.field private mForceBatteryStyle:I

.field private mForceShowDigit:Z

.field private mForceShowPercent:Z

.field private mIconId:I

.field private mLevel:I

.field private mNotchEar:Z

.field private mPowerSave:Z

.field private mQuickCharging:Z

.field private mShowBatteryDigitFull:Z

.field private mTintArea:Landroid/graphics/Rect;

.field private mUpdateQuickChargingTask:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/BatteryMeterView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/BatteryMeterView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mUpdateQuickChargingTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 104
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/BatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/BatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 112
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    const/4 v2, 0x7

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryTextColors:[I

    .line 87
    const v2, 0x90a0006

    iput v2, p0, Lcom/android/systemui/BatteryMeterView;->mIconId:I

    .line 89
    iput v5, p0, Lcom/android/systemui/BatteryMeterView;->mForceBatteryStyle:I

    .line 91
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mTintArea:Landroid/graphics/Rect;

    .line 95
    iput-boolean v4, p0, Lcom/android/systemui/BatteryMeterView;->mQuickCharging:Z

    .line 98
    iput-boolean v4, p0, Lcom/android/systemui/BatteryMeterView;->mForceShowPercent:Z

    .line 99
    iput-boolean v4, p0, Lcom/android/systemui/BatteryMeterView;->mForceShowDigit:Z

    .line 100
    iput-boolean v4, p0, Lcom/android/systemui/BatteryMeterView;->mNotchEar:Z

    .line 101
    iput v4, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryStyle:I

    .line 544
    new-instance v2, Lcom/android/systemui/BatteryMeterView$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/BatteryMeterView$1;-><init>(Lcom/android/systemui/BatteryMeterView;)V

    iput-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mUpdateQuickChargingTask:Ljava/lang/Runnable;

    .line 114
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateResources()V

    .line 115
    invoke-virtual {p0, v4}, Lcom/android/systemui/BatteryMeterView;->setOrientation(I)V

    .line 116
    const v2, 0x800013

    invoke-virtual {p0, v2}, Lcom/android/systemui/BatteryMeterView;->setGravity(I)V

    .line 118
    new-instance v2, Lcom/android/systemui/util/DisableStateTracker;

    .line 119
    const/4 v3, 0x2

    .line 118
    invoke-direct {v2, v4, v3}, Lcom/android/systemui/util/DisableStateTracker;-><init>(II)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/BatteryMeterView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 121
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryChargingView:Landroid/widget/ImageView;

    .line 122
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 123
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryChargingView:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/BatteryMeterView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x9040020

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryDigitalView:Landroid/widget/FrameLayout;

    .line 126
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryDigitalView:Landroid/widget/FrameLayout;

    const v3, 0x91200b3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    .line 127
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryDigitalView:Landroid/widget/FrameLayout;

    const v3, 0x91200b4

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryTextDigitView:Landroid/widget/TextView;

    .line 128
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string/jumbo v3, "fonts/Mitype2018-battery.otf"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 129
    .local v1, "typeface":Landroid/graphics/Typeface;
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryTextDigitView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 130
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryDigitalView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v2}, Lcom/android/systemui/BatteryMeterView;->addView(Landroid/view/View;)V

    .line 133
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v5}, Lcom/android/systemui/BatteryMeterView;->onDarkChanged(Landroid/graphics/Rect;FI)V

    .line 111
    return-void
.end method

.method private getChangingIconId()I
    .locals 1

    .prologue
    .line 561
    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mQuickCharging:Z

    if-eqz v0, :cond_0

    .line 562
    const v0, 0x90203c4

    .line 561
    :goto_0
    return v0

    .line 563
    :cond_0
    const v0, 0x9020350

    goto :goto_0
.end method

.method private getDemoModeIcon(Landroid/widget/ImageView;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "view"    # Landroid/widget/ImageView;

    .prologue
    const/16 v2, 0x64

    .line 489
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mTintArea:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/BatteryMeterView;->mDarkIntensity:F

    invoke-static {v0, p1, v1}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcherHelper;->inDarkMode(Landroid/graphics/Rect;Landroid/view/View;F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/BatteryIcon;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/BatteryIcon;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/BatteryIcon;->getGraphicIconDarkMode(I)Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v0

    .line 489
    :goto_0
    return-object v0

    .line 491
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/BatteryIcon;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/BatteryIcon;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/BatteryIcon;->getGraphicIcon(I)Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v0

    goto :goto_0
.end method

.method private getIconId()I
    .locals 2

    .prologue
    .line 457
    iget-boolean v1, p0, Lcom/android/systemui/BatteryMeterView;->mCharging:Z

    if-eqz v1, :cond_0

    const v0, 0x90a0007

    .line 461
    .local v0, "iconId":I
    :goto_0
    return v0

    .line 458
    .end local v0    # "iconId":I
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/BatteryMeterView;->mPowerSave:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/BatteryMeterView;->mExtremePowerSave:Z

    if-eqz v1, :cond_2

    :cond_1
    const v0, 0x90a000c

    goto :goto_0

    .line 459
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/BatteryMeterView;->mForceShowDigit:Z

    if-eqz v1, :cond_3

    const v0, 0x90a000a

    goto :goto_0

    .line 460
    :cond_3
    const v0, 0x90a0006

    goto :goto_0
.end method

.method private loadPercentView()Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 280
    const v1, 0x9040022

    const/4 v2, 0x0

    .line 279
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private notifyChargingStateChanged(Z)V
    .locals 3
    .param p1, "charging"    # Z

    .prologue
    .line 521
    new-instance v0, Lcom/android/systemui/BatteryMeterView$2;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/BatteryMeterView$2;-><init>(Lcom/android/systemui/BatteryMeterView;Z)V

    .line 541
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 521
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/BatteryMeterView$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 520
    return-void
.end method

.method private scaleBatteryMeterViews()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 362
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 363
    .local v4, "res":Landroid/content/res/Resources;
    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    .line 365
    .local v6, "typedValue":Landroid/util/TypedValue;
    const v7, 0x90f009b

    const/4 v8, 0x1

    invoke-virtual {v4, v7, v6, v8}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 366
    invoke-virtual {v6}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    .line 370
    .local v2, "iconScaleFactor":F
    const v7, 0x90f0094

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 371
    .local v1, "batteryWidth":I
    const v7, 0x90f0095

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 372
    .local v0, "batteryHeight":I
    const v7, 0x90f0194

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 374
    .local v3, "marginBottom":I
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 375
    int-to-float v7, v1

    mul-float/2addr v7, v2

    float-to-int v7, v7

    int-to-float v8, v0

    mul-float/2addr v8, v2

    float-to-int v8, v8

    .line 374
    invoke-direct {v5, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 376
    .local v5, "scaledLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v5, v9, v9, v9, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 361
    return-void
.end method

.method private updateBatteryChargingIcon()V
    .locals 2

    .prologue
    .line 552
    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mQuickCharging:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mCharging:Z

    if-eqz v0, :cond_1

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryChargingView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->getChangingIconId()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/BatteryMeterView;->updateIcon(Landroid/widget/ImageView;I)V

    .line 554
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateChargingIconView()V

    .line 551
    :goto_0
    return-void

    .line 556
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryChargingView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateChargingIconView()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 335
    iget-boolean v1, p0, Lcom/android/systemui/BatteryMeterView;->mDemoMode:Z

    if-eqz v1, :cond_0

    return-void

    .line 336
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryChargingView:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/android/systemui/BatteryMeterView;->mNotchEar:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/android/systemui/BatteryMeterView;->mQuickCharging:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/systemui/BatteryMeterView;->mForceBatteryStyle:I

    if-eqz v2, :cond_2

    :cond_1
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 334
    return-void

    .line 337
    :cond_2
    iget-boolean v2, p0, Lcom/android/systemui/BatteryMeterView;->mCharging:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryStyle:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    :cond_3
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private updateIcon(Landroid/widget/ImageView;I)V
    .locals 6
    .param p1, "icon"    # Landroid/widget/ImageView;
    .param p2, "drawableId"    # I

    .prologue
    const/4 v5, 0x0

    .line 567
    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mTintArea:Landroid/graphics/Rect;

    iget v4, p0, Lcom/android/systemui/BatteryMeterView;->mDarkIntensity:F

    invoke-static {v3, p1, v4}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcherHelper;->inDarkMode(Landroid/graphics/Rect;Landroid/view/View;F)Z

    move-result v1

    .line 568
    .local v1, "isDarkMode":Z
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/systemui/statusbar/Icons;->get(Ljava/lang/Integer;Z)I

    move-result v2

    .line 569
    .local v2, "resId":I
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 570
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 571
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 572
    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/systemui/Util;->showCtsSpecifiedColor()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 573
    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryTextColors:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 566
    :cond_0
    :goto_0
    return-void

    .line 575
    :cond_1
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method

.method private updateIconView(Z)V
    .locals 2
    .param p1, "isShow"    # Z

    .prologue
    .line 326
    if-eqz p1, :cond_0

    .line 327
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryDigitalView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 325
    :goto_0
    return-void

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryDigitalView:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private updatePercentText()V
    .locals 4

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    .line 286
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    .line 285
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    :cond_0
    return-void
.end method

.method private updateResources()V
    .locals 8

    .prologue
    .line 137
    iget-object v5, p0, Lcom/android/systemui/BatteryMeterView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 138
    .local v4, "resources":Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryTextColors:[I

    const v6, 0x90c0140

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    const/4 v7, 0x0

    aput v6, v5, v7

    .line 139
    iget-object v5, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryTextColors:[I

    const v6, 0x90c0141

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    const/4 v7, 0x1

    aput v6, v5, v7

    .line 140
    iget-object v5, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryTextColors:[I

    const v6, 0x90c0167

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    const/4 v7, 0x2

    aput v6, v5, v7

    .line 141
    iget-object v5, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryTextColors:[I

    const v6, 0x90c0168

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    const/4 v7, 0x3

    aput v6, v5, v7

    .line 142
    iget-object v5, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryTextColors:[I

    const v6, 0x90c0169

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    const/4 v7, 0x4

    aput v6, v5, v7

    .line 143
    iget-object v5, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryTextColors:[I

    const v6, 0x90c016a

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    const/4 v7, 0x5

    aput v6, v5, v7

    .line 144
    iget-object v5, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryTextColors:[I

    const v6, 0x90c009c

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    const/4 v7, 0x6

    aput v6, v5, v7

    .line 146
    const v5, 0x90d0043

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/BatteryMeterView;->mShowBatteryDigitFull:Z

    .line 148
    iget-object v5, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryTextDigitView:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 149
    const v5, 0x90f03f6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 150
    .local v2, "paddingStart":I
    const v5, 0x90f03f7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 151
    .local v1, "paddingEnd":I
    const v5, 0x90f03f8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 152
    .local v3, "paddingTop":I
    const v5, 0x90f03f9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 153
    .local v0, "paddingBottom":I
    iget-object v5, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryTextDigitView:Landroid/widget/TextView;

    invoke-virtual {v5, v2, v3, v1, v0}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 136
    .end local v0    # "paddingBottom":I
    .end local v1    # "paddingEnd":I
    .end local v2    # "paddingStart":I
    .end local v3    # "paddingTop":I
    :cond_0
    return-void
.end method

.method private updateShowPercent()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v6, -0x2

    const/4 v5, -0x1

    .line 291
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 292
    .local v1, "showing":Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/BatteryMeterView;->mForceShowPercent:Z

    if-eqz v2, :cond_3

    .line 293
    if-nez v1, :cond_0

    .line 294
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->loadPercentView()Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    .line 296
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->setPercentViewTextColor()V

    .line 297
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updatePercentText()V

    .line 299
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v6, v5}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 300
    .local v0, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x90f020b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 301
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x90f020c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 300
    invoke-virtual {v0, v2, v7, v3, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 303
    sget-boolean v2, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/systemui/BatteryMeterView;->mForceBatteryStyle:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 304
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryDigitalView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v2}, Lcom/android/systemui/BatteryMeterView;->removeView(Landroid/view/View;)V

    .line 305
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v5, v0}, Lcom/android/systemui/BatteryMeterView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 306
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local v0    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-direct {v0, v6, v5}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 307
    .restart local v0    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryDigitalView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v2, v5, v0}, Lcom/android/systemui/BatteryMeterView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 290
    .end local v0    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    :goto_1
    return-void

    .line 291
    .end local v1    # "showing":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "showing":Z
    goto :goto_0

    .line 309
    .restart local v0    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v5, v0}, Lcom/android/systemui/BatteryMeterView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 313
    .end local v0    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_3
    if-eqz v1, :cond_0

    .line 314
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/android/systemui/BatteryMeterView;->removeView(Landroid/view/View;)V

    .line 315
    iput-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    goto :goto_1
.end method

.method private updateViews()V
    .locals 2

    .prologue
    .line 321
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateShowPercent()V

    .line 322
    iget v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryStyle:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/BatteryMeterView;->updateIconView(Z)V

    .line 320
    return-void

    .line 322
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 509
    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mDemoMode:Z

    if-nez v0, :cond_1

    const-string/jumbo v0, "enter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 510
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mDemoMode:Z

    .line 511
    invoke-virtual {p0, v1}, Lcom/android/systemui/BatteryMeterView;->setVisibility(I)V

    .line 512
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->update()V

    .line 508
    :cond_0
    :goto_0
    return-void

    .line 513
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mDemoMode:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "exit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    iput-boolean v1, p0, Lcom/android/systemui/BatteryMeterView;->mDemoMode:Z

    .line 515
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->updateVisibility()V

    .line 516
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->update()V

    goto :goto_0
.end method

.method protected getIcon(Landroid/widget/ImageView;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "resId"    # I

    .prologue
    .line 465
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mTintArea:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/systemui/BatteryMeterView;->mDarkIntensity:F

    invoke-static {v1, p1, v2}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcherHelper;->inDarkMode(Landroid/graphics/Rect;Landroid/view/View;F)Z

    move-result v0

    .line 466
    .local v0, "dark":Z
    packed-switch p2, :pswitch_data_0

    .line 484
    :pswitch_0
    const/4 v1, 0x0

    return-object v1

    .line 468
    :pswitch_1
    if-eqz v0, :cond_0

    .line 469
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/BatteryIcon;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/BatteryIcon;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/BatteryIcon;->getGraphicPowerSaveIconDarkMode(I)Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v1

    .line 468
    :goto_0
    return-object v1

    .line 470
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/BatteryIcon;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/BatteryIcon;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/BatteryIcon;->getGraphicPowerSaveIcon(I)Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v1

    goto :goto_0

    .line 472
    :pswitch_2
    if-eqz v0, :cond_1

    .line 473
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/BatteryIcon;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/BatteryIcon;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/BatteryIcon;->getGraphicChargeIconDarkMode(I)Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v1

    .line 472
    :goto_1
    return-object v1

    .line 474
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/BatteryIcon;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/BatteryIcon;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/BatteryIcon;->getGraphicChargeIcon(I)Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v1

    goto :goto_1

    .line 476
    :pswitch_3
    if-eqz v0, :cond_2

    .line 477
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/BatteryIcon;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/BatteryIcon;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/BatteryIcon;->getGraphicIconDarkMode(I)Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v1

    .line 476
    :goto_2
    return-object v1

    .line 478
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/BatteryIcon;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/BatteryIcon;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/BatteryIcon;->getGraphicIcon(I)Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v1

    goto :goto_2

    .line 480
    :pswitch_4
    if-eqz v0, :cond_3

    .line 481
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/BatteryIcon;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/BatteryIcon;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/BatteryIcon;->getGraphicDigitalIconDarkMode(I)Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v1

    .line 480
    :goto_3
    return-object v1

    .line 482
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/BatteryIcon;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/BatteryIcon;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/BatteryIcon;->getGraphicDigitalIcon(I)Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v1

    goto :goto_3

    .line 466
    nop

    :pswitch_data_0
    .packed-switch 0x90a0006
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 169
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 170
    const-class v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    iput-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 171
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->addCallback(Ljava/lang/Object;)V

    .line 172
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateViews()V

    .line 173
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->addCallback(Ljava/lang/Object;)V

    .line 168
    return-void
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 6
    .param p1, "level"    # I
    .param p2, "pluggedIn"    # Z
    .param p3, "charging"    # Z

    .prologue
    const/4 v5, 0x0

    .line 189
    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mCharging:Z

    if-eq p3, v0, :cond_0

    .line 190
    iput-boolean p3, p0, Lcom/android/systemui/BatteryMeterView;->mCharging:Z

    .line 191
    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mCharging:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/BatteryMeterView;->notifyChargingStateChanged(Z)V

    .line 192
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/BatteryIcon;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/BatteryIcon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BatteryIcon;->clear()V

    .line 195
    :cond_0
    if-nez p3, :cond_1

    .line 196
    iput-boolean v5, p0, Lcom/android/systemui/BatteryMeterView;->mQuickCharging:Z

    .line 199
    :cond_1
    iget v0, p0, Lcom/android/systemui/BatteryMeterView;->mIconId:I

    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->getIconId()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    if-eq p1, v0, :cond_3

    .line 200
    :cond_2
    iput p1, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    .line 201
    iput-boolean p3, p0, Lcom/android/systemui/BatteryMeterView;->mCharging:Z

    .line 202
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->getIconId()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/BatteryMeterView;->mIconId:I

    .line 203
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updatePercentText()V

    .line 204
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    .line 205
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz p3, :cond_4

    const v0, 0x91000d6

    :goto_0
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 206
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 205
    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 204
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 208
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->update()V

    .line 188
    :cond_3
    return-void

    .line 206
    :cond_4
    const v0, 0x91000d5

    goto :goto_0
.end method

.method public onBatteryStyleChanged(I)V
    .locals 4
    .param p1, "batteryStyle"    # I

    .prologue
    const/16 v3, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/systemui/BatteryMeterView;->mForceBatteryStyle:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/systemui/BatteryMeterView;->mForceBatteryStyle:I

    if-ne v2, v0, :cond_1

    :cond_0
    iget p1, p0, Lcom/android/systemui/BatteryMeterView;->mForceBatteryStyle:I

    :cond_1
    iput p1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryStyle:I

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_9

    const/4 v2, 0x2

    if-ne p1, v2, :cond_5

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateBatteryChargingIcon()V

    return-void

    :cond_5
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_7
    if-ne p1, v0, :cond_8

    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/systemui/BatteryMeterView;->setForceShowPercent(Z)V

    goto :goto_0

    :cond_8
    move v0, v1

    goto :goto_2

    :cond_9
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 341
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 346
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 347
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateResources()V

    .line 348
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/BatteryIcon;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/BatteryIcon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BatteryIcon;->clear()V

    .line 349
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->getIconId()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/BatteryMeterView;->mIconId:I

    .line 350
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->update()V

    .line 345
    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 1
    .param p1, "area"    # Landroid/graphics/Rect;
    .param p2, "darkIntensity"    # F
    .param p3, "tint"    # I

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mTintArea:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 385
    iput p2, p0, Lcom/android/systemui/BatteryMeterView;->mDarkIntensity:F

    .line 386
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->setPercentViewTextColor()V

    .line 387
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->setDigitViewTextColor()V

    .line 388
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateBatteryChargingIcon()V

    .line 389
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->update()V

    .line 383
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 0

    .prologue
    .line 355
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->scaleBatteryMeterViews()V

    .line 354
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 178
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 179
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->removeCallback(Ljava/lang/Object;)V

    .line 181
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->removeCallback(Ljava/lang/Object;)V

    .line 184
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mUpdateQuickChargingTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/BatteryMeterView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 177
    return-void
.end method

.method public onExtremePowerSaveChanged(Z)V
    .locals 6
    .param p1, "isExtremePowerSave"    # Z

    .prologue
    .line 266
    iput-boolean p1, p0, Lcom/android/systemui/BatteryMeterView;->mExtremePowerSave:Z

    .line 267
    iget v0, p0, Lcom/android/systemui/BatteryMeterView;->mIconId:I

    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->getIconId()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 268
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->getIconId()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/BatteryMeterView;->mIconId:I

    .line 269
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updatePercentText()V

    .line 270
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    .line 271
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mCharging:Z

    if-eqz v0, :cond_1

    const v0, 0x91000d6

    :goto_0
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 272
    iget v4, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 271
    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 270
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 273
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->setDigitViewTextColor()V

    .line 274
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->update()V

    .line 265
    :cond_0
    return-void

    .line 272
    :cond_1
    const v0, 0x91000d5

    goto :goto_0
.end method

.method public onPowerSaveChanged(Z)V
    .locals 6
    .param p1, "isPowerSave"    # Z

    .prologue
    .line 252
    iput-boolean p1, p0, Lcom/android/systemui/BatteryMeterView;->mPowerSave:Z

    .line 253
    iget v0, p0, Lcom/android/systemui/BatteryMeterView;->mIconId:I

    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->getIconId()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 254
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->getIconId()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/BatteryMeterView;->mIconId:I

    .line 255
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updatePercentText()V

    .line 256
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    .line 257
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mCharging:Z

    if-eqz v0, :cond_1

    const v0, 0x91000d6

    :goto_0
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 258
    iget v4, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 257
    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 256
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 259
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->setDigitViewTextColor()V

    .line 260
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->update()V

    .line 251
    :cond_0
    return-void

    .line 258
    :cond_1
    const v0, 0x91000d5

    goto :goto_0
.end method

.method public setDigitViewTextColor()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    .line 411
    invoke-static {}, Lcom/android/systemui/Util;->showCtsSpecifiedColor()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 412
    iget-boolean v1, p0, Lcom/android/systemui/BatteryMeterView;->mForceShowDigit:Z

    if-eqz v1, :cond_0

    .line 413
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mTintArea:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryTextDigitView:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/systemui/BatteryMeterView;->mDarkIntensity:F

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcherHelper;->inDarkMode(Landroid/graphics/Rect;Landroid/view/View;F)Z

    move-result v0

    .line 414
    .local v0, "dark":Z
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryTextDigitView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryTextColors:[I

    const/4 v3, 0x6

    aget v1, v1, v3

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 409
    .end local v0    # "dark":Z
    :cond_0
    :goto_1
    return-void

    .line 415
    .restart local v0    # "dark":Z
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/BatteryMeterView;->mPowerSave:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/BatteryMeterView;->mExtremePowerSave:Z

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryTextColors:[I

    aget v1, v1, v5

    goto :goto_0

    .line 416
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryTextColors:[I

    aget v1, v1, v4

    goto :goto_0

    .line 419
    .end local v0    # "dark":Z
    :cond_4
    iget-boolean v1, p0, Lcom/android/systemui/BatteryMeterView;->mForceShowDigit:Z

    if-eqz v1, :cond_0

    .line 420
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mTintArea:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryTextDigitView:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/systemui/BatteryMeterView;->mDarkIntensity:F

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcherHelper;->inDarkMode(Landroid/graphics/Rect;Landroid/view/View;F)Z

    move-result v0

    .line 421
    .restart local v0    # "dark":Z
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryTextDigitView:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 422
    iget-boolean v1, p0, Lcom/android/systemui/BatteryMeterView;->mPowerSave:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/android/systemui/BatteryMeterView;->mExtremePowerSave:Z

    if-eqz v1, :cond_6

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryTextColors:[I

    const/4 v3, 0x5

    aget v1, v1, v3

    .line 421
    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 423
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryTextColors:[I

    const/4 v3, 0x3

    aget v1, v1, v3

    goto :goto_2

    .line 424
    :cond_7
    iget-boolean v1, p0, Lcom/android/systemui/BatteryMeterView;->mPowerSave:Z

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lcom/android/systemui/BatteryMeterView;->mExtremePowerSave:Z

    if-eqz v1, :cond_9

    :cond_8
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryTextColors:[I

    aget v1, v1, v5

    goto :goto_2

    .line 425
    :cond_9
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryTextColors:[I

    aget v1, v1, v4

    goto :goto_2
.end method

.method public setForceBatteryStyle(I)V
    .locals 2
    .param p1, "forceBatteryStyle"    # I

    .prologue
    const/4 v0, 0x1

    .line 604
    iput p1, p0, Lcom/android/systemui/BatteryMeterView;->mForceBatteryStyle:I

    .line 605
    iget v1, p0, Lcom/android/systemui/BatteryMeterView;->mForceBatteryStyle:I

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/BatteryMeterView;->setForceShowPercent(Z)V

    .line 603
    return-void

    .line 605
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setForceShowPercent(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    iget v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryStyle:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 p1, 0x1

    .line 158
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/BatteryMeterView;->mForceShowPercent:Z

    .line 159
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateShowPercent()V

    .line 157
    return-void
.end method

.method public setNortchEar(Z)V
    .locals 1
    .param p1, "isNorthEar"    # Z

    .prologue
    .line 609
    iput-boolean p1, p0, Lcom/android/systemui/BatteryMeterView;->mNotchEar:Z

    .line 610
    iget v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryStyle:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/BatteryMeterView;->onBatteryStyleChanged(I)V

    .line 608
    return-void
.end method

.method public setPercentViewTextColor()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 394
    invoke-static {}, Lcom/android/systemui/Util;->showCtsSpecifiedColor()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 395
    iget-boolean v1, p0, Lcom/android/systemui/BatteryMeterView;->mForceShowPercent:Z

    if-eqz v1, :cond_0

    .line 396
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mTintArea:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/systemui/BatteryMeterView;->mDarkIntensity:F

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcherHelper;->inDarkMode(Landroid/graphics/Rect;Landroid/view/View;F)Z

    move-result v0

    .line 397
    .local v0, "dark":Z
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryTextColors:[I

    const/4 v3, 0x6

    aget v1, v1, v3

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 392
    .end local v0    # "dark":Z
    :cond_0
    :goto_1
    return-void

    .line 398
    .restart local v0    # "dark":Z
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryTextColors:[I

    aget v1, v1, v4

    goto :goto_0

    .line 401
    .end local v0    # "dark":Z
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/BatteryMeterView;->mForceShowPercent:Z

    if-eqz v1, :cond_0

    .line 402
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mTintArea:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/systemui/BatteryMeterView;->mDarkIntensity:F

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcherHelper;->inDarkMode(Landroid/graphics/Rect;Landroid/view/View;F)Z

    move-result v0

    .line 403
    .restart local v0    # "dark":Z
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryTextColors:[I

    const/4 v3, 0x1

    aget v1, v1, v3

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 404
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryTextColors:[I

    aget v1, v1, v4

    goto :goto_2
.end method

.method public update()V
    .locals 4

    .prologue
    const/16 v1, 0x64

    .line 442
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mDemoMode:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/systemui/BatteryMeterView;->getDemoModeIcon(Landroid/widget/ImageView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 443
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mDemoMode:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 444
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryTextDigitView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 445
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryTextDigitView:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mCharging:Z

    if-nez v0, :cond_0

    .line 446
    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mForceShowDigit:Z

    if-eqz v0, :cond_0

    .line 447
    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mShowBatteryDigitFull:Z

    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    if-ne v0, v1, :cond_4

    .line 448
    :cond_0
    const/16 v0, 0x8

    .line 445
    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 449
    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mForceShowPercent:Z

    if-eqz v0, :cond_1

    .line 450
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updatePercentText()V

    .line 452
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateBatteryChargingIcon()V

    .line 453
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->invalidate()V

    .line 441
    return-void

    .line 442
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/BatteryMeterView;->mIconId:I

    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/BatteryMeterView;->getIcon(Landroid/widget/ImageView;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 443
    :cond_3
    iget v0, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    goto :goto_1

    .line 448
    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public updateQuickCharging()V
    .locals 3

    .prologue
    .line 581
    new-instance v0, Lcom/android/systemui/BatteryMeterView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/BatteryMeterView$3;-><init>(Lcom/android/systemui/BatteryMeterView;)V

    .line 591
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 581
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/BatteryMeterView$3;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 580
    return-void
.end method

.method public updateQuickCharging(Z)V
    .locals 0
    .param p1, "quickCharging"    # Z

    .prologue
    .line 599
    iput-boolean p1, p0, Lcom/android/systemui/BatteryMeterView;->mQuickCharging:Z

    .line 600
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateBatteryChargingIcon()V

    .line 598
    return-void
.end method

.method public updateQuickChargingDelayed(J)V
    .locals 1
    .param p1, "delayMillis"    # J

    .prologue
    .line 595
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mUpdateQuickChargingTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/BatteryMeterView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 594
    return-void
.end method

.method protected updateVisibility()V
    .locals 1

    .prologue
    .line 501
    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mDemoMode:Z

    if-eqz v0, :cond_0

    return-void

    .line 502
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mDisabled:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/BatteryMeterView;->setVisibility(I)V

    .line 500
    return-void

    .line 502
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method
