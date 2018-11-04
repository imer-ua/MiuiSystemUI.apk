.class public Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;
.super Ljava/lang/Object;
.source "GlobalScreenshotDisplay.java"

# interfaces
.implements Lcom/android/systemui/screenshot/ScreenshotScrollView$AnimatingCallback;
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$1;,
        Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$2;
    }
.end annotation


# static fields
.field static sPixelsCache:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<[I>;"
        }
    .end annotation
.end field


# instance fields
.field private mActionBarBack:Landroid/widget/TextView;

.field private mActionBarFeedback:Landroid/widget/Button;

.field private mActionBarLayout:Landroid/view/View;

.field private mBackgroundView:Landroid/view/View;

.field private mButtonContainer:Landroid/view/ViewGroup;

.field private mButtonDelete:Landroid/widget/TextView;

.field private mButtonEdit:Landroid/widget/TextView;

.field private mButtonLongScreenshot:Landroid/widget/TextView;

.field private mButtonSend:Landroid/widget/TextView;

.field private mButtonStopLongScreenshot:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mForeAppThread:Lmiui/process/IMiuiApplicationThread;

.field private mHandler:Landroid/os/Handler;

.field private mHasNavigationBar:Z

.field private mIsScreenshotSaved:Z

.field private mIsShow:Z

.field private mIsShowingLongScreenshot:Z

.field private mIsTakingLongScreenshot:Z

.field private mLongScreenshotFirstPart:Landroid/graphics/Bitmap;

.field private mLongScreenshotReceiver:Landroid/content/BroadcastReceiver;

.field private mNavigationBarHeight:I

.field private mNotifyMediaStoreData:Lcom/android/systemui/screenshot/NotifyMediaStoreData;

.field private mPendingContinueSnap:Z

.field private mPendingSavedRunnable:Ljava/lang/Runnable;

.field private mQuitReceiver:Landroid/content/BroadcastReceiver;

.field private mRootView:Landroid/view/View;

.field private mScreenshot:Landroid/graphics/Bitmap;

.field mScreenshotParts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

.field private mTakedTotalParts:Z

.field private mTopMsgDivider:Landroid/view/View;

.field private mTxtTopMsg:Landroid/widget/TextView;

.field private mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mActionBarLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mBackgroundView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mIsShowingLongScreenshot:Z

    return v0
.end method

