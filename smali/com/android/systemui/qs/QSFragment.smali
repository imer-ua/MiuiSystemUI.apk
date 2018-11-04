.class public Lcom/android/systemui/qs/QSFragment;
.super Lcom/miui/systemui/support/v4/app/Fragment;
.source "QSFragment.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/QS;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSFragment$1;,
        Lcom/android/systemui/qs/QSFragment$2;
    }
.end annotation


# instance fields
.field private final mAnimateHeaderSlidingInListener:Landroid/animation/Animator$AnimatorListener;

.field protected mBackground:Landroid/view/View;

.field private mBgHandler:Landroid/os/Handler;

.field private mBrightnessHeight:I

.field private mBrightnessMarginTop:I

.field private mCaretHeight:I

.field private mContainer:Lcom/android/systemui/qs/QSContainerImpl;

.field protected mContent:Landroid/view/View;

.field private mContentMargin:I

.field private mDelay:J

.field private mFooterContainer:Landroid/view/View;

.field private mGutterHeight:I

.field protected mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

.field private mKeyguardShowing:Z

.field private mLastAppearFraction:F

.field private mLayoutDirection:I

.field private mListening:Z

.field private mPanelView:Lcom/android/systemui/plugins/qs/QS$HeightListener;

.field private mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

.field private mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

.field private mQSDataUsageEnabled:Z

.field private mQSDetail:Lcom/android/systemui/qs/QSDetail;

.field protected mQSPanel:Lcom/android/systemui/qs/QSPanel;

.field private mQsDisabled:Z

.field private mQsExpanded:Z

.field protected mQuickQSPanel:Lcom/android/systemui/qs/QuickQSPanel;

.field private mQuickQsAnimating:Z

.field private mResolver:Landroid/content/ContentResolver;

.field private mShowDataUsageObserver:Landroid/database/ContentObserver;

.field private mStackScrollerOverscrolling:Z

.field private final mStartHeaderSlidingIn:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mStatusBarMinHeight:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/QSFragment;)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mAnimateHeaderSlidingInListener:Landroid/animation/Animator$AnimatorListener;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/QSFragment;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/QSFragment;->mBrightnessHeight:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/QSFragment;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/QSFragment;->mBrightnessMarginTop:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/QSFragment;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/QSFragment;->mCaretHeight:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/qs/QSFragment;)Lcom/android/systemui/qs/QSContainerImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/qs/QSFragment;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/qs/QSFragment;->mDelay:J

    return-wide v0
.end method

