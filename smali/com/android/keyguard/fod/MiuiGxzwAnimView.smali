.class public Lcom/android/keyguard/fod/MiuiGxzwAnimView;
.super Landroid/widget/FrameLayout;
.source "MiuiGxzwAnimView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/hardware/display/DisplayManager$DisplayListener;
.implements Lcom/android/keyguard/KeyguardUpdateMonitor$WallpaperChangeCallback;


# static fields
.field private static AOD_DOZE_SUSPEND_DELAY:J


# instance fields
.field private mAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDisplayState:I

.field private mDozing:Z

.field private mDozingIconAnimDone:Z

.field private mEnrolling:Z

.field private mGxzwAnimHeight:I

.field private mGxzwAnimWidth:I

.field private mGxzwIconHeight:I

.field private mGxzwIconWidth:I

.field private mGxzwIconX:I

.field private mGxzwIconY:I

.field private mHandler:Landroid/os/Handler;

.field private mKeyguardAuthen:Z

.field private mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mLightIcon:Z

.field private mLightWallpaperGxzw:Z

.field private mMiuiGxzwAnimManager:Lcom/android/keyguard/fod/MiuiGxzwAnimManager;

.field private mMiuiGxzwFrameAnimation:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;

.field private mMiuiGxzwTipView:Lcom/android/keyguard/fod/MiuiGxzwTipView;

.field private mPortraitOrientation:Z

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mShouldShowBackAnim:Z

.field private mShowing:Z

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static synthetic -get0()J
    .locals 2

    sget-wide v0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->AOD_DOZE_SUSPEND_DELAY:J

    return-wide v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/fod/MiuiGxzwAnimView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/fod/MiuiGxzwAnimView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/fod/MiuiGxzwAnimView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->removeViewFromWindow()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    const-wide/16 v0, 0x64

    sput-wide v0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->AOD_DOZE_SUSPEND_DELAY:J

    .line 36
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

    .line 80
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 44
    iput-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mShowing:Z

    .line 62
    iput-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mDozing:Z

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mHandler:Landroid/os/Handler;

    .line 66
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mDisplayState:I

    .line 70
    iput-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mShouldShowBackAnim:Z

    .line 74
    iput-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mLightIcon:Z

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mPortraitOrientation:Z

    .line 77
    iput-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mDozingIconAnimDone:Z

    .line 81
    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->initView()V

    .line 79
    return-void
.end method

