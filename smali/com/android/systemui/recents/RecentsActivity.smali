.class public Lcom/android/systemui/recents/RecentsActivity;
.super Landroid/app/Activity;
.source "RecentsActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/RecentsActivity$1;,
        Lcom/android/systemui/recents/RecentsActivity$2;,
        Lcom/android/systemui/recents/RecentsActivity$3;,
        Lcom/android/systemui/recents/RecentsActivity$4;,
        Lcom/android/systemui/recents/RecentsActivity$5;,
        Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;,
        Lcom/android/systemui/recents/RecentsActivity$RecentsHandler;
    }
.end annotation


# static fields
.field public static mFreeBeforeClean:J

.field private static sForceBlack:Z


# instance fields
.field private mBackGround:Landroid/view/View;

.field private mClearAnimView:Lcom/android/systemui/recents/views/CircleAndTickAnimView;

.field public final mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private mDismissAllTaskViewEventTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

.field private mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDockBtn:Landroid/widget/TextView;

.field private mExitMultiModeBtn:Landroid/widget/Button;

.field private mFinishedOnStartup:Z

.field private mFocusTimerDuration:I

.field private mForceBlackObserver:Landroid/database/ContentObserver;

.field private mFreeAtFirst:J

.field private mHandler:Landroid/os/Handler;

.field private mHomeIntent:Landroid/content/Intent;

.field private mIgnoreAltTabRelease:Z

.field private mIncompatibleAppOverlay:Landroid/view/View;

.field private mIsStartHomeAnimRunninig:Z

.field private mIsVisible:Z

.field private mIterateTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

.field private mLastDeviceOrientation:I

.field private mLastDisplayDensity:I

.field private mLastTabKeyEventTime:J

.field private mMemoryAndClearContainer:Landroid/view/ViewGroup;

.field private mPackageMonitor:Lcom/android/systemui/recents/model/RecentsPackageMonitor;

.field private mReceivedNewIntent:Z

.field private mRecentsContainer:Landroid/widget/FrameLayout;

.field private final mRecentsDrawnEventListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

.field private mRotation:I

.field private final mSendEnterWindowAnimationCompleteRunnable:Ljava/lang/Runnable;

.field private mSeparatorForMemoryInfo:Landroid/view/View;

.field private mSetDummyTranslucentMethod:Ljava/lang/reflect/Method;

.field final mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mTipView:Landroid/widget/TextView;

.field private mTotalMemory:J

.field private mTxtMemoryContainer:Landroid/view/ViewGroup;

.field private mTxtMemoryInfo1:Landroid/widget/TextView;

.field private mTxtMemoryInfo2:Landroid/widget/TextView;

.field private final mUserInteractionEvent:Lcom/android/systemui/recents/events/ui/UserInteractionEvent;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/RecentsActivity;)Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mDismissAllTaskViewEventTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/recents/RecentsActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mFreeAtFirst:J

    return-wide v0
.end method

.method static synthetic -get2(Lcom/android/systemui/recents/RecentsActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/recents/RecentsActivity;)Lcom/android/systemui/recents/views/RecentsView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/recents/RecentsActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRotation:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/recents/RecentsActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mTotalMemory:J

    return-wide v0
.end method

