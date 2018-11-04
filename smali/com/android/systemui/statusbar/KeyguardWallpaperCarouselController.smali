.class public Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;
.super Ljava/lang/Object;
.source "KeyguardWallpaperCarouselController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$1;,
        Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$2;,
        Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$3;,
        Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$4;,
        Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$5;
    }
.end annotation


# static fields
.field public static final DEFAULT_FASHIONGALLERY_PACKAGE_NAME:Ljava/lang/String;


# instance fields
.field private mClockValueAnimator:Landroid/animation/ValueAnimator;

.field private mContext:Landroid/content/Context;

.field private mDesValueAnimator:Landroid/animation/ValueAnimator;

.field private mHaveDelayResetClockTask:Z

.field private mIsSwitchAnimating:Z

.field private mKeyguardClockView:Lcom/android/keyguard/MiuiKeyguardClock;

.field private final mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mLockWallpaperProviderObserver:Landroid/database/ContentObserver;

.field private mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field mResetClockRunnable:Ljava/lang/Runnable;

.field private mShowPreviewButton:Landroid/widget/TextView;

.field private mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private mSwitchAnimator:Landroid/animation/AnimatorSet;

.field private mSwitchSystemUser:Landroid/widget/TextView;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mViewConfiguration:Landroid/view/ViewConfiguration;

.field private mWallPaperDes:Lcom/android/keyguard/wallpaper/WallPaperDesView;

.field private final mWallpaperChangeCallback:Lcom/android/keyguard/KeyguardUpdateMonitor$WallpaperChangeCallback;

.field private mWallpaperPreviewAvailable:Z

