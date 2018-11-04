.class public Lcom/android/keyguard/KeyguardPatternView;
.super Lcom/android/keyguard/MiuiKeyguardPasswordView;
.source "KeyguardPatternView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;
.implements Lcom/android/settingslib/animation/AppearAnimationCreator;
.implements Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;
.implements Lcom/android/keyguard/BackButton$BackButtonCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardPatternView$1;,
        Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/keyguard/MiuiKeyguardPasswordView;",
        "Lcom/android/keyguard/KeyguardSecurityView;",
        "Lcom/android/settingslib/animation/AppearAnimationCreator",
        "<",
        "Lcom/android/keyguard/MiuiLockPatternView$CellState;",
        ">;",
        "Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;",
        "Lcom/android/keyguard/BackButton$BackButtonCallback;"
    }
.end annotation


# instance fields
.field private final mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

.field private mBackButton:Lcom/android/keyguard/BackButton;

.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mCancelPatternRunnable:Ljava/lang/Runnable;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private final mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

.field private final mDisappearAnimationUtilsLocked:Lcom/android/settingslib/animation/DisappearAnimationUtils;

.field private mDisappearYTranslation:I

.field private mEcaView:Landroid/view/View;

.field private mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

.field private mFontScale:F

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mLastPokeTime:J

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockPatternView:Lcom/android/keyguard/MiuiLockPatternView;

.field private mOrientation:I

.field private mPendingLockCheck:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<***>;"
        }
    .end annotation
.end field