.method private initView()V
    .locals 11

    .prologue
    const/4 v5, 0x0

    .line 85
    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x904006f

    invoke-virtual {v0, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 87
    const v0, 0x9120193

    invoke-virtual {p0, v0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mSurfaceView:Landroid/view/SurfaceView;

    .line 88
    new-instance v0, Lcom/android/keyguard/fod/MiuiGxzwTipView;

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/keyguard/fod/MiuiGxzwTipView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mMiuiGxzwTipView:Lcom/android/keyguard/fod/MiuiGxzwTipView;

    .line 90
    iput v5, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mGxzwIconX:I

    .line 91
    iput v5, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mGxzwIconY:I

    .line 92
    iput v5, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mGxzwIconWidth:I

    .line 93
    iput v5, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mGxzwIconHeight:I

    .line 94
    iput v5, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mGxzwAnimWidth:I

    .line 95
    iput v5, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mGxzwAnimHeight:I

    .line 97
    const/16 v0, 0x1304

    invoke-virtual {p0, v0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->setSystemUiVisibility(I)V

    .line 102
    new-instance v0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;

    iget-object v3, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-direct {v0, v3, p0}, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;-><init>(Landroid/view/SurfaceView;Landroid/view/SurfaceHolder$Callback;)V

    iput-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mMiuiGxzwFrameAnimation:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;

    .line 103
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mMiuiGxzwFrameAnimation:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->setMode(I)V

    .line 105
    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mWindowManager:Landroid/view/WindowManager;

    .line 106
    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v3, "display"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 107
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v3, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, v3}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 108
    new-instance v0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mMiuiGxzwFrameAnimation:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;

    invoke-direct {v0, v3, v4}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;-><init>(Landroid/content/Context;Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;)V

    iput-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mMiuiGxzwAnimManager:Lcom/android/keyguard/fod/MiuiGxzwAnimManager;

    .line 110
    iget v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mGxzwIconX:I

    iget v3, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mGxzwAnimWidth:I

    iget v4, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mGxzwIconWidth:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int v9, v0, v3

    .line 111
    .local v9, "x":I
    iget v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mGxzwIconY:I

    iget v3, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mGxzwAnimHeight:I

    iget v4, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mGxzwIconHeight:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int v10, v0, v3

    .line 112
    .local v10, "y":I
    iget v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mGxzwAnimWidth:I

    .line 113
    .local v1, "width":I
    iget v2, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mGxzwAnimHeight:I

    .line 114
    .local v2, "height":I
    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v3, "display"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/display/DisplayManager;

    .line 115
    .local v7, "displayManager":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v7, v5}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v6

    .line 116
    .local v6, "display":Landroid/view/Display;
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    .line 117
    .local v8, "point":Landroid/graphics/Point;
    invoke-virtual {v6, v8}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 118
    iget v0, v8, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mScreenWidth:I

    .line 119
    iget v0, v8, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mScreenHeight:I

    .line 120
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 121
    const/16 v3, 0x7df

    .line 122
    const v4, 0x1000618

    .line 127
    const/4 v5, -0x2

    .line 120
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 128
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardCompatibilityHelperForP;->setLayoutInDisplayCutoutMode(Landroid/view/WindowManager$LayoutParams;)V

    .line 129
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardCompatibilityHelperForO;->setFlag(Landroid/view/WindowManager$LayoutParams;)V

    .line 130
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x33

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 131
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v9, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 132
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v10, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 133
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-string/jumbo v3, "gxzw_anim"

    invoke-virtual {v0, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 135
    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 84
    return-void
.end method

.method private removeViewFromWindow()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mMiuiGxzwFrameAnimation:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;

    invoke-virtual {v0}, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->stopAnimation()V

    .line 188
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mMiuiGxzwFrameAnimation:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;

    invoke-virtual {v0}, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->clean()V

    .line 189
    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 192
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->setVisibility(I)V

    .line 186
    return-void
.end method

.method private startFadeAniamtion()V
    .locals 4

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 458
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 459
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 460
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lmiui/view/animation/QuarticEaseOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/QuarticEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 461
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/keyguard/fod/MiuiGxzwAnimView$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView$2;-><init>(Lcom/android/keyguard/fod/MiuiGxzwAnimView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 468
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/keyguard/fod/MiuiGxzwAnimView$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView$3;-><init>(Lcom/android/keyguard/fod/MiuiGxzwAnimView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 496
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 453
    return-void
.end method

.method private updateLpByOrientation()V
    .locals 12

    .prologue
    .line 516
    iget-boolean v9, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mPortraitOrientation:Z

    if-eqz v9, :cond_2

    .line 517
    iget v9, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mGxzwIconX:I

    iget v10, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mGxzwAnimWidth:I

    iget v11, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mGxzwIconWidth:I

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    sub-int v7, v9, v10

    .line 518
    .local v7, "x":I
    iget v9, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mGxzwIconY:I

    iget v10, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mGxzwAnimHeight:I

    iget v11, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mGxzwIconHeight:I

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    sub-int v8, v9, v10

    .line 519
    .local v8, "y":I
    iget v6, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mGxzwAnimWidth:I

    .line 520
    .local v6, "width":I
    iget v2, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mGxzwAnimHeight:I

    .line 528
    .local v2, "height":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string/jumbo v10, "display"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 529
    .local v1, "displayManager":Landroid/hardware/display/DisplayManager;
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 530
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v3

    .line 531
    .local v3, "rotation":I
    iget-boolean v9, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mKeyguardAuthen:Z

    if-nez v9, :cond_1

    const/4 v9, 0x2

    if-eq v3, v9, :cond_0

    const/4 v9, 0x3

    if-ne v3, v9, :cond_1

    .line 532
    :cond_0
    iget-boolean v9, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mPortraitOrientation:Z

    if-eqz v9, :cond_3

    iget v5, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mScreenWidth:I

    .line 533
    .local v5, "screenWidth":I
    :goto_1
    iget-boolean v9, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mPortraitOrientation:Z

    if-eqz v9, :cond_4

    iget v4, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mScreenHeight:I

    .line 534
    .local v4, "screenHeight":I
    :goto_2
    sub-int v9, v5, v7

    sub-int v7, v9, v6

    .line 535
    sub-int v9, v4, v8

    sub-int v8, v9, v2

    .line 538
    .end local v4    # "screenHeight":I
    .end local v5    # "screenWidth":I
    :cond_1
    iget-object v9, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v9, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 539
    iget-object v9, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v9, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 540
    iget-object v9, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v7, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 541
    iget-object v9, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v8, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 514
    return-void

    .line 522
    .end local v0    # "display":Landroid/view/Display;
    .end local v1    # "displayManager":Landroid/hardware/display/DisplayManager;
    .end local v2    # "height":I
    .end local v3    # "rotation":I
    .end local v6    # "width":I
    .end local v7    # "x":I
    .end local v8    # "y":I
    :cond_2
    iget v9, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mGxzwIconX:I

    iget v10, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mGxzwAnimWidth:I

    iget v11, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mGxzwIconWidth:I

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    sub-int v8, v9, v10

    .line 523
    .restart local v8    # "y":I
    iget v9, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mGxzwIconY:I

    iget v10, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mGxzwAnimHeight:I

    iget v11, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mGxzwIconHeight:I

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    sub-int v7, v9, v10

    .line 524
    .restart local v7    # "x":I
    iget v2, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mGxzwAnimWidth:I

    .line 525
    .restart local v2    # "height":I
    iget v6, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mGxzwAnimHeight:I

    .restart local v6    # "width":I
    goto :goto_0

    .line 532
    .restart local v0    # "display":Landroid/view/Display;
    .restart local v1    # "displayManager":Landroid/hardware/display/DisplayManager;
    .restart local v3    # "rotation":I
    :cond_3
    iget v5, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mScreenHeight:I

    .restart local v5    # "screenWidth":I
    goto :goto_1

    .line 533
    :cond_4
    iget v4, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mScreenWidth:I

    goto :goto_2
.end method

.method private updateOrientation(Z)V
    .locals 2
    .param p1, "portraitOrientation"    # Z

    .prologue
    .line 507
    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mPortraitOrientation:Z

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    iput-boolean p1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mPortraitOrientation:Z

    .line 509
    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->updateLpByOrientation()V

    .line 510
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 506
    :cond_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mShowing:Z

    if-nez v0, :cond_0

    .line 173
    return-void

    .line 175
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mShowing:Z

    .line 176
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->unregisterWallpaperChangeCallback(Lcom/android/keyguard/KeyguardUpdateMonitor$WallpaperChangeCallback;)V

    .line 177
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mMiuiGxzwTipView:Lcom/android/keyguard/fod/MiuiGxzwTipView;

    invoke-virtual {v0}, Lcom/android/keyguard/fod/MiuiGxzwTipView;->dismiss()V

    .line 179
    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mKeyguardAuthen:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/keyguard/fod/MiuiGxzwManager;->getInstance()Lcom/android/keyguard/fod/MiuiGxzwManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/fod/MiuiGxzwManager;->getGxzwUnlockMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 180
    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->startFadeAniamtion()V

    .line 171
    :goto_0
    return-void

    .line 182
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->removeViewFromWindow()V

    goto :goto_0
.end method

.method public drawFingerprintIcon(Z)V
    .locals 4
    .param p1, "aod"    # Z

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mMiuiGxzwFrameAnimation:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;

    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mMiuiGxzwAnimManager:Lcom/android/keyguard/fod/MiuiGxzwAnimManager;

    invoke-virtual {v1, p1}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->getFingerIconResource(Z)I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->draw(IZF)V

    .line 340
    if-eqz p1, :cond_0

    .line 341
    invoke-static {}, Lcom/android/keyguard/fod/MiuiGxzwManager;->getInstance()Lcom/android/keyguard/fod/MiuiGxzwManager;

    move-result-object v0

    sget-wide v2, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->AOD_DOZE_SUSPEND_DELAY:J

    invoke-virtual {v0, v2, v3}, Lcom/android/keyguard/fod/MiuiGxzwManager;->requestDrawWackLock(J)V

    .line 338
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v0, 0x1

    .line 501
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 502
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mKeyguardAuthen:Z

    .line 503
    .local v0, "portraitOrientation":Z
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->updateOrientation(Z)V

    .line 500
    return-void
.end method

.method public onDisplayAdded(I)V
    .locals 0
    .param p1, "displayId"    # I

    .prologue
    .line 387
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 11
    .param p1, "displayId"    # I

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 398
    if-nez p1, :cond_1

    .line 399
    iget-object v3, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v3, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 400
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v1

    .line 401
    .local v1, "newState":I
    iget v2, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mDisplayState:I

    .line 403
    .local v2, "oldState":I
    const-string/jumbo v3, "MiuiGxzwAnimView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onDisplayChanged: oldState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", newState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-boolean v3, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mKeyguardAuthen:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mShowing:Z

    if-eqz v3, :cond_0

    .line 406
    if-ne v2, v6, :cond_2

    if-ne v1, v8, :cond_2

    .line 408
    invoke-virtual {p0, v7}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->startIconAnim(Z)V

    .line 436
    :cond_0
    :goto_0
    iput v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mDisplayState:I

    .line 397
    .end local v0    # "display":Landroid/view/Display;
    .end local v1    # "newState":I
    .end local v2    # "oldState":I
    :cond_1
    return-void

    .line 409
    .restart local v0    # "display":Landroid/view/Display;
    .restart local v1    # "newState":I
    .restart local v2    # "oldState":I
    :cond_2
    if-ne v2, v6, :cond_4

    .line 410
    if-eq v1, v9, :cond_3

    if-ne v1, v10, :cond_4

    .line 412
    :cond_3
    iget-boolean v3, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mDozingIconAnimDone:Z

    if-nez v3, :cond_0

    .line 413
    iput-boolean v6, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mDozingIconAnimDone:Z

    .line 414
    invoke-virtual {p0, v6}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->startIconAnim(Z)V

    goto :goto_0

    .line 416
    :cond_4
    if-ne v2, v8, :cond_7

    .line 417
    if-eq v1, v9, :cond_5

    if-ne v1, v10, :cond_7

    .line 419
    :cond_5
    iget-boolean v3, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mDozingIconAnimDone:Z

    if-eqz v3, :cond_6

    .line 420
    iput-boolean v7, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mShouldShowBackAnim:Z

    .line 421
    iget-object v3, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mMiuiGxzwTipView:Lcom/android/keyguard/fod/MiuiGxzwTipView;

    invoke-virtual {v3}, Lcom/android/keyguard/fod/MiuiGxzwTipView;->stopTipAnim()V

    .line 422
    invoke-virtual {p0, v6}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->drawFingerprintIcon(Z)V

    goto :goto_0

    .line 424
    :cond_6
    iput-boolean v6, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mDozingIconAnimDone:Z

    .line 425
    invoke-virtual {p0, v6}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->startIconAnim(Z)V

    goto :goto_0

    .line 427
    :cond_7
    if-eq v2, v9, :cond_8

    if-ne v2, v10, :cond_0

    .line 428
    :cond_8
    if-ne v1, v8, :cond_0

    .line 430
    iput-boolean v7, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mShouldShowBackAnim:Z

    .line 431
    iget-object v3, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mMiuiGxzwTipView:Lcom/android/keyguard/fod/MiuiGxzwTipView;

    invoke-virtual {v3}, Lcom/android/keyguard/fod/MiuiGxzwTipView;->stopTipAnim()V

    .line 432
    invoke-virtual {p0, v7}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->drawFingerprintIcon(Z)V

    goto :goto_0
.end method

.method public onDisplayRemoved(I)V
    .locals 0
    .param p1, "displayId"    # I

    .prologue
    .line 392
    return-void
.end method

.method public onKeyguardAuthen(Z)V
    .locals 2
    .param p1, "keyguardAuthen"    # Z

    .prologue
    const/4 v0, 0x1

    .line 207
    iput-boolean p1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mKeyguardAuthen:Z

    .line 208
    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mMiuiGxzwTipView:Lcom/android/keyguard/fod/MiuiGxzwTipView;

    invoke-virtual {v1, p1}, Lcom/android/keyguard/fod/MiuiGxzwTipView;->onKeyguardAuthen(Z)V

    .line 209
    iget-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mShowing:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mKeyguardAuthen:Z

    if-eqz v1, :cond_0

    .line 210
    iget-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mDozing:Z

    invoke-virtual {p0, v1}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->drawFingerprintIcon(Z)V

    .line 212
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v0, :cond_1

    .line 213
    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mKeyguardAuthen:Z

    .line 214
    .local v0, "portraitOrientation":Z
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->updateOrientation(Z)V

    .line 215
    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mMiuiGxzwAnimManager:Lcom/android/keyguard/fod/MiuiGxzwAnimManager;

    invoke-virtual {v1, p1}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->onKeyguardAuthen(Z)V

    .line 206
    return-void
.end method

.method public onWallpaperChange(Z)V
    .locals 4
    .param p1, "succeed"    # Z

    .prologue
    .line 442
    iget-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isLightWallpaperGxzw()Z

    move-result v0

    .line 443
    .local v0, "newLightWallpaperGxzw":Z
    iget-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mLightWallpaperGxzw:Z

    .line 444
    .local v1, "oldLightWallpaperGxzw":Z
    iput-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mLightWallpaperGxzw:Z

    .line 445
    if-eq v1, v0, :cond_0

    iget-boolean v2, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mDozing:Z

    if-eqz v2, :cond_1

    .line 450
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mMiuiGxzwAnimManager:Lcom/android/keyguard/fod/MiuiGxzwAnimManager;

    iget-boolean v3, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mLightWallpaperGxzw:Z

    invoke-virtual {v2, v3}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->setLightWallpaperGxzw(Z)V

    .line 441
    return-void

    .line 445
    :cond_1
    iget-boolean v2, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mShowing:Z

    if-eqz v2, :cond_0

    .line 446
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mShouldShowBackAnim:Z

    .line 447
    iget-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mMiuiGxzwTipView:Lcom/android/keyguard/fod/MiuiGxzwTipView;

    invoke-virtual {v2}, Lcom/android/keyguard/fod/MiuiGxzwTipView;->stopTipAnim()V

    .line 448
    iget-boolean v2, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mDozing:Z

    invoke-virtual {p0, v2}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->drawFingerprintIcon(Z)V

    goto :goto_0
.end method

.method public setAlpha(F)V
    .locals 2
    .param p1, "alpha"    # F

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 348
    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 350
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mMiuiGxzwTipView:Lcom/android/keyguard/fod/MiuiGxzwTipView;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/fod/MiuiGxzwTipView;->setAlpha(F)V

    .line 346
    :cond_0
    return-void
.end method

.method public setEnrolling(Z)V
    .locals 1
    .param p1, "enrolling"    # Z

    .prologue
    .line 331
    iput-boolean p1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mEnrolling:Z

    .line 332
    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mShowing:Z

    if-eqz v0, :cond_0

    .line 333
    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mDozing:Z

    invoke-virtual {p0, v0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->drawFingerprintIcon(Z)V

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mMiuiGxzwAnimManager:Lcom/android/keyguard/fod/MiuiGxzwAnimManager;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->setEnrolling(Z)V

    .line 330
    return-void
.end method

.method public show(Z)V
    .locals 5
    .param p1, "lightIcon"    # Z

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 139
    iget-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mShowing:Z

    if-eqz v1, :cond_0

    .line 140
    return-void

    .line 142
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 146
    :cond_1
    iput-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mShowing:Z

    .line 147
    iput-boolean p1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mLightIcon:Z

    .line 148
    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mMiuiGxzwAnimManager:Lcom/android/keyguard/fod/MiuiGxzwAnimManager;

    iget-boolean v2, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mLightIcon:Z

    invoke-virtual {v1, v2}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->setLightIcon(Z)V

    .line 150
    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerWallpaperChangeCallback(Lcom/android/keyguard/KeyguardUpdateMonitor$WallpaperChangeCallback;)V

    .line 151
    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v0, :cond_2

    .line 152
    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mKeyguardAuthen:Z

    .line 151
    :cond_2
    iput-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mPortraitOrientation:Z

    .line 153
    iput v3, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mGxzwIconX:I

    .line 154
    iput v3, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mGxzwIconY:I

    .line 155
    iput v3, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mGxzwIconWidth:I

    .line 156
    iput v3, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mGxzwIconHeight:I

    .line 157
    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->updateLpByOrientation()V

    .line 158
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 160
    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 161
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    invoke-virtual {p0, v4}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->setAlpha(F)V

    .line 163
    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mDozing:Z

    invoke-virtual {p0, v0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->drawFingerprintIcon(Z)V

    .line 167
    :cond_3
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mMiuiGxzwTipView:Lcom/android/keyguard/fod/MiuiGxzwTipView;

    invoke-virtual {v0}, Lcom/android/keyguard/fod/MiuiGxzwTipView;->show()V

    .line 138
    return-void

    .line 164
    :cond_4
    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_3

    .line 165
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public showMorePress()V
    .locals 4

    .prologue
    .line 326
    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mMiuiGxzwTipView:Lcom/android/keyguard/fod/MiuiGxzwTipView;

    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mDozing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mLightWallpaperGxzw:Z

    .line 327
    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x910043f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x43820000    # 260.0f

    .line 326
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/keyguard/fod/MiuiGxzwTipView;->startTipAnim(ZLjava/lang/String;F)V

    .line 325
    return-void

    .line 326
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startAnim(ZLcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;)V
    .locals 7
    .param p1, "aod"    # Z
    .param p2, "args"    # Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;

    .prologue
    .line 273
    iget-object v1, p2, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;->res:[I

    .line 274
    .local v1, "res":[I
    if-eqz v1, :cond_1

    array-length v0, v1

    if-lez v0, :cond_1

    .line 275
    iget-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mMiuiGxzwFrameAnimation:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;

    iget-boolean v0, p2, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;->repeat:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->setMode(I)V

    .line 276
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mMiuiGxzwFrameAnimation:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;

    iget v2, p2, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;->frameInterval:I

    invoke-virtual {v0, v2}, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->setFrameInterval(I)V

    .line 277
    const/4 v5, 0x0

    .line 278
    .local v5, "listener":Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$FrameAnimationListener;
    if-eqz p1, :cond_0

    .line 280
    new-instance v5, Lcom/android/keyguard/fod/MiuiGxzwAnimView$1;

    .end local v5    # "listener":Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$FrameAnimationListener;
    invoke-direct {v5, p0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView$1;-><init>(Lcom/android/keyguard/fod/MiuiGxzwAnimView;)V

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mMiuiGxzwFrameAnimation:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;

    iget v2, p2, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;->startPosition:I

    iget v3, p2, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;->backgroundRes:I

    .line 311
    iget v4, p2, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;->backgroundFrame:I

    iget-object v6, p2, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;->customerDrawBitmap:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$CustomerDrawBitmap;

    .line 310
    invoke-virtual/range {v0 .. v6}, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->startAnimation([IIIILcom/android/keyguard/fod/MiuiGxzwFrameAnimation$FrameAnimationListener;Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$CustomerDrawBitmap;)V

    .line 272
    :cond_1
    return-void

    .line 275
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public startBackAnim()V
    .locals 4

    .prologue
    .line 257
    const-string/jumbo v1, "MiuiGxzwAnimView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startBackAnim: mShouldShowBackAnim = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mShouldShowBackAnim:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mShouldShowBackAnim:Z

    if-eqz v1, :cond_0

    .line 260
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mShouldShowBackAnim:Z

    .line 262
    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mMiuiGxzwAnimManager:Lcom/android/keyguard/fod/MiuiGxzwAnimManager;

    iget-boolean v2, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mDozing:Z

    invoke-virtual {v1, v2}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->getBackAnimArgs(Z)Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;

    move-result-object v0

    .line 263
    .local v0, "args":Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;
    iget-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mDozing:Z

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->startAnim(ZLcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;)V

    .line 265
    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mMiuiGxzwTipView:Lcom/android/keyguard/fod/MiuiGxzwTipView;

    invoke-virtual {v1}, Lcom/android/keyguard/fod/MiuiGxzwTipView;->stopTipAnim()V

    .line 255
    .end local v0    # "args":Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;
    :goto_0
    return-void

    .line 267
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mMiuiGxzwTipView:Lcom/android/keyguard/fod/MiuiGxzwTipView;

    invoke-virtual {v1}, Lcom/android/keyguard/fod/MiuiGxzwTipView;->stopTipAnim()V

    .line 268
    iget-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mDozing:Z

    invoke-virtual {p0, v1}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->drawFingerprintIcon(Z)V

    goto :goto_0
.end method

.method public startFalseAnim()V
    .locals 5

    .prologue
    .line 244
    const-string/jumbo v1, "MiuiGxzwAnimView"

    const-string/jumbo v2, "startFalseAnim"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mShouldShowBackAnim:Z

    .line 248
    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mMiuiGxzwAnimManager:Lcom/android/keyguard/fod/MiuiGxzwAnimManager;

    iget-boolean v2, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mDozing:Z

    invoke-virtual {v1, v2}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->getFalseAnimArgs(Z)Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;

    move-result-object v0

    .line 249
    .local v0, "args":Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;
    iget-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mDozing:Z

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->startAnim(ZLcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;)V

    .line 251
    iget-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mMiuiGxzwTipView:Lcom/android/keyguard/fod/MiuiGxzwTipView;

    iget-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mDozing:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mLightWallpaperGxzw:Z

    .line 252
    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x910043d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mMiuiGxzwAnimManager:Lcom/android/keyguard/fod/MiuiGxzwAnimManager;

    invoke-virtual {v4}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->getFalseTipTranslationY()I

    move-result v4

    int-to-float v4, v4

    .line 251
    invoke-virtual {v2, v1, v3, v4}, Lcom/android/keyguard/fod/MiuiGxzwTipView;->startTipAnim(ZLjava/lang/String;F)V

    .line 242
    return-void

    .line 251
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startIconAnim(Z)V
    .locals 3
    .param p1, "aod"    # Z

    .prologue
    .line 220
    const-string/jumbo v1, "MiuiGxzwAnimView"

    const-string/jumbo v2, "startIconAnim"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mShouldShowBackAnim:Z

    .line 224
    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mMiuiGxzwAnimManager:Lcom/android/keyguard/fod/MiuiGxzwAnimManager;

    invoke-virtual {v1, p1}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->getIconAnimArgs(Z)Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;

    move-result-object v0

    .line 225
    .local v0, "args":Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;
    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->startAnim(ZLcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;)V

    .line 227
    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mMiuiGxzwTipView:Lcom/android/keyguard/fod/MiuiGxzwTipView;

    invoke-virtual {v1}, Lcom/android/keyguard/fod/MiuiGxzwTipView;->stopTipAnim()V

    .line 218
    return-void
.end method

.method public startRecognizingAnim()V
    .locals 3

    .prologue
    .line 232
    const-string/jumbo v1, "MiuiGxzwAnimView"

    const-string/jumbo v2, "startRecognizingAnim"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mShouldShowBackAnim:Z

    .line 236
    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mMiuiGxzwAnimManager:Lcom/android/keyguard/fod/MiuiGxzwAnimManager;

    iget-boolean v2, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mDozing:Z

    invoke-virtual {v1, v2}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->getRecognizingAnimArgs(Z)Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;

    move-result-object v0

    .line 237
    .local v0, "args":Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;
    iget-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mDozing:Z

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->startAnim(ZLcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;)V

    .line 239
    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mMiuiGxzwTipView:Lcom/android/keyguard/fod/MiuiGxzwTipView;

    invoke-virtual {v1}, Lcom/android/keyguard/fod/MiuiGxzwTipView;->stopTipAnim()V

    .line 230
    return-void
.end method

.method public stopAnim()V
    .locals 1

    .prologue
    .line 316
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mShouldShowBackAnim:Z

    .line 317
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mMiuiGxzwFrameAnimation:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;

    invoke-virtual {v0}, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->stopAnimation()V

    .line 318
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mMiuiGxzwTipView:Lcom/android/keyguard/fod/MiuiGxzwTipView;

    invoke-virtual {v0}, Lcom/android/keyguard/fod/MiuiGxzwTipView;->stopTipAnim()V

    .line 315
    return-void
.end method

.method public stopDozing()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 201
    iput-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mDozingIconAnimDone:Z

    .line 202
    iput-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mDozing:Z

    .line 203
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mMiuiGxzwAnimManager:Lcom/android/keyguard/fod/MiuiGxzwAnimManager;

    invoke-virtual {v0}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->stopDozing()V

    .line 200
    return-void
.end method

.method public stopTip()V
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mMiuiGxzwTipView:Lcom/android/keyguard/fod/MiuiGxzwTipView;

    invoke-virtual {v0}, Lcom/android/keyguard/fod/MiuiGxzwTipView;->stopTipAnim()V

    .line 321
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 375
    const-string/jumbo v0, "MiuiGxzwAnimView"

    const-string/jumbo v1, "surfaceChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v2, 0x1

    .line 357
    const-string/jumbo v0, "MiuiGxzwAnimView"

    const-string/jumbo v1, "surfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mKeyguardAuthen:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mShowing:Z

    if-eqz v0, :cond_2

    .line 360
    iget v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mDisplayState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mDisplayState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 361
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mDozingIconAnimDone:Z

    if-nez v0, :cond_1

    .line 362
    iput-boolean v2, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mDozingIconAnimDone:Z

    .line 363
    invoke-virtual {p0, v2}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->startIconAnim(Z)V

    .line 355
    :cond_1
    :goto_0
    return-void

    .line 366
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mShouldShowBackAnim:Z

    .line 367
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mMiuiGxzwTipView:Lcom/android/keyguard/fod/MiuiGxzwTipView;

    invoke-virtual {v0}, Lcom/android/keyguard/fod/MiuiGxzwTipView;->stopTipAnim()V

    .line 368
    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mDozing:Z

    invoke-virtual {p0, v0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->drawFingerprintIcon(Z)V

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 382
    const-string/jumbo v0, "MiuiGxzwAnimView"

    const-string/jumbo v1, "surfaceDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    return-void
.end method
