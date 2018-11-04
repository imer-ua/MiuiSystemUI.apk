.class public Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;
.super Ljava/lang/Object;
.source "LightBarTransitionsController.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$1;,
        Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$DarkIntensityApplier;
    }
.end annotation


# instance fields
.field private final mApplier:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$DarkIntensityApplier;

.field private mDarkIntensity:F

.field private final mHandler:Landroid/os/Handler;

.field private final mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field private mNextDarkIntensity:F

.field private mPendingDarkIntensity:F

.field private mTintAnimator:Landroid/animation/ValueAnimator;

.field private mTintChangePending:Z

.field private mTransitionDeferring:Z

.field private final mTransitionDeferringDoneRunnable:Ljava/lang/Runnable;

.field private mTransitionDeferringDuration:J

.field private mTransitionDeferringStartTime:J

.field private mTransitionPending:Z


# direct methods
.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferring:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;F)V
    .locals 0
    .param p1, "darkIntensity"    # F

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconTintInternal(F)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$DarkIntensityApplier;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "applier"    # Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$DarkIntensityApplier;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$1;-><init>(Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferringDoneRunnable:Ljava/lang/Runnable;

    .line 72
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mApplier:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$DarkIntensityApplier;

    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mHandler:Landroid/os/Handler;

    .line 74
    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 75
    const-class v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1, v0}, Lcom/android/systemui/SystemUI;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 71
    return-void
.end method