.field private mTempRect:Landroid/graphics/Rect;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/KeyguardPatternView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCancelPatternRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/MiuiLockPatternView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/MiuiLockPatternView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/keyguard/KeyguardPatternView;)Landroid/os/AsyncTask;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/KeyguardPatternView;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/KeyguardPatternView;Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPatternView;->enableClipping(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/KeyguardPatternView;J)V
    .locals 1
    .param p1, "elapsedRealtimeDeadline"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardPatternView;->handleAttemptLockout(J)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v9, 0x10c000f

    const v8, 0x3f99999a    # 1.2f

    const v7, 0x3f19999a    # 0.6f

    .line 115
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/MiuiKeyguardPasswordView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 84
    const-wide/16 v0, -0x1b58

    iput-wide v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLastPokeTime:J

    .line 89
    new-instance v0, Lcom/android/keyguard/KeyguardPatternView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardPatternView$1;-><init>(Lcom/android/keyguard/KeyguardPatternView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCancelPatternRunnable:Ljava/lang/Runnable;

    .line 95
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    .line 116
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 117
    new-instance v0, Lcom/android/settingslib/animation/AppearAnimationUtils;

    .line 120
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    const v2, 0x10c000e

    .line 119
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    .line 118
    const-wide/16 v2, 0xdc

    const/high16 v4, 0x3fc00000    # 1.5f

    .line 119
    const/high16 v5, 0x40000000    # 2.0f

    move-object v1, p1

    .line 117
    invoke-direct/range {v0 .. v6}, Lcom/android/settingslib/animation/AppearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    .line 121
    new-instance v0, Lcom/android/settingslib/animation/DisappearAnimationUtils;

    .line 122
    const-wide/16 v2, 0x7d

    .line 124
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    .line 123
    invoke-static {v1, v9}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    move-object v1, p1

    move v4, v8

    move v5, v7

    .line 121
    invoke-direct/range {v0 .. v6}, Lcom/android/settingslib/animation/DisappearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    .line 125
    new-instance v0, Lcom/android/settingslib/animation/DisappearAnimationUtils;

    .line 128
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    .line 127
    invoke-static {v1, v9}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    .line 126
    const-wide/16 v2, 0xbb

    move-object v1, p1

    move v4, v8

    move v5, v7

    .line 125
    invoke-direct/range {v0 .. v6}, Lcom/android/settingslib/animation/DisappearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearAnimationUtilsLocked:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    .line 129
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 130
    const v1, 0x90f02d8

    .line 129
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearYTranslation:I

    .line 114
    return-void
.end method

.method private enableClipping(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 479
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardPatternView;->setClipChildren(Z)V

    .line 480
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardPatternView;->setClipToPadding(Z)V

    .line 478
    return-void
.end method

.method private handleAttemptLockout(J)V
    .locals 11
    .param p1, "elapsedRealtimeDeadline"    # J

    .prologue
    const-wide/16 v4, 0x3e8

    .line 339
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 340
    .local v6, "elapsedRealtime":J
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    sub-long v2, p1, v6

    invoke-interface {v0, v2, v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->handleAttemptLockout(J)V

    .line 341
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/MiuiLockPatternView;

    invoke-virtual {v0}, Lcom/android/keyguard/MiuiLockPatternView;->clearPattern()V

    .line 342
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/MiuiLockPatternView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/MiuiLockPatternView;->setEnabled(Z)V

    .line 344
    sub-long v0, p1, v6

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    .line 343
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-long v8, v0

    .line 345
    .local v8, "secondsInFuture":J
    new-instance v0, Lcom/android/keyguard/KeyguardPatternView$2;

    mul-long v2, v8, v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/KeyguardPatternView$2;-><init>(Lcom/android/keyguard/KeyguardPatternView;JJ)V

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardPatternView$2;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 338
    return-void
.end method


# virtual methods
.method public applyHintAnimation(J)V
    .locals 1
    .param p1, "offset"    # J

    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardBouncerMessageView:Lcom/android/keyguard/KeyguardBouncerMessageView;

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/KeyguardBouncerMessageView;->applyHintAnimation(J)V

    .line 422
    return-void
.end method

.method public createAnimation(Lcom/android/keyguard/MiuiLockPatternView$CellState;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 14
    .param p1, "animatedCell"    # Lcom/android/keyguard/MiuiLockPatternView$CellState;
    .param p2, "delay"    # J
    .param p4, "duration"    # J
    .param p6, "translationY"    # F
    .param p7, "appearing"    # Z
    .param p8, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p9, "finishListener"    # Ljava/lang/Runnable;

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/MiuiLockPatternView;

    .line 489
    if-eqz p7, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    .line 490
    :goto_0
    if-eqz p7, :cond_2

    move/from16 v4, p6

    :goto_1
    if-eqz p7, :cond_3

    const/4 v5, 0x0

    .line 491
    :goto_2
    if-eqz p7, :cond_4

    const/4 v6, 0x0

    .line 489
    :goto_3
    const/high16 v2, 0x3f800000    # 1.0f

    .line 491
    const/high16 v7, 0x3f800000    # 1.0f

    move-object v1, p1

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    .line 488
    invoke-virtual/range {v0 .. v13}, Lcom/android/keyguard/MiuiLockPatternView;->startCellStateAnimation(Lcom/android/keyguard/MiuiLockPatternView$CellState;FFFFFFJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 493
    if-eqz p9, :cond_0

    .line 495
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mEcaView:Landroid/view/View;

    .line 496
    const/4 v9, 0x0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    .line 495
    invoke-virtual/range {v0 .. v9}, Lcom/android/settingslib/animation/AppearAnimationUtils;->createAnimation(Landroid/view/View;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 487
    :cond_0
    return-void

    .line 489
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 490
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    move/from16 v5, p6

    goto :goto_2

    .line 491
    :cond_4
    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_3
.end method

.method public bridge synthetic createAnimation(Ljava/lang/Object;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 10
    .param p1, "animatedCell"    # Ljava/lang/Object;
    .param p2, "delay"    # J
    .param p4, "duration"    # J
    .param p6, "translationY"    # F
    .param p7, "appearing"    # Z
    .param p8, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p9, "finishListener"    # Ljava/lang/Runnable;

    .prologue
    move-object v1, p1

    .line 484
    check-cast v1, Lcom/android/keyguard/MiuiLockPatternView$CellState;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/android/keyguard/KeyguardPatternView;->createAnimation(Lcom/android/keyguard/MiuiLockPatternView$CellState;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    return-void
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 502
    const/4 v0, 0x0

    return v0
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 364
    const/4 v0, 0x0

    return v0
.end method

.method public onBackButtonClicked()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->reset()V

    .line 177
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 175
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v7, 0x0

    .line 507
    invoke-super {p0, p1}, Lcom/android/keyguard/MiuiKeyguardPasswordView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 508
    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 509
    .local v0, "fontScale":F
    iget v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mFontScale:F

    cmpl-float v5, v5, v0

    if-eqz v5, :cond_0

    .line 510
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 511
    .local v3, "resources":Landroid/content/res/Resources;
    const v5, 0x90f03ae

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 512
    .local v4, "textSize":I
    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    int-to-float v6, v4

    invoke-virtual {v5, v7, v6}, Lcom/android/keyguard/EmergencyButton;->setTextSize(IF)V

    .line 513
    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackButton:Lcom/android/keyguard/BackButton;

    int-to-float v6, v4

    invoke-virtual {v5, v7, v6}, Lcom/android/keyguard/BackButton;->setTextSize(IF)V

    .line 514
    iput v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mFontScale:F

    .line 516
    .end local v3    # "resources":Landroid/content/res/Resources;
    .end local v4    # "textSize":I
    :cond_0
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    .line 517
    .local v2, "orientation":I
    iget v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mOrientation:I

    if-eq v5, v2, :cond_1

    .line 519
    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardBouncerMessageView:Lcom/android/keyguard/KeyguardBouncerMessageView;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardBouncerMessageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 520
    .local v1, "messageLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 521
    const v6, 0x90f03af

    .line 520
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 522
    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardBouncerMessageView:Lcom/android/keyguard/KeyguardBouncerMessageView;

    invoke-virtual {v5, v1}, Lcom/android/keyguard/KeyguardBouncerMessageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 506
    .end local v1    # "messageLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    return-void
.end method

.method public onEmergencyButtonClickedWhenInCall()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->reset()V

    .line 170
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 145
    invoke-super {p0}, Lcom/android/keyguard/MiuiKeyguardPasswordView;->onFinishInflate()V

    .line 146
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v0, :cond_2

    .line 147
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 146
    :goto_0
    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 149
    const v0, 0x912013b

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/MiuiLockPatternView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/MiuiLockPatternView;

    .line 150
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/MiuiLockPatternView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/MiuiLockPatternView;->setSaveEnabled(Z)V

    .line 151
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/MiuiLockPatternView;

    new-instance v1, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;-><init>(Lcom/android/keyguard/KeyguardPatternView;Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;)V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/MiuiLockPatternView;->setOnPatternListener(Lcom/android/keyguard/MiuiLockPatternView$OnPatternListener;)V

    .line 154
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/MiuiLockPatternView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/MiuiLockPatternView;->setTactileFeedbackEnabled(Z)V

    .line 156
    const v0, 0x9120123

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mEcaView:Landroid/view/View;

    .line 158
    const v0, 0x912012c

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/EmergencyButton;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    .line 159
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/EmergencyButton;->setCallback(Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;)V

    .line 163
    :cond_0
    const v0, 0x912012e

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/BackButton;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackButton:Lcom/android/keyguard/BackButton;

    .line 164
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackButton:Lcom/android/keyguard/BackButton;

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackButton:Lcom/android/keyguard/BackButton;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/BackButton;->setCallback(Lcom/android/keyguard/BackButton$BackButtonCallback;)V

    .line 144
    :cond_1
    return-void

    .line 147
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 369
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 371
    iput-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    .line 374
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mPendingLockCheck:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 375
    iput-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 368
    :cond_1
    return-void
.end method

.method public onResume(I)V
    .locals 0
    .param p1, "reason"    # I

    .prologue
    .line 381
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->reset()V

    .line 380
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    .line 182
    invoke-super {p0, p1}, Lcom/android/keyguard/MiuiKeyguardPasswordView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 185
    .local v2, "result":Z
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/keyguard/KeyguardPatternView;->mLastPokeTime:J

    sub-long v0, v4, v6

    .line 186
    .local v0, "elapsed":J
    if-eqz v2, :cond_0

    const-wide/16 v4, 0x1af4

    cmp-long v3, v0, v4

    if-lez v3, :cond_0

    .line 187
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mLastPokeTime:J

    .line 189
    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v8, v8, v8, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 190
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/MiuiLockPatternView;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3, v4}, Lcom/android/keyguard/KeyguardPatternView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 191
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 192
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/MiuiLockPatternView;

    invoke-virtual {v3, p1}, Lcom/android/keyguard/MiuiLockPatternView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 193
    .end local v2    # "result":Z
    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 194
    return v2

    .line 192
    .restart local v2    # "result":Z
    :cond_1
    const/4 v2, 0x1

    .local v2, "result":Z
    goto :goto_0
.end method

.method public reset()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 200
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/MiuiLockPatternView;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 201
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v5

    .line 200
    invoke-virtual {v2, v5}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v4, v2}, Lcom/android/keyguard/MiuiLockPatternView;->setInStealthMode(Z)V

    .line 202
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/MiuiLockPatternView;

    invoke-virtual {v2}, Lcom/android/keyguard/MiuiLockPatternView;->enableInput()V

    .line 203
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/MiuiLockPatternView;

    invoke-virtual {v2, v3}, Lcom/android/keyguard/MiuiLockPatternView;->setEnabled(Z)V

    .line 204
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/MiuiLockPatternView;

    invoke-virtual {v2}, Lcom/android/keyguard/MiuiLockPatternView;->clearPattern()V

    .line 207
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 208
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    .line 207
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    .line 209
    .local v0, "deadline":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 210
    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/KeyguardPatternView;->handleAttemptLockout(J)V

    .line 198
    :cond_0
    return-void

    .end local v0    # "deadline":J
    :cond_1
    move v2, v3

    .line 200
    goto :goto_0
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 134
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 139
    return-void
.end method

.method protected setMessage(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardBouncerMessageView:Lcom/android/keyguard/KeyguardBouncerMessageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/keyguard/KeyguardBouncerMessageView;->showMessage(II)V

    .line 334
    return-void
.end method

.method public showMessage(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "color"    # I

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardBouncerMessageView:Lcom/android/keyguard/KeyguardBouncerMessageView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/keyguard/KeyguardBouncerMessageView;->showMessage(Ljava/lang/String;Ljava/lang/String;I)V

    .line 417
    return-void
.end method

.method public showPromptReason(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    .line 391
    const/4 v0, 0x0

    .line 392
    .local v0, "stringResId":I
    packed-switch p1, :pswitch_data_0

    .line 408
    const v0, 0x910039a

    .line 411
    :goto_0
    :pswitch_0
    if-eqz v0, :cond_0

    .line 412
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardBouncerMessageView:Lcom/android/keyguard/KeyguardBouncerMessageView;

    const v2, 0x91003da

    invoke-virtual {v1, v2, v0}, Lcom/android/keyguard/KeyguardBouncerMessageView;->showMessage(II)V

    .line 390
    :cond_0
    return-void

    .line 394
    :pswitch_1
    const v0, 0x91003db

    .line 395
    goto :goto_0

    .line 397
    :pswitch_2
    const v0, 0x910039a

    .line 398
    goto :goto_0

    .line 400
    :pswitch_3
    const v0, 0x91003a0

    .line 401
    goto :goto_0

    .line 403
    :pswitch_4
    const v0, 0x91003a1

    .line 404
    goto :goto_0

    .line 392
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public startAppearAnimation()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 428
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardBouncerMessageView:Lcom/android/keyguard/KeyguardBouncerMessageView;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardBouncerMessageView;->setVisibility(I)V

    .line 429
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardPatternView;->enableClipping(Z)V

    .line 430
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPatternView;->setAlpha(F)V

    .line 431
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    invoke-virtual {v0}, Lcom/android/settingslib/animation/AppearAnimationUtils;->getStartTranslation()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPatternView;->setTranslationY(F)V

    .line 432
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1f4

    .line 433
    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    invoke-virtual {v0}, Lcom/android/settingslib/animation/AppearAnimationUtils;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v7

    move-object v1, p0

    .line 432
    invoke-static/range {v1 .. v7}, Lcom/android/settingslib/animation/AppearAnimationUtils;->startTranslationYAnimation(Landroid/view/View;JJFLandroid/view/animation/Interpolator;)V

    .line 434
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    .line 435
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/MiuiLockPatternView;

    invoke-virtual {v1}, Lcom/android/keyguard/MiuiLockPatternView;->getCellStates()[[Lcom/android/keyguard/MiuiLockPatternView$CellState;

    move-result-object v1

    .line 436
    new-instance v2, Lcom/android/keyguard/KeyguardPatternView$3;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardPatternView$3;-><init>(Lcom/android/keyguard/KeyguardPatternView;)V

    .line 434
    invoke-virtual {v0, v1, v2, p0}, Lcom/android/settingslib/animation/AppearAnimationUtils;->startAnimation2d([[Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/settingslib/animation/AppearAnimationCreator;)V

    .line 427
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 9
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 447
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardBouncerMessageView:Lcom/android/keyguard/KeyguardBouncerMessageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardBouncerMessageView;->setVisibility(I)V

    .line 448
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->needsSlowUnlockTransition()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 449
    const/high16 v8, 0x3fc00000    # 1.5f

    .line 451
    .local v8, "durationMultiplier":F
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/MiuiLockPatternView;

    invoke-virtual {v1}, Lcom/android/keyguard/MiuiLockPatternView;->clearPattern()V

    .line 452
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardPatternView;->enableClipping(Z)V

    .line 453
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPatternView;->setTranslationY(F)V

    .line 454
    const-wide/16 v2, 0x0

    .line 455
    const/high16 v1, 0x43960000    # 300.0f

    mul-float/2addr v1, v8

    float-to-long v4, v1

    .line 456
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    invoke-virtual {v1}, Lcom/android/settingslib/animation/DisappearAnimationUtils;->getStartTranslation()F

    move-result v1

    neg-float v6, v1

    .line 457
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    invoke-virtual {v1}, Lcom/android/settingslib/animation/DisappearAnimationUtils;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v7

    move-object v1, p0

    .line 454
    invoke-static/range {v1 .. v7}, Lcom/android/settingslib/animation/AppearAnimationUtils;->startTranslationYAnimation(Landroid/view/View;JJFLandroid/view/animation/Interpolator;)V

    .line 459
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->needsSlowUnlockTransition()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 461
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearAnimationUtilsLocked:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    .line 464
    .local v0, "disappearAnimationUtils":Lcom/android/settingslib/animation/DisappearAnimationUtils;
    :goto_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/MiuiLockPatternView;

    invoke-virtual {v1}, Lcom/android/keyguard/MiuiLockPatternView;->getCellStates()[[Lcom/android/keyguard/MiuiLockPatternView$CellState;

    move-result-object v1

    .line 465
    new-instance v2, Lcom/android/keyguard/KeyguardPatternView$4;

    invoke-direct {v2, p0, p1}, Lcom/android/keyguard/KeyguardPatternView$4;-><init>(Lcom/android/keyguard/KeyguardPatternView;Ljava/lang/Runnable;)V

    .line 463
    invoke-virtual {v0, v1, v2, p0}, Lcom/android/settingslib/animation/DisappearAnimationUtils;->startAnimation2d([[Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/settingslib/animation/AppearAnimationCreator;)V

    .line 475
    const/4 v1, 0x1

    return v1

    .line 450
    .end local v0    # "disappearAnimationUtils":Lcom/android/settingslib/animation/DisappearAnimationUtils;
    .end local v8    # "durationMultiplier":F
    :cond_0
    const/high16 v8, 0x3f800000    # 1.0f

    .restart local v8    # "durationMultiplier":F
    goto :goto_0

    .line 462
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    .restart local v0    # "disappearAnimationUtils":Lcom/android/settingslib/animation/DisappearAnimationUtils;
    goto :goto_1
.end method
