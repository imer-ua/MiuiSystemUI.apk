.class public Lcom/android/systemui/statusbar/phone/DozeScrimController;
.super Ljava/lang/Object;
.source "DozeScrimController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/DozeScrimController$1;,
        Lcom/android/systemui/statusbar/phone/DozeScrimController$2;,
        Lcom/android/systemui/statusbar/phone/DozeScrimController$3;,
        Lcom/android/systemui/statusbar/phone/DozeScrimController$4;,
        Lcom/android/systemui/statusbar/phone/DozeScrimController$5;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mBehindAnimator:Landroid/animation/Animator;

.field private mBehindTarget:F

.field private final mContext:Landroid/content/Context;

.field private final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field private mDozing:Z

.field private mDozingAborted:Z

.field private final mHandler:Landroid/os/Handler;

.field private mInFrontAnimator:Landroid/animation/Animator;

.field private mInFrontTarget:F

.field private mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

.field private final mPulseIn:Ljava/lang/Runnable;

.field private final mPulseInFinished:Ljava/lang/Runnable;

.field private final mPulseOut:Ljava/lang/Runnable;

.field private final mPulseOutExtended:Ljava/lang/Runnable;

.field private final mPulseOutFinished:Ljava/lang/Runnable;

.field private mPulseReason:I

.field private final mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

