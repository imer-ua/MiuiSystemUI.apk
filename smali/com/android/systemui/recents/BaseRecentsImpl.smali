.class public abstract Lcom/android/systemui/recents/BaseRecentsImpl;
.super Ljava/lang/Object;
.source "BaseRecentsImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/BaseRecentsImpl$1;,
        Lcom/android/systemui/recents/BaseRecentsImpl$2;,
        Lcom/android/systemui/recents/BaseRecentsImpl$3;,
        Lcom/android/systemui/recents/BaseRecentsImpl$4;,
        Lcom/android/systemui/recents/BaseRecentsImpl$5;,
        Lcom/android/systemui/recents/BaseRecentsImpl$6;,
        Lcom/android/systemui/recents/BaseRecentsImpl$7;,
        Lcom/android/systemui/recents/BaseRecentsImpl$8;,
        Lcom/android/systemui/recents/BaseRecentsImpl$9;,
        Lcom/android/systemui/recents/BaseRecentsImpl$H;,
        Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver;
    }
.end annotation


# static fields
.field public static mTaskBarHeight:I

.field protected static sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

.field public static sOneKeyCleaning:Z


# instance fields
.field private isShowing:Z

.field mActivityStateObserver:Landroid/app/IMiuiActivityObserver;

.field private mAppSwitchAnimChangeListener:Landroid/database/ContentObserver;

.field private mCloudDataObserver:Landroid/database/ContentObserver;

.field protected mContext:Landroid/content/Context;

.field private mCurType:Ljava/lang/String;

.field private mDisabledByDriveMode:Z

.field mDraggingInRecents:Z

.field private mDriveModeObserver:Landroid/database/ContentObserver;

.field protected mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

.field mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

.field private mForceImmersiveNavBarListener:Landroid/database/ContentObserver;

.field private mFsgBackState:I

.field private mFsgReceiver:Landroid/content/BroadcastReceiver;

.field private mGestureControlHelper:Lcom/miui/internal/transition/IMiuiGestureControlHelper;

.field private mGestureStubLeft:Lcom/android/systemui/fsgesture/GestureStubView;

.field private mGestureStubRight:Lcom/android/systemui/fsgesture/GestureStubView;

.field protected mHandler:Landroid/os/Handler;

.field private mHasNavigationBar:Z

.field private mHasRegistedInput:Z

.field mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

.field final mHeaderBarLock:Ljava/lang/Object;

.field private mHotZoneChangeActListStr:Ljava/lang/String;

.field private final mIWindowManager:Landroid/view/IWindowManager;

.field private mInputMethodHeight:I

.field private mInputMethodVisibleHeightChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mIsInAnotherPro:Z

.field private mIsSizeReset:Z

.field private mIsStartRecent:Z

.field protected mKM:Landroid/app/KeyguardManager;

.field protected mLastToggleTime:J

.field mLaunchedWhileDocking:Z

