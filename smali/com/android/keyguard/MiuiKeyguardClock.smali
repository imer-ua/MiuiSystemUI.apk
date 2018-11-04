.class public Lcom/android/keyguard/MiuiKeyguardClock;
.super Lcom/android/keyguard/MiuiKeyguardBaseClock;
.source "MiuiKeyguardClock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/MiuiKeyguardClock$1;,
        Lcom/android/keyguard/MiuiKeyguardClock$2;,
        Lcom/android/keyguard/MiuiKeyguardClock$3;,
        Lcom/android/keyguard/MiuiKeyguardClock$4;,
        Lcom/android/keyguard/MiuiKeyguardClock$5;,
        Lcom/android/keyguard/MiuiKeyguardClock$6;
    }
.end annotation


# static fields
.field private static mBatteryInfo:Landroid/widget/TextView;

.field private static mCurrentDate:Landroid/widget/TextView;

.field private static mDateAndBatteryInfoLayout:Landroid/widget/FrameLayout;

.field private static mHorizontalDot:Landroid/widget/TextView;

.field private static mHorizontalHour:Landroid/widget/TextView;

.field private static mHorizontalMin:Landroid/widget/TextView;

.field private static mHorizontalTimeLayout:Landroid/widget/LinearLayout;

.field private static mOwnerInfo:Landroid/widget/TextView;

.field private static mShowHorizontalTime:Z

.field private static mTimeLayout:Landroid/widget/FrameLayout;

.field private static mVerticalHour:Landroid/widget/TextView;

.field private static mVerticalMin:Landroid/widget/TextView;

.field private static mVerticalTimeLayout:Landroid/widget/LinearLayout;


# instance fields
.field private m24HourFormat:Z

.field private mAttached:Z

.field private final mBatteryInfoAndDateTransition:Ljava/lang/Runnable;

.field private mCalendar:Lmiui/date/Calendar;

.field private mDarkMode:Z

.field private mDensityDpi:I

.field private mFontScale:F

.field private mFontScaleChanged:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHasNotification:Z

.field private mHorizontalTimeLayoutHeight:F

.field private mHorizontalTimePaddingTop:F

.field private mHorizontalToVerticalAnim:Landroid/animation/AnimatorSet;

.field private mInSmartCoverSmallWindowMode:Z

.field private mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mOldHasNotification:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private mShowBatteryInfo:Z

.field private mSimCardInfo:Landroid/widget/TextView;

.field private final mSmartCoverSettingsContentObserver:Landroid/database/ContentObserver;

.field private mThinFontTypeface:Landroid/graphics/Typeface;

.field mUpdateTimeRunnable:Ljava/lang/Runnable;

.field private mVerticalTimeLayoutHeight:F

.field private mVerticalTimePaddingTop:F

.field private mVerticalToHorizontalAnim:Landroid/animation/AnimatorSet;


# direct methods
.method static synthetic -get0()Landroid/widget/TextView;
    .locals 1

    sget-object v0, Lcom/android/keyguard/MiuiKeyguardClock;->mBatteryInfo:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get1()Landroid/widget/TextView;
    .locals 1

    sget-object v0, Lcom/android/keyguard/MiuiKeyguardClock;->mCurrentDate:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/MiuiKeyguardClock;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3()Landroid/widget/LinearLayout;
    .locals 1

    sget-object v0, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalTimeLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get4()Landroid/widget/LinearLayout;
    .locals 1

    sget-object v0, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalTimeLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/MiuiKeyguardClock;Lmiui/date/Calendar;)Lmiui/date/Calendar;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mCalendar:Lmiui/date/Calendar;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/keyguard/MiuiKeyguardClock;F)F
    .locals 0

    iput p1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalTimeLayoutHeight:F

    return p1
.end method

