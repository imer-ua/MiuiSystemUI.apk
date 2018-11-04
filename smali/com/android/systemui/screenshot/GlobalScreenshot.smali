.class Lcom/android/systemui/screenshot/GlobalScreenshot;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/screenshot/GlobalScreenshot$1;,
        Lcom/android/systemui/screenshot/GlobalScreenshot$2;,
        Lcom/android/systemui/screenshot/GlobalScreenshot$3;,
        Lcom/android/systemui/screenshot/GlobalScreenshot$ScreenshotFinishCallback;
    }
.end annotation


# instance fields
.field private mBackgroundView:Landroid/widget/ImageView;

.field private mBeforeScreenshotReceiver:Landroid/content/BroadcastReceiver;

.field private mBgPadding:F

.field private mBgPaddingScale:F

.field private mConfigurationReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDisplay:Landroid/view/Display;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mHandler:Landroid/os/Handler;

.field private mIsInOutAnimating:Z

.field private mIsQuited:Z

.field private mIsSaved:Z

.field private mIsThumbnailMoving:Z

.field private mNotificationIconSize:I

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mNotifyMediaStoreData:Lcom/android/systemui/screenshot/NotifyMediaStoreData;

.field private mQuitThumbnailRunnable:Ljava/lang/Runnable;

.field private mRingtone:Landroid/media/Ringtone;

.field private mScreenBitmap:Landroid/graphics/Bitmap;

.field private mScreenShotUri:Landroid/net/Uri;

.field private mScreenshotAnimation:Landroid/animation/AnimatorSet;

.field private mScreenshotDisplay:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

.field private mScreenshotFlash:Landroid/widget/ImageView;

.field private mScreenshotLayout:Landroid/view/View;

.field private mScreenshotMaskDown:Landroid/view/View;

.field private mScreenshotMaskPenal:Landroid/view/View;

.field private mScreenshotMaskUp:Landroid/view/View;

.field private mScreenshotView:Landroid/widget/ImageView;

.field private mThumbnailLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mThumbnailMarginRight:I

.field private mThumbnailMarginTop:I

.field private mThumbnailRootView:Landroid/view/ViewGroup;

.field private mThumbnailShakeAnimator:Landroid/animation/ValueAnimator;

.field private mThumbnailView:Landroid/widget/ImageView;

.field private mTouchDownY:F

.field private mVTracker:Landroid/view/VelocityTracker;