.field private mLocalCtrlActs:[Ljava/lang/String;

.field mNavBarHeight:I

.field mNavBarWidth:I

.field private mNavStubView:Lcom/android/systemui/statusbar/phone/NavStubView;

.field private mNoBackActListStr:Ljava/lang/String;

.field private mNoBackAndHomeActListStr:Ljava/lang/String;

.field private mNoHomeActListStr:Ljava/lang/String;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field mRecentsReceiver:Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver;

.field private mRecentsVisible:Z

.field private mScreenWidth:I

.field mStatusBarHeight:I

.field private mStubSize:I

.field mTaskStackBounds:Landroid/graphics/Rect;

.field mTaskStackListener:Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;

.field protected mThumbTransitionBitmapCache:Landroid/graphics/Bitmap;

.field mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

.field protected mTriggeredFromAltTab:Z

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/BaseRecentsImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mDisabledByDriveMode:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/recents/BaseRecentsImpl;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mFsgBackState:I

    return v0
.end method

.method static synthetic -get10(Lcom/android/systemui/recents/BaseRecentsImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mRecentsVisible:Z

    return v0
.end method

.method static synthetic -get11(Lcom/android/systemui/recents/BaseRecentsImpl;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mScreenWidth:I

    return v0
.end method

.method static synthetic -get12(Lcom/android/systemui/recents/BaseRecentsImpl;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mStubSize:I

    return v0
.end method

.method static synthetic -get13(Lcom/android/systemui/recents/BaseRecentsImpl;)Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/recents/BaseRecentsImpl;)Lcom/android/systemui/fsgesture/GestureStubView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mGestureStubLeft:Lcom/android/systemui/fsgesture/GestureStubView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/recents/BaseRecentsImpl;)Lcom/android/systemui/fsgesture/GestureStubView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mGestureStubRight:Lcom/android/systemui/fsgesture/GestureStubView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/recents/BaseRecentsImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mHasNavigationBar:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/recents/BaseRecentsImpl;)Landroid/view/IWindowManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mIWindowManager:Landroid/view/IWindowManager;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/recents/BaseRecentsImpl;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mInputMethodHeight:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/recents/BaseRecentsImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mIsInAnotherPro:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/systemui/recents/BaseRecentsImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mIsStartRecent:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/systemui/recents/BaseRecentsImpl;)Lcom/android/systemui/statusbar/phone/NavStubView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mNavStubView:Lcom/android/systemui/statusbar/phone/NavStubView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/recents/BaseRecentsImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mDisabledByDriveMode:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/recents/BaseRecentsImpl;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mInputMethodHeight:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/recents/BaseRecentsImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mIsInAnotherPro:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/recents/BaseRecentsImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mIsStartRecent:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/systemui/recents/BaseRecentsImpl;Lcom/android/systemui/statusbar/phone/NavStubView;)Lcom/android/systemui/statusbar/phone/NavStubView;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mNavStubView:Lcom/android/systemui/statusbar/phone/NavStubView;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/recents/BaseRecentsImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/BaseRecentsImpl;->adaptToTopActivity()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/recents/BaseRecentsImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/BaseRecentsImpl;->addBackStubWindow()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/recents/BaseRecentsImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/BaseRecentsImpl;->clearBackStubWindow()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/recents/BaseRecentsImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/BaseRecentsImpl;->hideBackStubWindow()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/recents/BaseRecentsImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/BaseRecentsImpl;->readCloudDataForFsg()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/recents/BaseRecentsImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/BaseRecentsImpl;->sendChangeBackGestureSizeIsNeeded()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/systemui/recents/BaseRecentsImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/BaseRecentsImpl;->sendResetBackGestureSizeIsNeeded()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/systemui/recents/BaseRecentsImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/BaseRecentsImpl;->showBackStubWindow()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/systemui/recents/BaseRecentsImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/BaseRecentsImpl;->updateFsgWindowState()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/systemui/recents/BaseRecentsImpl;ZLjava/lang/String;)V
    .locals 0
    .param p1, "isEnter"    # Z
    .param p2, "typeFrom"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/recents/BaseRecentsImpl;->updateFsgWindowVisibilityState(ZLjava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/recents/BaseRecentsImpl;->sOneKeyCleaning:Z

    .line 154
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mTaskStackBounds:Landroid/graphics/Rect;

    .line 194
    new-instance v0, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v0}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 202
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mHeaderBarLock:Ljava/lang/Object;

    .line 210
    new-instance v0, Lcom/android/systemui/recents/misc/DozeTrigger;

    new-instance v1, Lcom/android/systemui/recents/BaseRecentsImpl$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/BaseRecentsImpl$1;-><init>(Lcom/android/systemui/recents/BaseRecentsImpl;)V

    const/16 v2, 0xe1

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/recents/misc/DozeTrigger;-><init>(ILjava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    .line 223
    new-instance v0, Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver;-><init>(Lcom/android/systemui/recents/BaseRecentsImpl;)V

    iput-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mRecentsReceiver:Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver;

    .line 226
    new-instance v0, Lcom/android/systemui/recents/BaseRecentsImpl$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/BaseRecentsImpl$2;-><init>(Lcom/android/systemui/recents/BaseRecentsImpl;)V

    iput-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mInputMethodVisibleHeightChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 432
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 433
    const-string/jumbo v1, "com.android.systemui.fsgesture.HomeDemoAct"

    aput-object v1, v0, v5

    .line 434
    const-string/jumbo v1, "com.android.systemui.fsgesture.DemoFinishAct"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 435
    const-string/jumbo v1, "com.android.systemui.fsgesture.DrawerDemoAct"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 436
    const-string/jumbo v1, "com.android.systemui.fsgesture.FsGestureBackDemoActivity"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 437
    const-string/jumbo v1, "com.android.provision.activities.CongratulationActivity"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 432
    iput-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mLocalCtrlActs:[Ljava/lang/String;

    .line 448
    iput v5, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mFsgBackState:I

    .line 511
    new-instance v0, Lcom/android/systemui/recents/BaseRecentsImpl$3;

    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/recents/BaseRecentsImpl$3;-><init>(Lcom/android/systemui/recents/BaseRecentsImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mCloudDataObserver:Landroid/database/ContentObserver;

    .line 593
    new-instance v0, Lcom/android/systemui/recents/BaseRecentsImpl$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/BaseRecentsImpl$4;-><init>(Lcom/android/systemui/recents/BaseRecentsImpl;)V

    iput-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mActivityStateObserver:Landroid/app/IMiuiActivityObserver;

    .line 629
    iput-boolean v5, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mIsInAnotherPro:Z

    .line 631
    new-instance v0, Lcom/android/systemui/recents/BaseRecentsImpl$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/BaseRecentsImpl$5;-><init>(Lcom/android/systemui/recents/BaseRecentsImpl;)V

    iput-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 674
    new-instance v0, Lcom/android/systemui/recents/BaseRecentsImpl$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/BaseRecentsImpl$6;-><init>(Lcom/android/systemui/recents/BaseRecentsImpl;)V

    iput-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mFsgReceiver:Landroid/content/BroadcastReceiver;

    .line 688
    iput-boolean v5, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->isShowing:Z

    .line 689
    iput-boolean v5, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mHasRegistedInput:Z

    .line 809
    new-instance v0, Lcom/android/systemui/recents/BaseRecentsImpl$7;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/recents/BaseRecentsImpl$7;-><init>(Lcom/android/systemui/recents/BaseRecentsImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mForceImmersiveNavBarListener:Landroid/database/ContentObserver;

    .line 857
    new-instance v0, Lcom/android/systemui/recents/BaseRecentsImpl$8;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/recents/BaseRecentsImpl$8;-><init>(Lcom/android/systemui/recents/BaseRecentsImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mAppSwitchAnimChangeListener:Landroid/database/ContentObserver;

    .line 873
    new-instance v1, Lcom/android/systemui/recents/BaseRecentsImpl$9;

    sget-object v0, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/recents/BaseRecentsImpl$9;-><init>(Lcom/android/systemui/recents/BaseRecentsImpl;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mDriveModeObserver:Landroid/database/ContentObserver;

    .line 1745
    iput-boolean v5, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mIsStartRecent:Z

    .line 259
    iput-object p1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    .line 260
    new-instance v0, Lcom/android/systemui/recents/BaseRecentsImpl$H;

    invoke-direct {v0, p0, v4}, Lcom/android/systemui/recents/BaseRecentsImpl$H;-><init>(Lcom/android/systemui/recents/BaseRecentsImpl;Lcom/android/systemui/recents/BaseRecentsImpl$H;)V

    iput-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    .line 262
    const-string/jumbo v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mKM:Landroid/app/KeyguardManager;

    .line 264
    invoke-static {}, Lcom/android/systemui/recents/misc/ForegroundThread;->get()Lcom/android/systemui/recents/misc/ForegroundThread;

    .line 267
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v7

    .line 268
    .local v7, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v7}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTaskStackListener()Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mTaskStackListener:Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;

    .line 269
    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mTaskStackListener:Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;

    invoke-virtual {v7, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->registerTaskStackListener(Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;)V

    .line 272
    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 273
    .local v6, "inflater":Landroid/view/LayoutInflater;
    new-instance v0, Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/views/TaskStackView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    .line 274
    const v0, 0x90400da

    invoke-virtual {v6, v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/TaskViewHeader;

    iput-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    .line 276
    invoke-direct {p0}, Lcom/android/systemui/recents/BaseRecentsImpl;->reloadResources()V

    .line 277
    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->registerMiuiTaskResizeList(Landroid/content/Context;)V

    .line 279
    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mWindowManager:Landroid/view/WindowManager;

    .line 281
    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 280
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mIWindowManager:Landroid/view/IWindowManager;

    .line 282
    invoke-direct {p0}, Lcom/android/systemui/recents/BaseRecentsImpl;->addFsgGestureWindow()V

    .line 284
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 285
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "com.android.systemui.taskmanager.Clear"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mRecentsReceiver:Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 289
    invoke-virtual {p0}, Lcom/android/systemui/recents/BaseRecentsImpl;->registerMiuiGestureControlHelper()V

    .line 258
    return-void
.end method

.method private adaptToTopActivity()V
    .locals 5

    .prologue
    .line 767
    invoke-static {}, Lmiui/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {}, Lmiui/securityspace/CrossUserUtils;->getCurrentUserId()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 769
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 770
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 771
    .local v1, "cn":Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/BaseRecentsImpl;->onResumed(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 766
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v1    # "cn":Landroid/content/ComponentName;
    :cond_0
    :goto_0
    return-void

    .line 772
    :catch_0
    move-exception v2

    .line 773
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private addBackStubWindow()V
    .locals 1

    .prologue
    .line 849
    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mGestureStubLeft:Lcom/android/systemui/fsgesture/GestureStubView;

    if-nez v0, :cond_0

    .line 850
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/BaseRecentsImpl;->initGestureStub(I)V

    .line 852
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mGestureStubLeft:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-virtual {v0}, Lcom/android/systemui/fsgesture/GestureStubView;->showGestureStub()V

    .line 853
    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mGestureStubRight:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-virtual {v0}, Lcom/android/systemui/fsgesture/GestureStubView;->showGestureStub()V

    .line 854
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->isShowing:Z

    .line 848
    return-void
.end method

.method private addFsgGestureWindow()V
    .locals 17

    .prologue
    .line 451
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mHasNavigationBar:Z

    .line 453
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mIWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v1}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mHasNavigationBar:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 457
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mHasNavigationBar:Z

    if-eqz v1, :cond_2

    .line 458
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "systemui_fsg_version"

    const/16 v3, 0xa

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 460
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 461
    const-string/jumbo v2, "force_fsg_nav_bar"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mForceImmersiveNavBarListener:Landroid/database/ContentObserver;

    const/4 v5, 0x0

    const/4 v6, -0x1

    .line 460
    invoke-virtual {v1, v2, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 462
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 463
    sget-object v2, Lcom/android/systemui/miui/statusbar/CloudDataHelper;->URI_CLOUD_ALL_DATA_NOTIFY:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mCloudDataObserver:Landroid/database/ContentObserver;

    const/4 v5, 0x0

    .line 462
    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 464
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 465
    const-string/jumbo v2, "drive_mode_drive_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mDriveModeObserver:Landroid/database/ContentObserver;

    const/4 v5, 0x0

    .line 464
    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 466
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 467
    const-string/jumbo v2, "show_gesture_appswitch_feature"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mAppSwitchAnimChangeListener:Landroid/database/ContentObserver;

    const/4 v5, 0x0

    const/4 v6, -0x1

    .line 466
    invoke-virtual {v1, v2, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 469
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 470
    .local v4, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 471
    const-string/jumbo v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 472
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 473
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 472
    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 475
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 476
    .local v8, "fsgFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.android.systemui.fsgesture"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 477
    const-string/jumbo v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 478
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mFsgReceiver:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 479
    const-string/jumbo v9, "miui.permission.USE_INTERNAL_GENERAL_API"

    const/4 v10, 0x0

    .line 478
    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 481
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 482
    .local v14, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/app/ActivityManagerCompat;->getService()Landroid/app/IActivityManager;

    move-result-object v11

    .line 483
    .local v11, "activityManager":Landroid/app/IActivityManager;
    if-nez v11, :cond_0

    .line 484
    return-void

    .line 487
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mActivityStateObserver:Landroid/app/IMiuiActivityObserver;

    invoke-interface {v11, v1, v14}, Landroid/app/IActivityManager;->registerActivityObserver(Landroid/app/IMiuiActivityObserver;Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 492
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/recents/BaseRecentsImpl;->readCloudDataForFsg()V

    .line 494
    const/16 v16, 0xd

    .line 495
    .local v16, "size":I
    const-string/jumbo v1, "lithium"

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 496
    const/16 v16, 0xe

    .line 498
    :cond_1
    move/from16 v0, v16

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mStubSize:I

    .line 499
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 500
    const-string/jumbo v2, "force_fsg_nav_bar"

    .line 499
    invoke-static {v1, v2}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v15

    .line 501
    .local v15, "isOpen":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 502
    const-string/jumbo v2, "drive_mode_drive_mode"

    const/4 v3, 0x0

    .line 501
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 502
    const/4 v2, 0x1

    .line 501
    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mDisabledByDriveMode:Z

    .line 503
    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mDisabledByDriveMode:Z

    if-eqz v1, :cond_4

    .line 450
    .end local v4    # "filter":Landroid/content/IntentFilter;
    .end local v8    # "fsgFilter":Landroid/content/IntentFilter;
    .end local v11    # "activityManager":Landroid/app/IActivityManager;
    .end local v14    # "intent":Landroid/content/Intent;
    .end local v15    # "isOpen":Z
    .end local v16    # "size":I
    :cond_2
    :goto_3
    return-void

    .line 488
    .restart local v4    # "filter":Landroid/content/IntentFilter;
    .restart local v8    # "fsgFilter":Landroid/content/IntentFilter;
    .restart local v11    # "activityManager":Landroid/app/IActivityManager;
    .restart local v14    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v12

    .line 489
    .local v12, "e":Landroid/os/RemoteException;
    invoke-virtual {v12}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 501
    .end local v12    # "e":Landroid/os/RemoteException;
    .restart local v15    # "isOpen":Z
    .restart local v16    # "size":I
    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    .line 504
    :cond_4
    const-string/jumbo v1, "RecentsImpl"

    const-string/jumbo v2, "navstubview will be added: addFsgGestureWindow"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    new-instance v1, Lcom/android/systemui/statusbar/phone/NavStubView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/NavStubView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mNavStubView:Lcom/android/systemui/statusbar/phone/NavStubView;

    .line 506
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mWindowManager:Landroid/view/WindowManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mNavStubView:Lcom/android/systemui/statusbar/phone/NavStubView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mNavStubView:Lcom/android/systemui/statusbar/phone/NavStubView;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mStubSize:I

    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/phone/NavStubView;->getWindowParam(I)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 454
    .end local v4    # "filter":Landroid/content/IntentFilter;
    .end local v8    # "fsgFilter":Landroid/content/IntentFilter;
    .end local v11    # "activityManager":Landroid/app/IActivityManager;
    .end local v14    # "intent":Landroid/content/Intent;
    .end local v15    # "isOpen":Z
    .end local v16    # "size":I
    :catch_1
    move-exception v13

    .local v13, "ex":Landroid/os/RemoteException;
    goto/16 :goto_0
.end method

.method private calculateWindowStableInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "inOutInsets"    # Landroid/graphics/Rect;
    .param p2, "windowRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1365
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 1368
    .local v1, "displayRect":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1369
    .local v0, "appRect":Landroid/graphics/Rect;
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/recents/BaseRecentsImpl;->inset(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1372
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1373
    .local v2, "windowRectWithInsets":Landroid/graphics/Rect;
    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 1374
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 1375
    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v4, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->top:I

    .line 1376
    iget v3, p2, Landroid/graphics/Rect;->right:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 1377
    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 1364
    return-void
.end method

.method private clearBackStubWindow()V
    .locals 2

    .prologue
    .line 792
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mGestureStubLeft:Lcom/android/systemui/fsgesture/GestureStubView;

    if-eqz v1, :cond_0

    .line 793
    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mGestureStubLeft:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-virtual {v1}, Lcom/android/systemui/fsgesture/GestureStubView;->clearGestureStub()V

    .line 794
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mGestureStubLeft:Lcom/android/systemui/fsgesture/GestureStubView;

    .line 796
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mGestureStubRight:Lcom/android/systemui/fsgesture/GestureStubView;

    if-eqz v1, :cond_1

    .line 797
    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mGestureStubRight:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-virtual {v1}, Lcom/android/systemui/fsgesture/GestureStubView;->clearGestureStub()V

    .line 798
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mGestureStubRight:Lcom/android/systemui/fsgesture/GestureStubView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 804
    :cond_1
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->isShowing:Z

    .line 805
    invoke-direct {p0}, Lcom/android/systemui/recents/BaseRecentsImpl;->unRegisterInputMethodVisibleHeightReceiver()V

    .line 790
    return-void

    .line 800
    :catch_0
    move-exception v0

    .line 801
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static consumeInstanceLoadPlan()Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    .locals 2

    .prologue
    .line 1271
    sget-object v0, Lcom/android/systemui/recents/BaseRecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    .line 1272
    .local v0, "plan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    const/4 v1, 0x0

    sput-object v1, Lcom/android/systemui/recents/BaseRecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    .line 1273
    return-object v0
.end method

.method private getLaunchTargetTaskViewRect(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/systemui/recents/views/TaskStackView;Landroid/graphics/Rect;Lcom/android/systemui/recents/model/Task;)Landroid/graphics/RectF;
    .locals 4
    .param p1, "runningTask"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "stackView"    # Lcom/android/systemui/recents/views/TaskStackView;
    .param p3, "windowOverrideRect"    # Landroid/graphics/Rect;
    .param p4, "toTask"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 1517
    invoke-virtual {p0, p2, p4, p3}, Lcom/android/systemui/recents/BaseRecentsImpl;->getThumbnailTransitionTransform(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v1

    .line 1519
    .local v1, "toTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    iget-object v0, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    .line 1520
    .local v0, "toTaskRect":Landroid/graphics/RectF;
    iget v2, v0, Landroid/graphics/RectF;->top:F

    sget v3, Lcom/android/systemui/recents/BaseRecentsImpl;->mTaskBarHeight:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 1521
    return-object v0
.end method

.method private getWindowRectOverride(I)Landroid/graphics/Rect;
    .locals 7
    .param p1, "growTarget"    # I

    .prologue
    .line 1632
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1633
    const/4 v0, 0x0

    return-object v0

    .line 1635
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1636
    .local v2, "result":Landroid/graphics/Rect;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v6

    .line 1638
    .local v6, "displayRect":Landroid/graphics/Rect;
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 1639
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDockedDividerSize(Landroid/content/Context;)I

    move-result v5

    .line 1637
    const/4 v1, 0x4

    move v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/internal/policy/DockedDividerUtils;->calculateBoundsForPosition(IILandroid/graphics/Rect;III)V

    .line 1640
    return-object v2
.end method

.method private hideBackStubWindow()V
    .locals 1

    .prologue
    .line 778
    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mGestureStubLeft:Lcom/android/systemui/fsgesture/GestureStubView;

    if-eqz v0, :cond_0

    .line 779
    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mGestureStubLeft:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-virtual {v0}, Lcom/android/systemui/fsgesture/GestureStubView;->hideGestureStubDelay()V

    .line 782
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mGestureStubRight:Lcom/android/systemui/fsgesture/GestureStubView;

    if-eqz v0, :cond_1

    .line 783
    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mGestureStubRight:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-virtual {v0}, Lcom/android/systemui/fsgesture/GestureStubView;->hideGestureStubDelay()V

    .line 786
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->isShowing:Z

    .line 787
    invoke-direct {p0}, Lcom/android/systemui/recents/BaseRecentsImpl;->unRegisterInputMethodVisibleHeightReceiver()V

    .line 777
    return-void
.end method

.method private initGestureStub(I)V
    .locals 5
    .param p1, "stubSize"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 729
    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "show_gesture_appswitch_feature"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 730
    .local v0, "isAppSwitchEnabled":Z
    :goto_0
    new-instance v1, Lcom/android/systemui/fsgesture/GestureStubView;

    iget-object v4, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/android/systemui/fsgesture/GestureStubView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mGestureStubLeft:Lcom/android/systemui/fsgesture/GestureStubView;

    .line 731
    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mGestureStubLeft:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/fsgesture/GestureStubView;->setGestureStubPosition(I)V

    .line 732
    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mGestureStubLeft:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-virtual {v1, v3}, Lcom/android/systemui/fsgesture/GestureStubView;->enableGestureBackAnimation(Z)V

    .line 733
    iget-object v4, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mGestureStubLeft:Lcom/android/systemui/fsgesture/GestureStubView;

    if-eqz v0, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Lcom/android/systemui/fsgesture/GestureStubView;->disableQuickSwitch(Z)V

    .line 735
    new-instance v1, Lcom/android/systemui/fsgesture/GestureStubView;

    iget-object v4, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/android/systemui/fsgesture/GestureStubView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mGestureStubRight:Lcom/android/systemui/fsgesture/GestureStubView;

    .line 736
    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mGestureStubRight:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-virtual {v1, v3}, Lcom/android/systemui/fsgesture/GestureStubView;->setGestureStubPosition(I)V

    .line 737
    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mGestureStubRight:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-virtual {v1, v3}, Lcom/android/systemui/fsgesture/GestureStubView;->enableGestureBackAnimation(Z)V

    .line 738
    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mGestureStubRight:Lcom/android/systemui/fsgesture/GestureStubView;

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {v1, v2}, Lcom/android/systemui/fsgesture/GestureStubView;->disableQuickSwitch(Z)V

    .line 739
    invoke-direct {p0}, Lcom/android/systemui/recents/BaseRecentsImpl;->adaptToTopActivity()V

    .line 728
    return-void

    .line 729
    .end local v0    # "isAppSwitchEnabled":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "isAppSwitchEnabled":Z
    goto :goto_0

    :cond_1
    move v1, v3

    .line 733
    goto :goto_1

    :cond_2
    move v2, v3

    .line 738
    goto :goto_2
.end method

.method private inset(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "source"    # Landroid/graphics/Rect;
    .param p2, "insets"    # Landroid/graphics/Rect;

    .prologue
    .line 1388
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 1389
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 1390
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 1391
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 1387
    return-void
.end method

.method private preloadIcon(I)V
    .locals 4
    .param p1, "runningTaskId"    # I

    .prologue
    .line 1399
    new-instance v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v0}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    .line 1400
    .local v0, "launchOpts":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    iput p1, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->runningTaskId:I

    .line 1401
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->loadThumbnails:Z

    .line 1402
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadForCache:Z

    .line 1403
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/systemui/recents/BaseRecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;)V

    .line 1397
    return-void
.end method

.method private readCloudDataForFsg()V
    .locals 4

    .prologue
    .line 519
    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "ykrq"

    const-string/jumbo v2, "no_back_gesture_only"

    const-string/jumbo v3, ""

    invoke-static {v0, v1, v2, v3}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mNoBackActListStr:Ljava/lang/String;

    .line 520
    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mNoBackActListStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    const-string/jumbo v0, "com.miui.home.launcher.Launcher"

    iput-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mNoBackActListStr:Ljava/lang/String;

    .line 523
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "ykrq"

    const-string/jumbo v2, "ho_home_gesture_only"

    const-string/jumbo v3, ""

    invoke-static {v0, v1, v2, v3}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mNoHomeActListStr:Ljava/lang/String;

    .line 524
    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "ykrq"

    const-string/jumbo v2, "no_back_and_home"

    const-string/jumbo v3, ""

    invoke-static {v0, v1, v2, v3}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mNoBackAndHomeActListStr:Ljava/lang/String;

    .line 525
    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "ykrq"

    const-string/jumbo v2, "hot_zone_change"

    const-string/jumbo v3, ""

    invoke-static {v0, v1, v2, v3}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mHotZoneChangeActListStr:Ljava/lang/String;

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mNoBackAndHomeActListStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "com.android.systemui.fsgesture.DemoIntroduceAct:com.android.systemui.sliderpanel.SliderPanelActivity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mNoBackAndHomeActListStr:Ljava/lang/String;

    .line 518
    return-void
.end method

.method private registerInputMethodVisibleHeightReceiver()V
    .locals 6

    .prologue
    .line 293
    iget-boolean v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mHasRegistedInput:Z

    if-eqz v0, :cond_0

    .line 294
    return-void

    .line 297
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mHasRegistedInput:Z

    .line 299
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 300
    .local v3, "inputFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "miui.intent.action.INPUT_METHOD_VISIBLE_HEIGHT_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mInputMethodVisibleHeightChangeReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 302
    const-string/jumbo v4, "miui.permission.USE_INTERNAL_GENERAL_API"

    const/4 v5, 0x0

    .line 301
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 292
    return-void
.end method

.method private reloadResources()V
    .locals 8

    .prologue
    const v4, 0x90f01e3

    const v1, 0x90f01e2

    .line 1280
    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 1283
    .local v7, "res":Landroid/content/res/Resources;
    const v0, 0x105001b

    .line 1282
    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mStatusBarHeight:I

    .line 1285
    const v0, 0x105001c

    .line 1284
    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mNavBarHeight:I

    .line 1287
    const v0, 0x105001e

    .line 1286
    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mNavBarWidth:I

    .line 1288
    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    move v2, v1

    move v3, v1

    move v5, v1

    move v6, v4

    invoke-static/range {v0 .. v6}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getDimensionForDevice(Landroid/content/Context;IIIIII)I

    move-result v0

    sput v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mTaskBarHeight:I

    .line 1279
    return-void
.end method

.method private sendChangeBackGestureSizeIsNeeded()V
    .locals 4

    .prologue
    const/16 v3, 0xad9

    .line 743
    iget-boolean v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mIsSizeReset:Z

    if-nez v1, :cond_0

    .line 744
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mIsSizeReset:Z

    .line 746
    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 747
    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xb3d

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 748
    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 750
    .local v0, "defaultSizeMsg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 742
    .end local v0    # "defaultSizeMsg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private sendResetBackGestureSizeIsNeeded()V
    .locals 4

    .prologue
    const/16 v3, 0xb3d

    .line 755
    iget-boolean v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mIsSizeReset:Z

    if-eqz v1, :cond_0

    .line 756
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mIsSizeReset:Z

    .line 758
    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xad9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 759
    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 760
    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 762
    .local v0, "normalSizeMsg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 754
    .end local v0    # "normalSizeMsg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private showBackStubWindow()V
    .locals 1

    .prologue
    .line 707
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/BaseRecentsImpl;->showBackStubWindow(I)V

    .line 706
    return-void
.end method

.method private showBackStubWindow(I)V
    .locals 3
    .param p1, "stubSize"    # I

    .prologue
    .line 711
    iget-boolean v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mHasNavigationBar:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mDisabledByDriveMode:Z

    if-eqz v1, :cond_1

    .line 710
    :cond_0
    :goto_0
    return-void

    .line 712
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 713
    const-string/jumbo v2, "force_fsg_nav_bar"

    .line 712
    invoke-static {v1, v2}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 714
    .local v0, "isOpen":Z
    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mGestureStubLeft:Lcom/android/systemui/fsgesture/GestureStubView;

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    .line 715
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/BaseRecentsImpl;->initGestureStub(I)V

    .line 717
    :cond_2
    if-eqz v0, :cond_3

    .line 718
    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mGestureStubLeft:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-virtual {v1}, Lcom/android/systemui/fsgesture/GestureStubView;->showGestureStub()V

    .line 719
    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mGestureStubRight:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-virtual {v1}, Lcom/android/systemui/fsgesture/GestureStubView;->showGestureStub()V

    .line 720
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->isShowing:Z

    .line 721
    invoke-direct {p0}, Lcom/android/systemui/recents/BaseRecentsImpl;->registerInputMethodVisibleHeightReceiver()V

    goto :goto_0

    .line 723
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/recents/BaseRecentsImpl;->hideBackStubWindow()V

    goto :goto_0
.end method

.method private showToast(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1061
    return-void
.end method

.method private startRecentsActivity(Landroid/app/ActivityOptions;Lcom/android/systemui/recents/RecentsActivityLaunchState;)V
    .locals 5
    .param p1, "opts"    # Landroid/app/ActivityOptions;
    .param p2, "launchState"    # Lcom/android/systemui/recents/RecentsActivityLaunchState;

    .prologue
    .line 1648
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1649
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.android.systemui"

    const-string/jumbo v3, "com.android.systemui.recents.RecentsActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1650
    const v2, 0x10884000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1654
    const-string/jumbo v2, "launchState"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1656
    if-eqz p1, :cond_0

    .line 1657
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 1661
    :goto_0
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/activity/RecentsActivityStartingEvent;

    invoke-direct {v3}, Lcom/android/systemui/recents/events/activity/RecentsActivityStartingEvent;-><init>()V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    .line 1646
    :goto_1
    return-void

    .line 1659
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1662
    :catch_0
    move-exception v0

    .line 1663
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v2, "RecentsImpl"

    const-string/jumbo v3, "startRecentsActivity"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private unRegisterInputMethodVisibleHeightReceiver()V
    .locals 2

    .prologue
    .line 306
    iget-boolean v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mHasRegistedInput:Z

    if-nez v0, :cond_0

    .line 307
    return-void

    .line 310
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mHasRegistedInput:Z

    .line 311
    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mInputMethodVisibleHeightChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 305
    return-void
.end method

.method private updateFsgWindowState()V
    .locals 6

    .prologue
    .line 819
    iget-boolean v2, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mHasNavigationBar:Z

    if-nez v2, :cond_0

    .line 820
    return-void

    .line 822
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 823
    const-string/jumbo v3, "force_fsg_nav_bar"

    .line 822
    invoke-static {v2, v3}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    .line 824
    .local v1, "isOpen":Z
    if-eqz v1, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mDisabledByDriveMode:Z

    if-eqz v2, :cond_3

    .line 837
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mNavStubView:Lcom/android/systemui/statusbar/phone/NavStubView;

    if-eqz v2, :cond_2

    .line 838
    const-string/jumbo v2, "RecentsImpl"

    const-string/jumbo v3, "navstubview will be removed: updateFsgWindowState"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    iget-object v2, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mNavStubView:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-interface {v2, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 840
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mNavStubView:Lcom/android/systemui/statusbar/phone/NavStubView;

    .line 842
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/recents/BaseRecentsImpl;->clearBackStubWindow()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 818
    :goto_0
    return-void

    .line 826
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mNavStubView:Lcom/android/systemui/statusbar/phone/NavStubView;

    if-nez v2, :cond_4

    .line 827
    const-string/jumbo v2, "RecentsImpl"

    const-string/jumbo v3, "navstubview will be added: updateFsgWindowState"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    new-instance v2, Lcom/android/systemui/statusbar/phone/NavStubView;

    iget-object v3, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/systemui/statusbar/phone/NavStubView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mNavStubView:Lcom/android/systemui/statusbar/phone/NavStubView;

    .line 829
    iget-object v2, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mNavStubView:Lcom/android/systemui/statusbar/phone/NavStubView;

    iget-object v4, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mNavStubView:Lcom/android/systemui/statusbar/phone/NavStubView;

    iget v5, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mStubSize:I

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/NavStubView;->getWindowParam(I)Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 831
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/recents/BaseRecentsImpl;->addBackStubWindow()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 832
    :catch_0
    move-exception v0

    .line 833
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 843
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 844
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private updateFsgWindowVisibilityState(ZLjava/lang/String;)V
    .locals 5
    .param p1, "isEnter"    # Z
    .param p2, "typeFrom"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1687
    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mNavStubView:Lcom/android/systemui/statusbar/phone/NavStubView;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mIsInAnotherPro:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1688
    const-string/jumbo v1, "force_fsg_nav_bar"

    .line 1687
    invoke-static {v0, v1}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1693
    if-eqz p1, :cond_6

    .line 1694
    iput-object p2, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mCurType:Ljava/lang/String;

    .line 1695
    const-string/jumbo v0, "typefrom_demo"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1698
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mNavStubView:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/NavStubView;->setVisibility(I)V

    .line 1699
    invoke-direct {p0}, Lcom/android/systemui/recents/BaseRecentsImpl;->hideBackStubWindow()V

    .line 1686
    :goto_0
    return-void

    .line 1689
    :cond_1
    return-void

    .line 1695
    :cond_2
    const-string/jumbo v0, "typefrom_keyguard"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "typefrom_provision"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1703
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mNavStubView:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/NavStubView;->setVisibility(I)V

    .line 1704
    invoke-direct {p0}, Lcom/android/systemui/recents/BaseRecentsImpl;->showBackStubWindow()V

    goto :goto_0

    .line 1695
    :cond_4
    const-string/jumbo v0, "typefrom_status_bar_expansion"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "typefrom_home"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1708
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mNavStubView:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NavStubView;->setVisibility(I)V

    .line 1709
    invoke-direct {p0}, Lcom/android/systemui/recents/BaseRecentsImpl;->showBackStubWindow()V

    goto :goto_0

    .line 1713
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mCurType:Ljava/lang/String;

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1714
    return-void

    .line 1716
    :cond_7
    iput-object v4, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mCurType:Ljava/lang/String;

    .line 1718
    const-string/jumbo v0, "typefrom_keyguard"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mKM:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1719
    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mNavStubView:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NavStubView;->setVisibility(I)V

    .line 1720
    invoke-direct {p0}, Lcom/android/systemui/recents/BaseRecentsImpl;->showBackStubWindow()V

    .line 1721
    return-void

    .line 1724
    :cond_8
    invoke-direct {p0}, Lcom/android/systemui/recents/BaseRecentsImpl;->adaptToTopActivity()V

    goto :goto_0
.end method

.method private updateHeaderBarLayout(Lcom/android/systemui/recents/model/TaskStack;Landroid/graphics/Rect;)V
    .locals 12
    .param p1, "stack"    # Lcom/android/systemui/recents/model/TaskStack;
    .param p2, "windowRectOverride"    # Landroid/graphics/Rect;

    .prologue
    const/4 v11, 0x0

    .line 1307
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v7

    .line 1308
    .local v7, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v7}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 1309
    .local v1, "displayRect":Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 1310
    .local v8, "systemInsets":Landroid/graphics/Rect;
    invoke-virtual {v7, v8}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getStableInsets(Landroid/graphics/Rect;)V

    .line 1311
    if-eqz p2, :cond_5

    .line 1312
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1317
    .local v2, "windowRect":Landroid/graphics/Rect;
    :goto_0
    invoke-virtual {v7}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasDockedTask()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1318
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget v4, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 1319
    iput v11, v8, Landroid/graphics/Rect;->bottom:I

    .line 1321
    :cond_0
    invoke-direct {p0, v8, v2}, Lcom/android/systemui/recents/BaseRecentsImpl;->calculateWindowStableInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1322
    invoke-virtual {v2, v11, v11}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1324
    iget-object v3, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v0

    .line 1327
    .local v0, "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    invoke-virtual {v0, v8}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->setSystemInsets(Landroid/graphics/Rect;)Z

    .line 1328
    if-eqz p1, :cond_4

    .line 1329
    iget v3, v8, Landroid/graphics/Rect;->top:I

    iget v4, v8, Landroid/graphics/Rect;->left:I

    .line 1330
    iget v5, v8, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mTaskStackBounds:Landroid/graphics/Rect;

    .line 1329
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getTaskStackBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;IIILandroid/graphics/Rect;)V

    .line 1331
    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->reset()V

    .line 1332
    iget-object v3, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mTaskStackBounds:Landroid/graphics/Rect;

    .line 1333
    invoke-static {p1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;->getStackStateForStack(Lcom/android/systemui/recents/model/TaskStack;)Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

    move-result-object v4

    .line 1332
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->initialize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;)V

    .line 1334
    iget-object v3, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3, p1, v11}, Lcom/android/systemui/recents/views/TaskStackView;->setTasks(Lcom/android/systemui/recents/model/TaskStack;Z)V

    .line 1336
    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getUntransformedTaskViewBounds()Landroid/graphics/Rect;

    move-result-object v9

    .line 1337
    .local v9, "taskViewBounds":Landroid/graphics/Rect;
    invoke-virtual {v9}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1338
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v10

    .line 1339
    .local v10, "taskViewWidth":I
    iget-object v4, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mHeaderBarLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1340
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredWidth()I

    move-result v3

    if-ne v3, v10, :cond_1

    .line 1341
    iget-object v3, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredHeight()I

    move-result v3

    sget v5, Lcom/android/systemui/recents/BaseRecentsImpl;->mTaskBarHeight:I

    if-eq v3, v5, :cond_2

    .line 1342
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    .line 1343
    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v10, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 1344
    sget v6, Lcom/android/systemui/recents/BaseRecentsImpl;->mTaskBarHeight:I

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v6, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1342
    invoke-virtual {v3, v5, v6}, Lcom/android/systemui/recents/views/TaskViewHeader;->measure(II)V

    .line 1346
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    sget v5, Lcom/android/systemui/recents/BaseRecentsImpl;->mTaskBarHeight:I

    const/4 v6, 0x0

    const/4 v11, 0x0

    invoke-virtual {v3, v6, v11, v10, v5}, Lcom/android/systemui/recents/views/TaskViewHeader;->layout(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 1350
    iget-object v3, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mThumbTransitionBitmapCache:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_3

    .line 1351
    iget-object v3, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mThumbTransitionBitmapCache:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-eq v3, v10, :cond_6

    .line 1354
    :cond_3
    :goto_1
    sget v3, Lcom/android/systemui/recents/BaseRecentsImpl;->mTaskBarHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1353
    invoke-static {v10, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mThumbTransitionBitmapCache:Landroid/graphics/Bitmap;

    .line 1306
    .end local v9    # "taskViewBounds":Landroid/graphics/Rect;
    .end local v10    # "taskViewWidth":I
    :cond_4
    return-void

    .line 1313
    .end local v0    # "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    .end local v2    # "windowRect":Landroid/graphics/Rect;
    :cond_5
    invoke-virtual {v7}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getWindowRect()Landroid/graphics/Rect;

    move-result-object v2

    .restart local v2    # "windowRect":Landroid/graphics/Rect;
    goto/16 :goto_0

    .line 1339
    .restart local v0    # "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    .restart local v9    # "taskViewBounds":Landroid/graphics/Rect;
    .restart local v10    # "taskViewWidth":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 1352
    :cond_6
    iget-object v3, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mThumbTransitionBitmapCache:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget v4, Lcom/android/systemui/recents/BaseRecentsImpl;->mTaskBarHeight:I

    if-eq v3, v4, :cond_4

    goto :goto_1
.end method


# virtual methods
.method public cancelPreloadingRecents()V
    .locals 0

    .prologue
    .line 1092
    return-void
.end method

.method public dockTopTask(IIILandroid/graphics/Rect;)V
    .locals 9
    .param p1, "topTaskId"    # I
    .param p2, "dragMode"    # I
    .param p3, "stackCreateMode"    # I
    .param p4, "initialBounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 1246
    invoke-static {}, Lcom/android/systemui/recents/misc/Utilities;->supportsMultiWindow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1247
    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    const v1, 0x910057d

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1248
    return-void

    .line 1251
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v8

    .line 1255
    .local v8, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v8, p1, p3, p4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->moveTaskToDockedStack(IILandroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1256
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;

    invoke-direct {v2, p2, p4}, Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;-><init>(ILandroid/graphics/Rect;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    .line 1259
    if-nez p2, :cond_2

    move v2, v4

    .line 1263
    :goto_0
    const/4 v6, -0x1

    move-object v0, p0

    move v3, v1

    move v5, v1

    move v7, v1

    .line 1257
    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/recents/BaseRecentsImpl;->showRecents(ZZZZZIZ)V

    .line 1245
    :cond_1
    return-void

    :cond_2
    move v2, v1

    .line 1259
    goto :goto_0
.end method

.method protected getHomeTransitionActivityOptions()Landroid/app/ActivityOptions;
    .locals 5

    .prologue
    .line 1420
    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    .line 1423
    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    .line 1421
    const v2, 0x90500ab

    .line 1422
    const v3, 0x90500ac

    .line 1423
    const/4 v4, 0x0

    .line 1420
    invoke-static {v0, v2, v3, v1, v4}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method getThumbnailTransitionActivityOptions(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/systemui/recents/views/TaskStackView;Landroid/graphics/Rect;)Landroid/app/ActivityOptions;
    .locals 11
    .param p1, "runningTask"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "stackView"    # Lcom/android/systemui/recents/views/TaskStackView;
    .param p3, "windowOverrideRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v7, 0x0

    .line 1434
    new-instance v8, Lcom/android/systemui/recents/model/Task;

    invoke-direct {v8}, Lcom/android/systemui/recents/model/Task;-><init>()V

    .line 1435
    .local v8, "toTask":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {p0, p2, v8, p3}, Lcom/android/systemui/recents/BaseRecentsImpl;->getThumbnailTransitionTransform(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v10

    .line 1439
    .local v10, "toTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mThumbTransitionBitmapCache:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1440
    iget-object v9, v10, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    .line 1441
    .local v9, "toTaskRect":Landroid/graphics/RectF;
    iget v0, v9, Landroid/graphics/RectF;->top:F

    sget v1, Lcom/android/systemui/recents/BaseRecentsImpl;->mTaskBarHeight:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, v9, Landroid/graphics/RectF;->top:F

    .line 1442
    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    .line 1443
    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mThumbTransitionBitmapCache:Landroid/graphics/Bitmap;

    iget v2, v9, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v9, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    .line 1444
    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v5

    float-to-int v5, v5

    iget-object v6, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    .line 1442
    invoke-static/range {v0 .. v7}, Landroid/app/ActivityOptions;->makeThumbnailAspectScaleDownAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0

    .line 1447
    .end local v9    # "toTaskRect":Landroid/graphics/RectF;
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/BaseRecentsImpl;->getUnknownTransitionActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method getThumbnailTransitionTransform(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;
    .locals 7
    .param p1, "stackView"    # Lcom/android/systemui/recents/views/TaskStackView;
    .param p2, "runningTaskOut"    # Lcom/android/systemui/recents/model/Task;
    .param p3, "windowOverrideRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 1456
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v6

    .line 1457
    .local v6, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v6}, Lcom/android/systemui/recents/model/TaskStack;->getLaunchTarget()Lcom/android/systemui/recents/model/Task;

    move-result-object v1

    .line 1458
    .local v1, "launchTask":Lcom/android/systemui/recents/model/Task;
    if-eqz v1, :cond_0

    .line 1459
    invoke-virtual {p2, v1}, Lcom/android/systemui/recents/model/Task;->copyFrom(Lcom/android/systemui/recents/model/Task;)V

    .line 1471
    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    .line 1472
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskStackView;->updateToInitialState()V

    .line 1473
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v0

    .line 1474
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object v5, p3

    .line 1473
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransformScreenCoordinates(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 1475
    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    return-object v0

    .line 1462
    :cond_0
    invoke-virtual {v6, v0}, Lcom/android/systemui/recents/model/TaskStack;->getStackFrontMostTask(Z)Lcom/android/systemui/recents/model/Task;

    move-result-object v1

    .line 1463
    if-eqz v1, :cond_1

    .line 1464
    invoke-virtual {p2, v1}, Lcom/android/systemui/recents/model/Task;->copyFrom(Lcom/android/systemui/recents/model/Task;)V

    goto :goto_0

    .line 1466
    :cond_1
    return-object v4
.end method

.method protected getUnknownTransitionActivityOptions()Landroid/app/ActivityOptions;
    .locals 5

    .prologue
    .line 1410
    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    .line 1413
    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    .line 1411
    const v2, 0x90500ad

    .line 1412
    const v3, 0x90500ae

    .line 1413
    const/4 v4, 0x0

    .line 1410
    invoke-static {v0, v2, v3, v1, v4}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public hideRecents(ZZZ)V
    .locals 2
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHomeKey"    # Z
    .param p3, "triggeredFromFsGesture"    # Z

    .prologue
    .line 968
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 971
    invoke-virtual {p0}, Lcom/android/systemui/recents/BaseRecentsImpl;->showNextTask()V

    .line 974
    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->stopDozing()V

    .line 975
    return-void

    .line 980
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;-><init>(ZZZ)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/RecentsEventBus;->post(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    .line 967
    return-void
.end method

.method public onBootCompleted()V
    .locals 5

    .prologue
    .line 884
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    .line 885
    .local v1, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    iget-object v3, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v2

    .line 886
    .local v2, "plan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V

    .line 887
    new-instance v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v0}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    .line 888
    .local v0, "launchOpts":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    invoke-virtual {v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getIconCacheSize()I

    move-result v3

    iput v3, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    .line 889
    invoke-virtual {v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getThumbnailCacheSize()I

    move-result v3

    iput v3, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    .line 890
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadForCache:Z

    .line 891
    iget-object v3, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3, v2, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;)V

    .line 881
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/FsGestureEnterRecentsEvent;)V
    .locals 8
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/FsGestureEnterRecentsEvent;

    .prologue
    const/4 v1, 0x0

    .line 1730
    const/4 v6, -0x1

    const/4 v7, 0x1

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    .line 1729
    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/recents/BaseRecentsImpl;->showRecents(ZZZZZIZ)V

    .line 1728
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/FsGesturePreloadRecentsEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/FsGesturePreloadRecentsEvent;

    .prologue
    .line 1734
    invoke-virtual {p0}, Lcom/android/systemui/recents/BaseRecentsImpl;->preloadRecents()V

    .line 1733
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/FsGestureShowStateEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/FsGestureShowStateEvent;

    .prologue
    .line 1678
    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/FsGestureShowStateEvent;->isEnter:Z

    iget-object v1, p1, Lcom/android/systemui/recents/events/activity/FsGestureShowStateEvent;->typeFrom:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/recents/BaseRecentsImpl;->updateFsgWindowVisibilityState(ZLjava/lang/String;)V

    .line 1677
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/RotationChangedEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/RotationChangedEvent;

    .prologue
    .line 1742
    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/TaskStackView;->onBusEvent(Lcom/android/systemui/recents/events/activity/RotationChangedEvent;)V

    .line 1741
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/component/HideNavStubForBackWindow;)V
    .locals 0
    .param p1, "event"    # Lcom/android/systemui/recents/events/component/HideNavStubForBackWindow;

    .prologue
    .line 1738
    invoke-direct {p0}, Lcom/android/systemui/recents/BaseRecentsImpl;->hideBackStubWindow()V

    .line 1737
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;

    .prologue
    .line 1683
    iget-boolean v0, p1, Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;->visible:Z

    iput-boolean v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mRecentsVisible:Z

    .line 1682
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEndEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEndEvent;

    .prologue
    .line 1672
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/recents/BaseRecentsImpl;->sOneKeyCleaning:Z

    .line 1671
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEvent;

    .prologue
    .line 1668
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/systemui/recents/BaseRecentsImpl;->sOneKeyCleaning:Z

    .line 1667
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 1

    .prologue
    .line 895
    invoke-direct {p0}, Lcom/android/systemui/recents/BaseRecentsImpl;->reloadResources()V

    .line 896
    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->reloadOnConfigurationChange()V

    .line 897
    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->onConfigurationChanged()V

    .line 894
    return-void
.end method

.method public onDraggingInRecents(F)V
    .locals 2
    .param p1, "distanceFromTop"    # F

    .prologue
    .line 1097
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/DraggingInRecentsEvent;

    invoke-direct {v1, p1}, Lcom/android/systemui/recents/events/ui/DraggingInRecentsEvent;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/RecentsEventBus;->sendOntoMainThread(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    .line 1096
    return-void
.end method

.method public onDraggingInRecentsEnded(F)V
    .locals 2
    .param p1, "velocity"    # F

    .prologue
    .line 1101
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/DraggingInRecentsEndedEvent;

    invoke-direct {v1, p1}, Lcom/android/systemui/recents/events/ui/DraggingInRecentsEndedEvent;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/RecentsEventBus;->sendOntoMainThread(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    .line 1100
    return-void
.end method

.method public onResumed(Ljava/lang/String;)V
    .locals 5
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 530
    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mNavStubView:Lcom/android/systemui/statusbar/phone/NavStubView;

    if-nez v1, :cond_0

    .line 531
    return-void

    .line 534
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mLocalCtrlActs:[Ljava/lang/String;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    .line 535
    .local v0, "actName":Ljava/lang/String;
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 536
    return-void

    .line 534
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 540
    .end local v0    # "actName":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mNoBackActListStr:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 541
    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/recents/BaseRecentsImpl$11;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/BaseRecentsImpl$11;-><init>(Lcom/android/systemui/recents/BaseRecentsImpl;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 582
    :goto_1
    const-string/jumbo v1, "lithium"

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 583
    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mHotZoneChangeActListStr:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 584
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mFsgBackState:I

    .line 585
    invoke-direct {p0}, Lcom/android/systemui/recents/BaseRecentsImpl;->sendChangeBackGestureSizeIsNeeded()V

    .line 529
    :cond_3
    :goto_2
    return-void

    .line 550
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mNoHomeActListStr:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 551
    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/recents/BaseRecentsImpl$12;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/BaseRecentsImpl$12;-><init>(Lcom/android/systemui/recents/BaseRecentsImpl;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 560
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mNoBackAndHomeActListStr:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 561
    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/recents/BaseRecentsImpl$13;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/BaseRecentsImpl$13;-><init>(Lcom/android/systemui/recents/BaseRecentsImpl;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 571
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/recents/BaseRecentsImpl$14;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/BaseRecentsImpl$14;-><init>(Lcom/android/systemui/recents/BaseRecentsImpl;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 587
    :cond_7
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mFsgBackState:I

    .line 588
    invoke-direct {p0}, Lcom/android/systemui/recents/BaseRecentsImpl;->sendResetBackGestureSizeIsNeeded()V

    goto :goto_2
.end method

.method public onStartScreenPinning(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "taskId"    # I

    .prologue
    .line 915
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/Application;

    invoke-virtual {v2}, Lcom/android/systemui/Application;->getSystemUIApplication()Lcom/android/systemui/SystemUIApplication;

    move-result-object v0

    .line 916
    .local v0, "app":Lcom/android/systemui/SystemUIApplication;
    const-class v2, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, v2}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 917
    .local v1, "statusBar":Lcom/android/systemui/statusbar/phone/StatusBar;
    if-eqz v1, :cond_0

    .line 918
    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->showScreenPinningRequest(IZ)V

    .line 914
    :cond_0
    return-void
.end method

.method public onVisibilityChanged(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "visible"    # Z

    .prologue
    .line 906
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->setRecentsVisibility(Landroid/content/Context;Z)V

    .line 905
    return-void
.end method

.method public preloadRecents()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1068
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v4

    .line 1070
    .local v4, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    new-instance v0, Lcom/android/systemui/recents/model/MutableBoolean;

    invoke-direct {v0, v8}, Lcom/android/systemui/recents/model/MutableBoolean;-><init>(Z)V

    .line 1071
    .local v0, "isHomeStackVisible":Lcom/android/systemui/recents/model/MutableBoolean;
    invoke-virtual {v4, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible(Lcom/android/systemui/recents/model/MutableBoolean;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1072
    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    .line 1073
    .local v2, "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v2, :cond_1

    iget v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    .line 1074
    .local v3, "runningTaskId":I
    :goto_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    .line 1075
    .local v1, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    iget-object v6, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v6

    sput-object v6, Lcom/android/systemui/recents/BaseRecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    .line 1076
    sget-object v9, Lcom/android/systemui/recents/BaseRecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    iget-boolean v6, v0, Lcom/android/systemui/recents/model/MutableBoolean;->value:Z

    if-eqz v6, :cond_2

    move v6, v7

    :goto_1
    invoke-virtual {v9, v6}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->preloadRawTasks(Z)V

    .line 1077
    sget-object v6, Lcom/android/systemui/recents/BaseRecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    iget-boolean v9, v0, Lcom/android/systemui/recents/model/MutableBoolean;->value:Z

    if-eqz v9, :cond_3

    :goto_2
    invoke-virtual {v1, v6, v3, v7}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V

    .line 1078
    sget-object v6, Lcom/android/systemui/recents/BaseRecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    invoke-virtual {v6}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v5

    .line 1079
    .local v5, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v5}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 1082
    invoke-direct {p0, v3}, Lcom/android/systemui/recents/BaseRecentsImpl;->preloadIcon(I)V

    .line 1087
    invoke-direct {p0, v5, v10}, Lcom/android/systemui/recents/BaseRecentsImpl;->updateHeaderBarLayout(Lcom/android/systemui/recents/model/TaskStack;Landroid/graphics/Rect;)V

    .line 1065
    .end local v1    # "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    .end local v2    # "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v3    # "runningTaskId":I
    .end local v5    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    :cond_0
    return-void

    .line 1073
    .restart local v2    # "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "runningTaskId":I
    goto :goto_0

    .restart local v1    # "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    :cond_2
    move v6, v8

    .line 1076
    goto :goto_1

    :cond_3
    move v7, v8

    .line 1077
    goto :goto_2
.end method

.method public registerMiuiGestureControlHelper()V
    .locals 8

    .prologue
    .line 315
    invoke-static {}, Lmiui/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {}, Lmiui/securityspace/CrossUserUtils;->getCurrentUserId()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 316
    const-string/jumbo v3, "RecentsImpl"

    const-string/jumbo v4, "registerMiuiGestureControlHelper failed: userId is wrong."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    return-void

    .line 320
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mGestureControlHelper:Lcom/miui/internal/transition/IMiuiGestureControlHelper;

    if-nez v3, :cond_1

    .line 321
    new-instance v3, Lcom/android/systemui/recents/BaseRecentsImpl$10;

    invoke-direct {v3, p0}, Lcom/android/systemui/recents/BaseRecentsImpl$10;-><init>(Lcom/android/systemui/recents/BaseRecentsImpl;)V

    iput-object v3, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mGestureControlHelper:Lcom/miui/internal/transition/IMiuiGestureControlHelper;

    .line 392
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 393
    const-string/jumbo v4, "registerMiuiGestureControlHelper"

    .line 392
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    .line 393
    const-class v6, Lcom/miui/internal/transition/IMiuiGestureControlHelper;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 392
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 394
    .local v1, "registerMiuiGestureControlHelperMethod":Ljava/lang/reflect/Method;
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 395
    const-string/jumbo v4, "unregisterMiuiGestureControlHelper"

    .line 394
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 396
    .local v2, "unregisterMiuiGestureControlHelperMethod":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_2

    .line 397
    if-eqz v2, :cond_2

    .line 398
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mGestureControlHelper:Lcom/miui/internal/transition/IMiuiGestureControlHelper;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    .end local v1    # "registerMiuiGestureControlHelperMethod":Ljava/lang/reflect/Method;
    .end local v2    # "unregisterMiuiGestureControlHelperMethod":Ljava/lang/reflect/Method;
    :cond_2
    :goto_0
    return-void

    .line 401
    :catch_0
    move-exception v0

    .line 402
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public showNextTask()V
    .locals 15

    .prologue
    const/4 v13, 0x0

    .line 1108
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v7

    .line 1109
    .local v7, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v4

    .line 1110
    .local v4, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    iget-object v12, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v12}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v5

    .line 1111
    .local v5, "plan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    const/4 v12, -0x1

    invoke-virtual {v4, v5, v12, v13}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V

    .line 1112
    invoke-virtual {v5}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v0

    .line 1115
    .local v0, "focusedStack":Lcom/android/systemui/recents/model/TaskStack;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v12

    if-nez v12, :cond_1

    :cond_0
    return-void

    .line 1118
    :cond_1
    invoke-virtual {v7}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v6

    .line 1119
    .local v6, "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    if-nez v6, :cond_2

    return-void

    .line 1123
    :cond_2
    invoke-static {v6}, Landroid/app/ActivityManagerCompat;->getRunningTaskStackId(Landroid/app/ActivityManager$RunningTaskInfo;)I

    move-result v12

    .line 1122
    invoke-static {v12, v6}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isHomeOrRecentsStack(ILandroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v2

    .line 1124
    .local v2, "isRunningTaskInHomeStack":Z
    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v10

    .line 1125
    .local v10, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    const/4 v11, 0x0

    .line 1126
    .local v11, "toTask":Lcom/android/systemui/recents/model/Task;
    const/4 v3, 0x0

    .line 1127
    .local v3, "launchOpts":Landroid/app/ActivityOptions;
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 1128
    .local v9, "taskCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    add-int/lit8 v12, v9, -0x1

    if-ge v1, v12, :cond_3

    .line 1129
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/recents/model/Task;

    .line 1130
    .local v8, "task":Lcom/android/systemui/recents/model/Task;
    if-eqz v2, :cond_4

    .line 1131
    add-int/lit8 v12, v1, 0x1

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "toTask":Lcom/android/systemui/recents/model/Task;
    check-cast v11, Lcom/android/systemui/recents/model/Task;

    .line 1132
    .local v11, "toTask":Lcom/android/systemui/recents/model/Task;
    iget-object v12, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    .line 1133
    const v13, 0x90500b1

    .line 1134
    const v14, 0x90500aa

    .line 1132
    invoke-static {v12, v13, v14}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v3

    .line 1146
    .end local v3    # "launchOpts":Landroid/app/ActivityOptions;
    .end local v8    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v11    # "toTask":Lcom/android/systemui/recents/model/Task;
    :cond_3
    :goto_1
    if-nez v11, :cond_6

    .line 1148
    iget-object v12, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    .line 1149
    const v13, 0x90500b2

    .line 1148
    invoke-static {v12, v13}, Landroid/app/ActivityOptions;->makeCustomInPlaceAnimation(Landroid/content/Context;I)Landroid/app/ActivityOptions;

    move-result-object v12

    .line 1147
    invoke-virtual {v7, v12}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startInPlaceAnimationOnFrontMostApplication(Landroid/app/ActivityOptions;)V

    .line 1150
    return-void

    .line 1136
    .restart local v3    # "launchOpts":Landroid/app/ActivityOptions;
    .restart local v8    # "task":Lcom/android/systemui/recents/model/Task;
    .local v11, "toTask":Lcom/android/systemui/recents/model/Task;
    :cond_4
    iget-object v12, v8, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v12, v12, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    iget v13, v6, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    if-ne v12, v13, :cond_5

    .line 1137
    add-int/lit8 v12, v1, 0x1

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "toTask":Lcom/android/systemui/recents/model/Task;
    check-cast v11, Lcom/android/systemui/recents/model/Task;

    .line 1138
    .local v11, "toTask":Lcom/android/systemui/recents/model/Task;
    iget-object v12, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    .line 1139
    const v13, 0x90500b4

    .line 1140
    const v14, 0x90500b3

    .line 1138
    invoke-static {v12, v13, v14}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v3

    .local v3, "launchOpts":Landroid/app/ActivityOptions;
    goto :goto_1

    .line 1128
    .local v3, "launchOpts":Landroid/app/ActivityOptions;
    .local v11, "toTask":Lcom/android/systemui/recents/model/Task;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1154
    .end local v3    # "launchOpts":Landroid/app/ActivityOptions;
    .end local v8    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v11    # "toTask":Lcom/android/systemui/recents/model/Task;
    :cond_6
    iget-object v12, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    iget-object v13, v11, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v14, v11, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    invoke-virtual {v7, v12, v13, v14, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startActivityFromRecents(Landroid/content/Context;Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/String;Landroid/app/ActivityOptions;)Z

    .line 1107
    return-void
.end method

.method public showRecents(ZZZZZIZ)V
    .locals 10
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "draggingInRecents"    # Z
    .param p3, "animate"    # Z
    .param p4, "launchedWhileDockingTask"    # Z
    .param p5, "fromHome"    # Z
    .param p6, "growTarget"    # I
    .param p7, "fsGesture"    # Z

    .prologue
    .line 925
    iput-boolean p1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mTriggeredFromAltTab:Z

    .line 926
    iput-boolean p2, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mDraggingInRecents:Z

    .line 927
    iput-boolean p4, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mLaunchedWhileDocking:Z

    .line 928
    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->isAsleep()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 930
    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->stopDozing()V

    .line 950
    :cond_0
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v9

    .line 951
    .local v9, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    if-nez p4, :cond_4

    move v7, p2

    .line 952
    :goto_1
    new-instance v8, Lcom/android/systemui/recents/model/MutableBoolean;

    invoke-direct {v8, v7}, Lcom/android/systemui/recents/model/MutableBoolean;-><init>(Z)V

    .line 953
    .local v8, "isHomeStackVisible":Lcom/android/systemui/recents/model/MutableBoolean;
    sget-boolean v0, Lcom/android/systemui/recents/BaseRecentsImpl;->sOneKeyCleaning:Z

    if-eqz v0, :cond_5

    .line 954
    const v0, 0x910032a

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/BaseRecentsImpl;->showToast(I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 955
    return-void

    .line 931
    .end local v8    # "isHomeStackVisible":Lcom/android/systemui/recents/model/MutableBoolean;
    .end local v9    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 937
    if-nez p1, :cond_2

    .line 938
    return-void

    .line 940
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->stopDozing()V

    goto :goto_0

    .line 941
    :cond_3
    if-eqz p1, :cond_0

    .line 944
    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->startDozing()V

    .line 945
    return-void

    .line 951
    .restart local v9    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    :cond_4
    const/4 v7, 0x1

    .local v7, "forceVisible":Z
    goto :goto_1

    .line 957
    .end local v7    # "forceVisible":Z
    .restart local v8    # "isHomeStackVisible":Lcom/android/systemui/recents/model/MutableBoolean;
    :cond_5
    if-nez v7, :cond_6

    :try_start_1
    invoke-virtual {v9, v8}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible(Lcom/android/systemui/recents/model/MutableBoolean;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 924
    .end local v8    # "isHomeStackVisible":Lcom/android/systemui/recents/model/MutableBoolean;
    .end local v9    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    :goto_2
    return-void

    .line 958
    .restart local v8    # "isHomeStackVisible":Lcom/android/systemui/recents/model/MutableBoolean;
    .restart local v9    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    :cond_6
    invoke-virtual {v9}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    .line 959
    .local v1, "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-boolean v0, v8, Lcom/android/systemui/recents/model/MutableBoolean;->value:Z

    if-nez v0, :cond_7

    move v2, p5

    :goto_3
    move-object v0, p0

    move v3, p3

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/BaseRecentsImpl;->startRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;ZZIZ)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 962
    .end local v1    # "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v8    # "isHomeStackVisible":Lcom/android/systemui/recents/model/MutableBoolean;
    .end local v9    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    :catch_0
    move-exception v6

    .line 963
    .local v6, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v0, "RecentsImpl"

    const-string/jumbo v2, "Failed to launch RecentsActivity"

    invoke-static {v0, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 959
    .end local v6    # "e":Landroid/content/ActivityNotFoundException;
    .restart local v1    # "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    .restart local v8    # "isHomeStackVisible":Lcom/android/systemui/recents/model/MutableBoolean;
    .restart local v9    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    :cond_7
    const/4 v2, 0x1

    goto :goto_3
.end method

.method protected startRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;ZZIZ)V
    .locals 26
    .param p1, "runningTask"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "isHomeStackVisible"    # Z
    .param p3, "animate"    # Z
    .param p4, "growTarget"    # I
    .param p5, "fsGesture"    # Z

    .prologue
    .line 1529
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v9

    .line 1530
    .local v9, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    new-instance v6, Lcom/android/systemui/recents/RecentsActivityLaunchState;

    invoke-direct {v6}, Lcom/android/systemui/recents/RecentsActivityLaunchState;-><init>()V

    .line 1532
    .local v6, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    const-string/jumbo v22, "RecentsImpl"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "startRecentsActivity runningTask: "

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    if-eqz p1, :cond_7

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v21

    :goto_0
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mLaunchedWhileDocking:Z

    move/from16 v21, v0

    if-nez v21, :cond_8

    if-eqz p1, :cond_8

    .line 1535
    move-object/from16 v0, p1

    iget v12, v0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    .line 1541
    .local v12, "runningTaskId":I
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mLaunchedWhileDocking:Z

    move/from16 v21, v0

    if-nez v21, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mTriggeredFromAltTab:Z

    move/from16 v21, v0

    if-nez v21, :cond_0

    sget-object v21, Lcom/android/systemui/recents/BaseRecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    if-nez v21, :cond_1

    .line 1543
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v21

    sput-object v21, Lcom/android/systemui/recents/BaseRecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    .line 1545
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mLaunchedWhileDocking:Z

    move/from16 v21, v0

    if-nez v21, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mTriggeredFromAltTab:Z

    move/from16 v21, v0

    if-nez v21, :cond_9

    sget-object v21, Lcom/android/systemui/recents/BaseRecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->hasTasks()Z

    move-result v21

    if-eqz v21, :cond_9

    .line 1549
    :goto_2
    sget-object v21, Lcom/android/systemui/recents/BaseRecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v14

    .line 1550
    .local v14, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v14}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v21

    if-lez v21, :cond_b

    const/4 v5, 0x1

    .line 1551
    .local v5, "hasRecentTasks":Z
    :goto_3
    if-eqz p1, :cond_2

    if-eqz p2, :cond_c

    :cond_2
    const/16 v19, 0x0

    .line 1554
    .local v19, "useThumbnailTransition":Z
    :goto_4
    if-nez v19, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mLaunchedWhileDocking:Z

    move/from16 v21, v0

    if-eqz v21, :cond_d

    :cond_3
    const/16 v21, 0x0

    :goto_5
    move/from16 v0, v21

    iput-boolean v0, v6, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    .line 1555
    if-nez v19, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mLaunchedWhileDocking:Z

    move/from16 v21, v0

    :goto_6
    move/from16 v0, v21

    iput-boolean v0, v6, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    .line 1556
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mLaunchedWhileDocking:Z

    move/from16 v21, v0

    move/from16 v0, v21

    iput-boolean v0, v6, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    .line 1557
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mDraggingInRecents:Z

    move/from16 v21, v0

    move/from16 v0, v21

    iput-boolean v0, v6, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDragGesture:Z

    .line 1558
    iput v12, v6, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedToTaskId:I

    .line 1559
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mTriggeredFromAltTab:Z

    move/from16 v21, v0

    move/from16 v0, v21

    iput-boolean v0, v6, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithAltTab:Z

    .line 1560
    move/from16 v0, p5

    iput-boolean v0, v6, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaFsGesture:Z

    .line 1564
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/systemui/recents/BaseRecentsImpl;->preloadIcon(I)V

    .line 1567
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/BaseRecentsImpl;->getWindowRectOverride(I)Landroid/graphics/Rect;

    move-result-object v20

    .line 1568
    .local v20, "windowOverrideRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v14, v1}, Lcom/android/systemui/recents/BaseRecentsImpl;->updateHeaderBarLayout(Lcom/android/systemui/recents/model/TaskStack;Landroid/graphics/Rect;)V

    .line 1572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/recents/views/TaskStackView;->computeStackVisibilityReport()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;

    move-result-object v15

    .line 1575
    .local v15, "stackVr":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;
    iget v0, v15, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;->numVisibleTasks:I

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v6, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedNumVisibleTasks:I

    .line 1576
    iget v0, v15, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;->numVisibleThumbnails:I

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v6, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedNumVisibleThumbnails:I

    .line 1578
    iget-boolean v0, v6, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaFsGesture:Z

    move/from16 v21, v0

    if-eqz v21, :cond_f

    iget-boolean v13, v6, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    .line 1579
    :goto_7
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v21

    new-instance v22, Lcom/android/systemui/recents/events/activity/ActivitySetDummyTranslucentEvent;

    move-object/from16 v0, v22

    invoke-direct {v0, v13}, Lcom/android/systemui/recents/events/activity/ActivitySetDummyTranslucentEvent;-><init>(Z)V

    invoke-virtual/range {v21 .. v22}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    .line 1581
    if-eqz p3, :cond_4

    if-eqz p5, :cond_12

    .line 1582
    :cond_4
    if-eqz p2, :cond_10

    .line 1583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const/16 v22, -0x1

    const/16 v23, -0x1

    invoke-static/range {v21 .. v23}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v6}, Lcom/android/systemui/recents/BaseRecentsImpl;->startRecentsActivity(Landroid/app/ActivityOptions;Lcom/android/systemui/recents/RecentsActivityLaunchState;)V

    .line 1607
    :cond_5
    :goto_8
    if-eqz v5, :cond_6

    .line 1608
    new-instance v7, Lcom/android/systemui/recents/model/Task;

    invoke-direct {v7}, Lcom/android/systemui/recents/model/Task;-><init>()V

    .line 1609
    .local v7, "launchTargetTask":Lcom/android/systemui/recents/model/Task;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/android/systemui/recents/BaseRecentsImpl;->getLaunchTargetTaskViewRect(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/systemui/recents/views/TaskStackView;Landroid/graphics/Rect;Lcom/android/systemui/recents/model/Task;)Landroid/graphics/RectF;

    move-result-object v8

    .line 1610
    .local v8, "launchTargetTaskViewRect":Landroid/graphics/RectF;
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v21

    new-instance v22, Lcom/android/systemui/recents/events/activity/FsGestureLaunchTargetTaskViewRectEvent;

    move-object/from16 v0, v22

    invoke-direct {v0, v8, v7}, Lcom/android/systemui/recents/events/activity/FsGestureLaunchTargetTaskViewRectEvent;-><init>(Landroid/graphics/RectF;Lcom/android/systemui/recents/model/Task;)V

    invoke-virtual/range {v21 .. v22}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    .line 1612
    .end local v7    # "launchTargetTask":Lcom/android/systemui/recents/model/Task;
    .end local v8    # "launchTargetTaskViewRect":Landroid/graphics/RectF;
    :cond_6
    return-void

    .line 1532
    .end local v5    # "hasRecentTasks":Z
    .end local v12    # "runningTaskId":I
    .end local v14    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v15    # "stackVr":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;
    .end local v19    # "useThumbnailTransition":Z
    .end local v20    # "windowOverrideRect":Landroid/graphics/Rect;
    :cond_7
    const-string/jumbo v21, "null"

    goto/16 :goto_0

    .line 1536
    :cond_8
    const/4 v12, -0x1

    .restart local v12    # "runningTaskId":I
    goto/16 :goto_1

    .line 1546
    :cond_9
    sget-object v22, Lcom/android/systemui/recents/BaseRecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    if-eqz p2, :cond_a

    const/16 v21, 0x0

    :goto_9
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v9, v0, v12, v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V

    goto/16 :goto_2

    :cond_a
    const/16 v21, 0x1

    goto :goto_9

    .line 1550
    .restart local v14    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    :cond_b
    const/4 v5, 0x0

    .restart local v5    # "hasRecentTasks":Z
    goto/16 :goto_3

    :cond_c
    move/from16 v19, v5

    .line 1551
    goto/16 :goto_4

    .line 1554
    .restart local v19    # "useThumbnailTransition":Z
    :cond_d
    const/16 v21, 0x1

    goto/16 :goto_5

    .line 1555
    :cond_e
    const/16 v21, 0x1

    goto/16 :goto_6

    .line 1578
    .restart local v15    # "stackVr":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;
    .restart local v20    # "windowOverrideRect":Landroid/graphics/Rect;
    :cond_f
    const/4 v13, 0x0

    .local v13, "shouldTranslucent":Z
    goto :goto_7

    .line 1585
    .end local v13    # "shouldTranslucent":Z
    :cond_10
    new-instance v16, Lcom/android/systemui/recents/model/Task;

    invoke-direct/range {v16 .. v16}, Lcom/android/systemui/recents/model/Task;-><init>()V

    .line 1586
    .local v16, "toTask":Lcom/android/systemui/recents/model/Task;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v16

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recents/BaseRecentsImpl;->getThumbnailTransitionTransform(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v18

    .line 1588
    .local v18, "toTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    if-eqz v18, :cond_11

    .line 1589
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    move-object/from16 v17, v0

    .line 1590
    .local v17, "toTaskRect":Landroid/graphics/RectF;
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v21, v0

    sget v22, Lcom/android/systemui/recents/BaseRecentsImpl;->mTaskBarHeight:I

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 1592
    :try_start_0
    const-class v21, Landroid/app/ActivityOptions;

    const-string/jumbo v22, "makeTaskLaunchBehindWithCoordinates"

    const/16 v23, 0x8

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v23, v0

    const-class v24, Landroid/content/Context;

    const/16 v25, 0x0

    aput-object v24, v23, v25

    const-class v24, Landroid/view/View;

    const/16 v25, 0x1

    aput-object v24, v23, v25

    sget-object v24, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v25, 0x2

    aput-object v24, v23, v25

    sget-object v24, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v25, 0x3

    aput-object v24, v23, v25

    .line 1593
    sget-object v24, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v25, 0x4

    aput-object v24, v23, v25

    sget-object v24, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v25, 0x5

    aput-object v24, v23, v25

    sget-object v24, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v25, 0x6

    aput-object v24, v23, v25

    sget-object v24, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v25, 0x7

    aput-object v24, v23, v25

    .line 1592
    invoke-virtual/range {v21 .. v23}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 1594
    .local v10, "makeTaskLaunch":Ljava/lang/reflect/Method;
    if-eqz v10, :cond_5

    .line 1595
    const-class v21, Landroid/app/ActivityOptions;

    const/16 v22, 0x8

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v23, v22, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aput-object v23, v22, v24

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v23, v0

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v24, 0x2

    aput-object v23, v22, v24

    .line 1596
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v23, v0

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v24, 0x3

    aput-object v23, v22, v24

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/RectF;->width()F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v24, 0x4

    aput-object v23, v22, v24

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/RectF;->height()F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v24, 0x5

    aput-object v23, v22, v24

    const/16 v23, -0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v24, 0x6

    aput-object v23, v22, v24

    const/16 v23, -0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v24, 0x7

    aput-object v23, v22, v24

    .line 1595
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ActivityOptions;

    .line 1597
    .local v11, "opts":Landroid/app/ActivityOptions;
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v6}, Lcom/android/systemui/recents/BaseRecentsImpl;->startRecentsActivity(Landroid/app/ActivityOptions;Lcom/android/systemui/recents/RecentsActivityLaunchState;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_8

    .line 1599
    .end local v10    # "makeTaskLaunch":Ljava/lang/reflect/Method;
    .end local v11    # "opts":Landroid/app/ActivityOptions;
    :catch_0
    move-exception v4

    .line 1600
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v21, "RecentsImpl"

    const-string/jumbo v22, "makeTaskLaunchBehindWithCoordinates method not found"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const/16 v22, -0x1

    const/16 v23, -0x1

    invoke-static/range {v21 .. v23}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v6}, Lcom/android/systemui/recents/BaseRecentsImpl;->startRecentsActivity(Landroid/app/ActivityOptions;Lcom/android/systemui/recents/RecentsActivityLaunchState;)V

    goto/16 :goto_8

    .line 1604
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v17    # "toTaskRect":Landroid/graphics/RectF;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const/16 v22, -0x1

    const/16 v23, -0x1

    invoke-static/range {v21 .. v23}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v6}, Lcom/android/systemui/recents/BaseRecentsImpl;->startRecentsActivity(Landroid/app/ActivityOptions;Lcom/android/systemui/recents/RecentsActivityLaunchState;)V

    goto/16 :goto_8

    .line 1616
    .end local v16    # "toTask":Lcom/android/systemui/recents/model/Task;
    .end local v18    # "toTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    :cond_12
    if-eqz v19, :cond_13

    .line 1618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recents/BaseRecentsImpl;->getThumbnailTransitionActivityOptions(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/systemui/recents/views/TaskStackView;Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    move-result-object v11

    .line 1627
    .restart local v11    # "opts":Landroid/app/ActivityOptions;
    :goto_a
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v6}, Lcom/android/systemui/recents/BaseRecentsImpl;->startRecentsActivity(Landroid/app/ActivityOptions;Lcom/android/systemui/recents/RecentsActivityLaunchState;)V

    .line 1628
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/systemui/recents/BaseRecentsImpl;->mLastToggleTime:J

    .line 1528
    return-void

    .line 1623
    .end local v11    # "opts":Landroid/app/ActivityOptions;
    :cond_13
    if-eqz v5, :cond_14

    .line 1624
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/BaseRecentsImpl;->getHomeTransitionActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v11

    .restart local v11    # "opts":Landroid/app/ActivityOptions;
    goto :goto_a

    .line 1625
    .end local v11    # "opts":Landroid/app/ActivityOptions;
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/BaseRecentsImpl;->getUnknownTransitionActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v11

    .restart local v11    # "opts":Landroid/app/ActivityOptions;
    goto :goto_a
.end method

.method public toggleRecents(I)V
    .locals 14
    .param p1, "growTarget"    # I

    .prologue
    .line 986
    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 987
    return-void

    .line 990
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mDraggingInRecents:Z

    .line 991
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mLaunchedWhileDocking:Z

    .line 992
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mTriggeredFromAltTab:Z

    .line 995
    :try_start_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v13

    .line 996
    .local v13, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    new-instance v9, Lcom/android/systemui/recents/model/MutableBoolean;

    const/4 v0, 0x1

    invoke-direct {v9, v0}, Lcom/android/systemui/recents/model/MutableBoolean;-><init>(Z)V

    .line 997
    .local v9, "isHomeStackVisible":Lcom/android/systemui/recents/model/MutableBoolean;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mLastToggleTime:J

    sub-long v10, v2, v4

    .line 999
    .local v10, "elapsedTime":J
    invoke-virtual {v13, v9}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible(Lcom/android/systemui/recents/model/MutableBoolean;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1000
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getDebugFlags()Lcom/android/systemui/recents/RecentsDebugFlags;

    move-result-object v7

    .line 1001
    .local v7, "debugFlags":Lcom/android/systemui/recents/RecentsDebugFlags;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v6

    .line 1002
    .local v6, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    invoke-virtual {v6}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v12

    .line 1003
    .local v12, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    iget-boolean v0, v12, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithAltTab:Z

    if-nez v0, :cond_4

    .line 1005
    invoke-virtual {v7}, Lcom/android/systemui/recents/RecentsDebugFlags;->isPagingEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1006
    :cond_1
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapMinTime()I

    move-result v0

    int-to-long v2, v0

    cmp-long v0, v2, v10

    if-gez v0, :cond_2

    .line 1007
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    int-to-long v2, v0

    cmp-long v0, v10, v2

    if-gez v0, :cond_2

    .line 1009
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/recents/events/activity/LaunchNextTaskRequestEvent;

    invoke-direct {v2}, Lcom/android/systemui/recents/events/activity/LaunchNextTaskRequestEvent;-><init>()V

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/events/RecentsEventBus;->post(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    .line 1010
    const-string/jumbo v0, "doubleTap"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/systemui/recents/misc/RecentsPushEventHelper;->sendSwitchAppEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mLastToggleTime:J

    .line 1033
    :goto_1
    return-void

    .line 1011
    :cond_2
    invoke-virtual {v7}, Lcom/android/systemui/recents/RecentsDebugFlags;->isPagingEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1013
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/recents/events/activity/IterateRecentsEvent;

    invoke-direct {v2}, Lcom/android/systemui/recents/events/activity/IterateRecentsEvent;-><init>()V

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/events/RecentsEventBus;->post(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1056
    .end local v6    # "config":Lcom/android/systemui/recents/RecentsConfiguration;
    .end local v7    # "debugFlags":Lcom/android/systemui/recents/RecentsDebugFlags;
    .end local v9    # "isHomeStackVisible":Lcom/android/systemui/recents/model/MutableBoolean;
    .end local v10    # "elapsedTime":J
    .end local v12    # "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    .end local v13    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    :catch_0
    move-exception v8

    .line 1057
    .local v8, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v0, "RecentsImpl"

    const-string/jumbo v2, "Failed to launch RecentsActivity"

    invoke-static {v0, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 984
    .end local v8    # "e":Landroid/content/ActivityNotFoundException;
    :goto_2
    return-void

    .line 1015
    .restart local v6    # "config":Lcom/android/systemui/recents/RecentsConfiguration;
    .restart local v7    # "debugFlags":Lcom/android/systemui/recents/RecentsDebugFlags;
    .restart local v9    # "isHomeStackVisible":Lcom/android/systemui/recents/model/MutableBoolean;
    .restart local v10    # "elapsedTime":J
    .restart local v12    # "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    .restart local v13    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/recents/events/activity/ToggleRecentsEvent;

    invoke-direct {v2}, Lcom/android/systemui/recents/events/activity/ToggleRecentsEvent;-><init>()V

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/events/RecentsEventBus;->post(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    .line 1016
    const-string/jumbo v0, "hideRecents"

    const-string/jumbo v2, "clickRecentsKey"

    invoke-static {v0, v2}, Lcom/android/systemui/recents/misc/RecentsPushEventHelper;->sendRecentsEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1025
    :cond_4
    const-wide/16 v2, 0x15e

    cmp-long v0, v10, v2

    if-gez v0, :cond_5

    .line 1026
    return-void

    .line 1029
    :cond_5
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/recents/events/activity/ToggleRecentsEvent;

    invoke-direct {v2}, Lcom/android/systemui/recents/events/activity/ToggleRecentsEvent;-><init>()V

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/events/RecentsEventBus;->post(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    .line 1030
    const-string/jumbo v0, "hideRecents"

    const-string/jumbo v2, "clickAltTabKey"

    invoke-static {v0, v2}, Lcom/android/systemui/recents/misc/RecentsPushEventHelper;->sendRecentsEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mLastToggleTime:J

    goto :goto_1

    .line 1039
    .end local v6    # "config":Lcom/android/systemui/recents/RecentsConfiguration;
    .end local v7    # "debugFlags":Lcom/android/systemui/recents/RecentsDebugFlags;
    .end local v12    # "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    :cond_6
    const-wide/16 v2, 0x15e

    cmp-long v0, v10, v2

    if-gez v0, :cond_7

    .line 1040
    return-void

    .line 1042
    :cond_7
    sget-boolean v0, Lcom/android/systemui/recents/BaseRecentsImpl;->sOneKeyCleaning:Z

    if-eqz v0, :cond_8

    .line 1043
    const v0, 0x910032a

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/BaseRecentsImpl;->showToast(I)V

    .line 1044
    return-void

    .line 1048
    :cond_8
    invoke-virtual {v13}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    .line 1049
    .local v1, "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-boolean v2, v9, Lcom/android/systemui/recents/model/MutableBoolean;->value:Z

    const/4 v3, 0x1

    .line 1050
    const/4 v5, 0x0

    move-object v0, p0

    move v4, p1

    .line 1049
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/BaseRecentsImpl;->startRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;ZZIZ)V

    .line 1053
    const-string/jumbo v0, "recentapps"

    invoke-virtual {v13, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 1054
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mLastToggleTime:J
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