.method private animateIconTint(FJJ)V
    .locals 4
    .param p1, "targetDarkIntensity"    # F
    .param p2, "delay"    # J
    .param p4, "duration"    # J

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 315
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mDarkIntensity:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_1

    .line 316
    return-void

    .line 318
    :cond_1
    iput p1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mNextDarkIntensity:F

    .line 319
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mDarkIntensity:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintAnimator:Landroid/animation/ValueAnimator;

    .line 320
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$2;-><init>(Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 326
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p4, p5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 327
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p2, p3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 328
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 329
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 311
    return-void
.end method

.method private deferIconTintChange(F)V
    .locals 1
    .param p1, "darkIntensity"    # F

    .prologue
    .line 303
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintChangePending:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mPendingDarkIntensity:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 304
    return-void

    .line 306
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintChangePending:Z

    .line 307
    iput p1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mPendingDarkIntensity:F

    .line 302
    return-void
.end method

.method private setIconTintInternal(F)V
    .locals 1
    .param p1, "darkIntensity"    # F

    .prologue
    .line 333
    iput p1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mDarkIntensity:F

    .line 334
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mApplier:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$DarkIntensityApplier;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$DarkIntensityApplier;->applyDarkIntensity(F)V

    .line 332
    return-void
.end method


# virtual methods
.method public addQsTile(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "tile"    # Landroid/content/ComponentName;

    .prologue
    .line 232
    return-void
.end method

.method public animateCollapsePanels(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 111
    return-void
.end method

.method public animateExpandNotificationsPanel()V
    .locals 0

    .prologue
    .line 107
    return-void
.end method

.method public animateExpandSettingsPanel(Ljava/lang/String;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/String;

    .prologue
    .line 115
    return-void
.end method

.method public appTransitionCancelled()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 180
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionPending:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintChangePending:Z

    if-eqz v0, :cond_0

    .line 181
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintChangePending:Z

    .line 182
    iget v1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mPendingDarkIntensity:F

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x78

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->animateIconTint(FJJ)V

    .line 184
    :cond_0
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionPending:Z

    .line 179
    return-void
.end method

.method public appTransitionFinished()V
    .locals 0

    .prologue
    .line 212
    return-void
.end method

.method public appTransitionPending(Z)V
    .locals 1
    .param p1, "forced"    # Z

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isKeyguardGoingAway()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 175
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionPending:Z

    .line 171
    return-void

    .line 173
    :cond_1
    return-void
.end method

.method public appTransitionStarting(JJZ)V
    .locals 7
    .param p1, "startTime"    # J
    .param p3, "duration"    # J
    .param p5, "forced"    # Z

    .prologue
    const/4 v6, 0x0

    .line 189
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isKeyguardGoingAway()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p5, :cond_2

    .line 192
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionPending:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintChangePending:Z

    if-eqz v0, :cond_3

    .line 193
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintChangePending:Z

    .line 194
    iget v1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mPendingDarkIntensity:F

    .line 195
    const-wide/16 v2, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v4, p1, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    move-object v0, p0

    move-wide v4, p3

    .line 194
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->animateIconTint(FJJ)V

    .line 208
    :cond_1
    :goto_0
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionPending:Z

    .line 188
    return-void

    .line 190
    :cond_2
    return-void

    .line 198
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionPending:Z

    if-eqz v0, :cond_1

    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferring:Z

    .line 203
    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferringStartTime:J

    .line 204
    iput-wide p3, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferringDuration:J

    .line 205
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferringDoneRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 206
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferringDoneRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public cancelPreloadRecentApps()V
    .locals 0

    .prologue
    .line 159
    return-void
.end method

.method public clickTile(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "tile"    # Landroid/content/ComponentName;

    .prologue
    .line 240
    return-void
.end method

.method public disable(IIZ)V
    .locals 0
    .param p1, "state1"    # I
    .param p2, "state2"    # I
    .param p3, "animate"    # Z

    .prologue
    .line 103
    return-void
.end method

.method public dismissKeyboardShortcutsMenu()V
    .locals 0

    .prologue
    .line 151
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 339
    const-string/jumbo v0, "  mTransitionDeferring="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferring:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 340
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferring:Z

    if-eqz v0, :cond_0

    .line 341
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 342
    const-string/jumbo v0, "   mTransitionDeferringStartTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 343
    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferringStartTime:J

    invoke-static {v0, v1}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 345
    const-string/jumbo v0, "   mTransitionDeferringDuration="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 346
    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferringDuration:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 347
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 349
    :cond_0
    const-string/jumbo v0, "  mTransitionPending="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionPending:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 350
    const-string/jumbo v0, " mTintChangePending="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintChangePending:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 352
    const-string/jumbo v0, "  mPendingDarkIntensity="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mPendingDarkIntensity:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 353
    const-string/jumbo v0, " mDarkIntensity="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mDarkIntensity:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 354
    const-string/jumbo v0, " mNextDarkIntensity="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mNextDarkIntensity:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 338
    return-void
.end method

.method public handleShowGlobalActionsMenu()V
    .locals 0

    .prologue
    .line 273
    return-void
.end method

.method public handleSystemNavigationKey(I)V
    .locals 0
    .param p1, "arg1"    # I

    .prologue
    .line 269
    return-void
.end method

.method public hideFingerprintDialog()V
    .locals 0

    .prologue
    .line 264
    return-void
.end method

.method public hideRecentApps(ZZ)V
    .locals 0
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHomeKey"    # Z

    .prologue
    .line 135
    return-void
.end method

.method public onFingerprintAuthenticated()V
    .locals 0

    .prologue
    .line 249
    return-void
.end method

.method public onFingerprintError(Ljava/lang/String;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 259
    return-void
.end method

.method public onFingerprintHelp(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 254
    return-void
.end method

.method public preloadRecentApps()V
    .locals 0

    .prologue
    .line 147
    return-void
.end method

.method public remQsTile(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "tile"    # Landroid/content/ComponentName;

    .prologue
    .line 236
    return-void
.end method

.method public removeIcon(Ljava/lang/String;)V
    .locals 0
    .param p1, "slot"    # Ljava/lang/String;

    .prologue
    .line 99
    return-void
.end method

.method public setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 0
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .prologue
    .line 95
    return-void
.end method

.method public setIconsDark(ZZ)V
    .locals 8
    .param p1, "dark"    # Z
    .param p2, "animate"    # Z

    .prologue
    const-wide/16 v2, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 285
    if-nez p2, :cond_1

    .line 286
    if-eqz p1, :cond_0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconTintInternal(F)V

    .line 284
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 286
    goto :goto_0

    .line 287
    :cond_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionPending:Z

    if-eqz v4, :cond_3

    .line 288
    if-eqz p1, :cond_2

    :goto_2
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->deferIconTintChange(F)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    .line 289
    :cond_3
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferring:Z

    if-eqz v4, :cond_5

    .line 290
    if-eqz p1, :cond_4

    move v1, v0

    .line 291
    :cond_4
    iget-wide v4, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferringStartTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 292
    iget-wide v4, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferringDuration:J

    move-object v0, p0

    .line 290
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->animateIconTint(FJJ)V

    goto :goto_1

    .line 294
    :cond_5
    if-eqz p1, :cond_6

    move v1, v0

    :cond_6
    const-wide/16 v4, 0x78

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->animateIconTint(FJJ)V

    goto :goto_1
.end method

.method public setImeWindowStatus(Landroid/os/IBinder;IIZ)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "vis"    # I
    .param p3, "backDisposition"    # I
    .param p4, "showImeSwitcher"    # Z

    .prologue
    .line 127
    return-void
.end method

.method public setStatus(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "what"    # I
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "ext"    # Landroid/os/Bundle;

    .prologue
    .line 277
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
    .line 119
    return-void
.end method

.method public setWindowState(II)V
    .locals 0
    .param p1, "window"    # I
    .param p2, "state"    # I

    .prologue
    .line 163
    return-void
.end method

.method public showAssistDisclosure()V
    .locals 0

    .prologue
    .line 216
    return-void
.end method

.method public showFingerprintDialog(Lcom/android/internal/os/SomeArgs;)V
    .locals 0
    .param p1, "args"    # Lcom/android/internal/os/SomeArgs;

    .prologue
    .line 244
    return-void
.end method

.method public showPictureInPictureMenu()V
    .locals 0

    .prologue
    .line 228
    return-void
.end method

.method public showRecentApps(ZZ)V
    .locals 0
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "fromHome"    # Z

    .prologue
    .line 131
    return-void
.end method

.method public showScreenPinningRequest(I)V
    .locals 0
    .param p1, "taskId"    # I

    .prologue
    .line 167
    return-void
.end method

.method public startAssist(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 220
    return-void
.end method

.method public toggleKeyboardShortcutsMenu(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .prologue
    .line 155
    return-void
.end method

.method public toggleRecentApps()V
    .locals 0

    .prologue
    .line 139
    return-void
.end method

.method public toggleSplitScreen()V
    .locals 0

    .prologue
    .line 143
    return-void
.end method

.method public topAppWindowChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 123
    return-void
.end method