.field private mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static synthetic -get10(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotMaskPenal:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotMaskUp:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/systemui/screenshot/GlobalScreenshot;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mThumbnailMarginTop:I

    return v0
.end method

.method static synthetic -get14(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mThumbnailRootView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mThumbnailShakeAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/NotifyMediaStoreData;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mNotifyMediaStoreData:Lcom/android/systemui/screenshot/NotifyMediaStoreData;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/media/Ringtone;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mRingtone:Landroid/media/Ringtone;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotDisplay:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotMaskDown:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/screenshot/GlobalScreenshot;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mIsInOutAnimating:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/screenshot/GlobalScreenshot;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mIsSaved:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/screenshot/GlobalScreenshot;Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->hasScreenshotSoundEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/screenshot/GlobalScreenshot;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->isShowThumbnail()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/systemui/screenshot/GlobalScreenshot;ZZ)V
    .locals 0
    .param p1, "isAnimating"    # Z
    .param p2, "needNotifyMediaStore"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->quitThumbnailWindow(ZZ)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/screenshot/GlobalScreenshot;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "animationFinisher"    # Ljava/lang/Runnable;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->startGotoThumbnailAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/screenshot/GlobalScreenshot;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->updateRingtone()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mVTracker:Landroid/view/VelocityTracker;

    .line 291
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHandler:Landroid/os/Handler;

    .line 293
    new-instance v0, Lcom/android/systemui/screenshot/GlobalScreenshot$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$1;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mBeforeScreenshotReceiver:Landroid/content/BroadcastReceiver;

    .line 303
    new-instance v0, Lcom/android/systemui/screenshot/GlobalScreenshot$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$2;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mConfigurationReceiver:Landroid/content/BroadcastReceiver;

    .line 331
    new-instance v0, Lcom/android/systemui/screenshot/GlobalScreenshot$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$3;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mQuitThumbnailRunnable:Ljava/lang/Runnable;

    .line 354
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 355
    .local v10, "r":Landroid/content/res/Resources;
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    .line 357
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 356
    check-cast v8, Landroid/view/LayoutInflater;

    .line 358
    .local v8, "layoutInflater":Landroid/view/LayoutInflater;
    new-instance v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-direct {v0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotDisplay:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    .line 361
    const v0, 0x9040041

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    .line 362
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    const v1, 0x91200f7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mBackgroundView:Landroid/widget/ImageView;

    .line 363
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    const v1, 0x91200f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    .line 364
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    const v1, 0x91200f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotFlash:Landroid/widget/ImageView;

    .line 365
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    const v1, 0x91200fa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotMaskPenal:Landroid/view/View;

    .line 366
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    const v1, 0x91200fb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotMaskUp:Landroid/view/View;

    .line 367
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    const v1, 0x91200fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotMaskDown:Landroid/view/View;

    .line 368
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 369
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/screenshot/GlobalScreenshot$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$4;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 378
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 379
    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 380
    const/16 v5, 0x7df

    .line 381
    const v6, 0x1080500

    .line 385
    const/4 v7, -0x3

    .line 378
    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 386
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 387
    const/4 v1, 0x1

    .line 386
    invoke-static {v0, v1}, Landroid/view/WindowManagerCompat;->setLayoutInDisplayCutoutMode(Landroid/view/WindowManager$LayoutParams;I)V

    .line 388
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-string/jumbo v1, "ScreenshotAnimation"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 389
    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    .line 391
    const-string/jumbo v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 390
    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mNotificationManager:Landroid/app/NotificationManager;

    .line 392
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    .line 393
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 394
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 397
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x90f0130

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mThumbnailMarginTop:I

    .line 398
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x90f0131

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mThumbnailMarginRight:I

    .line 400
    const v0, 0x9040043

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mThumbnailRootView:Landroid/view/ViewGroup;

    .line 401
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mThumbnailRootView:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/systemui/screenshot/GlobalScreenshot$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$5;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 410
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mThumbnailRootView:Landroid/view/ViewGroup;

    const v1, 0x912010a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mThumbnailView:Landroid/widget/ImageView;

    .line 411
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mThumbnailView:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/systemui/screenshot/GlobalScreenshot$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$6;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 418
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 420
    iget v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mThumbnailMarginRight:I

    iget v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mThumbnailMarginTop:I

    .line 419
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 421
    const/16 v5, 0x7de

    .line 422
    const v6, 0x10c0728

    .line 430
    const/4 v7, -0x3

    .line 418
    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mThumbnailLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 431
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mThumbnailLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 432
    const/4 v1, 0x1

    .line 431
    invoke-static {v0, v1}, Landroid/view/WindowManagerCompat;->setLayoutInDisplayCutoutMode(Landroid/view/WindowManager$LayoutParams;I)V

    .line 433
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mThumbnailLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x35

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 434
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mThumbnailLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-string/jumbo v1, "ScreenshotThumbnail"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 436
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v9, v0

    .line 437
    .local v9, "maxShakeOffset":I
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput v9, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mThumbnailShakeAnimator:Landroid/animation/ValueAnimator;

    .line 438
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mThumbnailShakeAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 439
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mThumbnailShakeAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 440
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mThumbnailShakeAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 441
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mThumbnailShakeAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 442
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mThumbnailShakeAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/screenshot/GlobalScreenshot$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$7;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 450
    const v0, 0x90f0057

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 449
    iput v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mNotificationIconSize:I

    .line 453
    const v0, 0x90f00be

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mBgPadding:F

    .line 454
    iget v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mBgPadding:F

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mBgPaddingScale:F

    .line 353
    return-void
.end method

.method public static afterTakeScreenshot(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1039
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.TAKE_SCREENSHOT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1040
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "IsFinished"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1041
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1038
    return-void
.end method

.method public static beforeTakeScreenshot(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1033
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.TAKE_SCREENSHOT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1034
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "IsFinished"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1035
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1032
    return-void
.end method

.method public static calcPivot(FFFF)F
    .locals 2
    .param p0, "bigStart"    # F
    .param p1, "bigSize"    # F
    .param p2, "shortStart"    # F
    .param p3, "shortSize"    # F

    .prologue
    .line 759
    sub-float v0, p2, p0

    mul-float/2addr v0, p3

    sub-float v1, p1, p3

    div-float/2addr v0, v1

    add-float/2addr v0, p2

    return v0
.end method

.method private createFinishAnimation()Landroid/animation/Animator;
    .locals 4

    .prologue
    .line 883
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 884
    .local v0, "anim":Landroid/animation/Animator;
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 885
    new-instance v1, Lcom/android/systemui/screenshot/GlobalScreenshot$20;

    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$20;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 891
    return-object v0

    .line 883
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private createScreenshotMaskAnimation()Landroid/animation/ValueAnimator;
    .locals 4

    .prologue
    .line 863
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 864
    .local v0, "anim":Landroid/animation/ValueAnimator;
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 865
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 866
    new-instance v1, Lcom/android/systemui/screenshot/GlobalScreenshot$18;

    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$18;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 872
    new-instance v1, Lcom/android/systemui/screenshot/GlobalScreenshot$19;

    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$19;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 880
    return-object v0

    .line 863
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private hasScreenshotSoundEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 749
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "has_screenshot_sound"

    .line 750
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 749
    invoke-static {v0, v1, v2, v3}, Landroid/provider/MiuiSettings$System;->getBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method private isShowThumbnail()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 754
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 755
    const-string/jumbo v2, "device_provisioned"

    .line 754
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static notifyMediaAndFinish(Landroid/content/Context;Lcom/android/systemui/screenshot/NotifyMediaStoreData;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # Lcom/android/systemui/screenshot/NotifyMediaStoreData;

    .prologue
    .line 462
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->notifyMediaAndFinish(Landroid/content/Context;Lcom/android/systemui/screenshot/NotifyMediaStoreData;Lcom/android/systemui/screenshot/GlobalScreenshot$ScreenshotFinishCallback;)V

    .line 461
    return-void
.end method

.method public static notifyMediaAndFinish(Landroid/content/Context;Lcom/android/systemui/screenshot/NotifyMediaStoreData;Lcom/android/systemui/screenshot/GlobalScreenshot$ScreenshotFinishCallback;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # Lcom/android/systemui/screenshot/NotifyMediaStoreData;
    .param p2, "callback"    # Lcom/android/systemui/screenshot/GlobalScreenshot$ScreenshotFinishCallback;

    .prologue
    .line 466
    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/android/systemui/screenshot/NotifyMediaStoreData;->isRunned:Z

    if-eqz v0, :cond_1

    :cond_0
    return-void

    .line 468
    :cond_1
    iget-boolean v0, p1, Lcom/android/systemui/screenshot/NotifyMediaStoreData;->saveFinished:Z

    if-nez v0, :cond_2

    .line 469
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/systemui/screenshot/NotifyMediaStoreData;->isPending:Z

    .line 470
    return-void

    .line 473
    :cond_2
    new-instance v0, Lcom/android/systemui/screenshot/GlobalScreenshot$8;

    invoke-direct {v0, p1, p0, p2}, Lcom/android/systemui/screenshot/GlobalScreenshot$8;-><init>(Lcom/android/systemui/screenshot/NotifyMediaStoreData;Landroid/content/Context;Lcom/android/systemui/screenshot/GlobalScreenshot$ScreenshotFinishCallback;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/systemui/screenshot/GlobalScreenshot$8;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 465
    return-void
.end method

.method static notifyScreenshotError(Landroid/content/Context;Landroid/app/NotificationManager;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nManager"    # Landroid/app/NotificationManager;

    .prologue
    .line 1027
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1028
    .local v0, "r":Landroid/content/res/Resources;
    const/16 v1, 0x315

    invoke-virtual {p1, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1029
    const v1, 0x910007c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1026
    return-void
.end method

.method private quitThumbnailWindow(ZZ)V
    .locals 6
    .param p1, "isAnimating"    # Z
    .param p2, "needNotifyMediaStore"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 823
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 824
    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mIsQuited:Z

    if-eqz v2, :cond_1

    return-void

    .line 825
    :cond_1
    iput-boolean v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mIsQuited:Z

    .line 827
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mQuitThumbnailRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 828
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mThumbnailShakeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 829
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mBeforeScreenshotReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 830
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mConfigurationReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 832
    if-nez p1, :cond_3

    .line 833
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mThumbnailRootView:Landroid/view/ViewGroup;

    invoke-interface {v2, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 857
    :goto_0
    if-eqz p2, :cond_2

    .line 858
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mNotifyMediaStoreData:Lcom/android/systemui/screenshot/NotifyMediaStoreData;

    invoke-static {v2, v3}, Lcom/android/systemui/screenshot/GlobalScreenshot;->notifyMediaAndFinish(Landroid/content/Context;Lcom/android/systemui/screenshot/NotifyMediaStoreData;)V

    .line 822
    :cond_2
    return-void

    .line 835
    :cond_3
    iput-boolean v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mIsInOutAnimating:Z

    .line 836
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mThumbnailLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 837
    .local v1, "initWindowY":I
    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v4, v2, v4

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mThumbnailMarginTop:I

    add-int/2addr v3, v4

    aput v3, v2, v5

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 838
    .local v0, "animator":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 839
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 840
    new-instance v2, Lcom/android/systemui/screenshot/GlobalScreenshot$16;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/screenshot/GlobalScreenshot$16;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;I)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 846
    new-instance v2, Lcom/android/systemui/screenshot/GlobalScreenshot$17;

    invoke-direct {v2, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$17;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 854
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private saveScreenshotInWorkerThread(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "saveFinisher"    # Ljava/lang/Runnable;
    .param p2, "totalFinisher"    # Ljava/lang/Runnable;

    .prologue
    .line 634
    new-instance v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    invoke-direct {v0}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;-><init>()V

    .line 635
    .local v0, "data":Lcom/android/systemui/screenshot/SaveImageInBackgroundData;
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    iput-object v2, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    .line 636
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    iput-object v2, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    .line 637
    iget v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mNotificationIconSize:I

    iput v2, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->iconSize:I

    .line 638
    iput-object p1, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->finisher:Ljava/lang/Runnable;

    .line 639
    new-instance v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-direct {v1, v2, v0, v3}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;-><init>(Landroid/content/Context;Lcom/android/systemui/screenshot/SaveImageInBackgroundData;Landroid/app/NotificationManager;)V

    .line 640
    .local v1, "task":Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 641
    iget-object v2, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotifyMediaStoreData:Lcom/android/systemui/screenshot/NotifyMediaStoreData;

    iput-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mNotifyMediaStoreData:Lcom/android/systemui/screenshot/NotifyMediaStoreData;

    .line 642
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mNotifyMediaStoreData:Lcom/android/systemui/screenshot/NotifyMediaStoreData;

    iput-object p2, v2, Lcom/android/systemui/screenshot/NotifyMediaStoreData;->finisher:Ljava/lang/Runnable;

    .line 633
    return-void
.end method

.method private showThumbnailWindow()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const v3, 0x3e3d70a4    # 0.185f

    const/4 v6, 0x0

    .line 792
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mThumbnailRootView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 793
    invoke-direct {p0, v6, v7}, Lcom/android/systemui/screenshot/GlobalScreenshot;->quitThumbnailWindow(ZZ)V

    .line 796
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    float-to-int v1, v2

    .line 797
    .local v1, "thumbnailWidth":I
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    float-to-int v0, v2

    .line 800
    .local v0, "thumbnailHeight":I
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 801
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 802
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mThumbnailRootView:Landroid/view/ViewGroup;

    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 803
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 802
    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->measure(II)V

    .line 804
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mThumbnailRootView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mThumbnailRootView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mThumbnailRootView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v2, v6, v6, v3, v4}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 806
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mThumbnailLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mThumbnailMarginTop:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 807
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mThumbnailLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mThumbnailRootView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 808
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mThumbnailLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mThumbnailRootView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 810
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mThumbnailRootView:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mThumbnailLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 811
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mQuitThumbnailRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0xe10

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 813
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mThumbnailView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 814
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 816
    iput-boolean v6, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mIsQuited:Z

    .line 818
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mBeforeScreenshotReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string/jumbo v5, "miui.intent.TAKE_SCREENSHOT"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 819
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mConfigurationReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string/jumbo v5, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 791
    return-void
.end method

.method private startAnimation(Ljava/lang/Runnable;IIZZ)V
    .locals 4
    .param p1, "animationFinisher"    # Ljava/lang/Runnable;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "statusBarVisible"    # Z
    .param p5, "navBarVisible"    # Z

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 699
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 700
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 701
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 702
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 705
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 706
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 709
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 710
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    .line 711
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    .line 712
    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->createScreenshotMaskAnimation()Landroid/animation/ValueAnimator;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 713
    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->createFinishAnimation()Landroid/animation/Animator;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 711
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 714
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/systemui/screenshot/GlobalScreenshot$13;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshot$13;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 726
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/screenshot/GlobalScreenshot$14;

    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$14;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 697
    return-void
.end method

.method private startGotoThumbnailAnimation(Ljava/lang/Runnable;)V
    .locals 9
    .param p1, "animationFinisher"    # Ljava/lang/Runnable;

    .prologue
    const v8, 0x3e3d70a4    # 0.185f

    const/4 v7, 0x0

    .line 763
    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->showThumbnailWindow()V

    .line 765
    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v3, v5

    .line 766
    .local v3, "screenW":F
    iget v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mThumbnailMarginRight:I

    int-to-float v5, v5

    sub-float v5, v3, v5

    iget-object v6, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mThumbnailLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getLeft()I

    move-result v6

    int-to-float v6, v6

    add-float v4, v5, v6

    .line 767
    .local v4, "thumbnailMarginLeft":F
    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v7, v3, v4, v5}, Lcom/android/systemui/screenshot/GlobalScreenshot;->calcPivot(FFFF)F

    move-result v0

    .line 769
    .local v0, "pivotX":F
    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v2, v5

    .line 770
    .local v2, "screenH":F
    iget v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mThumbnailMarginTop:I

    iget-object v6, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getTop()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v7, v2, v5, v6}, Lcom/android/systemui/screenshot/GlobalScreenshot;->calcPivot(FFFF)F

    move-result v1

    .line 772
    .local v1, "pivotY":F
    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 773
    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setPivotY(F)V

    .line 775
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mIsInOutAnimating:Z

    .line 776
    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    .line 777
    const-wide/16 v6, 0x12c

    .line 776
    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    .line 780
    new-instance v6, Lcom/android/systemui/screenshot/GlobalScreenshot$15;

    invoke-direct {v6, p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshot$15;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Ljava/lang/Runnable;)V

    .line 776
    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 762
    return-void
.end method

.method private updateRingtone()V
    .locals 3

    .prologue
    .line 312
    const-string/jumbo v0, "GlobalScreenshot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateRingtone() Build.getRegion()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    sget-object v0, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/os/Build;->checkRegion(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 316
    sget-object v0, Lcom/android/systemui/Constants;->SOUND_SCREENSHOT_KR:Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenShotUri:Landroid/net/Uri;

    .line 320
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenShotUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mRingtone:Landroid/media/Ringtone;

    .line 321
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 323
    sget-object v0, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/os/Build;->checkRegion(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 324
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mRingtone:Landroid/media/Ringtone;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 311
    :cond_0
    :goto_1
    return-void

    .line 318
    :cond_1
    sget-object v0, Lcom/android/systemui/Constants;->SOUND_SCREENSHOT:Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenShotUri:Landroid/net/Uri;

    goto :goto_0

    .line 326
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mRingtone:Landroid/media/Ringtone;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setStreamType(I)V

    goto :goto_1
.end method


# virtual methods
.method moveThumbnailWindowY(I)V
    .locals 3
    .param p1, "y"    # I

    .prologue
    .line 624
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mThumbnailRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 626
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mThumbnailLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 627
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mThumbnailRootView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mThumbnailLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 623
    return-void
.end method

.method onThumbnailViewClick()Z
    .locals 7

    .prologue
    .line 535
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotDisplay:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mNotifyMediaStoreData:Lcom/android/systemui/screenshot/NotifyMediaStoreData;

    .line 536
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mThumbnailMarginRight:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mThumbnailLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLeft()I

    move-result v4

    add-int/2addr v3, v4

    .line 537
    iget v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mThumbnailMarginTop:I

    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getTop()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getHeight()I

    move-result v6

    .line 535
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->show(Landroid/graphics/Bitmap;Lcom/android/systemui/screenshot/NotifyMediaStoreData;IIII)V

    .line 538
    iget-boolean v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mIsSaved:Z

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotDisplay:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-virtual {v0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->setIsScreenshotSaved()V

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mThumbnailView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 544
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/screenshot/GlobalScreenshot$9;

    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$9;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    .line 548
    const-wide/16 v2, 0x46

    .line 544
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 550
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "quit_thumbnail"

    const-string/jumbo v2, "click"

    invoke-static {v0, v1, v2}, Lcom/android/systemui/screenshot/StatHelper;->recordCountEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    const/4 v0, 0x1

    return v0
.end method

.method onThumbnailViewTouch(Landroid/view/MotionEvent;)V
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const-wide/16 v10, 0xe10

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 555
    iget-boolean v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mIsInOutAnimating:Z

    if-eqz v5, :cond_0

    return-void

    .line 557
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    invoke-virtual {p1, v5, v6}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 558
    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mVTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 560
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 554
    :goto_0
    return-void

    .line 562
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    iput v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTouchDownY:F

    .line 563
    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mQuitThumbnailRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 564
    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mThumbnailShakeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0

    .line 568
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    iget v6, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTouchDownY:F

    sub-float/2addr v5, v6

    float-to-int v2, v5

    .line 569
    .local v2, "offsetY":I
    iget-boolean v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mIsThumbnailMoving:Z

    if-nez v5, :cond_1

    .line 570
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v6

    if-le v5, v6, :cond_1

    .line 571
    iput-boolean v7, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mIsThumbnailMoving:Z

    .line 573
    :cond_1
    move v3, v2

    .line 574
    .local v3, "realUseOffsetY":I
    if-lez v2, :cond_2

    int-to-double v6, v2

    const-wide v8, 0x3fe6666666666666L    # 0.7

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-int v3, v6

    .line 575
    :cond_2
    iget v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mThumbnailMarginTop:I

    add-int v6, v5, v3

    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mThumbnailShakeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/android/systemui/screenshot/GlobalScreenshot;->moveThumbnailWindowY(I)V

    goto :goto_0

    .line 580
    .end local v2    # "offsetY":I
    .end local v3    # "realUseOffsetY":I
    :pswitch_2
    iget-boolean v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mIsThumbnailMoving:Z

    if-nez v5, :cond_4

    .line 581
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->onThumbnailViewClick()Z

    move-result v1

    .line 582
    .local v1, "isOK":Z
    if-nez v1, :cond_3

    .line 584
    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mQuitThumbnailRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 585
    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mThumbnailShakeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    .line 617
    .end local v1    # "isOK":Z
    :cond_3
    :goto_1
    iput-boolean v8, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mIsThumbnailMoving:Z

    .line 618
    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mVTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0

    .line 588
    :cond_4
    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mVTracker:Landroid/view/VelocityTracker;

    const/16 v6, 0x3e8

    invoke-virtual {v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 589
    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    const/high16 v6, -0x3cd60000    # -170.0f

    mul-float/2addr v5, v6

    float-to-int v4, v5

    .line 590
    .local v4, "slideOutVelocityThresholdPx":I
    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mVTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v5

    int-to-float v6, v4

    cmpg-float v5, v5, v6

    if-gez v5, :cond_5

    .line 591
    invoke-direct {p0, v7, v7}, Lcom/android/systemui/screenshot/GlobalScreenshot;->quitThumbnailWindow(ZZ)V

    .line 592
    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "quit_thumbnail"

    const-string/jumbo v7, "slide_up"

    invoke-static {v5, v6, v7}, Lcom/android/systemui/screenshot/StatHelper;->recordCountEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 595
    :cond_5
    const/4 v5, 0x2

    new-array v5, v5, [I

    iget-object v6, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mThumbnailLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    aput v6, v5, v8

    iget v6, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mThumbnailMarginTop:I

    aput v6, v5, v7

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 596
    .local v0, "animator":Landroid/animation/ValueAnimator;
    const-wide/16 v6, 0x64

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 597
    new-instance v5, Lcom/android/systemui/screenshot/GlobalScreenshot$10;

    invoke-direct {v5, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$10;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 603
    new-instance v5, Lcom/android/systemui/screenshot/GlobalScreenshot$11;

    invoke-direct {v5, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$11;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 610
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 611
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 614
    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mQuitThumbnailRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 560
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method takeScreenshot(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZ)V
    .locals 7
    .param p1, "animationFinisher"    # Ljava/lang/Runnable;
    .param p2, "totalFinisher"    # Ljava/lang/Runnable;
    .param p3, "statusBarVisible"    # Z
    .param p4, "navBarVisible"    # Z

    .prologue
    const/4 v2, 0x0

    .line 649
    iput-boolean v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mIsSaved:Z

    .line 651
    const-string/jumbo v0, "trigger_restart_min_framework"

    const-string/jumbo v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 652
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-static {v0}, Landroid/os/UserManagerCompat;->isUserUnlocked(Landroid/os/UserManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 660
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiui/util/ScreenshotUtils;->getScreenshot(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 661
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->afterTakeScreenshot(Landroid/content/Context;)V

    .line 662
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_5

    .line 663
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {v0, v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->notifyScreenshotError(Landroid/content/Context;Landroid/app/NotificationManager;)V

    .line 664
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 665
    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 666
    :cond_1
    return-void

    .line 653
    :cond_2
    const-string/jumbo v0, "GlobalScreenshot"

    const-string/jumbo v1, "Can not screenshot when decrypt state."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 655
    :cond_3
    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 656
    :cond_4
    return-void

    .line 670
    :cond_5
    iget-object v6, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 671
    .local v6, "original":Landroid/graphics/Bitmap;
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v6, v0, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 672
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 675
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 676
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 679
    new-instance v0, Lcom/android/systemui/screenshot/GlobalScreenshot$12;

    invoke-direct {v0, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$12;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-direct {p0, v0, p2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->saveScreenshotInWorkerThread(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 687
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 688
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/screenshot/GlobalScreenshot;->startAnimation(Ljava/lang/Runnable;IIZZ)V

    .line 648
    return-void
.end method