.field private mWakeAndUnlocking:Z


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Lcom/android/systemui/statusbar/phone/DozeParameters;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozing:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOut:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOutExtended:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOutFinished:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/statusbar/phone/DozeScrimController;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseReason:I

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/DozeScrimController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->pulseFinished()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/phone/DozeScrimController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->pulseStarted()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/phone/DozeScrimController;ZLandroid/animation/Animator;)V
    .locals 0
    .param p1, "inFront"    # Z
    .param p2, "animator"    # Landroid/animation/Animator;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->setCurrentAnimator(ZLandroid/animation/Animator;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/statusbar/phone/DozeScrimController;ZF)V
    .locals 0
    .param p1, "inFront"    # Z
    .param p2, "alpha"    # F

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->setDozeAlpha(ZF)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/statusbar/phone/DozeScrimController;ZFJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "inFront"    # Z
    .param p2, "target"    # F
    .param p3, "duration"    # J
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p6, "endRunnable"    # Ljava/lang/Runnable;

    .prologue
    invoke-direct/range {p0 .. p6}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->startScrimAnimation(ZFJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    const-string/jumbo v0, "DozeScrimController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->DEBUG:Z

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/ScrimController;Landroid/content/Context;)V
    .locals 1
    .param p1, "scrimController"    # Lcom/android/systemui/statusbar/phone/ScrimController;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mHandler:Landroid/os/Handler;

    .line 274
    new-instance v0, Lcom/android/systemui/statusbar/phone/DozeScrimController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController$1;-><init>(Lcom/android/systemui/statusbar/phone/DozeScrimController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseIn:Ljava/lang/Runnable;

    .line 296
    new-instance v0, Lcom/android/systemui/statusbar/phone/DozeScrimController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController$2;-><init>(Lcom/android/systemui/statusbar/phone/DozeScrimController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseInFinished:Ljava/lang/Runnable;

    .line 307
    new-instance v0, Lcom/android/systemui/statusbar/phone/DozeScrimController$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController$3;-><init>(Lcom/android/systemui/statusbar/phone/DozeScrimController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOutExtended:Ljava/lang/Runnable;

    .line 315
    new-instance v0, Lcom/android/systemui/statusbar/phone/DozeScrimController$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController$4;-><init>(Lcom/android/systemui/statusbar/phone/DozeScrimController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOut:Ljava/lang/Runnable;

    .line 327
    new-instance v0, Lcom/android/systemui/statusbar/phone/DozeScrimController$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController$5;-><init>(Lcom/android/systemui/statusbar/phone/DozeScrimController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOutFinished:Ljava/lang/Runnable;

    .line 58
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mContext:Landroid/content/Context;

    .line 59
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 60
    new-instance v0, Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-direct {v0, p2}, Lcom/android/systemui/statusbar/phone/DozeParameters;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 57
    return-void
.end method

.method private abortAnimations()V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mInFrontAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mInFrontAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mBehindAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mBehindAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 185
    :cond_1
    return-void
.end method

.method private cancelPulsing()V
    .locals 2

    .prologue
    .line 162
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "DozeScrimController"

    const-string/jumbo v1, "Cancel pulsing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseIn:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 166
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 167
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOutExtended:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 168
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->pulseFinished()V

    .line 161
    :cond_1
    return-void
.end method

.method private getCurrentAnimator(Z)Landroid/animation/Animator;
    .locals 1
    .param p1, "inFront"    # Z

    .prologue
    .line 246
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mInFrontAnimator:Landroid/animation/Animator;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mBehindAnimator:Landroid/animation/Animator;

    goto :goto_0
.end method

.method private getCurrentTarget(Z)F
    .locals 1
    .param p1, "inFront"    # Z

    .prologue
    .line 234
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mInFrontTarget:F

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mBehindTarget:F

    goto :goto_0
.end method

.method private getDozeAlpha(Z)F
    .locals 1
    .param p1, "inFront"    # Z

    .prologue
    .line 269
    if-eqz p1, :cond_0

    .line 270
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->getDozeInFrontAlpha()F

    move-result v0

    .line 269
    :goto_0
    return v0

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->getDozeBehindAlpha()F

    move-result v0

    goto :goto_0
.end method

.method private pulseFinished()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 179
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost$PulseCallback;->onPulseFinished()V

    .line 181
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    .line 178
    :cond_0
    return-void
.end method

.method private pulseStarted()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost$PulseCallback;->onPulseStarted()V

    .line 172
    :cond_0
    return-void
.end method

.method private setCurrentAnimator(ZLandroid/animation/Animator;)V
    .locals 0
    .param p1, "inFront"    # Z
    .param p2, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 250
    if-eqz p1, :cond_0

    .line 251
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mInFrontAnimator:Landroid/animation/Animator;

    .line 249
    :goto_0
    return-void

    .line 253
    :cond_0
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mBehindAnimator:Landroid/animation/Animator;

    goto :goto_0
.end method

.method private setCurrentTarget(ZF)V
    .locals 0
    .param p1, "inFront"    # Z
    .param p2, "target"    # F

    .prologue
    .line 238
    if-eqz p1, :cond_0

    .line 239
    iput p2, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mInFrontTarget:F

    .line 237
    :goto_0
    return-void

    .line 241
    :cond_0
    iput p2, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mBehindTarget:F

    goto :goto_0
.end method

.method private setDozeAlpha(ZF)V
    .locals 1
    .param p1, "inFront"    # Z
    .param p2, "alpha"    # F

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mWakeAndUnlocking:Z

    if-eqz v0, :cond_0

    .line 259
    return-void

    .line 261
    :cond_0
    if-eqz p1, :cond_1

    .line 262
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/ScrimController;->setDozeInFrontAlpha(F)V

    .line 257
    :goto_0
    return-void

    .line 264
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/ScrimController;->setDozeBehindAlpha(F)V

    goto :goto_0
.end method

.method private startScrimAnimation(ZFJLandroid/view/animation/Interpolator;)V
    .locals 9
    .param p1, "inFront"    # Z
    .param p2, "target"    # F
    .param p3, "duration"    # J
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 196
    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->startScrimAnimation(ZFJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 195
    return-void
.end method

.method private startScrimAnimation(ZFJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 7
    .param p1, "inFront"    # Z
    .param p2, "target"    # F
    .param p3, "duration"    # J
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p6, "endRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 201
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->getCurrentAnimator(Z)Landroid/animation/Animator;

    move-result-object v1

    .line 202
    .local v1, "current":Landroid/animation/Animator;
    if-eqz v1, :cond_1

    .line 203
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->getCurrentTarget(Z)F

    move-result v2

    .line 204
    .local v2, "currentTarget":F
    cmpl-float v3, v2, p2

    if-nez v3, :cond_0

    .line 205
    return-void

    .line 207
    :cond_0
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 209
    .end local v2    # "currentTarget":F
    :cond_1
    const/4 v3, 0x2

    new-array v3, v3, [F

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->getDozeAlpha(Z)F

    move-result v4

    const/4 v5, 0x0

    aput v4, v3, v5

    const/4 v4, 0x1

    aput p2, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 210
    .local v0, "anim":Landroid/animation/ValueAnimator;
    new-instance v3, Lcom/android/systemui/statusbar/phone/DozeScrimController$6;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/statusbar/phone/DozeScrimController$6;-><init>(Lcom/android/systemui/statusbar/phone/DozeScrimController;Z)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 217
    invoke-virtual {v0, p5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 218
    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 219
    new-instance v3, Lcom/android/systemui/statusbar/phone/DozeScrimController$7;

    invoke-direct {v3, p0, p1, p6}, Lcom/android/systemui/statusbar/phone/DozeScrimController$7;-><init>(Lcom/android/systemui/statusbar/phone/DozeScrimController;ZLjava/lang/Runnable;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 228
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 229
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->setCurrentAnimator(ZLandroid/animation/Animator;)V

    .line 230
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->setCurrentTarget(ZF)V

    .line 200
    return-void
.end method


# virtual methods
.method public abortDoze()V
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozingAborted:Z

    .line 135
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->abortPulsing()V

    .line 133
    return-void
.end method

.method public abortPulsing()V
    .locals 3

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 122
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->cancelPulsing()V

    .line 123
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozing:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mWakeAndUnlocking:Z

    if-eqz v1, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->setDozeBehindAlpha(F)V

    .line 125
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 126
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozingAborted:Z

    if-eqz v2, :cond_3

    .line 125
    :cond_2
    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->setDozeInFrontAlpha(F)V

    goto :goto_0

    .line 126
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public extendPulse()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 157
    return-void
.end method

.method public isPulsing()Z
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScreenTurnedOn()V
    .locals 8

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->isPulsing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    iget v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseReason:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 141
    iget v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseReason:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    .line 143
    .local v0, "pickupOrDoubleTap":Z
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPulseInDuration(Z)I

    move-result v1

    int-to-long v4, v1

    .line 144
    if-eqz v0, :cond_3

    sget-object v6, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 145
    :goto_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseInFinished:Ljava/lang/Runnable;

    .line 142
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->startScrimAnimation(ZFJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 138
    .end local v0    # "pickupOrDoubleTap":Z
    :cond_0
    return-void

    .line 140
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "pickupOrDoubleTap":Z
    goto :goto_0

    .line 141
    .end local v0    # "pickupOrDoubleTap":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "pickupOrDoubleTap":Z
    goto :goto_0

    .line 144
    :cond_3
    sget-object v6, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    goto :goto_1
.end method

.method public setDozing(ZZ)V
    .locals 7
    .param p1, "dozing"    # Z
    .param p2, "animate"    # Z

    .prologue
    const-wide/16 v4, 0x2bc

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 64
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozing:Z

    if-ne v1, p1, :cond_0

    return-void

    .line 65
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozing:Z

    .line 66
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mWakeAndUnlocking:Z

    .line 67
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozing:Z

    if-eqz v1, :cond_2

    .line 68
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozingAborted:Z

    .line 69
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->abortAnimations()V

    .line 70
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->setDozeBehindAlpha(F)V

    .line 71
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/ScrimController;->setDozeInFrontAlpha(F)V

    .line 63
    :goto_1
    return-void

    :cond_1
    move v3, v0

    .line 71
    goto :goto_0

    .line 73
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->cancelPulsing()V

    .line 74
    if-eqz p2, :cond_3

    .line 77
    sget-object v6, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    move-object v1, p0

    .line 75
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->startScrimAnimation(ZFJLandroid/view/animation/Interpolator;)V

    .line 80
    sget-object v6, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 78
    const/4 v2, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->startScrimAnimation(ZFJLandroid/view/animation/Interpolator;)V

    goto :goto_1

    .line 82
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->abortAnimations()V

    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/ScrimController;->setDozeBehindAlpha(F)V

    .line 84
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/ScrimController;->setDozeInFrontAlpha(F)V

    goto :goto_1
.end method

.method public setWakeAndUnlocking()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 92
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mWakeAndUnlocking:Z

    if-nez v0, :cond_0

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mWakeAndUnlocking:Z

    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setDozeBehindAlpha(F)V

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setDozeInFrontAlpha(F)V

    .line 89
    :cond_0
    return-void
.end method