.method static synthetic -set2(Lcom/android/keyguard/MiuiKeyguardClock;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mInSmartCoverSmallWindowMode:Z

    return p1
.end method

.method static synthetic -set3(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/keyguard/MiuiKeyguardClock;->mShowHorizontalTime:Z

    return p0
.end method

.method static synthetic -set4(Lcom/android/keyguard/MiuiKeyguardClock;F)F
    .locals 0

    iput p1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalTimeLayoutHeight:F

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/MiuiKeyguardClock;Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 0
    .param p1, "status"    # Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/MiuiKeyguardClock;->updateBatteryLevelText(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/MiuiKeyguardClock;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/MiuiKeyguardClock;->updateClockView()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/keyguard/MiuiKeyguardClock;->mShowHorizontalTime:Z

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 151
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/MiuiKeyguardClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 150
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 155
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/MiuiKeyguardBaseClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    iput-boolean v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mDarkMode:Z

    .line 65
    iput-boolean v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mOldHasNotification:Z

    .line 66
    iput-boolean v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mHasNotification:Z

    .line 68
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalToVerticalAnim:Landroid/animation/AnimatorSet;

    .line 69
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalToHorizontalAnim:Landroid/animation/AnimatorSet;

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mThinFontTypeface:Landroid/graphics/Typeface;

    .line 86
    new-instance v0, Lcom/android/keyguard/MiuiKeyguardClock$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/MiuiKeyguardClock$1;-><init>(Lcom/android/keyguard/MiuiKeyguardClock;)V

    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mHandler:Landroid/os/Handler;

    .line 97
    new-instance v0, Lcom/android/keyguard/MiuiKeyguardClock$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/MiuiKeyguardClock$2;-><init>(Lcom/android/keyguard/MiuiKeyguardClock;)V

    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 110
    new-instance v0, Lcom/android/keyguard/MiuiKeyguardClock$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/MiuiKeyguardClock$3;-><init>(Lcom/android/keyguard/MiuiKeyguardClock;)V

    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mUpdateTimeRunnable:Ljava/lang/Runnable;

    .line 117
    new-instance v0, Lcom/android/keyguard/MiuiKeyguardClock$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/MiuiKeyguardClock$4;-><init>(Lcom/android/keyguard/MiuiKeyguardClock;)V

    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 279
    new-instance v0, Lcom/android/keyguard/MiuiKeyguardClock$5;

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/MiuiKeyguardClock$5;-><init>(Lcom/android/keyguard/MiuiKeyguardClock;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mSmartCoverSettingsContentObserver:Landroid/database/ContentObserver;

    .line 456
    new-instance v0, Lcom/android/keyguard/MiuiKeyguardClock$6;

    invoke-direct {v0, p0}, Lcom/android/keyguard/MiuiKeyguardClock$6;-><init>(Lcom/android/keyguard/MiuiKeyguardClock;)V

    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mBatteryInfoAndDateTransition:Ljava/lang/Runnable;

    .line 156
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string/jumbo v1, "fonts/Mitype2018-clock.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mThinFontTypeface:Landroid/graphics/Typeface;

    .line 157
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mPowerManager:Landroid/os/PowerManager;

    .line 154
    return-void
.end method

.method private clearAnim()V
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalToVerticalAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 608
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalToHorizontalAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 609
    sget-object v0, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalTimeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 610
    sget-object v0, Lcom/android/keyguard/MiuiKeyguardClock;->mCurrentDate:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 611
    sget-object v0, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalMin:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 612
    sget-object v0, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalHour:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 606
    return-void
.end method

.method private showHorizontalTime()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 558
    iget v3, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalTimeLayoutHeight:F

    iget v6, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalTimeLayoutHeight:F

    sub-float v2, v3, v6

    .line 559
    .local v2, "translationExtra":F
    invoke-direct {p0}, Lcom/android/keyguard/MiuiKeyguardClock;->clearAnim()V

    .line 560
    iget-object v3, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/MiuiKeyguardUtils;->isSupportVerticalClock(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 561
    iget-boolean v3, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mInSmartCoverSmallWindowMode:Z

    if-eqz v3, :cond_2

    .line 564
    :cond_0
    sput-boolean v10, Lcom/android/keyguard/MiuiKeyguardClock;->mShowHorizontalTime:Z

    .line 565
    sget-object v3, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalTimeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 566
    sget-object v3, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalTimeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setScaleX(F)V

    .line 567
    sget-object v3, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalTimeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setScaleY(F)V

    .line 568
    sget-object v3, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalTimeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 569
    sget-object v3, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalMin:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 570
    sget-object v3, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalHour:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 571
    sget-object v3, Lcom/android/keyguard/MiuiKeyguardClock;->mDateAndBatteryInfoLayout:Landroid/widget/FrameLayout;

    neg-float v6, v2

    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 572
    iget-object v3, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mSimCardInfo:Landroid/widget/TextView;

    neg-float v6, v2

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 573
    sget-object v3, Lcom/android/keyguard/MiuiKeyguardClock;->mOwnerInfo:Landroid/widget/TextView;

    neg-float v6, v2

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 574
    iget-boolean v3, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mHasNotification:Z

    iget-boolean v6, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mOldHasNotification:Z

    if-eq v3, v6, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/MiuiKeyguardUtils;->isSupportVerticalClock(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 583
    :cond_1
    sget-object v3, Lcom/android/keyguard/MiuiKeyguardClock;->mOwnerInfo:Landroid/widget/TextView;

    iget-boolean v6, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mHasNotification:Z

    if-eqz v6, :cond_6

    :goto_0
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 556
    :goto_1
    return-void

    .line 561
    :cond_2
    iget-object v3, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    .line 560
    if-eqz v3, :cond_0

    .line 561
    sget-boolean v3, Lcom/android/keyguard/MiuiKeyguardClock;->mShowHorizontalTime:Z

    if-nez v3, :cond_0

    .line 562
    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardClock;->playVerticalToHorizontalAnim()V

    goto :goto_1

    .line 575
    :cond_3
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 576
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    sget-object v6, Lcom/android/keyguard/MiuiKeyguardClock;->mOwnerInfo:Landroid/widget/TextView;

    const-string/jumbo v7, "alpha"

    const/4 v3, 0x2

    new-array v8, v3, [F

    iget-boolean v3, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mHasNotification:Z

    if-eqz v3, :cond_4

    move v3, v4

    :goto_2
    const/4 v9, 0x0

    aput v3, v8, v9

    iget-boolean v3, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mHasNotification:Z

    if-eqz v3, :cond_5

    :goto_3
    aput v5, v8, v10

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 577
    .local v1, "ownerInfoAlpha":Landroid/animation/ObjectAnimator;
    const-wide/16 v4, 0xfa

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 578
    sget-object v3, Lcom/android/keyguard/Ease$Cubic;->easeInOut:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 579
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 580
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 581
    iget-boolean v3, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mHasNotification:Z

    iput-boolean v3, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mOldHasNotification:Z

    goto :goto_1

    .end local v1    # "ownerInfoAlpha":Landroid/animation/ObjectAnimator;
    :cond_4
    move v3, v5

    .line 576
    goto :goto_2

    :cond_5
    move v5, v4

    goto :goto_3

    .end local v0    # "animatorSet":Landroid/animation/AnimatorSet;
    :cond_6
    move v5, v4

    .line 583
    goto :goto_0
.end method

.method private showVerticalTime()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 589
    invoke-direct {p0}, Lcom/android/keyguard/MiuiKeyguardClock;->clearAnim()V

    .line 590
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/keyguard/MiuiKeyguardClock;->mShowHorizontalTime:Z

    if-eqz v0, :cond_0

    .line 591
    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardClock;->playHorizontalToVerticalAnim()V

    .line 588
    :goto_0
    return-void

    .line 593
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/keyguard/MiuiKeyguardClock;->mShowHorizontalTime:Z

    .line 594
    sget-object v0, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalMin:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 595
    sget-object v0, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalHour:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 596
    sget-object v0, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalMin:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 597
    sget-object v0, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalHour:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 598
    sget-object v0, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalTimeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 599
    sget-object v0, Lcom/android/keyguard/MiuiKeyguardClock;->mDateAndBatteryInfoLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 600
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mSimCardInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 601
    sget-object v0, Lcom/android/keyguard/MiuiKeyguardClock;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 602
    sget-object v0, Lcom/android/keyguard/MiuiKeyguardClock;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0
.end method

.method private updateBatteryLevelText(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 5
    .param p1, "status"    # Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 511
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isBatteryLow()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 512
    :cond_0
    iput-boolean v2, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mShowBatteryInfo:Z

    .line 513
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 514
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isCharged()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 515
    sget-object v0, Lcom/android/keyguard/MiuiKeyguardClock;->mBatteryInfo:Landroid/widget/TextView;

    const v1, 0x91003a6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 510
    :cond_1
    :goto_0
    return-void

    .line 517
    :cond_2
    sget-object v0, Lcom/android/keyguard/MiuiKeyguardClock;->mBatteryInfo:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardClock;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x91003a5

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 519
    :cond_3
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isBatteryLow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 520
    sget-object v0, Lcom/android/keyguard/MiuiKeyguardClock;->mBatteryInfo:Landroid/widget/TextView;

    const v1, 0x91003a7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 523
    :cond_4
    iput-boolean v4, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mShowBatteryInfo:Z

    goto :goto_0
.end method

.method private updateClockView()V
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/MiuiKeyguardUtils;->isSupportVerticalClock(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 549
    iget-boolean v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mInSmartCoverSmallWindowMode:Z

    if-eqz v0, :cond_1

    .line 552
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/MiuiKeyguardClock;->showHorizontalTime()V

    .line 547
    :goto_0
    return-void

    .line 549
    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mHasNotification:Z

    if-nez v0, :cond_0

    .line 550
    invoke-direct {p0}, Lcom/android/keyguard/MiuiKeyguardClock;->showVerticalTime()V

    goto :goto_0
.end method

.method private updateViewsForNotch()V
    .locals 3

    .prologue
    .line 240
    sget-object v1, Lcom/android/keyguard/MiuiKeyguardClock;->mTimeLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 241
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-boolean v1, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v1, :cond_0

    .line 242
    const v1, 0x90f037e

    .line 241
    :goto_0
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 244
    sget-object v1, Lcom/android/keyguard/MiuiKeyguardClock;->mTimeLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    return-void

    .line 243
    :cond_0
    const v1, 0x90f037d

    goto :goto_0
.end method

.method private updateViewsLayoutParams()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 418
    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardClock;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 420
    .local v0, "clockLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v5, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mResources:Landroid/content/res/Resources;

    const v6, 0x90f038b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 419
    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 421
    invoke-virtual {p0, v0}, Lcom/android/keyguard/MiuiKeyguardClock;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 423
    invoke-direct {p0}, Lcom/android/keyguard/MiuiKeyguardClock;->updateViewsForNotch()V

    .line 425
    sget-object v5, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalHour:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mResources:Landroid/content/res/Resources;

    .line 426
    const v7, 0x90f037a

    .line 425
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v5, v8, v6, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 429
    sget-object v5, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalMin:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 430
    .local v4, "verticalMinLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mResources:Landroid/content/res/Resources;

    .line 431
    const v6, 0x90f037b

    .line 430
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 432
    sget-object v5, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalMin:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 434
    sget-object v5, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalTimeLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mResources:Landroid/content/res/Resources;

    .line 435
    const v7, 0x90f037d

    .line 434
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    invoke-virtual {v5, v8, v6, v8, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 438
    sget-object v5, Lcom/android/keyguard/MiuiKeyguardClock;->mDateAndBatteryInfoLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 440
    .local v1, "dateInfoLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mResources:Landroid/content/res/Resources;

    const v6, 0x90f03b2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 439
    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 441
    sget-object v5, Lcom/android/keyguard/MiuiKeyguardClock;->mDateAndBatteryInfoLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 444
    iget-object v5, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mSimCardInfo:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 446
    .local v3, "simCardLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mResources:Landroid/content/res/Resources;

    const v6, 0x90f038a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 445
    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 447
    iget-object v5, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mSimCardInfo:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 450
    sget-object v5, Lcom/android/keyguard/MiuiKeyguardClock;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 452
    .local v2, "ownerInfoLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mResources:Landroid/content/res/Resources;

    const v6, 0x90f0383

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 451
    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 453
    sget-object v5, Lcom/android/keyguard/MiuiKeyguardClock;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 417
    return-void
.end method

.method private updateViewsTextSize()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 394
    iget-object v5, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 396
    .local v3, "resources":Landroid/content/res/Resources;
    const v5, 0x90f037f

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 398
    .local v1, "horizontalTextSize":I
    const v5, 0x90f037c

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 400
    .local v4, "verticalTextSize":I
    const v5, 0x90f0380

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 403
    .local v0, "dateBatteryTextSize":I
    const v5, 0x90f0381

    .line 402
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 405
    .local v2, "ownerSimTextSize":I
    sget-object v5, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalHour:Landroid/widget/TextView;

    int-to-float v6, v1

    invoke-virtual {v5, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 406
    sget-object v5, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalHour:Landroid/widget/TextView;

    int-to-float v6, v4

    invoke-virtual {v5, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 407
    sget-object v5, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalMin:Landroid/widget/TextView;

    int-to-float v6, v1

    invoke-virtual {v5, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 408
    sget-object v5, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalMin:Landroid/widget/TextView;

    int-to-float v6, v4

    invoke-virtual {v5, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 409
    sget-object v5, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalDot:Landroid/widget/TextView;

    int-to-float v6, v1

    invoke-virtual {v5, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 411
    sget-object v5, Lcom/android/keyguard/MiuiKeyguardClock;->mCurrentDate:Landroid/widget/TextView;

    int-to-float v6, v0

    invoke-virtual {v5, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 412
    sget-object v5, Lcom/android/keyguard/MiuiKeyguardClock;->mBatteryInfo:Landroid/widget/TextView;

    int-to-float v6, v0

    invoke-virtual {v5, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 413
    sget-object v5, Lcom/android/keyguard/MiuiKeyguardClock;->mOwnerInfo:Landroid/widget/TextView;

    int-to-float v6, v2

    invoke-virtual {v5, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 414
    iget-object v5, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mSimCardInfo:Landroid/widget/TextView;

    int-to-float v6, v2

    invoke-virtual {v5, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 393
    return-void
.end method


# virtual methods
.method public getClockBottom()I
    .locals 1

    .prologue
    .line 771
    const/4 v0, 0x0

    return v0
.end method

.method public getVisibleViewsHeight()F
    .locals 4

    .prologue
    .line 792
    const/4 v0, 0x0

    .line 793
    .local v0, "height":F
    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardClock;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalTimeLayoutHeight:F

    iget v3, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalTimeLayoutHeight:F

    sub-float/2addr v2, v3

    sub-float v0, v1, v2

    .line 794
    sget-object v1, Lcom/android/keyguard/MiuiKeyguardClock;->mOwnerInfo:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/keyguard/MiuiKeyguardClock;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 795
    sget-object v1, Lcom/android/keyguard/MiuiKeyguardClock;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 797
    :cond_0
    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 7

    .prologue
    .line 290
    invoke-super {p0}, Lcom/android/keyguard/MiuiKeyguardBaseClock;->onAttachedToWindow()V

    .line 292
    iget-boolean v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mAttached:Z

    if-eqz v0, :cond_0

    return-void

    .line 293
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mAttached:Z

    .line 296
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 297
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.TIME_TICK"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 298
    const-string/jumbo v0, "android.intent.action.TIME_SET"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 299
    const-string/jumbo v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 301
    sget-object v4, Lcom/android/systemui/Dependency;->TIME_TICK_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Handler;

    .line 300
    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 303
    const-string/jumbo v0, "is_small_window"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 304
    .local v6, "smartCoverSettingsUri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mSmartCoverSettingsContentObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    invoke-virtual {v0, v6, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 306
    iget-boolean v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mDarkMode:Z

    invoke-virtual {p0, v0}, Lcom/android/keyguard/MiuiKeyguardClock;->setDarkMode(Z)V

    .line 307
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 289
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, 0x1

    .line 359
    invoke-super {p0, p1}, Lcom/android/keyguard/MiuiKeyguardBaseClock;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 360
    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 361
    .local v1, "fontScale":F
    iget v2, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mFontScale:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_0

    .line 362
    iput-boolean v3, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mFontScaleChanged:Z

    .line 363
    invoke-direct {p0}, Lcom/android/keyguard/MiuiKeyguardClock;->updateViewsTextSize()V

    .line 364
    iput v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mFontScale:F

    .line 366
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 367
    .local v0, "densityDpi":I
    iget v2, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mDensityDpi:I

    if-eq v2, v0, :cond_1

    .line 368
    iput-boolean v3, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mFontScaleChanged:Z

    .line 369
    invoke-direct {p0}, Lcom/android/keyguard/MiuiKeyguardClock;->updateViewsTextSize()V

    .line 370
    invoke-direct {p0}, Lcom/android/keyguard/MiuiKeyguardClock;->updateViewsLayoutParams()V

    .line 371
    iput v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mDensityDpi:I

    .line 358
    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mSmartCoverSettingsContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 328
    invoke-super {p0}, Lcom/android/keyguard/MiuiKeyguardBaseClock;->onDetachedFromWindow()V

    .line 330
    iget-boolean v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mAttached:Z

    if-nez v0, :cond_0

    return-void

    .line 331
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mAttached:Z

    .line 333
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 334
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 335
    invoke-direct {p0}, Lcom/android/keyguard/MiuiKeyguardClock;->clearAnim()V

    .line 326
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 171
    invoke-super {p0}, Lcom/android/keyguard/MiuiKeyguardBaseClock;->onFinishInflate()V

    .line 172
    const v1, 0x9120186

    invoke-virtual {p0, v1}, Lcom/android/keyguard/MiuiKeyguardClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    sput-object v1, Lcom/android/keyguard/MiuiKeyguardClock;->mTimeLayout:Landroid/widget/FrameLayout;

    .line 174
    invoke-direct {p0}, Lcom/android/keyguard/MiuiKeyguardClock;->updateViewsForNotch()V

    .line 176
    const v1, 0x9120188

    invoke-virtual {p0, v1}, Lcom/android/keyguard/MiuiKeyguardClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalHour:Landroid/widget/TextView;

    .line 177
    const v1, 0x9120189

    invoke-virtual {p0, v1}, Lcom/android/keyguard/MiuiKeyguardClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalMin:Landroid/widget/TextView;

    .line 178
    const v1, 0x912018b

    invoke-virtual {p0, v1}, Lcom/android/keyguard/MiuiKeyguardClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalHour:Landroid/widget/TextView;

    .line 179
    const v1, 0x912018c

    invoke-virtual {p0, v1}, Lcom/android/keyguard/MiuiKeyguardClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalDot:Landroid/widget/TextView;

    .line 180
    const v1, 0x912018d

    invoke-virtual {p0, v1}, Lcom/android/keyguard/MiuiKeyguardClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalMin:Landroid/widget/TextView;

    .line 181
    const v1, 0x912018a

    invoke-virtual {p0, v1}, Lcom/android/keyguard/MiuiKeyguardClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    sput-object v1, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalTimeLayout:Landroid/widget/LinearLayout;

    .line 182
    const v1, 0x9120187

    invoke-virtual {p0, v1}, Lcom/android/keyguard/MiuiKeyguardClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    sput-object v1, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalTimeLayout:Landroid/widget/LinearLayout;

    .line 183
    const v1, 0x912018e

    invoke-virtual {p0, v1}, Lcom/android/keyguard/MiuiKeyguardClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    sput-object v1, Lcom/android/keyguard/MiuiKeyguardClock;->mDateAndBatteryInfoLayout:Landroid/widget/FrameLayout;

    .line 184
    const v1, 0x912018f

    invoke-virtual {p0, v1}, Lcom/android/keyguard/MiuiKeyguardClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lcom/android/keyguard/MiuiKeyguardClock;->mCurrentDate:Landroid/widget/TextView;

    .line 185
    const v1, 0x9120191

    invoke-virtual {p0, v1}, Lcom/android/keyguard/MiuiKeyguardClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mSimCardInfo:Landroid/widget/TextView;

    .line 187
    sget-object v1, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalHour:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mThinFontTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 188
    sget-object v1, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalMin:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mThinFontTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 189
    sget-object v1, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalHour:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mThinFontTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 190
    sget-object v1, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalDot:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mThinFontTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 191
    sget-object v1, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalMin:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mThinFontTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 192
    const v1, 0x9120192

    invoke-virtual {p0, v1}, Lcom/android/keyguard/MiuiKeyguardClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lcom/android/keyguard/MiuiKeyguardClock;->mOwnerInfo:Landroid/widget/TextView;

    .line 193
    const v1, 0x9120190

    invoke-virtual {p0, v1}, Lcom/android/keyguard/MiuiKeyguardClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lcom/android/keyguard/MiuiKeyguardClock;->mBatteryInfo:Landroid/widget/TextView;

    .line 196
    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardClock;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x90f037d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 195
    iput v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalTimePaddingTop:F

    .line 198
    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardClock;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x90f037a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 197
    iput v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalTimePaddingTop:F

    .line 200
    sget-object v1, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalTimeLayout:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/keyguard/MiuiKeyguardClock$7;

    invoke-direct {v2, p0}, Lcom/android/keyguard/MiuiKeyguardClock$7;-><init>(Lcom/android/keyguard/MiuiKeyguardClock;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 212
    sget-object v1, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalTimeLayout:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/keyguard/MiuiKeyguardClock$8;

    invoke-direct {v2, p0}, Lcom/android/keyguard/MiuiKeyguardClock$8;-><init>(Lcom/android/keyguard/MiuiKeyguardClock;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 224
    new-instance v1, Lmiui/date/Calendar;

    invoke-direct {v1}, Lmiui/date/Calendar;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mCalendar:Lmiui/date/Calendar;

    .line 225
    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardClock;->updateHourFormat()V

    .line 226
    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/provider/MiuiSettings$System;->isInSmallWindowMode(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mInSmartCoverSmallWindowMode:Z

    .line 228
    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardClock;->updateOwnerInfo()V

    .line 229
    iget-boolean v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mDisplaySimCardInfo:Z

    if-eqz v1, :cond_0

    .line 230
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mPhoneCount:I

    if-ge v0, v1, :cond_0

    .line 231
    invoke-virtual {p0, v0}, Lcom/android/keyguard/MiuiKeyguardClock;->initCarrier(I)V

    .line 230
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 234
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardClock;->updateSimCardInfo()V

    .line 235
    invoke-direct {p0}, Lcom/android/keyguard/MiuiKeyguardClock;->updateClockView()V

    .line 170
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v4, 0x0

    .line 340
    invoke-super {p0, p1, p2}, Lcom/android/keyguard/MiuiKeyguardBaseClock;->onMeasure(II)V

    .line 342
    iget-boolean v2, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mFontScaleChanged:Z

    if-eqz v2, :cond_0

    .line 343
    sget-object v2, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalTimeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    .line 344
    .local v1, "verticalTimeLayoutHeight":I
    sget-object v2, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalTimeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    .line 345
    .local v0, "horizontalTimeLayoutHeight":I
    if-lez v1, :cond_1

    .line 346
    int-to-float v2, v1

    iget v3, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalTimeLayoutHeight:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    .line 349
    :goto_0
    sget-object v2, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalTimeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalTimeLayoutHeight:F

    .line 350
    sget-object v2, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalTimeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalTimeLayoutHeight:F

    .line 351
    invoke-direct {p0}, Lcom/android/keyguard/MiuiKeyguardClock;->updateClockView()V

    .line 352
    iput-boolean v4, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mFontScaleChanged:Z

    .line 339
    .end local v0    # "horizontalTimeLayoutHeight":I
    .end local v1    # "verticalTimeLayoutHeight":I
    :cond_0
    return-void

    .line 347
    .restart local v0    # "horizontalTimeLayoutHeight":I
    .restart local v1    # "verticalTimeLayoutHeight":I
    :cond_1
    if-lez v0, :cond_0

    .line 348
    int-to-float v2, v0

    iget v3, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalTimeLayoutHeight:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 491
    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardClock;->updateBatteryInfoAndDate()V

    .line 492
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mUpdateTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 493
    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardClock;->updateTime()V

    .line 490
    return-void
.end method

.method public playHorizontalToVerticalAnim()V
    .locals 19

    .prologue
    .line 700
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalTimeLayoutHeight:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalTimePaddingTop:F

    sub-float/2addr v14, v15

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalTimePaddingTop:F

    add-float/2addr v14, v15

    .line 701
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalTimeLayoutHeight:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalTimePaddingTop:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalTimePaddingTop:F

    move/from16 v16, v0

    add-float v15, v15, v16

    .line 700
    sub-float v13, v14, v15

    .line 704
    .local v13, "translationY":F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalTimeLayoutHeight:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalTimeLayoutHeight:F

    sub-float v12, v14, v15

    .line 707
    .local v12, "translationExtra":F
    sget-object v14, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalMin:Landroid/widget/TextView;

    const-string/jumbo v15, "translationY"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    neg-float v0, v13

    move/from16 v17, v0

    const/16 v18, 0x0

    aput v17, v16, v18

    const/16 v17, 0x0

    const/16 v18, 0x1

    aput v17, v16, v18

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 708
    .local v8, "minDown":Landroid/animation/ObjectAnimator;
    const-wide/16 v14, 0x1a9

    invoke-virtual {v8, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 709
    sget-object v14, Lcom/android/keyguard/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    invoke-virtual {v8, v14}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 711
    sget-object v14, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalMin:Landroid/widget/TextView;

    const-string/jumbo v15, "alpha"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_0

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 712
    .local v7, "minAlphaIn":Landroid/animation/ObjectAnimator;
    const-wide/16 v14, 0x1a9

    invoke-virtual {v7, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 713
    sget-object v14, Lcom/android/keyguard/Ease$Sine;->easeInOut:Landroid/animation/TimeInterpolator;

    invoke-virtual {v7, v14}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 715
    sget-object v14, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalHour:Landroid/widget/TextView;

    const-string/jumbo v15, "translationY"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    neg-float v0, v13

    move/from16 v17, v0

    const/16 v18, 0x0

    aput v17, v16, v18

    const/16 v17, 0x0

    const/16 v18, 0x1

    aput v17, v16, v18

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 716
    .local v6, "hourDown":Landroid/animation/ObjectAnimator;
    const-wide/16 v14, 0x1a9

    invoke-virtual {v6, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 717
    sget-object v14, Lcom/android/keyguard/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    invoke-virtual {v6, v14}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 719
    sget-object v14, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalHour:Landroid/widget/TextView;

    const-string/jumbo v15, "alpha"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_1

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 720
    .local v5, "hourAlphaIn":Landroid/animation/ObjectAnimator;
    const-wide/16 v14, 0x1a9

    invoke-virtual {v5, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 721
    sget-object v14, Lcom/android/keyguard/Ease$Sine;->easeInOut:Landroid/animation/TimeInterpolator;

    invoke-virtual {v5, v14}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 724
    sget-object v14, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalTimeLayout:Landroid/widget/LinearLayout;

    const-string/jumbo v15, "translationY"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    aput v17, v16, v18

    const/16 v17, 0x1

    aput v13, v16, v17

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 725
    .local v4, "horizontalTimeTranslationY":Landroid/animation/ObjectAnimator;
    const-wide/16 v14, 0x1a9

    invoke-virtual {v4, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 726
    sget-object v14, Lcom/android/keyguard/Ease$Cubic;->easeInOut:Landroid/animation/TimeInterpolator;

    invoke-virtual {v4, v14}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 728
    sget-object v14, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalTimeLayout:Landroid/widget/LinearLayout;

    const-string/jumbo v15, "alpha"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_2

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 729
    .local v3, "horizontalTimeAlphaOut":Landroid/animation/ObjectAnimator;
    const-wide/16 v14, 0xd2

    invoke-virtual {v3, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 730
    sget-object v14, Lcom/android/keyguard/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v14}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 733
    sget-object v14, Lcom/android/keyguard/MiuiKeyguardClock;->mDateAndBatteryInfoLayout:Landroid/widget/FrameLayout;

    const-string/jumbo v15, "translationY"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    neg-float v0, v12

    move/from16 v17, v0

    const/16 v18, 0x0

    aput v17, v16, v18

    const/16 v17, 0x0

    const/16 v18, 0x1

    aput v17, v16, v18

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 734
    .local v2, "dateDown":Landroid/animation/ObjectAnimator;
    const-wide/16 v14, 0x1a9

    invoke-virtual {v2, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 735
    sget-object v14, Lcom/android/keyguard/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v14}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 738
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/MiuiKeyguardClock;->mSimCardInfo:Landroid/widget/TextView;

    const-string/jumbo v15, "translationY"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    neg-float v0, v12

    move/from16 v17, v0

    const/16 v18, 0x0

    aput v17, v16, v18

    const/16 v17, 0x0

    const/16 v18, 0x1

    aput v17, v16, v18

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 739
    .local v11, "simDown":Landroid/animation/ObjectAnimator;
    const-wide/16 v14, 0x1a9

    invoke-virtual {v11, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 740
    sget-object v14, Lcom/android/keyguard/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    invoke-virtual {v11, v14}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 743
    sget-object v14, Lcom/android/keyguard/MiuiKeyguardClock;->mOwnerInfo:Landroid/widget/TextView;

    const-string/jumbo v15, "translationY"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    neg-float v0, v12

    move/from16 v17, v0

    const/16 v18, 0x0

    aput v17, v16, v18

    const/16 v17, 0x0

    const/16 v18, 0x1

    aput v17, v16, v18

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 744
    .local v9, "ownerInfoDown":Landroid/animation/ObjectAnimator;
    const-wide/16 v14, 0x1a9

    invoke-virtual {v9, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 745
    sget-object v14, Lcom/android/keyguard/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    invoke-virtual {v9, v14}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 747
    sget-object v14, Lcom/android/keyguard/MiuiKeyguardClock;->mOwnerInfo:Landroid/widget/TextView;

    const-string/jumbo v15, "alpha"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_3

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 748
    .local v10, "ownerInfoInAlpha":Landroid/animation/ObjectAnimator;
    const-wide/16 v14, 0x1a9

    invoke-virtual {v10, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 749
    sget-object v14, Lcom/android/keyguard/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    invoke-virtual {v10, v14}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 751
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalToVerticalAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v14, v8}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v14

    invoke-virtual {v14, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v14

    invoke-virtual {v14, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v14

    invoke-virtual {v14, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v14

    invoke-virtual {v14, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v14

    invoke-virtual {v14, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v14

    invoke-virtual {v14, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v14

    invoke-virtual {v14, v11}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v14

    invoke-virtual {v14, v9}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v14

    invoke-virtual {v14, v10}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 753
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalToVerticalAnim:Landroid/animation/AnimatorSet;

    new-instance v15, Lcom/android/keyguard/MiuiKeyguardClock$10;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/keyguard/MiuiKeyguardClock$10;-><init>(Lcom/android/keyguard/MiuiKeyguardClock;)V

    invoke-virtual {v14, v15}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 767
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalToVerticalAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v14}, Landroid/animation/AnimatorSet;->start()V

    .line 697
    return-void

    .line 711
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 719
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 728
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 747
    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public playVerticalToHorizontalAnim()V
    .locals 21

    .prologue
    .line 617
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalTimeLayoutHeight:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalTimePaddingTop:F

    move/from16 v17, v0

    sub-float v16, v16, v17

    const/high16 v17, 0x40000000    # 2.0f

    div-float v16, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalTimePaddingTop:F

    move/from16 v17, v0

    add-float v16, v16, v17

    .line 618
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalTimeLayoutHeight:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalTimePaddingTop:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalTimePaddingTop:F

    move/from16 v18, v0

    add-float v17, v17, v18

    .line 617
    sub-float v15, v16, v17

    .line 621
    .local v15, "translationY":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalTimeLayoutHeight:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalTimeLayoutHeight:F

    move/from16 v17, v0

    sub-float v14, v16, v17

    .line 624
    .local v14, "translationExtra":F
    sget-object v16, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalMin:Landroid/widget/TextView;

    const-string/jumbo v17, "translationY"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    aput v19, v18, v20

    neg-float v0, v15

    move/from16 v19, v0

    const/16 v20, 0x1

    aput v19, v18, v20

    invoke-static/range {v16 .. v18}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 625
    .local v10, "minUp":Landroid/animation/ObjectAnimator;
    const-wide/16 v16, 0x1a9

    move-wide/from16 v0, v16

    invoke-virtual {v10, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 626
    sget-object v16, Lcom/android/keyguard/Ease$Cubic;->easeInOut:Landroid/animation/TimeInterpolator;

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 628
    sget-object v16, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalMin:Landroid/widget/TextView;

    const-string/jumbo v17, "alpha"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    fill-array-data v18, :array_0

    invoke-static/range {v16 .. v18}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 629
    .local v9, "minAlphaOut":Landroid/animation/ObjectAnimator;
    const-wide/16 v16, 0xd2

    move-wide/from16 v0, v16

    invoke-virtual {v9, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 630
    sget-object v16, Lcom/android/keyguard/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 632
    sget-object v16, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalHour:Landroid/widget/TextView;

    const-string/jumbo v17, "translationY"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    aput v19, v18, v20

    neg-float v0, v15

    move/from16 v19, v0

    const/16 v20, 0x1

    aput v19, v18, v20

    invoke-static/range {v16 .. v18}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 633
    .local v8, "hourUp":Landroid/animation/ObjectAnimator;
    const-wide/16 v16, 0x1a9

    move-wide/from16 v0, v16

    invoke-virtual {v8, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 634
    sget-object v16, Lcom/android/keyguard/Ease$Cubic;->easeInOut:Landroid/animation/TimeInterpolator;

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 636
    sget-object v16, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalHour:Landroid/widget/TextView;

    const-string/jumbo v17, "alpha"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    fill-array-data v18, :array_1

    invoke-static/range {v16 .. v18}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 637
    .local v7, "hourAlphaOut":Landroid/animation/ObjectAnimator;
    const-wide/16 v16, 0xd2

    move-wide/from16 v0, v16

    invoke-virtual {v7, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 638
    sget-object v16, Lcom/android/keyguard/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 642
    sget-object v16, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalTimeLayout:Landroid/widget/LinearLayout;

    const-string/jumbo v17, "scaleX"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    fill-array-data v18, :array_2

    invoke-static/range {v16 .. v18}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 643
    .local v4, "horizontalTimeScaleX":Landroid/animation/ObjectAnimator;
    sget-object v16, Lcom/android/keyguard/Ease$Cubic;->easeInOut:Landroid/animation/TimeInterpolator;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 645
    sget-object v16, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalTimeLayout:Landroid/widget/LinearLayout;

    const-string/jumbo v17, "scaleY"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    fill-array-data v18, :array_3

    invoke-static/range {v16 .. v18}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 646
    .local v5, "horizontalTimeScaleY":Landroid/animation/ObjectAnimator;
    const-wide/16 v16, 0x1a9

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 647
    sget-object v16, Lcom/android/keyguard/Ease$Cubic;->easeInOut:Landroid/animation/TimeInterpolator;

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 650
    sget-object v16, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalTimeLayout:Landroid/widget/LinearLayout;

    const-string/jumbo v17, "translationY"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v19, v15, v19

    const/16 v20, 0x0

    aput v19, v18, v20

    const/16 v19, 0x0

    const/16 v20, 0x1

    aput v19, v18, v20

    invoke-static/range {v16 .. v18}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 651
    .local v6, "horizontalTimeUp":Landroid/animation/ObjectAnimator;
    const-wide/16 v16, 0x1a9

    move-wide/from16 v0, v16

    invoke-virtual {v6, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 652
    sget-object v16, Lcom/android/keyguard/Ease$Cubic;->easeInOut:Landroid/animation/TimeInterpolator;

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 654
    sget-object v16, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalTimeLayout:Landroid/widget/LinearLayout;

    const-string/jumbo v17, "alpha"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    fill-array-data v18, :array_4

    invoke-static/range {v16 .. v18}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 655
    .local v3, "horizontalTimeAlpha":Landroid/animation/ObjectAnimator;
    const-wide/16 v16, 0x1a9

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 658
    sget-object v16, Lcom/android/keyguard/MiuiKeyguardClock;->mDateAndBatteryInfoLayout:Landroid/widget/FrameLayout;

    const-string/jumbo v17, "translationY"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    aput v19, v18, v20

    neg-float v0, v14

    move/from16 v19, v0

    const/16 v20, 0x1

    aput v19, v18, v20

    invoke-static/range {v16 .. v18}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 659
    .local v2, "dateUp":Landroid/animation/ObjectAnimator;
    const-wide/16 v16, 0x1a9

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 660
    sget-object v16, Lcom/android/keyguard/Ease$Cubic;->easeInOut:Landroid/animation/TimeInterpolator;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/MiuiKeyguardClock;->mSimCardInfo:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const-string/jumbo v17, "translationY"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    aput v19, v18, v20

    neg-float v0, v14

    move/from16 v19, v0

    const/16 v20, 0x1

    aput v19, v18, v20

    invoke-static/range {v16 .. v18}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    .line 664
    .local v13, "simUp":Landroid/animation/ObjectAnimator;
    const-wide/16 v16, 0x1a9

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 665
    sget-object v16, Lcom/android/keyguard/Ease$Cubic;->easeInOut:Landroid/animation/TimeInterpolator;

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 668
    sget-object v16, Lcom/android/keyguard/MiuiKeyguardClock;->mOwnerInfo:Landroid/widget/TextView;

    const-string/jumbo v17, "translationY"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    aput v19, v18, v20

    neg-float v0, v14

    move/from16 v19, v0

    const/16 v20, 0x1

    aput v19, v18, v20

    invoke-static/range {v16 .. v18}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    .line 669
    .local v12, "ownerInfoUp":Landroid/animation/ObjectAnimator;
    const-wide/16 v16, 0x1a9

    move-wide/from16 v0, v16

    invoke-virtual {v12, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 670
    sget-object v16, Lcom/android/keyguard/Ease$Cubic;->easeInOut:Landroid/animation/TimeInterpolator;

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 672
    sget-object v16, Lcom/android/keyguard/MiuiKeyguardClock;->mOwnerInfo:Landroid/widget/TextView;

    const-string/jumbo v17, "alpha"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    fill-array-data v18, :array_5

    invoke-static/range {v16 .. v18}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 673
    .local v11, "ownerInfoOutAlpha":Landroid/animation/ObjectAnimator;
    const-wide/16 v16, 0xd2

    move-wide/from16 v0, v16

    invoke-virtual {v11, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 674
    sget-object v16, Lcom/android/keyguard/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalToHorizontalAnim:Landroid/animation/AnimatorSet;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalToHorizontalAnim:Landroid/animation/AnimatorSet;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/keyguard/MiuiKeyguardClock$9;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/keyguard/MiuiKeyguardClock$9;-><init>(Lcom/android/keyguard/MiuiKeyguardClock;)V

    invoke-virtual/range {v16 .. v17}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalToHorizontalAnim:Landroid/animation/AnimatorSet;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/animation/AnimatorSet;->start()V

    .line 615
    return-void

    .line 628
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 636
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 642
    :array_2
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    .line 645
    :array_3
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    .line 654
    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 672
    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public refreshTime()V
    .locals 0

    .prologue
    .line 782
    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardClock;->onResume()V

    .line 781
    return-void
.end method

.method public setDark(Z)V
    .locals 0
    .param p1, "dark"    # Z

    .prologue
    .line 774
    return-void
.end method

.method public setDarkMode(Z)V
    .locals 3
    .param p1, "darkMode"    # Z

    .prologue
    .line 311
    iput-boolean p1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mDarkMode:Z

    .line 312
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardClock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x90c00fb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 313
    .local v0, "color":I
    :goto_0
    sget-object v1, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalHour:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 314
    sget-object v1, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalMin:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 315
    sget-object v1, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalHour:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 316
    sget-object v1, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalDot:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 317
    sget-object v1, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalMin:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 318
    sget-object v1, Lcom/android/keyguard/MiuiKeyguardClock;->mCurrentDate:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 319
    sget-object v1, Lcom/android/keyguard/MiuiKeyguardClock;->mBatteryInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 320
    sget-object v1, Lcom/android/keyguard/MiuiKeyguardClock;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 321
    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mSimCardInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 322
    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardClock;->updateTime()V

    .line 310
    return-void

    .line 312
    .end local v0    # "color":I
    :cond_0
    const/4 v0, -0x1

    .restart local v0    # "color":I
    goto :goto_0
.end method

.method public updateBatteryInfoAndDate()V
    .locals 4

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 497
    iget-boolean v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mShowBatteryInfo:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "is_pad"

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    sget-object v0, Lcom/android/keyguard/MiuiKeyguardClock;->mCurrentDate:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 499
    sget-object v0, Lcom/android/keyguard/MiuiKeyguardClock;->mBatteryInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 500
    sget-object v0, Lcom/android/keyguard/MiuiKeyguardClock;->mCurrentDate:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 501
    sget-object v0, Lcom/android/keyguard/MiuiKeyguardClock;->mBatteryInfo:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 502
    sget-object v0, Lcom/android/keyguard/MiuiKeyguardClock;->mBatteryInfo:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mBatteryInfoAndDateTransition:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 503
    sget-object v0, Lcom/android/keyguard/MiuiKeyguardClock;->mBatteryInfo:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mBatteryInfoAndDateTransition:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 496
    :goto_0
    return-void

    .line 505
    :cond_0
    sget-object v0, Lcom/android/keyguard/MiuiKeyguardClock;->mCurrentDate:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 506
    sget-object v0, Lcom/android/keyguard/MiuiKeyguardClock;->mBatteryInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateClockView(ZZ)V
    .locals 4
    .param p1, "hasNotifiction"    # Z
    .param p2, "isUnderKeyguard"    # Z

    .prologue
    const/4 v1, 0x0

    .line 528
    if-eqz p2, :cond_1

    .line 529
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/MiuiKeyguardUtils;->isSupportVerticalClock(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 530
    iget-boolean v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mHasNotification:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    .line 536
    :cond_0
    iput-boolean p1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mHasNotification:Z

    .line 537
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 538
    invoke-direct {p0}, Lcom/android/keyguard/MiuiKeyguardClock;->updateClockView()V

    .line 527
    :cond_1
    :goto_0
    return-void

    .line 531
    :cond_2
    iput-boolean v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mHasNotification:Z

    .line 534
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 541
    :cond_3
    iput-boolean p1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mHasNotification:Z

    .line 542
    invoke-direct {p0}, Lcom/android/keyguard/MiuiKeyguardClock;->showHorizontalTime()V

    goto :goto_0
.end method

.method public updateHourFormat()V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->m24HourFormat:Z

    .line 247
    return-void
.end method

.method public updateOwnerInfo()V
    .locals 2

    .prologue
    .line 252
    sget-object v0, Lcom/android/keyguard/MiuiKeyguardClock;->mOwnerInfo:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardCompatibilityHelperForN;->getOwnerInfo(Landroid/security/MiuiLockPatternUtils;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mOwnerInfoString:Ljava/lang/String;

    .line 254
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mOwnerInfoString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 255
    sget-object v0, Lcom/android/keyguard/MiuiKeyguardClock;->mOwnerInfo:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 256
    sget-object v0, Lcom/android/keyguard/MiuiKeyguardClock;->mOwnerInfo:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mOwnerInfoString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    :goto_0
    return-void

    .line 258
    :cond_1
    sget-object v0, Lcom/android/keyguard/MiuiKeyguardClock;->mOwnerInfo:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateSimCardInfo()V
    .locals 4

    .prologue
    .line 263
    iget-boolean v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mDisplaySimCardInfo:Z

    if-eqz v1, :cond_1

    .line 264
    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mSimCardInfo:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 265
    const-string/jumbo v1, " | "

    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mRealCarrier:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/keyguard/MiuiKeyguardUtils;->join(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, "str":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 267
    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mSimCardInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    .end local v0    # "str":Ljava/lang/String;
    :goto_0
    return-void

    .line 269
    .restart local v0    # "str":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mSimCardInfo:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x9100437

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 272
    .end local v0    # "str":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mSimCardInfo:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateTime()V
    .locals 6

    .prologue
    .line 377
    iget-object v3, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mCalendar:Lmiui/date/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 378
    iget-object v3, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mCalendar:Lmiui/date/Calendar;

    const/16 v4, 0x12

    invoke-virtual {v3, v4}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    .line 379
    .local v1, "hour":I
    iget-boolean v3, p0, Lcom/android/keyguard/MiuiKeyguardClock;->m24HourFormat:Z

    if-nez v3, :cond_0

    const/16 v3, 0xc

    if-le v1, v3, :cond_0

    add-int/lit8 v1, v1, -0xc

    .line 380
    :cond_0
    iget-boolean v3, p0, Lcom/android/keyguard/MiuiKeyguardClock;->m24HourFormat:Z

    if-nez v3, :cond_1

    if-nez v1, :cond_1

    const/16 v1, 0xc

    .line 381
    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mCalendar:Lmiui/date/Calendar;

    const/16 v4, 0x14

    invoke-virtual {v3, v4}, Lmiui/date/Calendar;->get(I)I

    move-result v2

    .line 383
    .local v2, "minute":I
    sget-object v3, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalHour:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    sget-object v3, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalHour:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/android/keyguard/MiuiKeyguardUtils;->formatTime(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    sget-object v3, Lcom/android/keyguard/MiuiKeyguardClock;->mHorizontalMin:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/android/keyguard/MiuiKeyguardUtils;->formatTime(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    sget-object v3, Lcom/android/keyguard/MiuiKeyguardClock;->mVerticalMin:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/android/keyguard/MiuiKeyguardUtils;->formatTime(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    iget-boolean v3, p0, Lcom/android/keyguard/MiuiKeyguardClock;->m24HourFormat:Z

    if-eqz v3, :cond_2

    const v0, 0x91003b0

    .line 389
    .local v0, "dateResId":I
    :goto_0
    sget-object v3, Lcom/android/keyguard/MiuiKeyguardClock;->mCurrentDate:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mCalendar:Lmiui/date/Calendar;

    iget-object v5, p0, Lcom/android/keyguard/MiuiKeyguardClock;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmiui/date/Calendar;->format(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    return-void

    .line 388
    .end local v0    # "dateResId":I
    :cond_2
    const v0, 0x91003b1

    .restart local v0    # "dateResId":I
    goto :goto_0
.end method