.field private mWallpaperRefreshOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;)Lcom/android/keyguard/MiuiKeyguardClock;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mKeyguardClockView:Lcom/android/keyguard/MiuiKeyguardClock;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mSwitchSystemUser:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;)Lcom/android/keyguard/wallpaper/WallPaperDesView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mWallPaperDes:Lcom/android/keyguard/wallpaper/WallPaperDesView;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mWallpaperPreviewAvailable:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mIsSwitchAnimating:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mWallpaperPreviewAvailable:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->needHideProvider()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;Z)V
    .locals 0
    .param p1, "toWallPaper"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->switchToKeyguardWallpaperCarousel(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;Z)V
    .locals 0
    .param p1, "maybeQueryWallpaperInfo"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->updateWallpaperPreview(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    sget-boolean v0, Lcom/android/systemui/Constants;->IS_INTERNATIONAL:Z

    if-eqz v0, :cond_0

    .line 64
    const-string/jumbo v0, "com.mfashiongallery.emag"

    .line 62
    :goto_0
    sput-object v0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->DEFAULT_FASHIONGALLERY_PACKAGE_NAME:Ljava/lang/String;

    .line 39
    return-void

    .line 64
    :cond_0
    const-string/jumbo v0, "com.mfashiongallery.emag"

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notificationPanelView"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$1;-><init>(Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;)V

    .line 98
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 117
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$2;-><init>(Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;)V

    .line 116
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mWallpaperChangeCallback:Lcom/android/keyguard/KeyguardUpdateMonitor$WallpaperChangeCallback;

    .line 136
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$3;-><init>(Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mLockWallpaperProviderObserver:Landroid/database/ContentObserver;

    .line 143
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$4;-><init>(Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mWallpaperRefreshOnClickListener:Landroid/view/View$OnClickListener;

    .line 235
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mSwitchAnimator:Landroid/animation/AnimatorSet;

    .line 341
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mHaveDelayResetClockTask:Z

    .line 351
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$5;-><init>(Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mResetClockRunnable:Ljava/lang/Runnable;

    .line 71
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 72
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mContext:Landroid/content/Context;

    .line 74
    check-cast p2, Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .end local p2    # "notificationPanelView":Landroid/view/ViewGroup;
    iput-object p2, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 76
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const v1, 0x91201a1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/wallpaper/WallPaperDesView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mWallPaperDes:Lcom/android/keyguard/wallpaper/WallPaperDesView;

    .line 77
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mWallPaperDes:Lcom/android/keyguard/wallpaper/WallPaperDesView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/keyguard/wallpaper/WallPaperDesView;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mWallPaperDes:Lcom/android/keyguard/wallpaper/WallPaperDesView;

    const v1, 0x91201ac

    invoke-virtual {v0, v1}, Lcom/android/keyguard/wallpaper/WallPaperDesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mShowPreviewButton:Landroid/widget/TextView;

    .line 80
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mShowPreviewButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mWallpaperRefreshOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const v1, 0x9120185

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/MiuiKeyguardClock;

    .line 82
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mKeyguardClockView:Lcom/android/keyguard/MiuiKeyguardClock;

    .line 84
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const v1, 0x91202d1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mSwitchSystemUser:Landroid/widget/TextView;

    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mWallpaperChangeCallback:Lcom/android/keyguard/KeyguardUpdateMonitor$WallpaperChangeCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerWallpaperChangeCallback(Lcom/android/keyguard/KeyguardUpdateMonitor$WallpaperChangeCallback;)V

    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 88
    const-string/jumbo v1, "lock_wallpaper_provider_authority"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 89
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mLockWallpaperProviderObserver:Landroid/database/ContentObserver;

    const/4 v3, -0x1

    .line 87
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 91
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 93
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mViewConfiguration:Landroid/view/ViewConfiguration;

    .line 95
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->updateWallpaperPreview(Z)V

    .line 69
    return-void
.end method

.method private cancelSwitchAnimate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 321
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mSwitchAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mSwitchAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 323
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mSwitchAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mDesValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 326
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mDesValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 327
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mDesValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 328
    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mDesValueAnimator:Landroid/animation/ValueAnimator;

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mClockValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 331
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mClockValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 332
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mClockValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 333
    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mClockValueAnimator:Landroid/animation/ValueAnimator;

    .line 320
    :cond_2
    return-void
.end method

.method public static hideLockScreenInActivityManager()V
    .locals 3

    .prologue
    .line 175
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_0

    .line 177
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-static {v1, v2}, Landroid/app/ActivityManagerCompat;->setLockScreenShown(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .local v0, "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void

    .line 178
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_0
    move-exception v0

    .restart local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private needHideProvider()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 229
    sget-boolean v1, Lcom/android/systemui/Constants;->IS_INTERNATIONAL:Z

    if-nez v1, :cond_0

    .line 230
    return v0

    .line 232
    :cond_0
    const-string/jumbo v1, "IN"

    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private postDelayedResetClock()V
    .locals 4

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mResetClockRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mHaveDelayResetClockTask:Z

    .line 343
    return-void
.end method

.method private removeResetClockCallbacks()V
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mResetClockRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mHaveDelayResetClockTask:Z

    .line 347
    return-void

    .line 348
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private startSwitchAnimator()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 386
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mSwitchAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mSwitchAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mIsSwitchAnimating:Z

    if-eqz v0, :cond_1

    .line 387
    :cond_0
    return-void

    .line 389
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mKeyguardClockView:Lcom/android/keyguard/MiuiKeyguardClock;

    invoke-virtual {v0}, Lcom/android/keyguard/MiuiKeyguardClock;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 390
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->switchToKeyguardWallpaperCarousel(Z)V

    .line 385
    :goto_0
    return-void

    .line 392
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->switchToKeyguardWallpaperCarousel(Z)V

    goto :goto_0
.end method

.method private switchToKeyguardWallpaperCarousel(Z)V
    .locals 6
    .param p1, "toWallPaper"    # Z

    .prologue
    const-wide/16 v4, 0x1f4

    const/4 v2, 0x2

    .line 240
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->cancelSwitchAnimate()V

    .line 242
    if-eqz p1, :cond_1

    .line 243
    new-array v0, v2, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mDesValueAnimator:Landroid/animation/ValueAnimator;

    .line 244
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mDesValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 245
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mDesValueAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/keyguard/Ease$Cubic;->easeInOut:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 246
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mDesValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$7;-><init>(Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 253
    new-array v0, v2, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mClockValueAnimator:Landroid/animation/ValueAnimator;

    .line 254
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mClockValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 255
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mClockValueAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/keyguard/Ease$Quint;->easeOut:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 256
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mClockValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$8;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$8;-><init>(Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 265
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mSwitchAnimator:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mDesValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mClockValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 266
    const-string/jumbo v0, "show"

    invoke-static {v0}, Lcom/android/keyguard/AnalyticsHelper;->recordKeyguardPreviewButton(Ljava/lang/String;)V

    .line 293
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mSwitchAnimator:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$11;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$11;-><init>(Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 312
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mSwitchAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 314
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->removeResetClockCallbacks()V

    .line 315
    if-eqz p1, :cond_0

    .line 316
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->postDelayedResetClock()V

    .line 239
    :cond_0
    return-void

    .line 268
    :cond_1
    new-array v0, v2, [F

    fill-array-data v0, :array_2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mDesValueAnimator:Landroid/animation/ValueAnimator;

    .line 269
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mDesValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 270
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mDesValueAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/keyguard/Ease$Quint;->easeOut:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 271
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mDesValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$9;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$9;-><init>(Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 278
    new-array v0, v2, [F

    fill-array-data v0, :array_3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mClockValueAnimator:Landroid/animation/ValueAnimator;

    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mClockValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 280
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mClockValueAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/keyguard/Ease$Cubic;->easeInOut:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 281
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mClockValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$10;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$10;-><init>(Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 290
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mSwitchAnimator:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mDesValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mClockValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_0

    .line 243
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 253
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 268
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 278
    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateWallpaperPreview(Z)V
    .locals 3
    .param p1, "maybeQueryWallpaperInfo"    # Z

    .prologue
    .line 184
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$6;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$6;-><init>(Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;Z)V

    .line 225
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 184
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$6;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 183
    return-void
.end method


# virtual methods
.method public getWallPaperDes()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mWallPaperDes:Lcom/android/keyguard/wallpaper/WallPaperDesView;

    return-object v0
.end method

.method public handleSingleClickEvent()V
    .locals 4

    .prologue
    .line 375
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 376
    .local v0, "currentConfig":Landroid/content/res/Configuration;
    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v1

    .line 377
    .local v1, "region":Ljava/lang/String;
    const-string/jumbo v2, "zh"

    iget-object v3, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "CN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 378
    :cond_0
    sget-boolean v2, Lcom/android/systemui/Constants;->IS_INTERNATIONAL:Z

    .line 377
    if-eqz v2, :cond_2

    .line 379
    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mWallpaperPreviewAvailable:Z

    .line 377
    if-eqz v2, :cond_2

    .line 380
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getWallpaperInfo()Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;->isLockScreenMagazine:Z

    .line 377
    if-eqz v2, :cond_2

    .line 381
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->startSwitchAnimator()V

    .line 374
    :cond_2
    return-void
.end method

.method public isSwitchAnimating()Z
    .locals 1

    .prologue
    .line 338
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mIsSwitchAnimating:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;IFF)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "statusBarState"    # I
    .param p3, "initialTouchX"    # F
    .param p4, "initialTouchY"    # F

    .prologue
    const/4 v2, 0x1

    .line 364
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mViewConfiguration:Landroid/view/ViewConfiguration;

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    .line 365
    .local v0, "touchSlop":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_0

    if-ne p2, v2, :cond_0

    .line 366
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQSFullyCollapsed()Z

    move-result v1

    .line 365
    if-eqz v1, :cond_0

    .line 367
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    sub-float v1, p3, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    int-to-float v2, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 368
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    sub-float v1, p4, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    int-to-float v2, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 369
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->handleSingleClickEvent()V

    .line 363
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 159
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->cancelSwitchAnimate()V

    .line 160
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->removeResetClockCallbacks()V

    .line 161
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mWallPaperDes:Lcom/android/keyguard/wallpaper/WallPaperDesView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/keyguard/wallpaper/WallPaperDesView;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mWallPaperDes:Lcom/android/keyguard/wallpaper/WallPaperDesView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/wallpaper/WallPaperDesView;->setAlpha(F)V

    .line 163
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mKeyguardClockView:Lcom/android/keyguard/MiuiKeyguardClock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/MiuiKeyguardClock;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mKeyguardClockView:Lcom/android/keyguard/MiuiKeyguardClock;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/MiuiKeyguardClock;->setAlpha(F)V

    .line 165
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mSwitchSystemUser:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 158
    return-void
.end method

.method public setStatusBarKeyguardViewManager(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V
    .locals 0
    .param p1, "statusBarKeyguardViewManager"    # Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 108
    return-void
.end method

.method public setWallPaperViewsAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mWallPaperDes:Lcom/android/keyguard/wallpaper/WallPaperDesView;

    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/WallPaperDesView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mIsSwitchAnimating:Z

    if-eqz v0, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->mWallPaperDes:Lcom/android/keyguard/wallpaper/WallPaperDesView;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/wallpaper/WallPaperDesView;->setAlpha(F)V

    goto :goto_0
.end method
