.class public Lcom/android/keyguard/fod/MiuiGxzwOverlayView;
.super Landroid/widget/FrameLayout;
.source "MiuiGxzwOverlayView.java"

# interfaces
.implements Lcom/android/keyguard/fod/MiuiGxzwIconView$CollectGxzwListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/fod/MiuiGxzwOverlayView$BrightnessFileObserver;
    }
.end annotation


# instance fields
.field private mAdded:Z

.field private mBrightnessFileObserver:Lcom/android/keyguard/fod/MiuiGxzwOverlayView$BrightnessFileObserver;

.field private mBrightnessFilePath:Ljava/lang/String;

.field private volatile mDozing:Z

.field private mHbmOverlay:Landroid/view/View;

.field private volatile mInvertColors:Z

.field private mKeyguardAuthen:Z

.field private mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mMaxBrightness:I

.field private mOverlayAlpha:F

.field private mPreAlpha:F

.field private volatile mShowed:Z

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/fod/MiuiGxzwOverlayView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mDozing:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/fod/MiuiGxzwOverlayView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mKeyguardAuthen:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/fod/MiuiGxzwOverlayView;F)F
    .locals 0

    iput p1, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mOverlayAlpha:F

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/fod/MiuiGxzwOverlayView;)F
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->caculateOverlayAlpha()F

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/fod/MiuiGxzwOverlayView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->addOverlayView()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/keyguard/fod/MiuiGxzwOverlayView;F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->updateAlpha(F)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/keyguard/fod/MiuiGxzwOverlayView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->updateBrightnessFileWatchState()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 54
    iput-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mShowed:Z

    .line 55
    iput-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mDozing:Z

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mOverlayAlpha:F

    .line 60
    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->getBrightnessFile()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mBrightnessFilePath:Ljava/lang/String;

    .line 63
    iput-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mAdded:Z

    .line 64
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mPreAlpha:F

    .line 66
    iput-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mInvertColors:Z

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mMaxBrightness:I

    .line 71
    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->initView()V

    .line 69
    return-void
.end method

.method private addOverlayView()V
    .locals 4

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mShowed:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 209
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mShowed:Z

    if-eqz v0, :cond_1

    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mAdded:Z

    .line 197
    :cond_1
    return-void

    .line 198
    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mOverlayAlpha:F

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 201
    const-string/jumbo v0, "MiuiGxzwOverlayView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "add overlay view: mOverlayAlpha = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mOverlayAlpha:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mDozing:Z

    if-eqz v0, :cond_3

    .line 204
    invoke-static {}, Lcom/android/keyguard/fod/MiuiGxzwManager;->getInstance()Lcom/android/keyguard/fod/MiuiGxzwManager;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Lcom/android/keyguard/fod/MiuiGxzwManager;->requestDrawWackLock(J)V

    .line 206
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private addViewAndUpdateAlpha()V
    .locals 3

    .prologue
    .line 228
    new-instance v0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView$1;-><init>(Lcom/android/keyguard/fod/MiuiGxzwOverlayView;)V

    .line 243
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 228
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 227
    return-void
.end method

.method private brighnessToAlpha(I)F
    .locals 8
    .param p1, "brighness"    # I

    .prologue
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 323
    if-nez p1, :cond_0

    .line 324
    const-wide v0, 0x3feec85d2b226f4bL    # 0.9619584887

    .line 334
    .local v0, "alpha":D
    :goto_0
    double-to-float v2, v0

    return v2

    .line 325
    .end local v0    # "alpha":D
    :cond_0
    const/4 v2, 0x2

    if-lt p1, v2, :cond_2

    const/16 v2, 0x8

    if-gt p1, v2, :cond_2

    const-string/jumbo v2, "equuleus"

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "ursa"

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 327
    :cond_1
    int-to-double v2, p1

    const-wide v4, 0x3f6a36e2eb1c432dL    # 0.0032

    mul-double/2addr v2, v4

    const-wide v4, 0x3fb2eb1c432ca57aL    # 0.0739

    add-double/2addr v2, v4

    sub-double v0, v6, v2

    .restart local v0    # "alpha":D
    goto :goto_0

    .line 331
    .end local v0    # "alpha":D
    :cond_2
    int-to-double v2, p1

    mul-double/2addr v2, v6

    iget v4, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mMaxBrightness:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    const-wide v4, 0x407ae00000000000L    # 430.0

    mul-double/2addr v2, v4

    const-wide v4, 0x4082c00000000000L    # 600.0

    div-double/2addr v2, v4

    const-wide v4, 0x3fdccccccccccccdL    # 0.45

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    sub-double v0, v6, v2

    .restart local v0    # "alpha":D
    goto :goto_0