.method static synthetic -get11(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mIsTakingLongScreenshot:Z

    return v0
.end method

.method static synthetic -get12(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mLongScreenshotFirstPart:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Lcom/android/systemui/screenshot/NotifyMediaStoreData;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mNotifyMediaStoreData:Lcom/android/systemui/screenshot/NotifyMediaStoreData;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Lcom/android/systemui/screenshot/ScreenshotScrollView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mTopMsgDivider:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mTxtTopMsg:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get18(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mButtonContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mButtonDelete:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mButtonEdit:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mButtonLongScreenshot:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mButtonSend:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mButtonStopLongScreenshot:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mIsScreenshotSaved:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mIsShowingLongScreenshot:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mPendingContinueSnap:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mPendingSavedRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshot:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mTakedTotalParts:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;Landroid/content/Intent;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->snapForLongScreenshot(Landroid/content/Intent;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/os/Bundle;
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->createQuitAnimationBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;Z)V
    .locals 0
    .param p1, "isCancel"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->finishTakingLongScreenshot(Z)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->onCallbackReceive(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;ZZ)V
    .locals 0
    .param p1, "isAnimting"    # Z
    .param p2, "isDelete"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->quit(ZZ)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->showDeleteDialog()V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;Ljava/lang/String;)V
    .locals 0
    .param p1, "btnType"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->startPicActivity(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;Z)V
    .locals 0
    .param p1, "isCancel"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->stopLongScreenshot(Z)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->tryToContinueOrFinish()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->back()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->isPendingAction()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->startLongScreenshot()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->backAll()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;Ljava/lang/String;)V
    .locals 0
    .param p1, "btnType"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->clickActionBtn(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->delete()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->enterTakingLongScreenshot()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;Z)V
    .locals 0
    .param p1, "isCancel"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->exitTakingLongScreenshot(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 156
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mHandler:Landroid/os/Handler;

    .line 109
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotParts:Ljava/util/ArrayList;

    .line 111
    new-instance v3, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$1;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mLongScreenshotReceiver:Landroid/content/BroadcastReceiver;

    .line 125
    new-instance v3, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$2;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mQuitReceiver:Landroid/content/BroadcastReceiver;

    .line 157
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mContext:Landroid/content/Context;

    .line 159
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mContext:Landroid/content/Context;

    sget v4, Lmiui/R$style;->Theme_Light:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->setTheme(I)V

    .line 160
    const-string/jumbo v3, "window"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mWindowManager:Landroid/view/WindowManager;

    .line 163
    :try_start_0
    const-string/jumbo v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 162
    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v15

    .line 164
    .local v15, "iWindow":Landroid/view/IWindowManager;
    invoke-interface {v15}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mHasNavigationBar:Z

    .line 165
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mHasNavigationBar:Z

    if-eqz v3, :cond_0

    .line 166
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 167
    const-string/jumbo v4, "force_fsg_nav_bar"

    .line 166
    invoke-static {v3, v4}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 168
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mHasNavigationBar:Z

    .line 171
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mHasNavigationBar:Z

    if-eqz v3, :cond_1

    .line 172
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x90f008f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mNavigationBarHeight:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .end local v15    # "iWindow":Landroid/view/IWindowManager;
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 178
    .local v16, "layoutInflater":Landroid/view/LayoutInflater;
    const v3, 0x9040042

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mRootView:Landroid/view/View;

    .line 179
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mRootView:Landroid/view/View;

    const/16 v4, 0x200

    invoke-virtual {v3, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 180
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mRootView:Landroid/view/View;

    const v4, 0x91200f8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/screenshot/ScreenshotScrollView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    .line 181
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mRootView:Landroid/view/View;

    const v4, 0x91200fe

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mButtonContainer:Landroid/view/ViewGroup;

    .line 182
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mRootView:Landroid/view/View;

    const v4, 0x9120105

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mButtonLongScreenshot:Landroid/widget/TextView;

    .line 183
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mRootView:Landroid/view/View;

    const v4, 0x9120107

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mButtonEdit:Landroid/widget/TextView;

    .line 184
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mRootView:Landroid/view/View;

    const v4, 0x9120106

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mButtonSend:Landroid/widget/TextView;

    .line 185
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mRootView:Landroid/view/View;

    const v4, 0x9120108

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mButtonDelete:Landroid/widget/TextView;

    .line 186
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mRootView:Landroid/view/View;

    const v4, 0x91200fd

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mBackgroundView:Landroid/view/View;

    .line 189
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mRootView:Landroid/view/View;

    const v4, 0x9120100

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mActionBarLayout:Landroid/view/View;

    .line 190
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mRootView:Landroid/view/View;

    const v4, 0x9120102

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mActionBarFeedback:Landroid/widget/Button;

    .line 191
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->isShowFeedback()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 192
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mActionBarFeedback:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 194
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mActionBarFeedback:Landroid/widget/Button;

    new-instance v4, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$4;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$4;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mRootView:Landroid/view/View;

    const v4, 0x9120101

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mActionBarBack:Landroid/widget/TextView;

    .line 201
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mActionBarBack:Landroid/widget/TextView;

    new-instance v4, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$5;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$5;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mRootView:Landroid/view/View;

    const v4, 0x9120103

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mTxtTopMsg:Landroid/widget/TextView;

    .line 208
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mRootView:Landroid/view/View;

    const v4, 0x9120104

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mTopMsgDivider:Landroid/view/View;

    .line 210
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mHasNavigationBar:Z

    if-eqz v3, :cond_3

    .line 211
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 212
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mButtonContainer:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    .line 213
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mNavigationBarHeight:I

    .line 212
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 231
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    .line 232
    .local v13, "config":Landroid/content/res/Configuration;
    sget-boolean v3, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v3, :cond_4

    iget v3, v13, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 234
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x90f02ad

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    .line 235
    .local v18, "naturalBarHeight":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    .line 236
    .local v17, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x90f0135

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int v3, v3, v18

    move-object/from16 v0, v17

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 237
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mActionBarLayout:Landroid/view/View;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x90f013b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    .line 240
    .local v19, "paddingSize":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mTxtTopMsg:Landroid/widget/TextView;

    add-int v4, v19, v18

    move/from16 v0, v19

    move/from16 v1, v19

    move/from16 v2, v19

    invoke-virtual {v3, v0, v4, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 243
    .end local v17    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v18    # "naturalBarHeight":I
    .end local v19    # "paddingSize":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mRootView:Landroid/view/View;

    const v4, 0x9120109

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mButtonStopLongScreenshot:Landroid/widget/Button;

    .line 244
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->setAnimatingCallback(Lcom/android/systemui/screenshot/ScreenshotScrollView$AnimatingCallback;)V

    .line 245
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    new-instance v4, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$6;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$6;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 254
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mRootView:Landroid/view/View;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 255
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mRootView:Landroid/view/View;

    new-instance v4, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$7;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$7;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 267
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mButtonLongScreenshot:Landroid/widget/TextView;

    new-instance v4, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$8;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$8;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mButtonEdit:Landroid/widget/TextView;

    new-instance v4, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$9;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$9;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mButtonSend:Landroid/widget/TextView;

    new-instance v4, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$10;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$10;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mButtonStopLongScreenshot:Landroid/widget/Button;

    new-instance v4, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$11;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$11;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mButtonDelete:Landroid/widget/TextView;

    new-instance v4, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$12;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$12;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    .line 310
    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 311
    const/16 v8, 0x7de

    .line 312
    const v9, 0x1090500

    .line 317
    const/4 v10, -0x3

    .line 309
    invoke-direct/range {v3 .. v10}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 318
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0xe

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 319
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_5

    .line 320
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v5, 0x800000

    or-int/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 323
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-string/jumbo v4, "GlobalScreenshotShow"

    invoke-virtual {v3, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 156
    return-void

    .line 215
    .end local v13    # "config":Landroid/content/res/Configuration;
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v11

    .line 216
    .local v11, "ablLeftPadding":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v12

    .line 217
    .local v12, "ablRightPadding":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_8

    .line 218
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mNavigationBarHeight:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    add-int v11, v3, v4

    .line 222
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mActionBarLayout:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    .line 223
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    .line 222
    invoke-virtual {v3, v11, v4, v12, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 225
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mNavigationBarHeight:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    invoke-virtual {v5}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    .line 226
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    invoke-virtual {v5}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getPaddingTop()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    invoke-virtual {v6}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getPaddingRight()I

    move-result v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mNavigationBarHeight:I

    add-int/2addr v6, v7

    .line 227
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    invoke-virtual {v7}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getPaddingBottom()I

    move-result v7

    .line 225
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->setPadding(IIII)V

    goto/16 :goto_1

    .line 219
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    .line 220
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mNavigationBarHeight:I

    add-int v12, v3, v4

    goto :goto_2

    .line 174
    .end local v11    # "ablLeftPadding":I
    .end local v12    # "ablRightPadding":I
    .end local v16    # "layoutInflater":Landroid/view/LayoutInflater;
    :catch_0
    move-exception v14

    .local v14, "ex":Landroid/os/RemoteException;
    goto/16 :goto_0
.end method

.method private back()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 144
    iget-boolean v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mIsTakingLongScreenshot:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mButtonStopLongScreenshot:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mButtonStopLongScreenshot:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    invoke-direct {p0, v1}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->stopLongScreenshot(Z)V

    .line 147
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "finish_longscreenshot"

    const-string/jumbo v2, "cancel"

    invoke-static {v0, v1, v2}, Lcom/android/systemui/screenshot/StatHelper;->recordCountEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :cond_1
    return v3

    .line 151
    :cond_2
    invoke-direct {p0, v1, v3}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->quit(ZZ)V

    .line 152
    return v1
.end method

.method private backAll()V
    .locals 2

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->back()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$3;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 132
    :cond_0
    return-void
.end method

.method private clickActionBtn(Ljava/lang/String;)V
    .locals 4
    .param p1, "btnType"    # Ljava/lang/String;

    .prologue
    .line 565
    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->isPendingAction()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 567
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mIsScreenshotSaved:Z

    if-eqz v0, :cond_2

    .line 568
    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->startPicActivity(Ljava/lang/String;)V

    .line 577
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 578
    const-wide/16 v2, 0xc8

    .line 577
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 579
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 577
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 582
    const-string/jumbo v0, "send"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 583
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "send_button_click"

    .line 584
    iget-boolean v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mIsShowingLongScreenshot:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "longscreenshot"

    .line 583
    :goto_1
    invoke-static {v1, v2, v0}, Lcom/android/systemui/screenshot/StatHelper;->recordCountEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    :cond_1
    :goto_2
    return-void

    .line 570
    :cond_2
    new-instance v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$17;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$17;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mPendingSavedRunnable:Ljava/lang/Runnable;

    goto :goto_0

    .line 584
    :cond_3
    const-string/jumbo v0, "normal"

    goto :goto_1

    .line 585
    :cond_4
    const-string/jumbo v0, "edit"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 586
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "edit_button_click"

    .line 587
    iget-boolean v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mIsShowingLongScreenshot:Z

    if-eqz v0, :cond_5

    const-string/jumbo v0, "longscreenshot"

    .line 586
    :goto_3
    invoke-static {v1, v2, v0}, Lcom/android/systemui/screenshot/StatHelper;->recordCountEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 587
    :cond_5
    const-string/jumbo v0, "normal"

    goto :goto_3
.end method

.method private createQuitAnimationBundle()Landroid/os/Bundle;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 553
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$16;

    invoke-direct {v2, p0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$16;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)V

    invoke-static {v0, v3, v3, v1, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static cropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "top"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 691
    if-ltz p1, :cond_0

    if-gtz p2, :cond_1

    :cond_0
    return-object v1

    :cond_1
    add-int v0, p1, p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-gt v0, v4, :cond_0

    .line 693
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 694
    .local v3, "width":I
    sget-object v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->sPixelsCache:Ljava/lang/ref/SoftReference;

    if-nez v0, :cond_4

    .line 695
    .local v1, "pixels":[I
    :goto_0
    if-eqz v1, :cond_2

    array-length v0, v1

    mul-int v4, p2, v3

    if-eq v0, v4, :cond_3

    .line 696
    :cond_2
    mul-int v0, p2, v3

    new-array v1, v0, [I

    .line 697
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->sPixelsCache:Ljava/lang/ref/SoftReference;

    :cond_3
    move-object v0, p0

    move v4, v2

    move v5, p1

    move v6, v3

    move v7, p2

    .line 700
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 701
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, p2, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 694
    .end local v1    # "pixels":[I
    :cond_4
    sget-object v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->sPixelsCache:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    move-object v1, v0

    goto :goto_0
.end method

.method private delete()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 542
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mNotifyMediaStoreData:Lcom/android/systemui/screenshot/NotifyMediaStoreData;

    iget-object v1, v1, Lcom/android/systemui/screenshot/NotifyMediaStoreData;->tempImageFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 543
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 544
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mNotifyMediaStoreData:Lcom/android/systemui/screenshot/NotifyMediaStoreData;

    iget-object v1, v1, Lcom/android/systemui/screenshot/NotifyMediaStoreData;->finisher:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 545
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mNotifyMediaStoreData:Lcom/android/systemui/screenshot/NotifyMediaStoreData;

    iget-object v1, v1, Lcom/android/systemui/screenshot/NotifyMediaStoreData;->finisher:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 547
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mNotifyMediaStoreData:Lcom/android/systemui/screenshot/NotifyMediaStoreData;

    iput-boolean v2, v1, Lcom/android/systemui/screenshot/NotifyMediaStoreData;->isRunned:Z

    .line 549
    invoke-direct {p0, v2, v2}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->quit(ZZ)V

    .line 541
    return-void
.end method

.method private dismissKeyguardIfNeed()V
    .locals 3

    .prologue
    .line 508
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 509
    .local v0, "km":Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 510
    invoke-static {}, Lcom/android/systemui/SystemUICompat;->dismissKeyguardOnNextActivity()V

    .line 507
    :cond_0
    return-void
.end method

.method private enterTakingLongScreenshot()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 861
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mIsTakingLongScreenshot:Z

    .line 862
    iput-boolean v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mPendingContinueSnap:Z

    .line 863
    iput-boolean v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mTakedTotalParts:Z

    .line 864
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotParts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 866
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->beforeTakeScreenshot(Landroid/content/Context;)V

    .line 867
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x80

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 868
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mRootView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 870
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 871
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mButtonLongScreenshot:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 870
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 872
    new-instance v1, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$22;

    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$22;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)V

    .line 870
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 860
    return-void
.end method

.method private exitTakingLongScreenshot(Z)V
    .locals 6
    .param p1, "isCancel"    # Z

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 902
    const-string/jumbo v0, "GlobalScreenshotDisplay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "exitTakingLongScreenshot:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    iput-boolean v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mIsTakingLongScreenshot:Z

    .line 904
    iput-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mForeAppThread:Lmiui/process/IMiuiApplicationThread;

    .line 905
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mLongScreenshotFirstPart:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 906
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mLongScreenshotFirstPart:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 907
    iput-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mLongScreenshotFirstPart:Landroid/graphics/Bitmap;

    .line 910
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->afterTakeScreenshot(Landroid/content/Context;)V

    .line 911
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, -0x81

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 912
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 913
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mRootView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 916
    :cond_1
    if-eqz p1, :cond_2

    .line 917
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mTxtTopMsg:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 918
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mTxtTopMsg:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    .line 917
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 922
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 923
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 922
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 924
    new-instance v1, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$23;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$23;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;Z)V

    .line 922
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 955
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshot:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->setSingleBitmap(Landroid/graphics/Bitmap;)V

    .line 956
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    invoke-virtual {v0, v4}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->setIsTakingLongScreenshot(Z)V

    .line 957
    if-eqz p1, :cond_3

    .line 958
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->setBitmaps(Ljava/util/List;Z)V

    .line 959
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->setBottomPart(Landroid/graphics/Bitmap;)V

    .line 963
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    invoke-virtual {v0, v5}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->setAlpha(F)V

    .line 964
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    invoke-virtual {v0, v5}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->setScaleX(F)V

    .line 965
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    invoke-virtual {v0, v5}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->setScaleY(F)V

    .line 966
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 967
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 901
    return-void

    .line 961
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    invoke-virtual {v0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->gotoSingleBitmap()V

    goto :goto_0
.end method

.method private finishTakingLongScreenshot(Z)V
    .locals 4
    .param p1, "isCancel"    # Z

    .prologue
    const/4 v3, 0x0

    .line 793
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mIsScreenshotSaved:Z

    if-eqz v0, :cond_2

    .line 803
    :cond_0
    const-string/jumbo v0, "GlobalScreenshotDisplay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "finishTakingLongScreenshot:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mForeAppThread:Lmiui/process/IMiuiApplicationThread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mForeAppThread:Lmiui/process/IMiuiApplicationThread;

    if-eqz v0, :cond_1

    .line 805
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    invoke-virtual {v0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->stopAnimating()V

    .line 806
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mLongScreenshotReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 808
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mButtonStopLongScreenshot:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 810
    if-eqz p1, :cond_3

    .line 811
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->exitTakingLongScreenshot(Z)V

    .line 792
    :goto_0
    return-void

    .line 794
    :cond_2
    new-instance v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$20;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$20;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;Z)V

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mPendingSavedRunnable:Ljava/lang/Runnable;

    .line 800
    return-void

    .line 813
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mButtonStopLongScreenshot:Landroid/widget/Button;

    const v1, 0x910054c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 815
    new-instance v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$21;

    invoke-direct {v0, p0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$21;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$21;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private getForegroundApplicationThread()Lmiui/process/IMiuiApplicationThread;
    .locals 1

    .prologue
    .line 440
    invoke-static {}, Lmiui/process/ProcessManager;->getForegroundApplicationThread()Lmiui/process/IMiuiApplicationThread;

    move-result-object v0

    return-object v0
.end method

.method private getScreenshotForLong(Landroid/content/Context;Z)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isFirst"    # Z

    .prologue
    .line 682
    if-eqz p2, :cond_0

    const/16 v2, 0x7d0

    invoke-static {p1, v2}, Landroid/view/MiuiWindowManager;->getLayer(Landroid/content/Context;I)I

    move-result v1

    .line 684
    .local v1, "maxLayout":I
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 685
    const-string/jumbo v3, "force_fsg_nav_bar"

    .line 684
    invoke-static {v2, v3}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 686
    .local v0, "forceImmersive":Z
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-static {p1, v2, v3, v1, v0}, Lmiui/util/ScreenshotUtils;->getScreenshot(Landroid/content/Context;FIIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2

    .line 683
    .end local v0    # "forceImmersive":Z
    .end local v1    # "maxLayout":I
    :cond_0
    const/16 v2, 0x7d1

    invoke-static {p1, v2}, Landroid/view/MiuiWindowManager;->getLayer(Landroid/content/Context;I)I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .restart local v1    # "maxLayout":I
    goto :goto_0
.end method

.method private isPendingAction()Z
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mPendingSavedRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isShowFeedback()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method private onCallbackReceive(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 705
    const-string/jumbo v1, "IsEnd"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 707
    .local v0, "isEnd":Z
    new-instance v1, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$19;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$19;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;Landroid/content/Intent;Z)V

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/content/Intent;

    .line 751
    aput-object p1, v2, v3

    .line 707
    invoke-virtual {v1, v2}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$19;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 704
    return-void
.end method

.method private quit(ZZ)V
    .locals 9
    .param p1, "isAnimting"    # Z
    .param p2, "isDelete"    # Z

    .prologue
    const/4 v8, 0x0

    const v7, 0x3f333333    # 0.7f

    const/4 v6, 0x0

    const-wide/16 v4, 0x12c

    .line 444
    iget-boolean v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mIsShow:Z

    if-nez v2, :cond_0

    return-void

    .line 445
    :cond_0
    iput-boolean v8, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mIsShow:Z

    .line 446
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotParts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 448
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mQuitReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 450
    invoke-direct {p0, v8}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->sendNavigationBarVisibilityChangeIfNeed(Z)V

    .line 452
    if-nez p1, :cond_1

    .line 453
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mRootView:Landroid/view/View;

    invoke-interface {v2, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 454
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 489
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mNotifyMediaStoreData:Lcom/android/systemui/screenshot/NotifyMediaStoreData;

    invoke-static {v2, v3}, Lcom/android/systemui/screenshot/GlobalScreenshot;->notifyMediaAndFinish(Landroid/content/Context;Lcom/android/systemui/screenshot/NotifyMediaStoreData;)V

    .line 443
    return-void

    .line 456
    :cond_1
    if-nez p2, :cond_2

    .line 457
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    invoke-virtual {v2}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 467
    :goto_1
    const/16 v0, 0x12c

    .line 468
    .local v0, "duration":I
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    invoke-virtual {v2}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 470
    new-instance v3, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$14;

    invoke-direct {v3, p0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$14;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)V

    .line 468
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 478
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 480
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 478
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 483
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 459
    .end local v0    # "duration":I
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    invoke-virtual {v3}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->setPivotX(F)V

    .line 460
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    invoke-virtual {v3}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->setPivotY(F)V

    .line 461
    const v1, 0x3f333333    # 0.7f

    .line 462
    .local v1, "scale":F
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    invoke-virtual {v2}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_1
.end method

.method private sendNavigationBarVisibilityChangeIfNeed(Z)V
    .locals 6
    .param p1, "isShow"    # Z

    .prologue
    .line 493
    const-string/jumbo v0, "com.miui.lockscreen.navigation_bar_visibility"

    .line 494
    .local v0, "ACTION_NAVIGATION_BAR_VISIBILITY":Ljava/lang/String;
    const-string/jumbo v1, "is_show"

    .line 495
    .local v1, "EXTRA_IS_SHOW":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "keyguard"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    .line 496
    .local v3, "km":Landroid/app/KeyguardManager;
    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 497
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 498
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 499
    iget-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 492
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private showDeleteDialog()V
    .locals 4

    .prologue
    .line 515
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 516
    const v2, 0x9100546

    .line 515
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 517
    const v2, 0x9100547

    .line 515
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 518
    const v2, 0x9100548

    const/4 v3, 0x0

    .line 515
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 519
    new-instance v2, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$15;

    invoke-direct {v2, p0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$15;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)V

    const v3, 0x9100549

    .line 515
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 537
    .local v0, "dlg":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 538
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 514
    return-void
.end method

.method private snapForLongScreenshot(Landroid/content/Intent;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 755
    iget-object v6, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6, v7}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->getScreenshotForLong(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 757
    .local v4, "screenshot":Landroid/graphics/Bitmap;
    const-string/jumbo v6, "IsEnd"

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 758
    .local v3, "isEnd":Z
    const-string/jumbo v6, "TopLoc"

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 759
    .local v5, "topLoc":I
    const-string/jumbo v6, "BottomLoc"

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 760
    .local v0, "bottomLoc":I
    sub-int v2, v0, v5

    .line 761
    .local v2, "height":I
    if-eqz v3, :cond_0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int v2, v6, v5

    .line 763
    :cond_0
    const/4 v1, 0x0

    .line 764
    .local v1, "cropedBmp":Landroid/graphics/Bitmap;
    if-lez v2, :cond_1

    .line 765
    invoke-static {v4, v5, v2}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->cropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 769
    .end local v1    # "cropedBmp":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 771
    return-object v1
.end method

.method private startLongScreenshot()Z
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 644
    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->getForegroundApplicationThread()Lmiui/process/IMiuiApplicationThread;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mForeAppThread:Lmiui/process/IMiuiApplicationThread;

    .line 645
    const-string/jumbo v0, "GlobalScreenshotDisplay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startLongScreenshot:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mForeAppThread:Lmiui/process/IMiuiApplicationThread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mForeAppThread:Lmiui/process/IMiuiApplicationThread;

    if-nez v0, :cond_0

    return v3

    .line 648
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    invoke-virtual {v0, v9}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->resetToShortMode(Z)V

    .line 650
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, v9}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->getScreenshotForLong(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 653
    .local v6, "bmp":Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mForeAppThread:Lmiui/process/IMiuiApplicationThread;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lmiui/process/IMiuiApplicationThread;->longScreenshot(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 654
    .local v8, "success":Z
    if-nez v8, :cond_1

    return v3

    .line 655
    .end local v8    # "success":Z
    :catch_0
    move-exception v7

    .line 656
    .local v7, "ex":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    .line 657
    return v3

    .line 660
    .end local v7    # "ex":Landroid/os/RemoteException;
    .restart local v8    # "success":Z
    :cond_1
    iput-object v6, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mLongScreenshotFirstPart:Landroid/graphics/Bitmap;

    .line 662
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mLongScreenshotReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 663
    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v5, "com.miui.util.LongScreenshotUtils.LongScreenshot"

    invoke-direct {v3, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v5, v4

    .line 662
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 665
    return v9
.end method

.method private startPicActivity(Ljava/lang/String;)V
    .locals 3
    .param p1, "btnType"    # Ljava/lang/String;

    .prologue
    .line 592
    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->dismissKeyguardIfNeed()V

    .line 593
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mNotifyMediaStoreData:Lcom/android/systemui/screenshot/NotifyMediaStoreData;

    new-instance v2, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$18;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$18;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->notifyMediaAndFinish(Landroid/content/Context;Lcom/android/systemui/screenshot/NotifyMediaStoreData;Lcom/android/systemui/screenshot/GlobalScreenshot$ScreenshotFinishCallback;)V

    .line 591
    return-void
.end method

.method private stopLongScreenshot(Z)V
    .locals 3
    .param p1, "isCancel"    # Z

    .prologue
    .line 669
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mForeAppThread:Lmiui/process/IMiuiApplicationThread;

    if-eqz v1, :cond_0

    .line 671
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mForeAppThread:Lmiui/process/IMiuiApplicationThread;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Lmiui/process/IMiuiApplicationThread;->longScreenshot(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 676
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->finishTakingLongScreenshot(Z)V

    .line 668
    return-void

    .line 672
    :catch_0
    move-exception v0

    .line 673
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private tryToContinueOrFinish()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 775
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    invoke-virtual {v1}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getShowedPageCount()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotParts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_0

    .line 776
    iget-boolean v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mPendingContinueSnap:Z

    if-eqz v1, :cond_1

    .line 778
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mForeAppThread:Lmiui/process/IMiuiApplicationThread;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Lmiui/process/IMiuiApplicationThread;->longScreenshot(I)Z

    .line 779
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mPendingContinueSnap:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 774
    :cond_0
    :goto_0
    return-void

    .line 780
    :catch_0
    move-exception v0

    .line 781
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 783
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mTakedTotalParts:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    invoke-virtual {v1}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getShowedPageCount()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotParts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 784
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    invoke-virtual {v1}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getIsManuTaking()Z

    move-result v1

    if-nez v1, :cond_0

    .line 785
    invoke-direct {p0, v3}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->finishTakingLongScreenshot(Z)V

    .line 786
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->setBottomPart(Landroid/graphics/Bitmap;)V

    .line 787
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "finish_longscreenshot"

    const-string/jumbo v3, "auto_finish"

    invoke-static {v1, v2, v3}, Lcom/android/systemui/screenshot/StatHelper;->recordCountEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public canLongScreenshot()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 422
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "keyguard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    .line 423
    .local v2, "km":Landroid/app/KeyguardManager;
    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v3

    if-eqz v3, :cond_0

    return v5

    .line 425
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->getForegroundApplicationThread()Lmiui/process/IMiuiApplicationThread;

    move-result-object v0

    .line 426
    .local v0, "appThread":Lmiui/process/IMiuiApplicationThread;
    if-nez v0, :cond_1

    .line 427
    const-string/jumbo v3, "GlobalScreenshotDisplay"

    const-string/jumbo v4, "getForegroundApplicationThread failed."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    return v5

    .line 432
    :cond_1
    const/4 v3, 0x1

    :try_start_0
    invoke-interface {v0, v3}, Lmiui/process/IMiuiApplicationThread;->longScreenshot(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 433
    :catch_0
    move-exception v1

    .line 434
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 435
    return v5
.end method

.method public doubleClickEventReaction(Z)V
    .locals 6
    .param p1, "isShowBig"    # Z

    .prologue
    const-wide/16 v4, 0xc8

    .line 977
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 978
    .local v0, "config":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 979
    if-eqz p1, :cond_1

    .line 980
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 976
    :cond_0
    :goto_0
    return-void

    .line 982
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method public onShowedPageCountChanged(I)V
    .locals 0
    .param p1, "showedPageCount"    # I

    .prologue
    .line 972
    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->tryToContinueOrFinish()V

    .line 971
    return-void
.end method

.method public setIsScreenshotSaved()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 414
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mIsScreenshotSaved:Z

    .line 415
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mPendingSavedRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mPendingSavedRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 417
    iput-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mPendingSavedRunnable:Ljava/lang/Runnable;

    .line 413
    :cond_0
    return-void
.end method

.method public show(Landroid/graphics/Bitmap;Lcom/android/systemui/screenshot/NotifyMediaStoreData;IIII)V
    .locals 13
    .param p1, "screenshot"    # Landroid/graphics/Bitmap;
    .param p2, "data"    # Lcom/android/systemui/screenshot/NotifyMediaStoreData;
    .param p3, "thumbnailX"    # I
    .param p4, "thumbnailY"    # I
    .param p5, "thumbnailW"    # I
    .param p6, "thumbnailH"    # I

    .prologue
    .line 337
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 338
    iput-object p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mNotifyMediaStoreData:Lcom/android/systemui/screenshot/NotifyMediaStoreData;

    .line 339
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mIsShow:Z

    .line 340
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshot:Landroid/graphics/Bitmap;

    .line 341
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mIsShowingLongScreenshot:Z

    .line 342
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mIsScreenshotSaved:Z

    .line 343
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mPendingSavedRunnable:Ljava/lang/Runnable;

    .line 344
    iget-object v8, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    iget-object v9, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshot:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v9}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->setSingleBitmap(Landroid/graphics/Bitmap;)V

    .line 346
    iget-object v8, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mWindowManager:Landroid/view/WindowManager;

    iget-object v9, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mRootView:Landroid/view/View;

    iget-object v10, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v8, v9, v10}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 348
    iget-object v8, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v10, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 349
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 350
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v8, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v3, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 351
    const-string/jumbo v8, "android.intent.action.PHONE_STATE"

    invoke-virtual {v3, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 352
    const-string/jumbo v8, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 353
    iget-object v8, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mQuitReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v8, v9, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 354
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->sendNavigationBarVisibilityChangeIfNeed(Z)V

    .line 356
    iget-object v8, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mRootView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 357
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 356
    invoke-virtual {v8, v9, v10}, Landroid/view/View;->measure(II)V

    .line 358
    iget-object v8, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mRootView:Landroid/view/View;

    iget-object v9, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mRootView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    iget-object v10, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mRootView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v11, v12, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 359
    iget-object v8, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mRootView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    .line 364
    iget-object v8, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 365
    .local v2, "config":Landroid/content/res/Configuration;
    iget-object v8, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mActionBarFeedback:Landroid/widget/Button;

    invoke-virtual {v8}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 366
    .local v4, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget v8, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    .line 367
    iget-object v8, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mTopMsgDivider:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 368
    iget-object v8, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mActionBarLayout:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundColor(I)V

    .line 372
    :goto_0
    iget-object v8, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mActionBarLayout:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 374
    iget-object v8, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mButtonLongScreenshot:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 375
    iget-object v9, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mButtonLongScreenshot:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->canLongScreenshot()Z

    move-result v8

    if-eqz v8, :cond_1

    const/high16 v8, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setAlpha(F)V

    .line 376
    iget-object v8, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    invoke-virtual {v8}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->autoCalcPadding()V

    .line 377
    iget-object v8, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    invoke-virtual {v8}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getPaddingLeft()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    invoke-virtual {v9}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getWidthInner()I

    move-result v9

    int-to-float v9, v9

    .line 378
    move/from16 v0, p3

    int-to-float v10, v0

    move/from16 v0, p5

    int-to-float v11, v0

    .line 377
    invoke-static {v8, v9, v10, v11}, Lcom/android/systemui/screenshot/GlobalScreenshot;->calcPivot(FFFF)F

    move-result v8

    .line 378
    iget-object v9, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    invoke-virtual {v9}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getLeft()I

    move-result v9

    int-to-float v9, v9

    .line 377
    sub-float v5, v8, v9

    .line 379
    .local v5, "pivotX":F
    iget-object v8, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    invoke-virtual {v8}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getPaddingTop()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    invoke-virtual {v9}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getHeightInner()I

    move-result v9

    int-to-float v9, v9

    .line 380
    move/from16 v0, p4

    int-to-float v10, v0

    move/from16 v0, p6

    int-to-float v11, v0

    .line 379
    invoke-static {v8, v9, v10, v11}, Lcom/android/systemui/screenshot/GlobalScreenshot;->calcPivot(FFFF)F

    move-result v8

    .line 380
    iget-object v9, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    invoke-virtual {v9}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getTop()I

    move-result v9

    int-to-float v9, v9

    .line 379
    sub-float v6, v8, v9

    .line 381
    .local v6, "pivotY":F
    move/from16 v0, p6

    int-to-float v8, v0

    iget-object v9, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    invoke-virtual {v9}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getHeightInner()I

    move-result v9

    int-to-float v9, v9

    div-float v7, v8, v9

    .line 382
    .local v7, "scale":F
    iget-object v8, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    invoke-virtual {v8, v5}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->setPivotX(F)V

    .line 383
    iget-object v8, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    invoke-virtual {v8, v6}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->setPivotY(F)V

    .line 384
    iget-object v8, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    invoke-virtual {v8, v7}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->setScaleX(F)V

    .line 385
    iget-object v8, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    invoke-virtual {v8, v7}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->setScaleY(F)V

    .line 386
    iget-object v8, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v8, v9}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->setAlpha(F)V

    .line 387
    iget-object v8, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->setTranslationY(F)V

    .line 388
    iget-object v8, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mBackgroundView:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 389
    iget-object v8, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mBackgroundView:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setAlpha(F)V

    .line 390
    iget-object v8, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mButtonContainer:Landroid/view/ViewGroup;

    iget-object v9, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 393
    iget-object v8, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mRootView:Landroid/view/View;

    new-instance v9, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$13;

    invoke-direct {v9, p0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$13;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)V

    .line 410
    const-wide/16 v10, 0x14

    .line 393
    invoke-virtual {v8, v9, v10, v11}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 336
    return-void

    .line 370
    .end local v5    # "pivotX":F
    .end local v6    # "pivotY":F
    .end local v7    # "scale":F
    :cond_0
    iget-object v8, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mTopMsgDivider:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 375
    :cond_1
    const/high16 v8, 0x3f000000    # 0.5f

    goto/16 :goto_1
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 989
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mRootView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 990
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mRootView:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 992
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 993
    .local v0, "defaultExceptionHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    if-eqz v0, :cond_1

    .line 994
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 988
    :cond_1
    return-void
.end method