.method static synthetic -set0(Lcom/android/systemui/recents/RecentsActivity;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/RecentsActivity;->mDismissAllTaskViewEventTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/recents/RecentsActivity;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRotation:I

    return p1
.end method

.method static synthetic -set2(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/systemui/recents/RecentsActivity;->sForceBlack:Z

    return p0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/recents/RecentsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->cleanInRecents()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/recents/RecentsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->doClearAnim()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/recents/RecentsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->endForClear()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 493
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/recents/RecentsActivity;->sForceBlack:Z

    .line 134
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 134
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 143
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 145
    new-instance v0, Lcom/android/systemui/recents/RecentsActivity$RecentsHandler;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/RecentsActivity$RecentsHandler;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mHandler:Landroid/os/Handler;

    .line 147
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mLastDeviceOrientation:I

    .line 174
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRotation:I

    .line 182
    new-instance v0, Lcom/android/systemui/recents/events/ui/UserInteractionEvent;

    invoke-direct {v0}, Lcom/android/systemui/recents/events/ui/UserInteractionEvent;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mUserInteractionEvent:Lcom/android/systemui/recents/events/ui/UserInteractionEvent;

    .line 183
    new-instance v0, Lcom/android/systemui/recents/RecentsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/RecentsActivity$1;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mSendEnterWindowAnimationCompleteRunnable:Ljava/lang/Runnable;

    .line 233
    new-instance v0, Lcom/android/systemui/recents/RecentsActivity$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/RecentsActivity$2;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 250
    new-instance v0, Lcom/android/systemui/recents/RecentsActivity$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/RecentsActivity$3;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    .line 249
    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsDrawnEventListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 498
    new-instance v0, Lcom/android/systemui/recents/RecentsActivity$4;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/recents/RecentsActivity$4;-><init>(Lcom/android/systemui/recents/RecentsActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mForceBlackObserver:Landroid/database/ContentObserver;

    .line 1637
    new-instance v0, Lcom/android/systemui/recents/RecentsActivity$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/RecentsActivity$5;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 134
    return-void
.end method

.method private cleanInRecents()V
    .locals 6

    .prologue
    const/16 v4, 0x3e8

    .line 520
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getFreeMemory()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mFreeAtFirst:J

    sput-wide v2, Lcom/android/systemui/recents/RecentsActivity;->mFreeBeforeClean:J

    .line 522
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->deepClean()V

    .line 524
    new-instance v0, Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEvent;

    invoke-direct {v0}, Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEvent;-><init>()V

    .line 525
    .local v0, "dismissAllTaskViewsEvent":Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEvent;
    invoke-virtual {v0}, Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEvent;->getAnimationTrigger()Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 526
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    .line 527
    invoke-virtual {v0}, Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEvent;->getAnimationTrigger()Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mDismissAllTaskViewEventTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    .line 529
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 530
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 519
    return-void
.end method

.method private deepClean()V
    .locals 2

    .prologue
    .line 1545
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/RecentsActivity$17;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/RecentsActivity$17;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1544
    return-void
.end method

.method private doClearAnim()V
    .locals 2

    .prologue
    .line 1509
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->refreshMemoryInfo()V

    .line 1510
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mClearAnimView:Lcom/android/systemui/recents/views/CircleAndTickAnimView;

    .line 1511
    new-instance v1, Lcom/android/systemui/recents/RecentsActivity$16;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/RecentsActivity$16;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    .line 1510
    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->animatorStart(Landroid/animation/Animator$AnimatorListener;)V

    .line 1508
    return-void
.end method

.method private endForClear()V
    .locals 4

    .prologue
    .line 1481
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEndEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEndEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/RecentsEventBus;->post(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    .line 1482
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/recents/RecentsActivity$15;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/RecentsActivity$15;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    .line 1493
    const-wide/16 v2, 0x12c

    .line 1482
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1480
    return-void
.end method

.method private fitsSystemWindowInsets(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 550
    new-instance v0, Lcom/android/systemui/recents/RecentsActivity$10;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/RecentsActivity$10;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 549
    return-void
.end method

.method private getExitMultiModeBtnParams()Landroid/view/WindowManager$LayoutParams;
    .locals 6

    .prologue
    const/4 v1, -0x2

    .line 787
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 790
    const/16 v3, 0x7d8

    .line 791
    const v4, 0x20028

    .line 794
    const/4 v5, -0x3

    move v2, v1

    .line 787
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 795
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x31

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 796
    const v1, 0x91101dc

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 797
    const-string/jumbo v1, "ExitMultiModeBtn"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 798
    return-object v0
.end method

.method public static getFormatedMemory(J)Ljava/lang/String;
    .locals 12
    .param p0, "memoryK"    # J

    .prologue
    const-wide/16 v6, 0x400

    const-wide/16 v10, 0xa

    .line 1624
    div-long v4, p0, v6

    .line 1625
    .local v4, "memoryM":J
    cmp-long v6, v4, v6

    if-gez v6, :cond_0

    .line 1626
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "M"

    invoke-static {v7}, Landroid/preference/MiuiTranslateMetricsPreference;->translateMetrics(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 1628
    :cond_0
    long-to-double v6, v4

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    .line 1629
    .local v2, "memoryGTenTimes":J
    div-long v0, v2, v10

    .line 1630
    .local v0, "memoryG":J
    rem-long v6, v2, v10

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    .line 1631
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    rem-long v8, v2, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "G"

    invoke-static {v7}, Landroid/preference/MiuiTranslateMetricsPreference;->translateMetrics(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 1633
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "G"

    invoke-static {v7}, Landroid/preference/MiuiTranslateMetricsPreference;->translateMetrics(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static getToastMsg(Landroid/content/Context;JJ)Ljava/lang/String;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "freeAtFirst"    # J
    .param p3, "freeAtLast"    # J

    .prologue
    .line 1602
    sub-long v6, p3, p1

    const-wide/16 v8, 0x0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 1604
    .local v4, "offset":J
    const/4 v2, 0x0

    .line 1605
    .local v2, "msg":Ljava/lang/String;
    const-wide/16 v6, 0x2800

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    .line 1606
    const-wide/16 v6, 0x400

    div-long v0, v4, v6

    .line 1607
    .local v0, "memoryM":J
    const-wide/16 v6, 0x400

    cmp-long v3, v0, v6

    if-gez v3, :cond_0

    .line 1608
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 1610
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    const-string/jumbo v8, "%d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 1609
    const v7, 0x9100490

    .line 1608
    invoke-virtual {v3, v7, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1620
    .end local v0    # "memoryM":J
    .local v2, "msg":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 1612
    .restart local v0    # "memoryM":J
    .local v2, "msg":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 1614
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    const-string/jumbo v8, "%.1f"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    long-to-float v10, v0

    const/high16 v11, 0x44800000    # 1024.0f

    div-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 1613
    const v7, 0x9100491

    .line 1612
    invoke-virtual {v3, v7, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "msg":Ljava/lang/String;
    goto :goto_0

    .line 1617
    .end local v0    # "memoryM":J
    .local v2, "msg":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1618
    const v6, 0x11090084

    .line 1617
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "msg":Ljava/lang/String;
    goto :goto_0
.end method

.method public static isForceBlack()Z
    .locals 1

    .prologue
    .line 495
    sget-boolean v0, Lcom/android/systemui/recents/RecentsActivity;->sForceBlack:Z

    return v0
.end method

.method private isMemInfoShow()Z
    .locals 4

    .prologue
    .line 1504
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1505
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v1, "miui_recents_show_mem_info"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/MiuiSettings$System;->getBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    move-result v1

    return v1
.end method

.method public static queryAppConfigure(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1369
    invoke-static {}, Lmiui/securityspace/CrossUserUtils;->getCurrentUserId()I

    move-result v9

    .line 1370
    .local v9, "userId":I
    const-string/jumbo v3, "pkgName = ? AND userId = ?"

    .line 1371
    .local v3, "sel":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v4, v1

    .line 1372
    .local v4, "args":[Ljava/lang/String;
    const-string/jumbo v6, ""

    .line 1373
    .local v6, "bgControl":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://com.miui.powerkeeper.configure"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v5, "userTable"

    invoke-static {v1, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1375
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 1376
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1377
    const-string/jumbo v0, "bgControl"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 1378
    .local v7, "bgControlIndex":I
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1380
    .end local v7    # "bgControlIndex":I
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1382
    :cond_1
    return-object v6
.end method

.method private registerContentObservers()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 506
    sget-boolean v0, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v0, :cond_0

    .line 507
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "force_black"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 508
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mForceBlackObserver:Landroid/database/ContentObserver;

    const/4 v3, -0x1

    .line 507
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 509
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mForceBlackObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v4}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 505
    :cond_0
    return-void
.end method

.method private registerDisplayListener()V
    .locals 3

    .prologue
    .line 1660
    sget-boolean v0, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v0, :cond_0

    .line 1661
    const-string/jumbo v0, "display"

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 1662
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/hardware/display/DisplayManager$DisplayListener;->onDisplayChanged(I)V

    .line 1659
    :cond_0
    return-void
.end method

.method private reloadStackView()V
    .locals 15

    .prologue
    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 625
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v6

    .line 626
    .local v6, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    invoke-static {}, Lcom/android/systemui/recents/RecentsImpl;->consumeInstanceLoadPlan()Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v5

    .line 627
    .local v5, "loadPlan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    if-nez v5, :cond_0

    .line 628
    invoke-virtual {v6, p0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v5

    .line 632
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    .line 633
    .local v0, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v1

    .line 634
    .local v1, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    invoke-virtual {v5}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->hasTasks()Z

    move-result v10

    if-nez v10, :cond_1

    .line 635
    iget v13, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedToTaskId:I

    .line 636
    iget-boolean v10, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    if-eqz v10, :cond_3

    move v10, v11

    .line 635
    :goto_0
    invoke-virtual {v6, v5, v13, v10}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V

    .line 639
    :cond_1
    new-instance v4, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v4}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    .line 640
    .local v4, "loadOpts":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    iget v10, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedToTaskId:I

    iput v10, v4, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->runningTaskId:I

    .line 641
    iget v10, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedNumVisibleTasks:I

    iput v10, v4, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    .line 642
    iget v10, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedNumVisibleThumbnails:I

    iput v10, v4, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    .line 643
    invoke-virtual {v6, p0, v5, v4}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;)V

    .line 644
    invoke-virtual {v5}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v7

    .line 645
    .local v7, "stack":Lcom/android/systemui/recents/model/TaskStack;
    iget-object v13, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    iget-boolean v14, p0, Lcom/android/systemui/recents/RecentsActivity;->mIsVisible:Z

    invoke-virtual {v7}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v10

    if-nez v10, :cond_4

    move v10, v12

    :goto_1
    invoke-virtual {v13, v14, v10}, Lcom/android/systemui/recents/views/RecentsView;->onReload(ZZ)V

    .line 646
    iget-object v10, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v10, v7, v12}, Lcom/android/systemui/recents/views/RecentsView;->updateStack(Lcom/android/systemui/recents/model/TaskStack;Z)V

    .line 650
    iget-boolean v10, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    if-nez v10, :cond_6

    .line 651
    iget-boolean v10, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    if-eqz v10, :cond_5

    move v9, v11

    .line 652
    .local v9, "wasLaunchedByAm":Z
    :goto_2
    if-eqz v9, :cond_2

    .line 653
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v10

    new-instance v11, Lcom/android/systemui/recents/events/activity/EnterRecentsWindowAnimationCompletedEvent;

    invoke-direct {v11}, Lcom/android/systemui/recents/events/activity/EnterRecentsWindowAnimationCompletedEvent;-><init>()V

    invoke-virtual {v10, v11}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    .line 657
    :cond_2
    iget-boolean v10, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithAltTab:Z

    if-eqz v10, :cond_7

    .line 658
    const-string/jumbo v10, "overview_trigger_alttab"

    invoke-static {p0, v10, v12}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 664
    :goto_3
    iget-boolean v10, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    if-eqz v10, :cond_9

    .line 665
    invoke-virtual {v7}, Lcom/android/systemui/recents/model/TaskStack;->getLaunchTarget()Lcom/android/systemui/recents/model/Task;

    move-result-object v2

    .line 666
    .local v2, "launchTarget":Lcom/android/systemui/recents/model/Task;
    if-eqz v2, :cond_8

    .line 667
    invoke-virtual {v7, v2}, Lcom/android/systemui/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v3

    .line 669
    .local v3, "launchTaskIndexInStack":I
    :goto_4
    const-string/jumbo v10, "overview_source_app"

    invoke-static {p0, v10, v12}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 671
    const-string/jumbo v10, "overview_source_app_index"

    invoke-static {p0, v10, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 677
    .end local v2    # "launchTarget":Lcom/android/systemui/recents/model/Task;
    .end local v3    # "launchTaskIndexInStack":I
    :goto_5
    iget-object v10, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v10}, Lcom/android/systemui/recents/views/RecentsView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v8

    .line 678
    .local v8, "taskCount":I
    const-string/jumbo v10, "overview_task_count"

    invoke-static {p0, v10, v8}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 681
    iput-boolean v12, p0, Lcom/android/systemui/recents/RecentsActivity;->mIsVisible:Z

    .line 683
    invoke-static {v7}, Lcom/android/systemui/recents/misc/RecentsPushEventHelper;->sendEnterRecentsEvent(Lcom/android/systemui/recents/model/TaskStack;)V

    .line 622
    return-void

    .end local v4    # "loadOpts":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    .end local v7    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v8    # "taskCount":I
    .end local v9    # "wasLaunchedByAm":Z
    :cond_3
    move v10, v12

    .line 636
    goto :goto_0

    .restart local v4    # "loadOpts":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    .restart local v7    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    :cond_4
    move v10, v11

    .line 645
    goto :goto_1

    :cond_5
    move v9, v12

    .line 651
    goto :goto_2

    :cond_6
    move v9, v11

    .line 650
    goto :goto_2

    .line 660
    .restart local v9    # "wasLaunchedByAm":Z
    :cond_7
    const-string/jumbo v10, "overview_trigger_nav_btn"

    invoke-static {p0, v10, v12}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_3

    .line 668
    .restart local v2    # "launchTarget":Lcom/android/systemui/recents/model/Task;
    :cond_8
    const/4 v3, 0x0

    .restart local v3    # "launchTaskIndexInStack":I
    goto :goto_4

    .line 673
    .end local v2    # "launchTarget":Lcom/android/systemui/recents/model/Task;
    .end local v3    # "launchTaskIndexInStack":I
    :cond_9
    const-string/jumbo v10, "overview_source_home"

    invoke-static {p0, v10, v12}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_5
.end method

.method private setSystemUiVisibility()V
    .locals 2

    .prologue
    .line 1686
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    const/16 v1, 0x304

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/RecentsView;->setSystemUiVisibility(I)V

    .line 1685
    return-void
.end method

.method private setupVisible()V
    .locals 6

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 1533
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->isInMultiWindowMode()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/systemui/recents/RecentsActivity;->updateExitMultiModeBtnVisible(Z)V

    .line 1534
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->updateDockBtnVisible()V

    .line 1535
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->isInMultiWindowMode()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/RecentsView;->getMenuView()Lcom/android/systemui/recents/views/RecentMenuView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/RecentMenuView;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    const/4 v0, 0x0

    .line 1536
    .local v0, "isShow":Z
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/RecentsView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/TaskStack;->getStackTaskCount()I

    move-result v1

    .line 1538
    .local v1, "taskCount":I
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsActivity;->mMemoryAndClearContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    if-lez v1, :cond_4

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1539
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsActivity;->mTxtMemoryContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->isMemInfoShow()Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1540
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mTipView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->isInMultiWindowMode()Z

    move-result v5

    if-eqz v5, :cond_1

    if-lez v1, :cond_1

    .line 1541
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/RecentsView;->getMenuView()Lcom/android/systemui/recents/views/RecentMenuView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/RecentMenuView;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    move v3, v4

    .line 1540
    :cond_2
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1532
    return-void

    .line 1535
    .end local v0    # "isShow":Z
    .end local v1    # "taskCount":I
    :cond_3
    const/4 v0, 0x1

    .restart local v0    # "isShow":Z
    goto :goto_0

    .restart local v1    # "taskCount":I
    :cond_4
    move v2, v4

    .line 1538
    goto :goto_1

    :cond_5
    move v2, v4

    .line 1539
    goto :goto_2
.end method

.method private showHybridApplicationInfo(Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "baseIntent"    # Landroid/content/Intent;

    .prologue
    .line 1067
    const-string/jumbo v0, "com.miui.hybrid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1068
    const-string/jumbo v0, "com.miui.hybrid.action.APP_DETAIL_MANAGER"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1069
    const-string/jumbo v0, "base_intent"

    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1070
    const/4 v0, 0x1

    return v0

    .line 1072
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private unRegisterContentObservers()V
    .locals 2

    .prologue
    .line 514
    sget-boolean v0, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v0, :cond_0

    .line 515
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mForceBlackObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 513
    :cond_0
    return-void
.end method

.method private unRegisterDisplayListener()V
    .locals 2

    .prologue
    .line 1667
    sget-boolean v0, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v0, :cond_0

    .line 1668
    const-string/jumbo v0, "display"

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 1666
    :cond_0
    return-void
.end method

.method public static updateAppConfigure(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "bgControl"    # Ljava/lang/String;

    .prologue
    .line 1386
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/RecentsActivity$13;

    invoke-direct {v1, p1, p2, p0}, Lcom/android/systemui/recents/RecentsActivity$13;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1385
    return-void
.end method

.method private updateBlurRatioIfNeed()V
    .locals 2

    .prologue
    .line 614
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaFsGesture:Z

    if-nez v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/RecentsView;->updateBlurRatio(F)V

    .line 613
    :cond_0
    return-void
.end method

.method private updateDockBtnVisible()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1498
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mDockBtn:Landroid/widget/TextView;

    sget-boolean v2, Lcom/android/systemui/recents/RecentsConfiguration;->sCanMultiWindow:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/RecentsView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/TaskStack;->getStackTaskCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 1499
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->isInMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1500
    :cond_0
    :goto_0
    const/4 v0, 0x4

    .line 1498
    :cond_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1497
    return-void

    .line 1499
    :cond_2
    invoke-static {}, Lcom/android/systemui/recents/misc/Utilities;->supportsMultiWindow()Z

    move-result v2

    .line 1498
    if-eqz v2, :cond_0

    .line 1500
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/RecentsView;->getMenuView()Lcom/android/systemui/recents/views/RecentMenuView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/RecentMenuView;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0
.end method

.method private updateExitMultiModeBtnVisible(Z)V
    .locals 3
    .param p1, "showExitMultiModeBtn"    # Z

    .prologue
    const/4 v2, 0x0

    .line 766
    invoke-static {}, Lcom/android/systemui/recents/misc/Utilities;->supportsMultiWindow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 767
    :cond_0
    if-eqz p1, :cond_3

    .line 768
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mExitMultiModeBtn:Landroid/widget/Button;

    if-nez v0, :cond_1

    .line 769
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x9040035

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mExitMultiModeBtn:Landroid/widget/Button;

    .line 770
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mExitMultiModeBtn:Landroid/widget/Button;

    new-instance v1, Lcom/android/systemui/recents/RecentsActivity$11;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/RecentsActivity$11;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 777
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mWm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mExitMultiModeBtn:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->getExitMultiModeBtnParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 779
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mExitMultiModeBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 765
    :cond_2
    :goto_0
    return-void

    .line 780
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mExitMultiModeBtn:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mExitMultiModeBtn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 782
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mExitMultiModeBtn:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public final checkFsGestureOnEnterRecents()V
    .locals 6

    .prologue
    const v5, 0x3f8ccccd    # 1.1f

    const v1, 0x3f666666    # 0.9f

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1346
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaFsGesture:Z

    if-eqz v0, :cond_1

    .line 1347
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mBackGround:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1348
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/recents/views/RecentsView;->setAlpha(F)V

    .line 1349
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    if-eqz v0, :cond_0

    .line 1350
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/RecentsView;->setScaleX(F)V

    .line 1351
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/RecentsView;->setScaleY(F)V

    .line 1352
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/AnimFirstTaskViewAlphaEvent;

    invoke-direct {v1, v2, v4}, Lcom/android/systemui/recents/events/activity/AnimFirstTaskViewAlphaEvent;-><init>(FZ)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    .line 1345
    :goto_0
    return-void

    .line 1354
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0, v5}, Lcom/android/systemui/recents/views/RecentsView;->setScaleX(F)V

    .line 1355
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0, v5}, Lcom/android/systemui/recents/views/RecentsView;->setScaleY(F)V

    .line 1356
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/AnimFirstTaskViewAlphaEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/android/systemui/recents/events/activity/AnimFirstTaskViewAlphaEvent;-><init>(FZZ)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    goto :goto_0

    .line 1359
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/views/RecentsView;->setScaleX(F)V

    .line 1360
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/views/RecentsView;->setScaleY(F)V

    .line 1361
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/views/RecentsView;->setAlpha(F)V

    .line 1362
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/AnimFirstTaskViewAlphaEvent;

    invoke-direct {v1, v2, v4}, Lcom/android/systemui/recents/events/activity/AnimFirstTaskViewAlphaEvent;-><init>(FZ)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    .line 1363
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/recents/views/RecentsView;->setTranslationX(F)V

    .line 1364
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mBackGround:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method dismissRecentsToHome(Z)V
    .locals 1
    .param p1, "animateTaskViews"    # Z

    .prologue
    .line 319
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHome(ZLandroid/app/ActivityOptions;)V

    .line 318
    return-void
.end method

.method dismissRecentsToHome(ZLandroid/app/ActivityOptions;)V
    .locals 4
    .param p1, "animateTaskViews"    # Z
    .param p2, "overrideAnimation"    # Landroid/app/ActivityOptions;

    .prologue
    .line 329
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/RecentsView;->getMenuView()Lcom/android/systemui/recents/views/RecentMenuView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/RecentMenuView;->removeMenu(Z)Z

    .line 332
    new-instance v0, Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;

    invoke-direct {v0, p1}, Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;-><init>(Z)V

    .line 335
    .local v0, "dismissEvent":Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mHomeIntent:Landroid/content/Intent;

    invoke-direct {v2, p0, v3, p2}, Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;-><init>(Lcom/android/systemui/recents/RecentsActivity;Landroid/content/Intent;Landroid/app/ActivityOptions;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 337
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    .line 338
    const-string/jumbo v2, "homekey"

    .line 337
    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 339
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    .line 328
    return-void
.end method

.method dismissRecentsToHomeIfVisible(Z)Z
    .locals 2
    .param p1, "animated"    # Z

    .prologue
    .line 346
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 347
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 349
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHome(Z)V

    .line 350
    const/4 v1, 0x1

    return v1

    .line 352
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method dismissRecentsToLaunchTargetTaskOrHome()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 290
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 291
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 293
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/RecentsView;->launchPreviousTask()Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    .line 295
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHome(Z)V

    .line 297
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method dismissRecentsToTargetTask(I)Z
    .locals 2
    .param p1, "logCategory"    # I

    .prologue
    .line 278
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 279
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 281
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1, p1}, Lcom/android/systemui/recents/views/RecentsView;->launchTargetTask(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    .line 283
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method dismissRecentsToTargetTaskOrHome()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 304
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 305
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 307
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1, v3}, Lcom/android/systemui/recents/views/RecentsView;->launchTargetTask(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    .line 309
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHome(Z)V

    .line 310
    return v2

    .line 312
    :cond_1
    return v3
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1420
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1421
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v1

    invoke-virtual {v1, p1, p3}, Lcom/android/systemui/recents/events/RecentsEventBus;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1422
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    invoke-virtual {v1, p1, p3}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1424
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 1426
    .local v0, "id":Ljava/lang/String;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1427
    const-string/jumbo v1, "RecentsActivity"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1428
    const-string/jumbo v1, " visible="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1429
    iget-boolean v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mIsVisible:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "Y"

    :goto_0
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1430
    const-string/jumbo v1, " [0x"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1431
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1432
    const-string/jumbo v1, "]"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1433
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    .line 1435
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    if-eqz v1, :cond_0

    .line 1436
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1, p1, p3}, Lcom/android/systemui/recents/views/RecentsView;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1438
    :cond_0
    if-eqz p4, :cond_1

    array-length v1, p4

    if-lez v1, :cond_1

    .line 1439
    const-string/jumbo v1, "enableDebugRecents"

    aget-object v2, p4, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1440
    sput-boolean v4, Lcom/android/systemui/recents/misc/SystemServicesProxy;->DEBUG:Z

    .line 1441
    sput-boolean v4, Lcom/android/systemui/recents/events/RecentsEventBus;->DEBUG_TRACE_ALL:Z

    .line 1419
    :cond_1
    :goto_1
    return-void

    .line 1429
    :cond_2
    const-string/jumbo v1, "N"

    goto :goto_0

    .line 1442
    :cond_3
    const-string/jumbo v1, "disableDebugRecents"

    aget-object v2, p4, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1443
    sput-boolean v3, Lcom/android/systemui/recents/misc/SystemServicesProxy;->DEBUG:Z

    .line 1444
    sput-boolean v3, Lcom/android/systemui/recents/events/RecentsEventBus;->DEBUG_TRACE_ALL:Z

    goto :goto_1
.end method

.method public getFreeMemory()J
    .locals 6

    .prologue
    .line 1453
    const-wide/16 v2, 0x0

    .line 1455
    .local v2, "freeMemory":J
    :try_start_0
    invoke-static {}, Lcom/miui/daemon/performance/PerfShielderManager;->getFreeMemory()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 1461
    :goto_0
    const-string/jumbo v1, "RecentsActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getFreeMemory:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    const-wide/16 v4, 0x400

    div-long v4, v2, v4

    return-wide v4

    .line 1456
    :catch_0
    move-exception v0

    .line 1457
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "RecentsActivity"

    const-string/jumbo v4, "getFreeMemory"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1458
    invoke-static {}, Landroid/os/Process;->getFreeMemory()J

    move-result-wide v2

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 609
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 610
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->updateBlurRatioIfNeed()V

    .line 608
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 919
    sget-boolean v0, Lcom/android/systemui/recents/RecentsConfiguration;->sCanMultiWindow:Z

    if-eqz v0, :cond_0

    .line 920
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsActivity;->updateDockRegions(Z)V

    .line 918
    :goto_0
    return-void

    .line 921
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->getMenuView()Lcom/android/systemui/recents/views/RecentMenuView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentMenuView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 922
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->getMenuView()Lcom/android/systemui/recents/views/RecentMenuView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/RecentMenuView;->removeMenu(Z)Z

    goto :goto_0

    .line 925
    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/ToggleRecentsEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/ToggleRecentsEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    .line 926
    const-string/jumbo v0, "hideRecents"

    const-string/jumbo v1, "clickBackKey"

    invoke-static {v0, v1}, Lcom/android/systemui/recents/misc/RecentsPushEventHelper;->sendRecentsEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/ActivitySetDummyTranslucentEvent;)V
    .locals 6
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/ActivitySetDummyTranslucentEvent;

    .prologue
    .line 1300
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mSetDummyTranslucentMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 1302
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mSetDummyTranslucentMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-boolean v4, p1, Lcom/android/systemui/recents/events/activity/ActivitySetDummyTranslucentEvent;->mIsTranslucent:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1299
    :cond_0
    :goto_0
    return-void

    .line 1305
    :catch_0
    move-exception v0

    .line 1306
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 1303
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 1304
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/CancelEnterRecentsWindowAnimationEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/CancelEnterRecentsWindowAnimationEvent;

    .prologue
    .line 1016
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v0

    .line 1017
    .local v0, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    iget v1, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedToTaskId:I

    .line 1018
    .local v1, "launchToTaskId":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 1019
    iget-object v3, p1, Lcom/android/systemui/recents/events/activity/CancelEnterRecentsWindowAnimationEvent;->launchTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/android/systemui/recents/events/activity/CancelEnterRecentsWindowAnimationEvent;->launchTask:Lcom/android/systemui/recents/model/Task;

    iget-object v3, v3, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    if-eq v1, v3, :cond_1

    .line 1020
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    .line 1021
    .local v2, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    iget v3, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedToTaskId:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->cancelWindowTransition(I)V

    .line 1022
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getTaskId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->cancelThumbnailTransition(I)V

    .line 1015
    .end local v2    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    :cond_1
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/DebugFlagsChangedEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/DebugFlagsChangedEvent;

    .prologue
    .line 1162
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->finish()V

    .line 1160
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;)V
    .locals 10
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;

    .prologue
    const-wide/16 v8, 0x32

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 1223
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mMemoryAndClearContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x19

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1224
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mDockBtn:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lmiui/view/animation/SineEaseOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/SineEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1225
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mTxtMemoryContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lmiui/view/animation/SineEaseOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/SineEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1222
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/DockedFirstAnimationFrameEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/DockedFirstAnimationFrameEvent;

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1012
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->invalidate()V

    .line 1010
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;

    .prologue
    .line 1172
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsDrawnEventListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1173
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->invalidate()V

    .line 1171
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/EnterRecentsWindowAnimationCompletedEvent;)V
    .locals 10
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/EnterRecentsWindowAnimationCompletedEvent;

    .prologue
    const-wide/16 v8, 0xc8

    const-wide/16 v6, 0x32

    const/high16 v4, 0x3f800000    # 1.0f

    .line 1215
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaFsGesture:Z

    if-nez v0, :cond_0

    .line 1216
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mMemoryAndClearContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lmiui/view/animation/SineEaseInOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/SineEaseInOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1217
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mDockBtn:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lmiui/view/animation/SineEaseInOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/SineEaseInOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1218
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mTxtMemoryContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lmiui/view/animation/SineEaseInOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/SineEaseInOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1214
    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/EnterRecentsWindowLastAnimationFrameEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/EnterRecentsWindowLastAnimationFrameEvent;

    .prologue
    .line 995
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/UpdateFreeformTaskViewVisibilityEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/ui/UpdateFreeformTaskViewVisibilityEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    .line 996
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 997
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->invalidate()V

    .line 994
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/ExitRecentsWindowFirstAnimationFrameEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/ExitRecentsWindowFirstAnimationFrameEvent;

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->isLastTaskLaunchedFreeform()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1002
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/UpdateFreeformTaskViewVisibilityEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/ui/UpdateFreeformTaskViewVisibilityEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    .line 1004
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1005
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->invalidate()V

    .line 1007
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1000
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/FsGestureEnterRecentsCompleteEvent;)V
    .locals 5
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/FsGestureEnterRecentsCompleteEvent;

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 1262
    iget-boolean v1, p1, Lcom/android/systemui/recents/events/activity/FsGestureEnterRecentsCompleteEvent;->mMoveRecentsToFront:Z

    if-eqz v1, :cond_0

    .line 1263
    const-string/jumbo v1, "activity"

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/RecentsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1264
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getTaskId()I

    move-result v1

    invoke-virtual {v0, v1, v4}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    .line 1266
    .end local v0    # "am":Landroid/app/ActivityManager;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mMemoryAndClearContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 1267
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mDockBtn:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1268
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mTxtMemoryContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 1269
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mTipView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1271
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/events/activity/ActivitySetDummyTranslucentEvent;

    invoke-direct {v2, v4}, Lcom/android/systemui/recents/events/activity/ActivitySetDummyTranslucentEvent;-><init>(Z)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    .line 1273
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1, v3}, Lcom/android/systemui/recents/views/RecentsView;->setAlpha(F)V

    .line 1274
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1, v3}, Lcom/android/systemui/recents/views/RecentsView;->setScaleX(F)V

    .line 1275
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1, v3}, Lcom/android/systemui/recents/views/RecentsView;->setScaleY(F)V

    .line 1261
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/FsGestureEnterRecentsZoomEvent;)V
    .locals 8
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/FsGestureEnterRecentsZoomEvent;

    .prologue
    const-wide/16 v6, 0xc8

    const/high16 v4, 0x3f800000    # 1.0f

    .line 1233
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/RecentsActivity$12;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/RecentsActivity$12;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1253
    const-wide/16 v2, 0x11b

    .line 1233
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1255
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mMemoryAndClearContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lmiui/view/animation/SineEaseInOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/SineEaseInOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1256
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mDockBtn:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lmiui/view/animation/SineEaseInOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/SineEaseInOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1257
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mTxtMemoryContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lmiui/view/animation/SineEaseInOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/SineEaseInOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1258
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mTipView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lmiui/view/animation/SineEaseInOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/SineEaseInOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1232
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/FsGestureSlideInEvent;)V
    .locals 8
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/FsGestureSlideInEvent;

    .prologue
    const-wide/16 v6, 0xc8

    const v2, 0x3f866666    # 1.05f

    const v1, 0x3f733333    # 0.95f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 1279
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    if-eqz v0, :cond_0

    .line 1280
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->CUBIC_EASE_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1281
    const-wide/16 v2, 0x64

    .line 1280
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1282
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mBackGround:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1278
    :goto_0
    return-void

    .line 1284
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->CUBIC_EASE_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/FsGestureSlideOutEvent;)V
    .locals 8
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/FsGestureSlideOutEvent;

    .prologue
    const-wide/16 v6, 0x96

    const-wide/16 v4, 0x0

    const v3, 0x3f8ccccd    # 1.1f

    const v1, 0x3f666666    # 0.9f

    const/4 v2, 0x0

    .line 1289
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    if-eqz v0, :cond_0

    .line 1290
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->CUBIC_EASE_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1292
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mBackGround:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1288
    :goto_0
    return-void

    .line 1294
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->CUBIC_EASE_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/HideMemoryAndDockEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/HideMemoryAndDockEvent;

    .prologue
    .line 1312
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->setupVisible()V

    .line 1311
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/HideRecentsEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/HideRecentsEvent;

    .prologue
    .line 971
    sget-boolean v0, Lcom/android/systemui/recents/RecentsConfiguration;->sCanMultiWindow:Z

    if-eqz v0, :cond_0

    .line 972
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsActivity;->updateDockRegions(Z)V

    .line 973
    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;->triggeredFromScroll:Z

    if-nez v0, :cond_0

    .line 974
    return-void

    .line 977
    :cond_0
    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;->triggeredFromAltTab:Z

    if-eqz v0, :cond_2

    .line 979
    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mIgnoreAltTabRelease:Z

    if-nez v0, :cond_1

    .line 980
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToTargetTaskOrHome()Z

    .line 970
    :cond_1
    :goto_0
    return-void

    .line 982
    :cond_2
    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;->triggeredFromHomeKey:Z

    if-nez v0, :cond_3

    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;->triggeredFromScroll:Z

    if-eqz v0, :cond_4

    .line 983
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHome(Z)V

    .line 986
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mUserInteractionEvent:Lcom/android/systemui/recents/events/ui/UserInteractionEvent;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    goto :goto_0

    .line 987
    :cond_4
    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;->triggeredFromFsGesture:Z

    if-eqz v0, :cond_1

    .line 988
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->launchPreviousTask()Z

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/IterateRecentsEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/IterateRecentsEvent;

    .prologue
    .line 943
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getDebugFlags()Lcom/android/systemui/recents/RecentsDebugFlags;

    move-result-object v0

    .line 946
    .local v0, "debugFlags":Lcom/android/systemui/recents/RecentsDebugFlags;
    const/4 v1, 0x0

    .line 947
    .local v1, "timerIndicatorDuration":I
    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsDebugFlags;->isFastToggleRecentsEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 948
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 949
    const v3, 0x90e0026

    .line 948
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 951
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mIterateTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v2, v1}, Lcom/android/systemui/recents/misc/DozeTrigger;->setDozeDuration(I)V

    .line 952
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mIterateTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/DozeTrigger;->isDozing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 953
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mIterateTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/DozeTrigger;->startDozing()V

    .line 960
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/ui/focus/FocusNextTaskViewEvent;

    invoke-direct {v3, v1}, Lcom/android/systemui/recents/events/ui/focus/FocusNextTaskViewEvent;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    .line 962
    const/16 v2, 0x114

    invoke-static {p0, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 942
    return-void

    .line 955
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mIterateTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/DozeTrigger;->poke()V

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchTaskFailedEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/LaunchTaskFailedEvent;

    .prologue
    const/4 v1, 0x1

    .line 1151
    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHome(Z)V

    .line 1153
    const-string/jumbo v0, "overview_task_launch_failed"

    invoke-static {p0, v0, v1}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1149
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchTaskSucceededEvent;)V
    .locals 10
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/LaunchTaskSucceededEvent;

    .prologue
    const-wide/16 v8, 0x32

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 1141
    const-string/jumbo v0, "overview_task_launch_index"

    iget v1, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskSucceededEvent;->taskIndexFromStackFront:I

    invoke-static {p0, v0, v1}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1142
    const-string/jumbo v0, "hideRecents"

    const-string/jumbo v1, "switchApp"

    invoke-static {v0, v1}, Lcom/android/systemui/recents/misc/RecentsPushEventHelper;->sendRecentsEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mMemoryAndClearContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x19

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1145
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mDockBtn:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lmiui/view/animation/SineEaseOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/SineEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1146
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mTxtMemoryContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lmiui/view/animation/SineEaseOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/SineEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1140
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/NavStubViewAttachToWindowEvent;)V
    .locals 8
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/NavStubViewAttachToWindowEvent;

    .prologue
    .line 1341
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v7

    new-instance v0, Lcom/android/systemui/recents/events/activity/FsGestureRecentsViewWrapperEvent;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mBackGround:Landroid/view/View;

    .line 1342
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mDockBtn:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mMemoryAndClearContainer:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/systemui/recents/RecentsActivity;->mTipView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/systemui/recents/RecentsActivity;->mTxtMemoryContainer:Landroid/view/ViewGroup;

    .line 1341
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/recents/events/activity/FsGestureRecentsViewWrapperEvent;-><init>(Lcom/android/systemui/recents/views/RecentsView;Landroid/view/View;Landroid/widget/TextView;Landroid/view/ViewGroup;Landroid/widget/TextView;Landroid/view/ViewGroup;)V

    invoke-virtual {v7, v0}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    .line 1340
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/ScrollerFlingFinishEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/ScrollerFlingFinishEvent;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 1334
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mDockBtn:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getAlpha()F

    move-result v0

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mTxtMemoryContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 1335
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mDockBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1336
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mTxtMemoryContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 1333
    :cond_1
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/ShowMemoryAndDockEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/ShowMemoryAndDockEvent;

    .prologue
    .line 1316
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->setupVisible()V

    .line 1315
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/StackScrollChangedEvent;)V
    .locals 7
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/StackScrollChangedEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1320
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/RecentsView;->getTaskViewPaddingView()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mDockBtn:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1321
    .local v1, "distance":I
    iget v3, p1, Lcom/android/systemui/recents/events/activity/StackScrollChangedEvent;->mTranslationY:I

    add-int/2addr v3, v1

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1322
    .local v2, "translationY":I
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mDockBtn:Landroid/widget/TextView;

    int-to-float v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 1323
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mTxtMemoryContainer:Landroid/view/ViewGroup;

    int-to-float v4, v2

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 1324
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mMemoryAndClearContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v3

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_0

    .line 1325
    sget-boolean v3, Lcom/android/systemui/recents/RecentsConfiguration;->sCanMultiWindow:Z

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    .line 1327
    .local v0, "alpha":F
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mDockBtn:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1328
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mTxtMemoryContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 1330
    .end local v0    # "alpha":F
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mTipView:Landroid/widget/TextView;

    iget v4, p1, Lcom/android/systemui/recents/events/activity/StackScrollChangedEvent;->mTranslationY:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 1319
    return-void

    .line 1326
    :cond_1
    int-to-float v3, v2

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    invoke-static {v3, v6}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .restart local v0    # "alpha":F
    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/ToggleRecentsEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/ToggleRecentsEvent;

    .prologue
    .line 933
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v0

    .line 934
    .local v0, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    iget-boolean v1, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    if-eqz v1, :cond_0

    .line 935
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHome(Z)V

    .line 932
    :goto_0
    return-void

    .line 937
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToLaunchTargetTaskOrHome()Z

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/component/ChangeTaskLockStateEvent;)V
    .locals 7
    .param p1, "event"    # Lcom/android/systemui/recents/events/component/ChangeTaskLockStateEvent;

    .prologue
    .line 1184
    iget-object v3, p1, Lcom/android/systemui/recents/events/component/ChangeTaskLockStateEvent;->task:Lcom/android/systemui/recents/model/Task;

    .line 1185
    .local v3, "task":Lcom/android/systemui/recents/model/Task;
    iget-object v4, v3, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1187
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v3, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v5, v5, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-static {v4, v2, v5}, Lcom/miui/enterprise/ApplicationHelper;->shouldKeeAlive(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1188
    const-string/jumbo v4, "Enterprise"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is protected"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    return-void

    .line 1192
    :cond_0
    iget-boolean v4, p1, Lcom/android/systemui/recents/events/component/ChangeTaskLockStateEvent;->isLocked:Z

    iput-boolean v4, v3, Lcom/android/systemui/recents/model/Task;->isLocked:Z

    .line 1194
    :try_start_0
    iget-object v4, v3, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v4, v4, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    iget-boolean v5, v3, Lcom/android/systemui/recents/model/Task;->isLocked:Z

    invoke-static {v2, v4, v5}, Lmiui/process/ProcessManager;->updateApplicationLockedState(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1198
    :goto_0
    const-string/jumbo v1, "noRestrict"

    .line 1199
    .local v1, "noRestrict":Ljava/lang/String;
    iget-boolean v4, v3, Lcom/android/systemui/recents/model/Task;->isLocked:Z

    if-eqz v4, :cond_2

    .line 1200
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "noRestrict"

    invoke-static {v4, v2, v5}, Lcom/android/systemui/recents/RecentsActivity;->updateAppConfigure(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    :cond_1
    :goto_1
    iget-boolean v4, v3, Lcom/android/systemui/recents/model/Task;->isLocked:Z

    if-eqz v4, :cond_3

    .line 1211
    const-string/jumbo v4, "lockTask"

    :goto_2
    iget-object v5, v3, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 1210
    invoke-static {v4, v5}, Lcom/android/systemui/recents/misc/RecentsPushEventHelper;->sendRecentsEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    return-void

    .line 1195
    .end local v1    # "noRestrict":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1196
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "RecentsActivity"

    const-string/jumbo v5, "ChangeTaskLockState"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1204
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "noRestrict":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, "noRestrict"

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/android/systemui/recents/RecentsActivity;->queryAppConfigure(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1205
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "miuiAuto"

    invoke-static {v4, v2, v5}, Lcom/android/systemui/recents/RecentsActivity;->updateAppConfigure(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1211
    :cond_3
    const-string/jumbo v4, "unLockTask"

    goto :goto_2
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/component/ExitMultiModeEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/component/ExitMultiModeEvent;

    .prologue
    .line 1177
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mExitMultiModeBtn:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mExitMultiModeBtn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1179
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mExitMultiModeBtn:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1176
    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/component/ScreenPinningRequestEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/component/ScreenPinningRequestEvent;

    .prologue
    .line 1157
    const-string/jumbo v0, "overview_screen_pinned"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1156
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;

    .prologue
    .line 1119
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    .line 1121
    .local v1, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasDockedTask()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p1, Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;->mEmpty:Z

    if-eqz v2, :cond_1

    .line 1122
    iget-boolean v2, p1, Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;->mFromDockGesture:Z

    if-nez v2, :cond_0

    .line 1123
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    iget v3, p1, Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;->msgResId:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/views/RecentsView;->showEmptyView(I)V

    .line 1124
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mTipView:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1137
    :cond_0
    :goto_0
    const-string/jumbo v2, "overview_task_all_dismissed"

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1118
    return-void

    .line 1127
    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v0

    .line 1128
    .local v0, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    iget-boolean v2, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    if-eqz v2, :cond_2

    .line 1130
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHome(Z)V

    goto :goto_0

    .line 1132
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToTargetTaskOrHome()Z

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/CleanInRecentsEvents;)V
    .locals 0
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/CleanInRecentsEvents;

    .prologue
    .line 1229
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->cleanInRecents()V

    .line 1228
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;)V
    .locals 5
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;

    .prologue
    .line 1102
    iget-object v2, p1, Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v3, v3, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    .line 1101
    invoke-static {p0, v2, v3}, Lcom/miui/enterprise/ApplicationHelper;->shouldKeeAlive(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1103
    return-void

    .line 1107
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v0

    .line 1108
    .local v0, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    iget-object v2, p1, Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;->task:Lcom/android/systemui/recents/model/Task;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->deleteTaskData(Lcom/android/systemui/recents/model/Task;Z)V

    .line 1110
    const-string/jumbo v2, "RecentsActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeTask: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;->task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/Task;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    .line 1113
    .local v1, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    iget-boolean v2, p1, Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;->remainProcess:Z

    if-nez v2, :cond_1

    .line 1114
    iget-object v2, p1, Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;->task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->killProcess(Lcom/android/systemui/recents/model/Task;)V

    .line 1099
    :cond_1
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/HideIncompatibleAppOverlayEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/HideIncompatibleAppOverlayEvent;

    .prologue
    .line 1090
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mIncompatibleAppOverlay:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1091
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mIncompatibleAppOverlay:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1092
    const/4 v1, 0x0

    .line 1091
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1093
    const-wide/16 v2, 0x96

    .line 1091
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1094
    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 1091
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1089
    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/ShowApplicationInfoEvent;)V
    .locals 7
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/ShowApplicationInfoEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 1032
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1033
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p1, Lcom/android/systemui/recents/events/ui/ShowApplicationInfoEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v3, v3, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1034
    .local v2, "packageName":Ljava/lang/String;
    sget-boolean v3, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v3, :cond_2

    .line 1035
    iget-object v3, p1, Lcom/android/systemui/recents/events/ui/ShowApplicationInfoEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v3, v3, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v3, v3, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/systemui/recents/RecentsActivity;->showHybridApplicationInfo(Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1036
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1037
    const-string/jumbo v3, "com.android.settings"

    const-string/jumbo v4, "com.android.settings.applications.InstalledAppDetailsTop"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1039
    :cond_0
    const-string/jumbo v3, "package"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1040
    const/high16 v3, 0x14000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1041
    iget-object v3, p1, Lcom/android/systemui/recents/events/ui/ShowApplicationInfoEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v3, v3, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-static {v3}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1042
    const-string/jumbo v3, "is_xspace_app"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1055
    :goto_0
    :try_start_0
    invoke-static {p0}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    move-result-object v3

    .line 1057
    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 1056
    const/4 v5, 0x0

    .line 1055
    invoke-virtual {v3, v5, v4}, Landroid/app/TaskStackBuilder;->startActivities(Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1062
    :goto_1
    const-string/jumbo v3, "overview_app_info"

    invoke-static {p0, v3, v6}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1063
    const-string/jumbo v3, "showAppInfo"

    iget-object v4, p1, Lcom/android/systemui/recents/events/ui/ShowApplicationInfoEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v4, v4, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/recents/misc/RecentsPushEventHelper;->sendRecentsEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    return-void

    .line 1044
    :cond_1
    const-string/jumbo v3, "is_xspace_app"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 1047
    :cond_2
    iget-object v3, p1, Lcom/android/systemui/recents/events/ui/ShowApplicationInfoEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v3, v3, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v3, v3, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/systemui/recents/RecentsActivity;->showHybridApplicationInfo(Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1048
    const-string/jumbo v3, "miui.intent.action.APP_MANAGER_APPLICATION_DETAIL"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1050
    :cond_3
    const-string/jumbo v3, "package_name"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1051
    const-string/jumbo v3, "miui.intent.extra.USER_ID"

    iget-object v4, p1, Lcom/android/systemui/recents/events/ui/ShowApplicationInfoEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v4, v4, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v4, v4, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1052
    const/high16 v3, 0x10800000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 1058
    :catch_0
    move-exception v0

    .line 1059
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "RecentsActivity"

    const-string/jumbo v4, "ShowApplicationInfo"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/ShowIncompatibleAppOverlayEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/ShowIncompatibleAppOverlayEvent;

    .prologue
    const/4 v1, 0x0

    .line 1076
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mIncompatibleAppOverlay:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1078
    const v0, 0x9120277

    .line 1077
    invoke-static {p0, v0}, Lcom/android/systemui/recents/misc/Utilities;->findViewStubById(Landroid/app/Activity;I)Landroid/view/ViewStub;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mIncompatibleAppOverlay:Landroid/view/View;

    .line 1079
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mIncompatibleAppOverlay:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 1080
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mIncompatibleAppOverlay:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1082
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mIncompatibleAppOverlay:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1083
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1082
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1084
    const-wide/16 v2, 0x96

    .line 1082
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1085
    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 1082
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1075
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/StackViewScrolledEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/StackViewScrolledEvent;

    .prologue
    .line 1168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mIgnoreAltTabRelease:Z

    .line 1165
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/UserInteractionEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/UserInteractionEvent;

    .prologue
    .line 967
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mIterateTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->stopDozing()V

    .line 965
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 9
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 711
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 714
    invoke-static {p0}, Lcom/android/systemui/recents/misc/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v0

    .line 715
    .local v0, "newDeviceConfiguration":Landroid/content/res/Configuration;
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/RecentsView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/TaskStack;->getStackTaskCount()I

    move-result v1

    .line 716
    .local v1, "numStackTasks":I
    iget v5, p0, Lcom/android/systemui/recents/RecentsActivity;->mLastDeviceOrientation:I

    iget v6, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v5, v6, :cond_1

    const/4 v2, 0x1

    .line 717
    .local v2, "orientationChange":Z
    :goto_0
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v6

    new-instance v7, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;

    .line 719
    iget v5, p0, Lcom/android/systemui/recents/RecentsActivity;->mLastDisplayDensity:I

    iget v8, v0, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v5, v8, :cond_2

    move v5, v3

    :goto_1
    if-lez v1, :cond_3

    .line 717
    :goto_2
    invoke-direct {v7, v4, v2, v5, v3}, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;-><init>(ZZZZ)V

    invoke-virtual {v6, v7}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    .line 721
    if-eqz v2, :cond_0

    .line 722
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mMemoryAndClearContainer:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mMemoryAndClearContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    .line 723
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsActivity;->mMemoryAndClearContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    .line 724
    iget-object v6, p0, Lcom/android/systemui/recents/RecentsActivity;->mMemoryAndClearContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v6

    .line 725
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x90f021f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 722
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 728
    :cond_0
    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mLastDeviceOrientation:I

    .line 729
    iget v3, v0, Landroid/content/res/Configuration;->densityDpi:I

    iput v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mLastDisplayDensity:I

    .line 710
    return-void

    .line 716
    .end local v2    # "orientationChange":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "orientationChange":Z
    goto :goto_0

    :cond_2
    move v5, v4

    .line 719
    goto :goto_1

    :cond_3
    move v3, v4

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 360
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 361
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 363
    iput-boolean v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mFinishedOnStartup:Z

    .line 367
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v12

    .line 368
    .local v12, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    if-nez v12, :cond_0

    .line 369
    iput-boolean v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mFinishedOnStartup:Z

    .line 370
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->finish()V

    .line 371
    return-void

    .line 374
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "launchState"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/recents/RecentsActivityLaunchState;

    .line 375
    .local v10, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/systemui/recents/RecentsActivityLaunchState;->copyFrom(Lcom/android/systemui/recents/RecentsActivityLaunchState;)V

    .line 378
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/recents/events/RecentsEventBus;->register(Ljava/lang/Object;I)V

    .line 381
    new-instance v0, Lcom/android/systemui/recents/model/RecentsPackageMonitor;

    invoke-direct {v0}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mPackageMonitor:Lcom/android/systemui/recents/model/RecentsPackageMonitor;

    .line 382
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mPackageMonitor:Lcom/android/systemui/recents/model/RecentsPackageMonitor;

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->register(Landroid/content/Context;)V

    .line 385
    const v0, 0x90400d2

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsActivity;->setContentView(I)V

    .line 386
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/RecentsActivity;->takeKeyEvents(Z)V

    .line 387
    const v0, 0x912027a

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsContainer:Landroid/widget/FrameLayout;

    .line 388
    const v0, 0x9120276

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/RecentsView;

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    .line 389
    invoke-static {}, Lmiui/util/HardwareInfo;->getTotalPhysicalMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mTotalMemory:J

    .line 390
    const v0, 0x9120282

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mMemoryAndClearContainer:Landroid/view/ViewGroup;

    .line 391
    const v0, 0x912027c

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mTxtMemoryContainer:Landroid/view/ViewGroup;

    .line 392
    const v0, 0x912027d

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mTxtMemoryInfo1:Landroid/widget/TextView;

    .line 393
    const v0, 0x912027f

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mTxtMemoryInfo2:Landroid/widget/TextView;

    .line 394
    const v0, 0x912027e

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mSeparatorForMemoryInfo:Landroid/view/View;

    .line 395
    const v0, 0x9120283

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mClearAnimView:Lcom/android/systemui/recents/views/CircleAndTickAnimView;

    .line 396
    const v0, 0x912027b

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mDockBtn:Landroid/widget/TextView;

    .line 397
    const v0, 0x9120280

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mTipView:Landroid/widget/TextView;

    .line 398
    const v0, 0x91200fd

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mBackGround:Landroid/view/View;

    .line 400
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v1, v1, 0x4000

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 403
    invoke-static {p0}, Lcom/android/systemui/recents/misc/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v7

    .line 404
    .local v7, "appConfiguration":Landroid/content/res/Configuration;
    iget v0, v7, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mLastDeviceOrientation:I

    .line 405
    iget v0, v7, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mLastDisplayDensity:I

    .line 406
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x90e0025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mFocusTimerDuration:I

    .line 407
    new-instance v0, Lcom/android/systemui/recents/misc/DozeTrigger;

    iget v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mFocusTimerDuration:I

    new-instance v2, Lcom/android/systemui/recents/RecentsActivity$6;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/RecentsActivity$6;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/misc/DozeTrigger;-><init>(ILjava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mIterateTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    .line 416
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mBackGround:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/RecentsView;->getBackgroundScrim()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 419
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mHomeIntent:Landroid/content/Intent;

    .line 420
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mHomeIntent:Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 421
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mHomeIntent:Landroid/content/Intent;

    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 425
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 426
    .local v9, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 427
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 428
    sget-object v0, Lcom/android/systemui/Dependency;->SCREEN_OFF_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 427
    invoke-virtual {p0, v1, v9, v4, v0}, Lcom/android/systemui/recents/RecentsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 430
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 433
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->reloadStackView()V

    .line 435
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mClearAnimView:Lcom/android/systemui/recents/views/CircleAndTickAnimView;

    const v1, 0x90202b7

    .line 436
    const v2, 0x9020075

    .line 435
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->setDrawables(II)V

    .line 438
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mClearAnimView:Lcom/android/systemui/recents/views/CircleAndTickAnimView;

    new-instance v1, Lcom/android/systemui/recents/RecentsActivity$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/RecentsActivity$7;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 444
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mClearAnimView:Lcom/android/systemui/recents/views/CircleAndTickAnimView;

    new-instance v1, Lcom/android/systemui/recents/RecentsActivity$8;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/RecentsActivity$8;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 459
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mDockBtn:Landroid/widget/TextView;

    new-instance v1, Lcom/android/systemui/recents/RecentsActivity$9;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/RecentsActivity$9;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 473
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mDockBtn:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/RecentsActivity;->fitsSystemWindowInsets(Landroid/view/View;)V

    .line 474
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mMemoryAndClearContainer:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/RecentsActivity;->fitsSystemWindowInsets(Landroid/view/View;)V

    .line 475
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mTxtMemoryContainer:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/RecentsActivity;->fitsSystemWindowInsets(Landroid/view/View;)V

    .line 478
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsDrawnEventListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 480
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v13

    new-instance v0, Lcom/android/systemui/recents/events/activity/FsGestureRecentsViewWrapperEvent;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mBackGround:Landroid/view/View;

    .line 481
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mDockBtn:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mMemoryAndClearContainer:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/systemui/recents/RecentsActivity;->mTipView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/systemui/recents/RecentsActivity;->mTxtMemoryContainer:Landroid/view/ViewGroup;

    .line 480
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/recents/events/activity/FsGestureRecentsViewWrapperEvent;-><init>(Lcom/android/systemui/recents/views/RecentsView;Landroid/view/View;Landroid/widget/TextView;Landroid/view/ViewGroup;Landroid/widget/TextView;Landroid/view/ViewGroup;)V

    invoke-virtual {v13, v0}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    .line 484
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "setDummyTranslucent"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mSetDummyTranslucentMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    :goto_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaFsGesture:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v0

    iget-boolean v11, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    .line 489
    :goto_1
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/ActivitySetDummyTranslucentEvent;

    invoke-direct {v1, v11}, Lcom/android/systemui/recents/events/activity/ActivitySetDummyTranslucentEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    .line 490
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->registerContentObservers()V

    .line 359
    return-void

    .line 485
    :catch_0
    move-exception v8

    .line 486
    .local v8, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v8}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 488
    .end local v8    # "e":Ljava/lang/NoSuchMethodException;
    :cond_1
    const/4 v11, 0x0

    .local v11, "shouldTranslucent":Z
    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 830
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 833
    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mFinishedOnStartup:Z

    if-eqz v0, :cond_0

    .line 834
    return-void

    .line 838
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 841
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mPackageMonitor:Lcom/android/systemui/recents/model/RecentsPackageMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->unregister()V

    .line 843
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/RecentsEventBus;->unregister(Ljava/lang/Object;)V

    .line 844
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mExitMultiModeBtn:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mExitMultiModeBtn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 845
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mWm:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mExitMultiModeBtn:Landroid/widget/Button;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 848
    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v7

    new-instance v0, Lcom/android/systemui/recents/events/activity/FsGestureRecentsViewWrapperEvent;

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/recents/events/activity/FsGestureRecentsViewWrapperEvent;-><init>(Lcom/android/systemui/recents/views/RecentsView;Landroid/view/View;Landroid/widget/TextView;Landroid/view/ViewGroup;Landroid/widget/TextView;Landroid/view/ViewGroup;)V

    invoke-virtual {v7, v0}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    .line 849
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->unRegisterDisplayListener()V

    .line 850
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->unRegisterContentObservers()V

    .line 829
    return-void
.end method

.method public onEnterAnimationComplete()V
    .locals 2

    .prologue
    .line 688
    invoke-super {p0}, Landroid/app/Activity;->onEnterAnimationComplete()V

    .line 693
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mSendEnterWindowAnimationCompleteRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 694
    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mReceivedNewIntent:Z

    if-nez v0, :cond_0

    .line 695
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mSendEnterWindowAnimationCompleteRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 687
    :goto_0
    return-void

    .line 697
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mSendEnterWindowAnimationCompleteRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 10
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 863
    sparse-switch p1, :sswitch_data_0

    .line 909
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    return v3

    .line 865
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x90e0027

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 866
    .local v0, "altTabKeyDelay":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 867
    iget-wide v6, p0, Lcom/android/systemui/recents/RecentsActivity;->mLastTabKeyEventTime:J

    .line 866
    sub-long/2addr v4, v6

    .line 867
    int-to-long v6, v0

    .line 866
    cmp-long v3, v4, v6

    if-lez v3, :cond_3

    const/4 v2, 0x1

    .line 868
    .local v2, "hasRepKeyTimeElapsed":Z
    :goto_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-lez v3, :cond_1

    if-eqz v2, :cond_2

    .line 870
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v1

    .line 871
    .local v1, "backward":Z
    if-eqz v1, :cond_4

    .line 872
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/recents/events/ui/focus/FocusPreviousTaskViewEvent;

    invoke-direct {v4}, Lcom/android/systemui/recents/events/ui/focus/FocusPreviousTaskViewEvent;-><init>()V

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    .line 877
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mLastTabKeyEventTime:J

    .line 880
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 881
    iput-boolean v8, p0, Lcom/android/systemui/recents/RecentsActivity;->mIgnoreAltTabRelease:Z

    .line 884
    .end local v1    # "backward":Z
    :cond_2
    return v9

    .line 866
    .end local v2    # "hasRepKeyTimeElapsed":Z
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "hasRepKeyTimeElapsed":Z
    goto :goto_0

    .line 874
    .restart local v1    # "backward":Z
    :cond_4
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v3

    .line 875
    new-instance v4, Lcom/android/systemui/recents/events/ui/focus/FocusNextTaskViewEvent;

    invoke-direct {v4, v8}, Lcom/android/systemui/recents/events/ui/focus/FocusNextTaskViewEvent;-><init>(I)V

    .line 874
    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    goto :goto_1

    .line 887
    .end local v0    # "altTabKeyDelay":I
    .end local v1    # "backward":Z
    .end local v2    # "hasRepKeyTimeElapsed":Z
    :sswitch_1
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v3

    .line 888
    new-instance v4, Lcom/android/systemui/recents/events/ui/focus/FocusNextTaskViewEvent;

    invoke-direct {v4, v8}, Lcom/android/systemui/recents/events/ui/focus/FocusNextTaskViewEvent;-><init>(I)V

    .line 887
    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    .line 889
    return v9

    .line 892
    :sswitch_2
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/recents/events/ui/focus/FocusPreviousTaskViewEvent;

    invoke-direct {v4}, Lcom/android/systemui/recents/events/ui/focus/FocusPreviousTaskViewEvent;-><init>()V

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    .line 893
    return v9

    .line 897
    :sswitch_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-gtz v3, :cond_0

    .line 898
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/recents/events/ui/focus/DismissFocusedTaskViewEvent;

    invoke-direct {v4}, Lcom/android/systemui/recents/events/ui/focus/DismissFocusedTaskViewEvent;-><init>()V

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    .line 901
    const-string/jumbo v3, "overview_task_dismissed_source"

    invoke-static {p0, v3, v8}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 903
    return v9

    .line 863
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_2
        0x3d -> :sswitch_0
        0x43 -> :sswitch_3
        0x70 -> :sswitch_3
    .end sparse-switch
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 13
    .param p1, "isInMultiWindowMode"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 735
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    .line 736
    .local v0, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v1

    .line 737
    .local v1, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v4

    .line 738
    .local v4, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    invoke-virtual {v4, p0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v3

    .line 739
    .local v3, "loadPlan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    const/4 v8, -0x1

    invoke-virtual {v4, v3, v8, v10}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V

    .line 742
    new-instance v2, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v2}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    .line 743
    .local v2, "loadOpts":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    iget v8, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedNumVisibleTasks:I

    iput v8, v2, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    .line 744
    iget v8, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedNumVisibleThumbnails:I

    iput v8, v2, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    .line 745
    invoke-virtual {v4, p0, v3, v2}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;)V

    .line 747
    invoke-virtual {v3}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v7

    .line 748
    .local v7, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v7}, Lcom/android/systemui/recents/model/TaskStack;->getStackTaskCount()I

    move-result v5

    .line 749
    .local v5, "numStackTasks":I
    if-lez v5, :cond_2

    const/4 v6, 0x1

    .line 751
    .local v6, "showDeferredAnimation":Z
    :goto_0
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v11

    new-instance v12, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;

    .line 753
    if-lez v5, :cond_3

    move v8, v9

    .line 751
    :goto_1
    invoke-direct {v12, v9, v10, v10, v8}, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;-><init>(ZZZZ)V

    invoke-virtual {v11, v12}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    .line 754
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v8

    new-instance v9, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;

    invoke-direct {v9, p1, v6, v7}, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;-><init>(ZZLcom/android/systemui/recents/model/TaskStack;)V

    invoke-virtual {v8, v9}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    .line 756
    iget-boolean v8, p0, Lcom/android/systemui/recents/RecentsActivity;->mIsVisible:Z

    if-eqz v8, :cond_0

    .line 757
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->setupVisible()V

    .line 759
    :cond_0
    invoke-virtual {p0, v10}, Lcom/android/systemui/recents/RecentsActivity;->updateDockRegions(Z)V

    .line 760
    if-nez p1, :cond_1

    .line 761
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->setSystemUiVisibility()V

    .line 732
    :cond_1
    return-void

    .line 749
    .end local v6    # "showDeferredAnimation":Z
    :cond_2
    const/4 v6, 0x0

    .restart local v6    # "showDeferredAnimation":Z
    goto :goto_0

    :cond_3
    move v8, v10

    .line 753
    goto :goto_1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 579
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 580
    const-string/jumbo v1, "launchState"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;

    .line 581
    .local v0, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/RecentsActivityLaunchState;->copyFrom(Lcom/android/systemui/recents/RecentsActivityLaunchState;)V

    .line 584
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/RecentsView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsDrawnEventListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 586
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mReceivedNewIntent:Z

    .line 589
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->reloadStackView()V

    .line 578
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 703
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 705
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mIgnoreAltTabRelease:Z

    .line 706
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mIterateTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->stopDozing()V

    .line 702
    return-void
.end method

.method public onPreDraw()Z
    .locals 2

    .prologue
    .line 1406
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1409
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    new-instance v1, Lcom/android/systemui/recents/RecentsActivity$14;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/RecentsActivity$14;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/RecentsView;->post(Ljava/lang/Runnable;)Z

    .line 1415
    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 594
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 596
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mClearAnimView:Lcom/android/systemui/recents/views/CircleAndTickAnimView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->stopAnimator()V

    .line 597
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->refreshMemoryInfo()V

    .line 598
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mTxtMemoryContainer:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->isMemInfoShow()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 599
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->setupVisible()V

    .line 600
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 601
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->updateBlurRatioIfNeed()V

    .line 602
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasDockedTask()Z

    move-result v0

    if-nez v0, :cond_0

    .line 603
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->setSystemUiVisibility()V

    .line 593
    :cond_0
    return-void

    .line 598
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method protected onStart()V
    .locals 5

    .prologue
    .line 563
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 564
    const-string/jumbo v1, "RecentsActivity"

    const-string/jumbo v2, "onStart"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    .line 567
    const/16 v1, 0xe0

    invoke-static {p0, v1}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    .line 569
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v0

    .line 570
    .local v0, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    iget-boolean v1, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaFsGesture:Z

    if-nez v1, :cond_0

    .line 571
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    const-string/jumbo v2, "com.miui.home"

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->changeAlphaScaleForFsGesture(Ljava/lang/String;FF)V

    .line 573
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mIsStartHomeAnimRunninig:Z

    .line 574
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->registerDisplayListener()V

    .line 562
    return-void
.end method

.method protected onStop()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 803
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 804
    const-string/jumbo v2, "RecentsActivity"

    const-string/jumbo v3, "onStop"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    iput-boolean v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mIsVisible:Z

    .line 807
    iput-boolean v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mReceivedNewIntent:Z

    .line 808
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    .line 809
    const/16 v2, 0xe0

    invoke-static {p0, v2}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    .line 810
    const-string/jumbo v2, "hideRecents"

    const-string/jumbo v3, "total"

    invoke-static {v2, v3}, Lcom/android/systemui/recents/misc/RecentsPushEventHelper;->sendRecentsEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    .line 816
    .local v0, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v1

    .line 817
    .local v1, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsActivityLaunchState;->reset()V

    .line 819
    invoke-direct {p0, v4}, Lcom/android/systemui/recents/RecentsActivity;->updateExitMultiModeBtnVisible(Z)V

    .line 820
    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/RecentsActivity;->updateDockRegions(Z)V

    .line 821
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->resetHomeAlphaScale()V

    .line 822
    iput-boolean v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mIsStartHomeAnimRunninig:Z

    .line 823
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->isChangingConfigurations()Z

    move-result v2

    invoke-static {v2}, Lcom/android/systemui/recents/views/TaskStackView;->setIsChangingConfigurations(Z)V

    .line 825
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->endProlongedAnimations()V

    .line 802
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 855
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v0

    .line 856
    .local v0, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    if-eqz v0, :cond_0

    .line 857
    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->onTrimMemory(I)V

    .line 854
    :cond_0
    return-void
.end method

.method public onUserInteraction()V
    .locals 2

    .prologue
    .line 914
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mUserInteractionEvent:Lcom/android/systemui/recents/events/ui/UserInteractionEvent;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    .line 913
    return-void
.end method

.method public refreshMemoryInfo()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v4, 0x0

    .line 1466
    sget-wide v6, Lcom/android/systemui/recents/RecentsActivity;->mFreeBeforeClean:J

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getFreeMemory()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/android/systemui/recents/RecentsActivity;->getFormatedMemory(J)Ljava/lang/String;

    move-result-object v0

    .line 1467
    .local v0, "freeMemory":Ljava/lang/String;
    iget-wide v6, p0, Lcom/android/systemui/recents/RecentsActivity;->mTotalMemory:J

    invoke-static {v6, v7}, Lcom/android/systemui/recents/RecentsActivity;->getFormatedMemory(J)Ljava/lang/String;

    move-result-object v2

    .line 1468
    .local v2, "totalMemory":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mTxtMemoryInfo1:Landroid/widget/TextView;

    new-array v5, v11, [Ljava/lang/Object;

    .line 1469
    aput-object v0, v5, v4

    aput-object v2, v5, v10

    .line 1468
    const v6, 0x910048e

    invoke-virtual {p0, v6, v5}, Lcom/android/systemui/recents/RecentsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1470
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mTxtMemoryInfo2:Landroid/widget/TextView;

    new-array v5, v11, [Ljava/lang/Object;

    .line 1471
    aput-object v0, v5, v4

    aput-object v2, v5, v10

    .line 1470
    const v6, 0x910048f

    invoke-virtual {p0, v6, v5}, Lcom/android/systemui/recents/RecentsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1473
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mTxtMemoryInfo1:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1474
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mTxtMemoryInfo2:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 1475
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsActivity;->mSeparatorForMemoryInfo:Landroid/view/View;

    if-eqz v1, :cond_1

    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1476
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mClearAnimView:Lcom/android/systemui/recents/views/CircleAndTickAnimView;

    new-array v5, v11, [Ljava/lang/Object;

    .line 1477
    aput-object v0, v5, v4

    aput-object v2, v5, v10

    .line 1476
    const v4, 0x9100493

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/recents/RecentsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1465
    return-void

    .line 1473
    :cond_0
    const/4 v1, 0x1

    .local v1, "separatorNeedHide":Z
    goto :goto_0

    .end local v1    # "separatorNeedHide":Z
    :cond_1
    move v3, v4

    .line 1475
    goto :goto_1
.end method

.method public resetHomeAlphaScale()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1595
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 1596
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isFsGestureAnimating()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1597
    const-string/jumbo v1, "com.miui.home"

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->changeAlphaScaleForFsGesture(Ljava/lang/String;FF)V

    .line 1594
    :cond_0
    return-void
.end method

.method public setNotchPadding()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1673
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x90f02ad

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1674
    .local v2, "statusBarHeight":I
    iget v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mRotation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    move v0, v2

    .line 1675
    .local v0, "left":I
    :goto_0
    iget v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mRotation:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    move v1, v2

    .line 1676
    .local v1, "right":I
    :goto_1
    iget v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mRotation:I

    if-nez v4, :cond_4

    move v3, v2

    .line 1677
    .local v3, "top":I
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsContainer:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_0

    .line 1678
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v0, v3, v1, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1680
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    if-eqz v4, :cond_1

    .line 1681
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/RecentsView;->requstLayoutTaskStackView()V

    .line 1672
    :cond_1
    return-void

    .line 1674
    .end local v0    # "left":I
    .end local v1    # "right":I
    .end local v3    # "top":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "left":I
    goto :goto_0

    .line 1675
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "right":I
    goto :goto_1

    .line 1676
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "top":I
    goto :goto_2
.end method

.method public startHomeAnim()V
    .locals 4

    .prologue
    .line 1566
    iget-boolean v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mIsStartHomeAnimRunninig:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mIsVisible:Z

    if-eqz v2, :cond_0

    .line 1567
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mIsStartHomeAnimRunninig:Z

    .line 1568
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    .line 1569
    .local v1, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1570
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1571
    new-instance v2, Lcom/android/systemui/recents/RecentsActivity$18;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/recents/RecentsActivity$18;-><init>(Lcom/android/systemui/recents/RecentsActivity;Lcom/android/systemui/recents/misc/SystemServicesProxy;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1579
    new-instance v2, Lcom/android/systemui/recents/RecentsActivity$19;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/recents/RecentsActivity$19;-><init>(Lcom/android/systemui/recents/RecentsActivity;Lcom/android/systemui/recents/misc/SystemServicesProxy;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1590
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 1565
    return-void

    .line 1566
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    .end local v1    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    :cond_0
    return-void

    .line 1569
    :array_0
    .array-data 4
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public updateDockRegions(Z)V
    .locals 8
    .param p1, "canEnterMultiWindow"    # Z

    .prologue
    const-wide/16 v6, 0x32

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 534
    sput-boolean p1, Lcom/android/systemui/recents/RecentsConfiguration;->sCanMultiWindow:Z

    .line 535
    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mIsVisible:Z

    if-eqz v0, :cond_3

    .line 536
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mDockBtn:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mDockBtn:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTranslationY()F

    move-result v0

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_4

    :cond_0
    move v0, v2

    :goto_0
    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 538
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mTxtMemoryContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-nez p1, :cond_1

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mTxtMemoryContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v3

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 541
    :cond_3
    if-eqz p1, :cond_5

    .line 542
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    const v1, 0x9100498

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/RecentsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/RecentsView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 543
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->showDockRegionsAnim()V

    .line 533
    :goto_1
    return-void

    :cond_4
    move v0, v1

    .line 536
    goto :goto_0

    .line 545
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->hideDockRegionsAnim()V

    goto :goto_1
.end method