.end method

.method private caculateOverlayAlpha()F
    .locals 6

    .prologue
    .line 270
    iget v3, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mMaxBrightness:I

    if-gtz v3, :cond_0

    .line 271
    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->readMaxBrightnessFromFile()I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mMaxBrightness:I

    .line 274
    :cond_0
    iget-boolean v3, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mInvertColors:Z

    if-eqz v3, :cond_1

    .line 275
    const/16 v3, 0x8

    invoke-direct {p0, v3}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->converBrighnessFrom1024(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->brighnessToAlpha(I)F

    move-result v3

    return v3

    .line 278
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->readBrightnessFromFile()I

    move-result v1

    .line 281
    .local v1, "fileBrightness":I
    if-lez v1, :cond_5

    iget v3, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mMaxBrightness:I

    if-lez v3, :cond_5

    .line 283
    const-string/jumbo v3, "MiuiGxzwOverlayView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "read brightness from file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", mMaxBrightness = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mMaxBrightness:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget v3, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mMaxBrightness:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 286
    iget-boolean v3, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mDozing:Z

    if-eqz v3, :cond_4

    .line 288
    const/4 v3, 0x5

    invoke-direct {p0, v3}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->converBrighnessFrom1024(I)I

    move-result v2

    .line 289
    .local v2, "light":I
    if-le v1, v2, :cond_2

    .line 291
    const v0, 0x3f283127    # 0.657f

    .line 301
    .end local v2    # "light":I
    .local v0, "alpha":F
    :goto_0
    iput v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mPreAlpha:F

    .line 311
    :goto_1
    const-string/jumbo v3, "MiuiGxzwOverlayView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "caculate overlay alpha: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    return v0

    .line 292
    .end local v0    # "alpha":F
    .restart local v2    # "light":I
    :cond_2
    if-lez v1, :cond_3

    .line 294
    const v0, 0x3f63d70a    # 0.89f

    .restart local v0    # "alpha":F
    goto :goto_0

    .line 296
    .end local v0    # "alpha":F
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->brighnessToAlpha(I)F

    move-result v0

    .restart local v0    # "alpha":F
    goto :goto_0

    .line 299
    .end local v0    # "alpha":F
    .end local v2    # "light":I
    :cond_4
    invoke-direct {p0, v1}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->brighnessToAlpha(I)F

    move-result v0

    .restart local v0    # "alpha":F
    goto :goto_0

    .line 303
    .end local v0    # "alpha":F
    :cond_5
    iget-boolean v3, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mDozing:Z

    if-eqz v3, :cond_6

    .line 304
    const v0, 0x3f283127    # 0.657f

    .restart local v0    # "alpha":F
    const v3, 0x3f283127    # 0.657f

    .line 305
    iput v3, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mPreAlpha:F

    goto :goto_1

    .line 307
    .end local v0    # "alpha":F
    :cond_6
    iget v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mPreAlpha:F

    .restart local v0    # "alpha":F
    goto :goto_1
.end method

.method private converBrighnessFrom1024(I)I
    .locals 2
    .param p1, "brighness"    # I

    .prologue
    .line 343
    iget v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mMaxBrightness:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    const/high16 v1, 0x44800000    # 1024.0f

    div-float/2addr v0, v1

    int-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getBrightnessFile()Ljava/lang/String;
    .locals 5

    .prologue
    .line 257
    const-string/jumbo v0, "/sys/class/leds/lcd-backlight/brightness"

    .line 258
    .local v0, "brightnessFile":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 259
    const v4, 0x1106001a

    .line 258
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 260
    .local v1, "filesArray":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 261
    new-instance v3, Ljava/io/File;

    aget-object v4, v1, v2

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 262
    aget-object v0, v1, v2

    .line 266
    :cond_0
    return-object v0

    .line 260
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private initView()V
    .locals 6

    .prologue
    const/4 v1, -0x1

    .line 75
    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x9040071

    invoke-virtual {v0, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 76
    const v0, 0x9120195

    invoke-virtual {p0, v0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mHbmOverlay:Landroid/view/View;

    .line 78
    const/16 v0, 0x1300

    invoke-virtual {p0, v0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->setSystemUiVisibility(I)V

    .line 81
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 83
    const/16 v3, 0x7e5

    .line 84
    const v4, 0x5011518

    .line 92
    const/4 v5, -0x2

    move v2, v1

    .line 81
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 94
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x800000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 100
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 101
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-string/jumbo v1, "hbm_overlay"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 102
    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mWindowManager:Landroid/view/WindowManager;

    .line 104
    new-instance v0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView$BrightnessFileObserver;

    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mBrightnessFilePath:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView$BrightnessFileObserver;-><init>(Lcom/android/keyguard/fod/MiuiGxzwOverlayView;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mBrightnessFileObserver:Lcom/android/keyguard/fod/MiuiGxzwOverlayView$BrightnessFileObserver;

    .line 74
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardCompatibilityHelperForO;->setRoundedCornersOverlayFlag(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method private readBrightnessFromFile()I
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mBrightnessFilePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->readIntFromFile(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private readIntFromFile(Ljava/lang/String;)I
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 357
    const/4 v2, 0x0

    .line 359
    .local v2, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    .end local v2    # "in":Ljava/io/BufferedReader;
    .local v3, "in":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 361
    .local v4, "str":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 362
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    .line 367
    if-eqz v3, :cond_0

    .line 369
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 362
    :cond_0
    :goto_0
    return v5

    .line 370
    :catch_0
    move-exception v0

    .line 371
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 367
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    if-eqz v3, :cond_2

    .line 369
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    :goto_1
    move-object v2, v3

    .line 375
    .end local v3    # "in":Ljava/io/BufferedReader;
    .end local v4    # "str":Ljava/lang/String;
    :cond_3
    :goto_2
    const/4 v5, -0x1

    return v5

    .line 370
    .restart local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "str":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 371
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 364
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "in":Ljava/io/BufferedReader;
    .end local v4    # "str":Ljava/lang/String;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :catch_2
    move-exception v1

    .line 365
    .end local v2    # "in":Ljava/io/BufferedReader;
    .local v1, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 367
    if-eqz v2, :cond_3

    .line 369
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    .line 370
    :catch_3
    move-exception v0

    .line 371
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 366
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 367
    :goto_4
    if-eqz v2, :cond_4

    .line 369
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 366
    :cond_4
    :goto_5
    throw v5

    .line 370
    :catch_4
    move-exception v0

    .line 371
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 366
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .local v2, "in":Ljava/io/BufferedReader;
    goto :goto_4

    .line 364
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :catch_5
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_3
.end method

.method private readMaxBrightnessFromFile()I
    .locals 4

    .prologue
    .line 351
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mBrightnessFilePath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 352
    .local v0, "brightnessFile":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/max_brightness"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 353
    .local v1, "maxBrightnessFilePath":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->readIntFromFile(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method private removeOverlayView()V
    .locals 4

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    const-string/jumbo v0, "MiuiGxzwOverlayView"

    const-string/jumbo v1, "remove overlay view"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mDozing:Z

    if-eqz v0, :cond_0

    .line 220
    invoke-static {}, Lcom/android/keyguard/fod/MiuiGxzwManager;->getInstance()Lcom/android/keyguard/fod/MiuiGxzwManager;

    move-result-object v0

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Lcom/android/keyguard/fod/MiuiGxzwManager;->requestDrawWackLock(J)V

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 224
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mAdded:Z

    .line 214
    return-void
.end method

.method private updateAlpha(F)V
    .locals 3
    .param p1, "alpha"    # F

    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mShowed:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 250
    const-string/jumbo v0, "MiuiGxzwOverlayView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "upldate overlay view alpha: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    :cond_0
    return-void
.end method

.method private updateBrightnessFileWatchState()V
    .locals 3

    .prologue
    .line 379
    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mShowed:Z

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mBrightnessFileObserver:Lcom/android/keyguard/fod/MiuiGxzwOverlayView$BrightnessFileObserver;

    invoke-virtual {v0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView$BrightnessFileObserver;->stopWatching()V

    .line 381
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mBrightnessFileObserver:Lcom/android/keyguard/fod/MiuiGxzwOverlayView$BrightnessFileObserver;

    invoke-virtual {v0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView$BrightnessFileObserver;->startWatching()V

    .line 382
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mBrightnessFileObserver:Lcom/android/keyguard/fod/MiuiGxzwOverlayView$BrightnessFileObserver;

    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mBrightnessFilePath:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView$BrightnessFileObserver;->onEvent(ILjava/lang/String;)V

    .line 378
    :goto_0
    return-void

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mBrightnessFileObserver:Lcom/android/keyguard/fod/MiuiGxzwOverlayView$BrightnessFileObserver;

    invoke-virtual {v0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView$BrightnessFileObserver;->stopWatching()V

    goto :goto_0
.end method

.method private updateViewAddState()V
    .locals 1

    .prologue
    .line 405
    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mAdded:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 406
    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->addOverlayView()V

    .line 404
    :cond_0
    :goto_0
    return-void

    .line 407
    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mAdded:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 408
    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->removeOverlayView()V

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 128
    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mShowed:Z

    if-nez v0, :cond_0

    .line 129
    return-void

    .line 132
    :cond_0
    const-string/jumbo v0, "MiuiGxzwOverlayView"

    const-string/jumbo v1, "dismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iput-boolean v2, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mShowed:Z

    .line 137
    const/16 v0, 0x11

    invoke-static {v0, v2}, Lcom/android/keyguard/KeyguardCompatibilityHelperForO;->setScreenEffect(II)V

    .line 138
    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->removeOverlayView()V

    .line 139
    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->updateBrightnessFileWatchState()V

    .line 127
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 390
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 391
    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->updateViewAddState()V

    .line 393
    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mShowed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mAdded:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mOverlayAlpha:F

    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    iget v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mOverlayAlpha:F

    invoke-direct {p0, v0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->updateAlpha(F)V

    .line 389
    :cond_0
    return-void
.end method

.method public onCollectStateChange(Z)V
    .locals 0
    .param p1, "collecting"    # Z

    .prologue
    .line 180
    if-eqz p1, :cond_0

    .line 181
    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->addOverlayView()V

    .line 179
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 400
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 401
    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->updateViewAddState()V

    .line 399
    return-void
.end method

.method public onIconStateChange(Z)V
    .locals 1
    .param p1, "transparent"    # Z

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mDozing:Z

    if-nez v0, :cond_0

    .line 188
    return-void

    .line 190
    :cond_0
    if-eqz p1, :cond_1

    .line 191
    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->removeOverlayView()V

    .line 186
    :goto_0
    return-void

    .line 193
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->addOverlayView()V

    goto :goto_0
.end method

.method public onKeyguardAuthen(Z)V
    .locals 0
    .param p1, "keyguardAuthen"    # Z

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mKeyguardAuthen:Z

    .line 174
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 2

    .prologue
    .line 169
    const-string/jumbo v0, "MiuiGxzwOverlayView"

    const-string/jumbo v1, "onScreenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->removeOverlayView()V

    .line 167
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 2

    .prologue
    .line 162
    const-string/jumbo v0, "MiuiGxzwOverlayView"

    const-string/jumbo v1, "onScreenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->updateBrightnessFileWatchState()V

    .line 160
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 108
    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mShowed:Z

    if-eqz v0, :cond_0

    .line 109
    return-void

    .line 112
    :cond_0
    const-string/jumbo v0, "MiuiGxzwOverlayView"

    const-string/jumbo v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/MiuiKeyguardUtils;->isInvertColorsEnable(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mInvertColors:Z

    .line 116
    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mHbmOverlay:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mInvertColors:Z

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 118
    iput-boolean v3, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mShowed:Z

    .line 120
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 121
    iput v2, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mOverlayAlpha:F

    .line 122
    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->addViewAndUpdateAlpha()V

    .line 124
    const/16 v0, 0x11

    invoke-static {v0, v3}, Lcom/android/keyguard/KeyguardCompatibilityHelperForO;->setScreenEffect(II)V

    .line 107
    return-void

    .line 116
    :cond_1
    const/high16 v0, -0x1000000

    goto :goto_0
.end method

.method public stopDozing()V
    .locals 2

    .prologue
    .line 154
    const-string/jumbo v0, "MiuiGxzwOverlayView"

    const-string/jumbo v1, "stopDozing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mDozing:Z

    .line 157
    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->removeOverlayView()V

    .line 152
    return-void
.end method