.method static synthetic -get6(Lcom/android/systemui/qs/QSFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSDataUsageEnabled:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/QSFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFragment;->mQSDataUsageEnabled:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/qs/QSFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFragment;->mQuickQsAnimating:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/QSFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsState()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/miui/systemui/support/v4/app/Fragment;-><init>()V

    .line 92
    new-instance v1, Landroid/os/Handler;

    sget-object v0, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mBgHandler:Landroid/os/Handler;

    .line 347
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/systemui/qs/QSFragment;->mLastAppearFraction:F

    .line 470
    new-instance v0, Lcom/android/systemui/qs/QSFragment$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSFragment$1;-><init>(Lcom/android/systemui/qs/QSFragment;)V

    .line 469
    iput-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mStartHeaderSlidingIn:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 487
    new-instance v0, Lcom/android/systemui/qs/QSFragment$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSFragment$2;-><init>(Lcom/android/systemui/qs/QSFragment;)V

    .line 486
    iput-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mAnimateHeaderSlidingInListener:Landroid/animation/Animator$AnimatorListener;

    .line 57
    return-void
.end method

.method private getFraction(FFF)F
    .locals 2
    .param p1, "start"    # F
    .param p2, "end"    # F
    .param p3, "current"    # F

    .prologue
    .line 390
    cmpg-float v0, p3, p1

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 391
    :cond_0
    cmpl-float v0, p3, p2

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 392
    :cond_1
    sub-float v0, p3, p1

    sub-float v1, p2, p1

    div-float/2addr v0, v1

    return v0
.end method

.method private updateQsState()V
    .locals 6

    .prologue
    const/4 v2, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 253
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    if-nez v1, :cond_c

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mStackScrollerOverscrolling:Z

    if-nez v1, :cond_c

    .line 254
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mQuickQsAnimating:Z

    .line 255
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-boolean v5, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    invoke-virtual {v1, v5}, Lcom/android/systemui/qs/QSPanel;->setExpanded(Z)V

    .line 256
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQuickQSPanel:Lcom/android/systemui/qs/QuickQSPanel;

    iget-boolean v5, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    invoke-virtual {v1, v5}, Lcom/android/systemui/qs/QuickQSPanel;->setExpanded(Z)V

    .line 257
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    if-eqz v1, :cond_0

    .line 258
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    iget-boolean v5, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    invoke-virtual {v1, v5}, Lcom/android/systemui/qs/QSDetail;->setExpanded(Z)V

    .line 260
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mKeyguardShowing:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mQuickQsAnimating:Z

    if-eqz v1, :cond_d

    :cond_1
    move v1, v3

    :goto_1
    invoke-virtual {v5, v1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setVisibility(I)V

    .line 263
    iget-object v5, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mKeyguardShowing:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mQuickQsAnimating:Z

    if-eqz v1, :cond_e

    .line 264
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mStackScrollerOverscrolling:Z

    if-eqz v1, :cond_f

    :cond_3
    move v1, v3

    .line 263
    :goto_2
    invoke-virtual {v5, v1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setExpanded(Z)V

    .line 266
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSContainerImpl;->getQSFooter()Lcom/android/systemui/qs/QSFooter;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 267
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSContainerImpl;->getQSFooter()Lcom/android/systemui/qs/QSFooter;

    move-result-object v1

    iget-boolean v5, p0, Lcom/android/systemui/qs/QSFragment;->mKeyguardShowing:Z

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Lcom/android/systemui/qs/QSFragment;->mQuickQsAnimating:Z

    if-eqz v5, :cond_6

    .line 268
    :cond_4
    iget-boolean v5, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Lcom/android/systemui/qs/QSFragment;->mStackScrollerOverscrolling:Z

    if-eqz v5, :cond_6

    :cond_5
    move v4, v3

    .line 267
    :cond_6
    invoke-virtual {v1, v4}, Lcom/android/systemui/qs/QSFooter;->setExpanded(Z)V

    .line 270
    :cond_7
    iget-object v4, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v0, :cond_10

    move v1, v3

    :goto_3
    invoke-virtual {v4, v1}, Lcom/android/systemui/qs/QSPanel;->setVisibility(I)V

    .line 271
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSContainerImpl;->getBrightnessView()Landroid/view/View;

    move-result-object v4

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mKeyguardShowing:Z

    if-eqz v1, :cond_8

    if-eqz v0, :cond_11

    :cond_8
    move v1, v3

    :goto_4
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 272
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSContainerImpl;->getExpandIndicator()Landroid/view/View;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSFragment;->mKeyguardShowing:Z

    if-eqz v4, :cond_9

    if-eqz v0, :cond_a

    :cond_9
    move v2, v3

    :cond_a
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 273
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    iget-boolean v2, p0, Lcom/android/systemui/qs/QSFragment;->mQsDisabled:Z

    if-eqz v2, :cond_b

    const/16 v3, 0x8

    :cond_b
    invoke-virtual {v1, v3}, Lcom/android/systemui/qs/QSContainerImpl;->setVisibility(I)V

    .line 252
    return-void

    .line 253
    :cond_c
    const/4 v0, 0x1

    .local v0, "expandVisually":Z
    goto/16 :goto_0

    .end local v0    # "expandVisually":Z
    :cond_d
    move v1, v2

    .line 262
    goto :goto_1

    :cond_e
    move v1, v4

    .line 263
    goto :goto_2

    :cond_f
    move v1, v4

    .line 264
    goto :goto_2

    :cond_10
    move v1, v2

    .line 270
    goto :goto_3

    :cond_11
    move v1, v2

    .line 271
    goto :goto_4
.end method


# virtual methods
.method public addQsTile(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "tile"    # Landroid/content/ComponentName;

    .prologue
    .line 609
    return-void
.end method

.method public animateCollapsePanels(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 508
    return-void
.end method

.method public animateExpandNotificationsPanel()V
    .locals 0

    .prologue
    .line 504
    return-void
.end method

.method public animateExpandSettingsPanel(Ljava/lang/String;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/String;

    .prologue
    .line 512
    return-void
.end method

.method public animateHeaderSlidingIn(J)V
    .locals 3
    .param p1, "delay"    # J

    .prologue
    .line 399
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    if-nez v0, :cond_0

    .line 400
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mQuickQsAnimating:Z

    .line 401
    iput-wide p1, p0, Lcom/android/systemui/qs/QSFragment;->mDelay:J

    .line 402
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mStartHeaderSlidingIn:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 395
    :cond_0
    return-void
.end method

.method public animateHeaderSlidingOut()V
    .locals 4

    .prologue
    .line 408
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mQuickQsAnimating:Z

    .line 409
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQuickQSPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QuickQSPanel;->getHeight()I

    move-result v1

    neg-int v1, v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/qs/QSFragment;->mContentMargin:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/qs/QSFragment;->mBrightnessHeight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 410
    const-wide/16 v2, 0x0

    .line 409
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 411
    const-wide/16 v2, 0x168

    .line 409
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 412
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 409
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 413
    new-instance v1, Lcom/android/systemui/qs/QSFragment$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSFragment$4;-><init>(Lcom/android/systemui/qs/QSFragment;)V

    .line 409
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 406
    return-void
.end method

.method public appTransitionCancelled()V
    .locals 0

    .prologue
    .line 576
    return-void
.end method

.method public appTransitionFinished()V
    .locals 0

    .prologue
    .line 585
    return-void
.end method

.method public appTransitionPending(Z)V
    .locals 0
    .param p1, "forced"    # Z

    .prologue
    .line 572
    return-void
.end method

.method public appTransitionStarting(JJZ)V
    .locals 0
    .param p1, "startTime"    # J
    .param p3, "duration"    # J
    .param p5, "forced"    # Z

    .prologue
    .line 581
    return-void
.end method

.method public cancelPreloadRecentApps()V
    .locals 0

    .prologue
    .line 560
    return-void
.end method

.method public clickTile(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "tile"    # Landroid/content/ComponentName;

    .prologue
    .line 617
    return-void
.end method

.method public closeDetail()V
    .locals 2

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->closeDetail(Z)V

    .line 432
    return-void
.end method

.method public disable(IIZ)V
    .locals 2
    .param p1, "state1"    # I
    .param p2, "state2"    # I
    .param p3, "animate"    # Z

    .prologue
    .line 246
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 247
    .local v0, "disabled":Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mQsDisabled:Z

    if-ne v0, v1, :cond_1

    return-void

    .line 246
    .end local v0    # "disabled":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "disabled":Z
    goto :goto_0

    .line 248
    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsDisabled:Z

    .line 249
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsState()V

    .line 245
    return-void
.end method

.method public dismissKeyboardShortcutsMenu()V
    .locals 0

    .prologue
    .line 552
    return-void
.end method

.method public getDesiredHeight()I
    .locals 2

    .prologue
    .line 441
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsDisabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/qs/QSFragment;->mStatusBarMinHeight:I

    :goto_0
    return v0

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSContainerImpl;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/QSFragment;->mBrightnessMarginTop:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/qs/QSFragment;->mCaretHeight:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/qs/QSFragment;->mBrightnessHeight:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getHeader()Landroid/view/View;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    return-object v0
.end method

.method public getQsContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mContent:Landroid/view/View;

    return-object v0
.end method

.method public getQsHeaderHeight()I
    .locals 1

    .prologue
    .line 460
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsDisabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/qs/QSFragment;->mStatusBarMinHeight:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getQsMinExpansionHeight()I
    .locals 2

    .prologue
    .line 455
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsDisabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/qs/QSFragment;->mStatusBarMinHeight:I

    :goto_0
    return v0

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQuickQSPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QuickQSPanel;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/qs/QSFragment;->mBrightnessMarginTop:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/qs/QSFragment;->mCaretHeight:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/qs/QSFragment;->mBrightnessHeight:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getQsPanel()Lcom/android/systemui/qs/QSPanel;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    return-object v0
.end method

.method public handleShowGlobalActionsMenu()V
    .locals 0

    .prologue
    .line 625
    return-void
.end method

.method public handleSystemNavigationKey(I)V
    .locals 0
    .param p1, "arg1"    # I

    .prologue
    .line 621
    return-void
.end method

.method public hideFingerprintDialog()V
    .locals 0

    .prologue
    .line 649
    return-void
.end method

.method public hideImmediately()V
    .locals 3

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 466
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQuickQSPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QuickQSPanel;->getHeight()I

    move-result v1

    neg-int v1, v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/qs/QSFragment;->mBrightnessMarginTop:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/qs/QSFragment;->mCaretHeight:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/qs/QSFragment;->mBrightnessHeight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 464
    return-void
.end method

.method public hideRecentApps(ZZ)V
    .locals 0
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHomeKey"    # Z

    .prologue
    .line 536
    return-void
.end method

.method isExpanded()Z
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    return v0
.end method

.method isListening()Z
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mListening:Z

    return v0
.end method

.method public isQSFullyCollapsed()Z
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSContainerImpl;->isQSFullyCollapsed()Z

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 210
    invoke-super {p0, p1}, Lcom/miui/systemui/support/v4/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 211
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/QSFragment;->mLayoutDirection:I

    if-eq v0, v1, :cond_0

    .line 212
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/QSFragment;->mLayoutDirection:I

    .line 213
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSAnimator;->onRtlChanged()V

    .line 209
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 102
    const v0, 0x90400c8

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mListening:Z

    if-eqz v0, :cond_0

    .line 167
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFragment;->setListening(Z)V

    .line 169
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    .line 170
    invoke-super {p0}, Lcom/miui/systemui/support/v4/app/Fragment;->onDestroy()V

    .line 165
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0, v1}, Lcom/android/systemui/SystemUI;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->removeCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 160
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mShowDataUsageObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 161
    invoke-super {p0}, Lcom/miui/systemui/support/v4/app/Fragment;->onDestroyView()V

    .line 158
    return-void
.end method

.method public onFingerprintAuthenticated()V
    .locals 0

    .prologue
    .line 637
    return-void
.end method

.method public onFingerprintError(Ljava/lang/String;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 645
    return-void
.end method

.method public onFingerprintHelp(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 641
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 175
    invoke-super {p0, p1}, Lcom/miui/systemui/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 176
    const-string/jumbo v0, "expanded"

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 177
    const-string/jumbo v0, "listening"

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mListening:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 174
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 107
    invoke-super {p0, p1, p2}, Lcom/miui/systemui/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 108
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 109
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x912024e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSContainerImpl;

    iput-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    .line 110
    const v1, 0x9120250

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mContent:Landroid/view/View;

    .line 111
    const v1, 0x9120251    # 1.75752E-33f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mBackground:Landroid/view/View;

    .line 112
    const v1, 0x9120252

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QuickQSPanel;

    iput-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQuickQSPanel:Lcom/android/systemui/qs/QuickQSPanel;

    .line 113
    const v1, 0x9120253

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel;

    iput-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    .line 114
    const v1, 0x912023a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QuickStatusBarHeader;

    iput-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    .line 115
    const v1, 0x9120254

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mFooterContainer:Landroid/view/View;

    .line 116
    const v1, 0x90f01fd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSFragment;->mGutterHeight:I

    .line 117
    const v1, 0x90f00db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSFragment;->mContentMargin:I

    .line 118
    const v1, 0x90f00e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSFragment;->mBrightnessMarginTop:I

    .line 119
    const v1, 0x90f00df

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSFragment;->mBrightnessHeight:I

    .line 120
    const v1, 0x90f011c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSFragment;->mCaretHeight:I

    .line 121
    const v1, 0x105001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSFragment;->mStatusBarMinHeight:I

    .line 125
    const v1, 0x90d002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    new-instance v1, Lcom/android/systemui/qs/QSAnimator;

    iget-object v2, p0, Lcom/android/systemui/qs/QSFragment;->mQuickQSPanel:Lcom/android/systemui/qs/QuickQSPanel;

    iget-object v3, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/systemui/qs/QSAnimator;-><init>(Lcom/android/systemui/plugins/qs/QS;Lcom/android/systemui/qs/QuickQSPanel;Lcom/android/systemui/qs/QSPanel;)V

    iput-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    .line 129
    :cond_0
    if-eqz p2, :cond_1

    .line 130
    const-string/jumbo v1, "expanded"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSFragment;->setExpanded(Z)V

    .line 131
    const-string/jumbo v1, "listening"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSFragment;->setListening(Z)V

    .line 134
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mResolver:Landroid/content/ContentResolver;

    .line 135
    new-instance v1, Lcom/android/systemui/qs/QSFragment$3;

    iget-object v2, p0, Lcom/android/systemui/qs/QSFragment;->mBgHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/qs/QSFragment$3;-><init>(Lcom/android/systemui/qs/QSFragment;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mShowDataUsageObserver:Landroid/database/ContentObserver;

    .line 150
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "status_bar_show_network_assistant"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 151
    iget-object v3, p0, Lcom/android/systemui/qs/QSFragment;->mShowDataUsageObserver:Landroid/database/ContentObserver;

    const/4 v4, -0x1

    .line 150
    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 152
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mShowDataUsageObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v5}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 154
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v1, v2}, Lcom/android/systemui/SystemUI;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 106
    return-void
.end method

.method public preloadRecentApps()V
    .locals 0

    .prologue
    .line 548
    return-void
.end method

.method public remQsTile(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "tile"    # Landroid/content/ComponentName;

    .prologue
    .line 613
    return-void
.end method

.method public removeIcon(Ljava/lang/String;)V
    .locals 0
    .param p1, "slot"    # Ljava/lang/String;

    .prologue
    .line 500
    return-void
.end method

.method public setBrightnessHeight(I)V
    .locals 1

    iput p1, p0, Lcom/android/systemui/qs/QSFragment;->mBrightnessHeight:I

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSContainerImpl;->setBrightnessHeight(I)V

    return-void
.end method

.method public setBrightnessListening(Z)V
    .locals 1
    .param p1, "listening"    # Z

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSContainerImpl;->setBrightnessListening(Z)V

    .line 343
    return-void
.end method

.method public setBrightnessMirror(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V
    .locals 1
    .param p1, "c"    # Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSContainerImpl;->setBrightnessMirror(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V

    .line 450
    return-void
.end method

.method public setExpandClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSContainerImpl;->getQSFooter()Lcom/android/systemui/qs/QSFooter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSContainerImpl;->getQSFooter()Lcom/android/systemui/qs/QSFooter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSFooter;->getExpandView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 425
    :cond_0
    return-void
.end method

.method public setExpanded(Z)V
    .locals 1
    .param p1, "expanded"    # Z

    .prologue
    .line 296
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    .line 298
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mKeyguardShowing:Z

    if-eqz v0, :cond_0

    .line 299
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFragment;->setBrightnessListening(Z)V

    .line 301
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsState()V

    .line 294
    return-void
.end method

.method public setHasNotifications(Z)V
    .locals 1
    .param p1, "hasNotifications"    # Z

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSContainerImpl;->setGutterEnabled(Z)V

    .line 200
    return-void
.end method

.method public setHeaderClickable(Z)V
    .locals 1
    .param p1, "clickable"    # Z

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSContainerImpl;->getQSFooter()Lcom/android/systemui/qs/QSFooter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSContainerImpl;->getQSFooter()Lcom/android/systemui/qs/QSFooter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSFooter;->getExpandView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 287
    :cond_0
    return-void
.end method

.method public setHeaderListening(Z)V
    .locals 1
    .param p1, "listening"    # Z

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQuickQSPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QuickQSPanel;->setListening(Z)V

    .line 334
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSContainerImpl;->getQSFooter()Lcom/android/systemui/qs/QSFooter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSContainerImpl;->getQSFooter()Lcom/android/systemui/qs/QSFooter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSFooter;->setListening(Z)V

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSContainerImpl;->isDataUsageAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 339
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSContainerImpl;->updateDataUsageInfo()V

    .line 331
    :cond_1
    return-void
.end method

.method public setHeightOverride(I)V
    .locals 1
    .param p1, "desiredHeight"    # I

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSContainerImpl;->setHeightOverride(I)V

    .line 446
    return-void
.end method

.method public setHost(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 3
    .param p1, "qsh"    # Lcom/android/systemui/qs/QSTileHost;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSPanel;->setHost(Lcom/android/systemui/qs/QSTileHost;)V

    .line 221
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQuickQSPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QuickQSPanel;->setHost(Lcom/android/systemui/qs/QSTileHost;)V

    .line 222
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQuickQSPanel:Lcom/android/systemui/qs/QuickQSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v2, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/qs/QuickQSPanel;->setQSPanelAndHeader(Lcom/android/systemui/qs/QSPanel;Landroid/view/View;)V

    .line 223
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSContainerImpl;->getQSFooter()Lcom/android/systemui/qs/QSFooter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSContainerImpl;->getQSFooter()Lcom/android/systemui/qs/QSFooter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSFooter;->setQSPanel(Lcom/android/systemui/qs/QSPanel;)V

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSAnimator;->setHost(Lcom/android/systemui/qs/QSTileHost;)V

    .line 219
    :cond_1
    return-void
.end method

.method public setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 0
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .prologue
    .line 496
    return-void
.end method

.method public setImeWindowStatus(Landroid/os/IBinder;IIZ)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "vis"    # I
    .param p3, "backDisposition"    # I
    .param p4, "showImeSwitcher"    # Z

    .prologue
    .line 527
    return-void
.end method

.method public setKeyguardShowing(Z)V
    .locals 1
    .param p1, "keyguardShowing"    # Z

    .prologue
    .line 306
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFragment;->mKeyguardShowing:Z

    .line 308
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSAnimator;->setOnKeyguard(Z)V

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSContainerImpl;->getQSFooter()Lcom/android/systemui/qs/QSFooter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 313
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSContainerImpl;->getQSFooter()Lcom/android/systemui/qs/QSFooter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSFooter;->setKeyguardShowing(Z)V

    .line 315
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsState()V

    .line 304
    return-void
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    .line 326
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFragment;->mListening:Z

    .line 327
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSContainerImpl;->setListening(Z)V

    .line 328
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mListening:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->setListening(Z)V

    .line 324
    return-void
.end method

.method public setOverscrolling(Z)V
    .locals 0
    .param p1, "stackScrollerOverscrolling"    # Z

    .prologue
    .line 320
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFragment;->mStackScrollerOverscrolling:Z

    .line 321
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsState()V

    .line 318
    return-void
.end method

.method public setPanelView(Lcom/android/systemui/plugins/qs/QS$HeightListener;)V
    .locals 0
    .param p1, "panelView"    # Lcom/android/systemui/plugins/qs/QS$HeightListener;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/systemui/qs/QSFragment;->mPanelView:Lcom/android/systemui/plugins/qs/QS$HeightListener;

    .line 204
    return-void
.end method

.method public setQSCustomizer(Lcom/android/systemui/qs/customize/QSCustomizer;)V
    .locals 2
    .param p1, "qsCustomizer"    # Lcom/android/systemui/qs/customize/QSCustomizer;

    .prologue
    .line 239
    if-nez p1, :cond_0

    return-void

    .line 240
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    .line 241
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->setQsPanel(Lcom/android/systemui/qs/QSPanel;)V

    .line 238
    return-void
.end method

.method public setQSDetail(Lcom/android/systemui/qs/QSDetail;)V
    .locals 2
    .param p1, "qsDetail"    # Lcom/android/systemui/qs/QSDetail;

    .prologue
    .line 233
    if-nez p1, :cond_0

    return-void

    .line 234
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    .line 235
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSDetail;->setQsPanel(Lcom/android/systemui/qs/QSPanel;)V

    .line 232
    return-void
.end method

.method public setQsExpansion(FFF)V
    .locals 11
    .param p1, "expansion"    # F
    .param p2, "headerTranslation"    # F
    .param p3, "appearFraction"    # F

    .prologue
    const v10, 0x3f6147ae    # 0.88f

    const v9, 0x3df5c28f    # 0.12f

    const/high16 v6, 0x3f800000    # 1.0f

    .line 351
    iget-object v5, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v5, p1}, Lcom/android/systemui/qs/QSContainerImpl;->setExpansion(F)V

    .line 352
    sub-float v4, p1, v6

    .line 353
    .local v4, "translationScaleY":F
    iget-boolean v5, p0, Lcom/android/systemui/qs/QSFragment;->mQuickQsAnimating:Z

    if-nez v5, :cond_0

    .line 354
    iget-object v5, p0, Lcom/android/systemui/qs/QSFragment;->mQuickQSPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QuickQSPanel;->getHeight()I

    move-result v5

    iget v7, p0, Lcom/android/systemui/qs/QSFragment;->mGutterHeight:I

    add-int/2addr v5, v7

    iget-object v7, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v7}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getHeight()I

    move-result v7

    add-int/2addr v5, v7

    .line 355
    iget v7, p0, Lcom/android/systemui/qs/QSFragment;->mBrightnessHeight:I

    .line 354
    add-int/2addr v5, v7

    .line 355
    iget v7, p0, Lcom/android/systemui/qs/QSFragment;->mBrightnessMarginTop:I

    .line 354
    add-int/2addr v5, v7

    .line 355
    iget-object v7, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v7}, Lcom/android/systemui/qs/QSContainerImpl;->getExpandIndicator()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 354
    add-int v2, v5, v7

    .line 356
    .local v2, "height":I
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getView()Landroid/view/View;

    move-result-object v7

    iget-boolean v5, p0, Lcom/android/systemui/qs/QSFragment;->mKeyguardShowing:Z

    if-eqz v5, :cond_5

    int-to-float v5, v2

    mul-float/2addr v5, v4

    :goto_0
    invoke-virtual {v7, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 360
    .end local v2    # "height":I
    :cond_0
    iget v5, p0, Lcom/android/systemui/qs/QSFragment;->mLastAppearFraction:F

    cmpl-float v5, v5, p3

    if-eqz v5, :cond_1

    .line 361
    const v5, 0x3d4ccccd    # 0.05f

    const v7, 0x3e99999a    # 0.3f

    invoke-direct {p0, v5, v7, p3}, Lcom/android/systemui/qs/QSFragment;->getFraction(FFF)F

    move-result v1

    .line 362
    .local v1, "headerFraction":F
    iget-object v5, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v5, v1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setAlpha(F)V

    .line 363
    iget-object v5, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    sub-float v7, v6, v1

    const/high16 v8, 0x3e800000    # 0.25f

    mul-float/2addr v7, v8

    iget-object v8, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v8}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getHeight()I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    invoke-virtual {v5, v7}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setTranslationY(F)V

    .line 364
    const v5, 0x3dcccccd    # 0.1f

    invoke-direct {p0, v5, v6, p3}, Lcom/android/systemui/qs/QSFragment;->getFraction(FFF)F

    move-result v0

    .line 365
    .local v0, "contentFraction":F
    iget-object v5, p0, Lcom/android/systemui/qs/QSFragment;->mContent:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 366
    iget-object v5, p0, Lcom/android/systemui/qs/QSFragment;->mContent:Landroid/view/View;

    mul-float v7, v9, p3

    add-float/2addr v7, v10

    invoke-virtual {v5, v7}, Landroid/view/View;->setScaleX(F)V

    .line 367
    iget-object v5, p0, Lcom/android/systemui/qs/QSFragment;->mContent:Landroid/view/View;

    mul-float v7, v9, p3

    add-float/2addr v7, v10

    invoke-virtual {v5, v7}, Landroid/view/View;->setScaleY(F)V

    .line 368
    iget-object v5, p0, Lcom/android/systemui/qs/QSFragment;->mContent:Landroid/view/View;

    iget-object v7, p0, Lcom/android/systemui/qs/QSFragment;->mContent:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v7, v8

    invoke-virtual {v5, v7}, Landroid/view/View;->setPivotX(F)V

    .line 369
    iget-object v5, p0, Lcom/android/systemui/qs/QSFragment;->mContent:Landroid/view/View;

    iget-object v7, p0, Lcom/android/systemui/qs/QSFragment;->mContent:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    const v8, -0x41666666    # -0.3f

    mul-float/2addr v7, v8

    invoke-virtual {v5, v7}, Landroid/view/View;->setPivotY(F)V

    .line 370
    iput p3, p0, Lcom/android/systemui/qs/QSFragment;->mLastAppearFraction:F

    .line 373
    .end local v0    # "contentFraction":F
    .end local v1    # "headerFraction":F
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSContainerImpl;->getQSFooter()Lcom/android/systemui/qs/QSFooter;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 374
    iget-object v5, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSContainerImpl;->getQSFooter()Lcom/android/systemui/qs/QSFooter;

    move-result-object v7

    iget-boolean v5, p0, Lcom/android/systemui/qs/QSFragment;->mKeyguardShowing:Z

    if-eqz v5, :cond_6

    move v5, v6

    :goto_1
    invoke-virtual {v7, v5}, Lcom/android/systemui/qs/QSFooter;->setExpansion(F)V

    .line 376
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSPanel;->getBottom()I

    move-result v5

    iget-object v7, p0, Lcom/android/systemui/qs/QSFragment;->mQuickQSPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v7}, Lcom/android/systemui/qs/QuickQSPanel;->getBottom()I

    move-result v7

    sub-int/2addr v5, v7

    iget-object v7, p0, Lcom/android/systemui/qs/QSFragment;->mQuickQSPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v7}, Lcom/android/systemui/qs/QuickQSPanel;->getPaddingBottom()I

    move-result v7

    add-int/2addr v5, v7

    .line 377
    iget-object v7, p0, Lcom/android/systemui/qs/QSFragment;->mFooterContainer:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 376
    add-int v3, v5, v7

    .line 379
    .local v3, "heightDiff":I
    iget-object v5, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    int-to-float v7, v3

    mul-float/2addr v7, v4

    invoke-virtual {v5, v7}, Lcom/android/systemui/qs/QSPanel;->setTranslationY(F)V

    .line 380
    iget-object v5, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    if-eqz v5, :cond_3

    .line 381
    iget-object v7, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    cmpl-float v5, p1, v6

    if-nez v5, :cond_7

    const/4 v5, 0x1

    :goto_2
    invoke-virtual {v7, v5}, Lcom/android/systemui/qs/QSDetail;->setFullyExpanded(Z)V

    .line 384
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    if-eqz v5, :cond_4

    .line 385
    iget-object v5, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    invoke-virtual {v5, p1}, Lcom/android/systemui/qs/QSAnimator;->setPosition(F)V

    .line 348
    :cond_4
    return-void

    .line 357
    .end local v3    # "heightDiff":I
    .restart local v2    # "height":I
    :cond_5
    const/4 v5, 0x0

    goto/16 :goto_0

    .end local v2    # "height":I
    :cond_6
    move v5, p1

    .line 374
    goto :goto_1

    .line 381
    .restart local v3    # "heightDiff":I
    :cond_7
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public setStatus(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "what"    # I
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "ext"    # Landroid/os/Bundle;

    .prologue
    .line 629
    return-void
.end method

.method public setSystemUiVisibility(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "vis"    # I
    .param p2, "fullscreenStackVis"    # I
    .param p3, "dockedStackVis"    # I
    .param p4, "mask"    # I
    .param p5, "fullscreenStackBounds"    # Landroid/graphics/Rect;
    .param p6, "dockedStackBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 518
    return-void
.end method

.method public setWindowState(II)V
    .locals 0
    .param p1, "window"    # I
    .param p2, "state"    # I

    .prologue
    .line 564
    return-void
.end method

.method public showAssistDisclosure()V
    .locals 0

    .prologue
    .line 589
    return-void
.end method

.method public showFingerprintDialog(Lcom/android/internal/os/SomeArgs;)V
    .locals 0
    .param p1, "args"    # Lcom/android/internal/os/SomeArgs;

    .prologue
    .line 633
    return-void
.end method

.method public showPictureInPictureMenu()V
    .locals 0

    .prologue
    .line 601
    return-void
.end method

.method public showRecentApps(ZZ)V
    .locals 0
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "fromHome"    # Z

    .prologue
    .line 531
    return-void
.end method

.method public showScreenPinningRequest(I)V
    .locals 0
    .param p1, "taskId"    # I

    .prologue
    .line 568
    return-void
.end method

.method public startAssist(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 593
    return-void
.end method

.method public toggleKeyboardShortcutsMenu(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .prologue
    .line 556
    return-void
.end method

.method public toggleRecentApps()V
    .locals 0

    .prologue
    .line 540
    return-void
.end method

.method public toggleSplitScreen()V
    .locals 0

    .prologue
    .line 544
    return-void
.end method

.method public topAppWindowChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 522
    return-void
.end method

.method public updateToggleColumns()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSContainerImpl;->updateToggleColumns()V

    return-void
.end method
