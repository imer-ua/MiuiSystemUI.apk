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
.method static synthetic -get0(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mActionBarFeedback:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mActionBarLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mIsScreenshotSaved:Z

    return v0
.end method

.method static synthetic -get11(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mIsShowingLongScreenshot:Z

    return v0
.end method

.method static synthetic -get12(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mIsTakingLongScreenshot:Z

    return v0
.end method

.method static synthetic -get13(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mLongScreenshotFirstPart:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mNavigationBarHeight:I

    return v0
.end method

.method static synthetic -get15(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Lcom/android/systemui/screenshot/NotifyMediaStoreData;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mNotifyMediaStoreData:Lcom/android/systemui/screenshot/NotifyMediaStoreData;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Lcom/android/systemui/screenshot/ScreenshotScrollView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    return-object v0
.end method

.method static synthetic -get18(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mTopMsgDivider:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get19(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mTxtTopMsg:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mBackgroundView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get20(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mButtonContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mButtonDelete:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mButtonEdit:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mButtonLongScreenshot:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mButtonSend:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mButtonStopLongScreenshot:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mContext:Landroid/content/Context;

    return-object v0
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
    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->exitTakingLongScreenshot(Z)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;Z)V
    .locals 0
    .param p1, "isCancel"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->finishTakingLongScreenshot(Z)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->onCallbackReceive(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;ZZ)V
    .locals 0
    .param p1, "isAnimting"    # Z
    .param p2, "isDelete"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->quit(ZZ)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->showDeleteDialog()V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;Ljava/lang/String;)V
    .locals 0
    .param p1, "btnType"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->startPicActivity(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;Z)V
    .locals 0
    .param p1, "isCancel"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->stopLongScreenshot(Z)V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)V
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

.method static synthetic -wrap6(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;IIIII)V
    .locals 0
    .param p1, "paddingRight"    # I
    .param p2, "thumbnailX"    # I
    .param p3, "thumbnailY"    # I
    .param p4, "thumbnailW"    # I
    .param p5, "thumbnailH"    # I

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->calScreenshotViewPaddingAndAnim(IIIII)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;Ljava/lang/String;)V
    .locals 0
    .param p1, "btnType"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->clickActionBtn(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->delete()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->enterTakingLongScreenshot()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 157
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mHandler:Landroid/os/Handler;

    .line 110
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotParts:Ljava/util/ArrayList;

    .line 112
    new-instance v3, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$1;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mLongScreenshotReceiver:Landroid/content/BroadcastReceiver;

    .line 126
    new-instance v3, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$2;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mQuitReceiver:Landroid/content/BroadcastReceiver;

    .line 158
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mContext:Landroid/content/Context;

    .line 160
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mContext:Landroid/content/Context;

    sget v4, Lmiui/R$style;->Theme_Light:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->setTheme(I)V

    .line 161
    const-string/jumbo v3, "window"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mWindowManager:Landroid/view/WindowManager;

    .line 164
    :try_start_0
    const-string/jumbo v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 163
    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v15

    .line 165
    .local v15, "iWindow":Landroid/view/IWindowManager;
    invoke-interface {v15}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mHasNavigationBar:Z

    .line 166
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mHasNavigationBar:Z

    if-eqz v3, :cond_0

    .line 167
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 168
    const-string/jumbo v4, "force_fsg_nav_bar"

    .line 167
    invoke-static {v3, v4}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 169
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mHasNavigationBar:Z

    .line 172
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mHasNavigationBar:Z

    if-eqz v3, :cond_1

    .line 173
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

    .line 178
    .end local v15    # "iWindow":Landroid/view/IWindowManager;
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 179
    .local v16, "layoutInflater":Landroid/view/LayoutInflater;
    const v3, 0x9040042

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mRootView:Landroid/view/View;

    .line 180
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mRootView:Landroid/view/View;

    const/16 v4, 0x200

    invoke-virtual {v3, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 181
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mRootView:Landroid/view/View;

    const v4, 0x91200f8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/screenshot/ScreenshotScrollView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    .line 182
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mRootView:Landroid/view/View;

    const v4, 0x91200fe

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mButtonContainer:Landroid/view/ViewGroup;

    .line 183
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mRootView:Landroid/view/View;

    const v4, 0x9120105

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mButtonLongScreenshot:Landroid/widget/TextView;

    .line 184
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mRootView:Landroid/view/View;

    const v4, 0x9120107

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mButtonEdit:Landroid/widget/TextView;

    .line 185
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mRootView:Landroid/view/View;

    const v4, 0x9120106

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mButtonSend:Landroid/widget/TextView;

    .line 186
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mRootView:Landroid/view/View;

    const v4, 0x9120108

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mButtonDelete:Landroid/widget/TextView;

    .line 187
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mRootView:Landroid/view/View;

    const v4, 0x91200fd

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mBackgroundView:Landroid/view/View;

    .line 190
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mRootView:Landroid/view/View;

    const v4, 0x9120100

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mActionBarLayout:Landroid/view/View;

    .line 191
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mRootView:Landroid/view/View;

    const v4, 0x9120102

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mActionBarFeedback:Landroid/widget/Button;

    .line 192
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->isShowFeedback()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 193
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mActionBarFeedback:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 195
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mActionBarFeedback:Landroid/widget/Button;

    new-instance v4, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$4;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$4;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mRootView:Landroid/view/View;

    const v4, 0x9120101

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mActionBarBack:Landroid/widget/TextView;

    .line 202
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mActionBarBack:Landroid/widget/TextView;

    new-instance v4, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$5;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$5;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mRootView:Landroid/view/View;

    const v4, 0x9120103

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mTxtTopMsg:Landroid/widget/TextView;

    .line 209
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mRootView:Landroid/view/View;

    const v4, 0x9120104

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mTopMsgDivider:Landroid/view/View;

    .line 211
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mHasNavigationBar:Z

    if-eqz v3, :cond_3

    .line 212
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 213
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

    .line 214
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mNavigationBarHeight:I

    .line 213
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 232
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    .line 233
    .local v13, "config":Landroid/content/res/Configuration;
    sget-boolean v3, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v3, :cond_4

    iget v3, v13, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 235
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x90f02ae

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    .line 236
    .local v18, "naturalBarHeight":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    .line 237
    .local v17, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x90f0135

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int v3, v3, v18

    move-object/from16 v0, v17

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 238
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mActionBarLayout:Landroid/view/View;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 240
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x90f013b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    .line 241
    .local v19, "paddingSize":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mTxtTopMsg:Landroid/widget/TextView;

    add-int v4, v19, v18

    move/from16 v0, v19

    move/from16 v1, v19

    move/from16 v2, v19

    invoke-virtual {v3, v0, v4, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 244
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

    .line 245
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->setAnimatingCallback(Lcom/android/systemui/screenshot/ScreenshotScrollView$AnimatingCallback;)V

    .line 246
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    new-instance v4, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$6;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$6;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 255
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mRootView:Landroid/view/View;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 256
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mRootView:Landroid/view/View;

    new-instance v4, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$7;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$7;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 268
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mButtonLongScreenshot:Landroid/widget/TextView;

    new-instance v4, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$8;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$8;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mButtonEdit:Landroid/widget/TextView;

    new-instance v4, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$9;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$9;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mButtonSend:Landroid/widget/TextView;

    new-instance v4, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$10;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$10;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mButtonStopLongScreenshot:Landroid/widget/Button;

    new-instance v4, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$11;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$11;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mButtonDelete:Landroid/widget/TextView;

    new-instance v4, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$12;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$12;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    .line 311
    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 312
    const/16 v8, 0x7de

    .line 313
    const v9, 0x1090500

    .line 318
    const/4 v10, -0x3

    .line 310
    invoke-direct/range {v3 .. v10}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 319
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0xe

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 320
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_5

    .line 321
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v5, 0x800000

    or-int/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 324
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-string/jumbo v4, "GlobalScreenshotShow"

    invoke-virtual {v3, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 157
    return-void

    .line 216
    .end local v13    # "config":Landroid/content/res/Configuration;
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v11

    .line 217
    .local v11, "ablLeftPadding":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v12

    .line 218
    .local v12, "ablRightPadding":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_8

    .line 219
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mNavigationBarHeight:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    add-int v11, v3, v4

    .line 223
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mActionBarLayout:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    .line 224
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    .line 223
    invoke-virtual {v3, v11, v4, v12, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 226
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mNavigationBarHeight:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    invoke-virtual {v5}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    .line 227
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

    .line 228
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    invoke-virtual {v7}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getPaddingBottom()I

    move-result v7

    .line 226
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->setPadding(IIII)V

    goto/16 :goto_1

    .line 220
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    .line 221
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mNavigationBarHeight:I

    add-int v12, v3, v4

    goto :goto_2

    .line 175
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

    .line 145
    iget-boolean v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mIsTakingLongScreenshot:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mButtonStopLongScreenshot:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mButtonStopLongScreenshot:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    invoke-direct {p0, v1}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->stopLongScreenshot(Z)V

    .line 148
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "finish_longscreenshot"

    const-string/jumbo v2, "cancel"

    invoke-static {v0, v1, v2}, Lcom/android/systemui/screenshot/StatHelper;->recordCountEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_1
    return v3

    .line 152
    :cond_2
    invoke-direct {p0, v1, v3}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->quit(ZZ)V

    .line 153
    return v1
.end method

.method private backAll()V
    .locals 2

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->back()Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$3;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 133
    :cond_0
    return-void
.end method

.method private calScreenshotViewPaddingAndAnim(IIIII)V
    .locals 9
    .param p1, "paddingRight"    # I
    .param p2, "thumbnailX"    # I
    .param p3, "thumbnailY"    # I
    .param p4, "thumbnailW"    # I
    .param p5, "thumbnailH"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 397
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    invoke-virtual {v3}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->autoCalcPadding()V

    .line 398
    if-lez p1, :cond_0

    .line 399
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    iget-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    invoke-virtual {v4}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    invoke-virtual {v5}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v3, p1, v4, p1, v5}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->setPadding(IIII)V

    .line 401
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    invoke-virtual {v3}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    invoke-virtual {v4}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getWidthInner()I

    move-result v4

    int-to-float v4, v4

    .line 402
    int-to-float v5, p2

    int-to-float v6, p4

    .line 401
    invoke-static {v3, v4, v5, v6}, Lcom/android/systemui/screenshot/GlobalScreenshot;->calcPivot(FFFF)F

    move-result v3

    .line 402
    iget-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    invoke-virtual {v4}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getLeft()I

    move-result v4

    int-to-float v4, v4

    .line 401
    sub-float v0, v3, v4

    .line 403
    .local v0, "pivotX":F
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    invoke-virtual {v3}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    invoke-virtual {v4}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getHeightInner()I

    move-result v4

    int-to-float v4, v4

    .line 404
    int-to-float v5, p3

    int-to-float v6, p5

    .line 403
    invoke-static {v3, v4, v5, v6}, Lcom/android/systemui/screenshot/GlobalScreenshot;->calcPivot(FFFF)F

    move-result v3

    .line 404
    iget-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    invoke-virtual {v4}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getTop()I

    move-result v4

    int-to-float v4, v4

    .line 403
    sub-float v1, v3, v4

    .line 405
    .local v1, "pivotY":F
    int-to-float v3, p5

    iget-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    invoke-virtual {v4}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getHeightInner()I

    move-result v4

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 406
    .local v2, "scale":F
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    invoke-virtual {v3, v0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->setPivotX(F)V

    .line 407
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    invoke-virtual {v3, v1}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->setPivotY(F)V

    .line 408
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->setScaleX(F)V

    .line 409
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->setScaleY(F)V

    .line 410
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->setAlpha(F)V

    .line 411
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    invoke-virtual {v3, v7}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->setTranslationY(F)V

    .line 412
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 413
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setAlpha(F)V

    .line 414
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mButtonContainer:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 417
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mRootView:Landroid/view/View;

    new-instance v4, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$14;

    invoke-direct {v4, p0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$14;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)V

    .line 434
    const-wide/16 v6, 0x14

    .line 417
    invoke-virtual {v3, v4, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 396
    return-void
.end method

.method private clickActionBtn(Ljava/lang/String;)V
    .locals 4
    .param p1, "btnType"    # Ljava/lang/String;

    .prologue
    .line 589
    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->isPendingAction()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 591
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mIsScreenshotSaved:Z

    if-eqz v0, :cond_2

    .line 592
    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->startPicActivity(Ljava/lang/String;)V

    .line 601
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 602
    const-wide/16 v2, 0xc8

    .line 601
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 603
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 601
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 606
    const-string/jumbo v0, "send"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 607
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "send_button_click"

    .line 608
    iget-boolean v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mIsShowingLongScreenshot:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "longscreenshot"

    .line 607
    :goto_1
    invoke-static {v1, v2, v0}, Lcom/android/systemui/screenshot/StatHelper;->recordCountEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    :cond_1
    :goto_2
    return-void

    .line 594
    :cond_2
    new-instance v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$18;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$18;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mPendingSavedRunnable:Ljava/lang/Runnable;

    goto :goto_0

    .line 608
    :cond_3
    const-string/jumbo v0, "normal"

    goto :goto_1

    .line 609
    :cond_4
    const-string/jumbo v0, "edit"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 610
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "edit_button_click"

    .line 611
    iget-boolean v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mIsShowingLongScreenshot:Z

    if-eqz v0, :cond_5

    const-string/jumbo v0, "longscreenshot"

    .line 610
    :goto_3
    invoke-static {v1, v2, v0}, Lcom/android/systemui/screenshot/StatHelper;->recordCountEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 611
    :cond_5
    const-string/jumbo v0, "normal"

    goto :goto_3
.end method

.method private createQuitAnimationBundle()Landroid/os/Bundle;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 577
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$17;

    invoke-direct {v2, p0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$17;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)V

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

    .line 715
    if-ltz p1, :cond_0

    if-gtz p2, :cond_1

    :cond_0
    return-object v1

    :cond_1
    add-int v0, p1, p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-gt v0, v4, :cond_0

    .line 717
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 718
    .local v3, "width":I
    sget-object v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->sPixelsCache:Ljava/lang/ref/SoftReference;

    if-nez v0, :cond_4

    .line 719
    .local v1, "pixels":[I
    :goto_0
    if-eqz v1, :cond_2

    array-length v0, v1

    mul-int v4, p2, v3

    if-eq v0, v4, :cond_3

    .line 720
    :cond_2
    mul-int v0, p2, v3

    new-array v1, v0, [I

    .line 721
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->sPixelsCache:Ljava/lang/ref/SoftReference;

    :cond_3
    move-object v0, p0

    move v4, v2

    move v5, p1

    move v6, v3

    move v7, p2

    .line 724
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 725
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, p2, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 718
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

    .line 566
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mNotifyMediaStoreData:Lcom/android/systemui/screenshot/NotifyMediaStoreData;

    iget-object v1, v1, Lcom/android/systemui/screenshot/NotifyMediaStoreData;->tempImageFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 567
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 568
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mNotifyMediaStoreData:Lcom/android/systemui/screenshot/NotifyMediaStoreData;

    iget-object v1, v1, Lcom/android/systemui/screenshot/NotifyMediaStoreData;->finisher:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 569
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mNotifyMediaStoreData:Lcom/android/systemui/screenshot/NotifyMediaStoreData;

    iget-object v1, v1, Lcom/android/systemui/screenshot/NotifyMediaStoreData;->finisher:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 571
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mNotifyMediaStoreData:Lcom/android/systemui/screenshot/NotifyMediaStoreData;

    iput-boolean v2, v1, Lcom/android/systemui/screenshot/NotifyMediaStoreData;->isRunned:Z

    .line 573
    invoke-direct {p0, v2, v2}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->quit(ZZ)V

    .line 565
    return-void
.end method

.method private dismissKeyguardIfNeed()V
    .locals 3

    .prologue
    .line 532
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 533
    .local v0, "km":Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 534
    invoke-static {}, Lcom/android/systemui/SystemUICompat;->dismissKeyguardOnNextActivity()V

    .line 531
    :cond_0
    return-void
.end method

.method private enterTakingLongScreenshot()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 885
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mIsTakingLongScreenshot:Z

    .line 886
    iput-boolean v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mPendingContinueSnap:Z

    .line 887
    iput-boolean v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mTakedTotalParts:Z

    .line 888
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotParts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 890
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->beforeTakeScreenshot(Landroid/content/Context;)V

    .line 891
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x80

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 892
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mRootView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 894
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 895
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mButtonLongScreenshot:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 894
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 896
    new-instance v1, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$23;

    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$23;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)V

    .line 894
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 884
    return-void
.end method

.method private exitTakingLongScreenshot(Z)V
    .locals 6
    .param p1, "isCancel"    # Z

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 926
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

    .line 927
    iput-boolean v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mIsTakingLongScreenshot:Z

    .line 928
    iput-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mForeAppThread:Lmiui/process/IMiuiApplicationThread;

    .line 929
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mLongScreenshotFirstPart:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 930
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mLongScreenshotFirstPart:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 931
    iput-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mLongScreenshotFirstPart:Landroid/graphics/Bitmap;

    .line 934
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->afterTakeScreenshot(Landroid/content/Context;)V

    .line 935
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, -0x81

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 936
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 937
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mRootView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 940
    :cond_1
    if-eqz p1, :cond_2

    .line 941
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mTxtTopMsg:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 942
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mTxtTopMsg:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    .line 941
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 946
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 947
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 946
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 948
    new-instance v1, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$24;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$24;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;Z)V

    .line 946
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 979
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshot:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->setSingleBitmap(Landroid/graphics/Bitmap;)V

    .line 980
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    invoke-virtual {v0, v4}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->setIsTakingLongScreenshot(Z)V

    .line 981
    if-eqz p1, :cond_3

    .line 982
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->setBitmaps(Ljava/util/List;Z)V

    .line 983
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->setBottomPart(Landroid/graphics/Bitmap;)V

    .line 987
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    invoke-virtual {v0, v5}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->setAlpha(F)V

    .line 988
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    invoke-virtual {v0, v5}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->setScaleX(F)V

    .line 989
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    invoke-virtual {v0, v5}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->setScaleY(F)V

    .line 990
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 991
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 925
    return-void

    .line 985
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

    .line 817
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mIsScreenshotSaved:Z

    if-eqz v0, :cond_2

    .line 827
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

    .line 828
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mForeAppThread:Lmiui/process/IMiuiApplicationThread;

    if-eqz v0, :cond_1

    .line 829
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    invoke-virtual {v0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->stopAnimating()V

    .line 830
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mLongScreenshotReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 832
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mButtonStopLongScreenshot:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 834
    if-eqz p1, :cond_3

    .line 835
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->exitTakingLongScreenshot(Z)V

    .line 816
    :goto_0
    return-void

    .line 818
    :cond_2
    new-instance v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$21;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$21;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;Z)V

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mPendingSavedRunnable:Ljava/lang/Runnable;

    .line 824
    return-void

    .line 837
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mButtonStopLongScreenshot:Landroid/widget/Button;

    const v1, 0x910054c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 839
    new-instance v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$22;

    invoke-direct {v0, p0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$22;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$22;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private getForegroundApplicationThread()Lmiui/process/IMiuiApplicationThread;
    .locals 1

    .prologue
    .line 464
    invoke-static {}, Lmiui/process/ProcessManager;->getForegroundApplicationThread()Lmiui/process/IMiuiApplicationThread;

    move-result-object v0

    return-object v0
.end method

.method private getScreenshotForLong(Landroid/content/Context;Z)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isFirst"    # Z

    .prologue
    .line 706
    if-eqz p2, :cond_0

    const/16 v2, 0x7d0

    invoke-static {p1, v2}, Landroid/view/MiuiWindowManager;->getLayer(Landroid/content/Context;I)I

    move-result v1

    .line 708
    .local v1, "maxLayout":I
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 709
    const-string/jumbo v3, "force_fsg_nav_bar"

    .line 708
    invoke-static {v2, v3}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 710
    .local v0, "forceImmersive":Z
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-static {p1, v2, v3, v1, v0}, Lmiui/util/ScreenshotUtils;->getScreenshot(Landroid/content/Context;FIIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2

    .line 707
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
    .line 528
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

    .line 729
    const-string/jumbo v1, "IsEnd"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 731
    .local v0, "isEnd":Z
    new-instance v1, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$20;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$20;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;Landroid/content/Intent;Z)V

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/content/Intent;

    .line 775
    aput-object p1, v2, v3

    .line 731
    invoke-virtual {v1, v2}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$20;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 728
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

    .line 468
    iget-boolean v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mIsShow:Z

    if-nez v2, :cond_0

    return-void

    .line 469
    :cond_0
    iput-boolean v8, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mIsShow:Z

    .line 470
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotParts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 472
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mQuitReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 474
    invoke-direct {p0, v8}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->sendNavigationBarVisibilityChangeIfNeed(Z)V

    .line 476
    if-nez p1, :cond_1

    .line 477
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mRootView:Landroid/view/View;

    invoke-interface {v2, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 478
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 513
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mNotifyMediaStoreData:Lcom/android/systemui/screenshot/NotifyMediaStoreData;

    invoke-static {v2, v3}, Lcom/android/systemui/screenshot/GlobalScreenshot;->notifyMediaAndFinish(Landroid/content/Context;Lcom/android/systemui/screenshot/NotifyMediaStoreData;)V

    .line 467
    return-void

    .line 480
    :cond_1
    if-nez p2, :cond_2

    .line 481
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    invoke-virtual {v2}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 491
    :goto_1
    const/16 v0, 0x12c

    .line 492
    .local v0, "duration":I
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    invoke-virtual {v2}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 494
    new-instance v3, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$15;

    invoke-direct {v3, p0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$15;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)V

    .line 492
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 502
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 504
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 502
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 507
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 483
    .end local v0    # "duration":I
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    invoke-virtual {v3}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->setPivotX(F)V

    .line 484
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    invoke-virtual {v3}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->setPivotY(F)V

    .line 485
    const v1, 0x3f333333    # 0.7f

    .line 486
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
    .line 517
    const-string/jumbo v0, "com.miui.lockscreen.navigation_bar_visibility"

    .line 518
    .local v0, "ACTION_NAVIGATION_BAR_VISIBILITY":Ljava/lang/String;
    const-string/jumbo v1, "is_show"

    .line 519
    .local v1, "EXTRA_IS_SHOW":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "keyguard"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    .line 520
    .local v3, "km":Landroid/app/KeyguardManager;
    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 521
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 522
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 523
    iget-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 516
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private showDeleteDialog()V
    .locals 4

    .prologue
    .line 539
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 540
    const v2, 0x9100546

    .line 539
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 541
    const v2, 0x9100547

    .line 539
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 542
    const v2, 0x9100548

    const/4 v3, 0x0

    .line 539
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 543
    new-instance v2, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$16;

    invoke-direct {v2, p0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$16;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)V

    const v3, 0x9100549

    .line 539
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 561
    .local v0, "dlg":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 562
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 538
    return-void
.end method

.method private snapForLongScreenshot(Landroid/content/Intent;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 779
    iget-object v6, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6, v7}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->getScreenshotForLong(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 781
    .local v4, "screenshot":Landroid/graphics/Bitmap;
    const-string/jumbo v6, "IsEnd"

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 782
    .local v3, "isEnd":Z
    const-string/jumbo v6, "TopLoc"

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 783
    .local v5, "topLoc":I
    const-string/jumbo v6, "BottomLoc"

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 784
    .local v0, "bottomLoc":I
    sub-int v2, v0, v5

    .line 785
    .local v2, "height":I
    if-eqz v3, :cond_0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int v2, v6, v5

    .line 787
    :cond_0
    const/4 v1, 0x0

    .line 788
    .local v1, "cropedBmp":Landroid/graphics/Bitmap;
    if-lez v2, :cond_1

    .line 789
    invoke-static {v4, v5, v2}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->cropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 793
    .end local v1    # "cropedBmp":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 795
    return-object v1
.end method

.method private startLongScreenshot()Z
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 668
    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->getForegroundApplicationThread()Lmiui/process/IMiuiApplicationThread;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mForeAppThread:Lmiui/process/IMiuiApplicationThread;

    .line 669
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

    .line 670
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mForeAppThread:Lmiui/process/IMiuiApplicationThread;

    if-nez v0, :cond_0

    return v3

    .line 672
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    invoke-virtual {v0, v9}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->resetToShortMode(Z)V

    .line 674
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, v9}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->getScreenshotForLong(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 677
    .local v6, "bmp":Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mForeAppThread:Lmiui/process/IMiuiApplicationThread;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lmiui/process/IMiuiApplicationThread;->longScreenshot(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 678
    .local v8, "success":Z
    if-nez v8, :cond_1

    return v3

    .line 679
    .end local v8    # "success":Z
    :catch_0
    move-exception v7

    .line 680
    .local v7, "ex":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    .line 681
    return v3

    .line 684
    .end local v7    # "ex":Landroid/os/RemoteException;
    .restart local v8    # "success":Z
    :cond_1
    iput-object v6, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mLongScreenshotFirstPart:Landroid/graphics/Bitmap;

    .line 686
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mLongScreenshotReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 687
    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v5, "com.miui.util.LongScreenshotUtils.LongScreenshot"

    invoke-direct {v3, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v5, v4

    .line 686
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 689
    return v9
.end method

.method private startPicActivity(Ljava/lang/String;)V
    .locals 3
    .param p1, "btnType"    # Ljava/lang/String;

    .prologue
    .line 616
    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->dismissKeyguardIfNeed()V

    .line 617
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mNotifyMediaStoreData:Lcom/android/systemui/screenshot/NotifyMediaStoreData;

    new-instance v2, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$19;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$19;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->notifyMediaAndFinish(Landroid/content/Context;Lcom/android/systemui/screenshot/NotifyMediaStoreData;Lcom/android/systemui/screenshot/GlobalScreenshot$ScreenshotFinishCallback;)V

    .line 615
    return-void
.end method

.method private stopLongScreenshot(Z)V
    .locals 3
    .param p1, "isCancel"    # Z

    .prologue
    .line 693
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mForeAppThread:Lmiui/process/IMiuiApplicationThread;

    if-eqz v1, :cond_0

    .line 695
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mForeAppThread:Lmiui/process/IMiuiApplicationThread;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Lmiui/process/IMiuiApplicationThread;->longScreenshot(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 700
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->finishTakingLongScreenshot(Z)V

    .line 692
    return-void

    .line 696
    :catch_0
    move-exception v0

    .line 697
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private tryToContinueOrFinish()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 799
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    invoke-virtual {v1}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getShowedPageCount()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotParts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_0

    .line 800
    iget-boolean v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mPendingContinueSnap:Z

    if-eqz v1, :cond_1

    .line 802
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mForeAppThread:Lmiui/process/IMiuiApplicationThread;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Lmiui/process/IMiuiApplicationThread;->longScreenshot(I)Z

    .line 803
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mPendingContinueSnap:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 798
    :cond_0
    :goto_0
    return-void

    .line 804
    :catch_0
    move-exception v0

    .line 805
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 807
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

    .line 808
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    invoke-virtual {v1}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getIsManuTaking()Z

    move-result v1

    if-nez v1, :cond_0

    .line 809
    invoke-direct {p0, v3}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->finishTakingLongScreenshot(Z)V

    .line 810
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->setBottomPart(Landroid/graphics/Bitmap;)V

    .line 811
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

    .line 446
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "keyguard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    .line 447
    .local v2, "km":Landroid/app/KeyguardManager;
    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v3

    if-eqz v3, :cond_0

    return v5

    .line 449
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->getForegroundApplicationThread()Lmiui/process/IMiuiApplicationThread;

    move-result-object v0

    .line 450
    .local v0, "appThread":Lmiui/process/IMiuiApplicationThread;
    if-nez v0, :cond_1

    .line 451
    const-string/jumbo v3, "GlobalScreenshotDisplay"

    const-string/jumbo v4, "getForegroundApplicationThread failed."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    return v5

    .line 456
    :cond_1
    const/4 v3, 0x1

    :try_start_0
    invoke-interface {v0, v3}, Lmiui/process/IMiuiApplicationThread;->longScreenshot(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 457
    :catch_0
    move-exception v1

    .line 458
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 459
    return v5
.end method

.method public doubleClickEventReaction(Z)V
    .locals 6
    .param p1, "isShowBig"    # Z

    .prologue
    const-wide/16 v4, 0xc8

    .line 1001
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1002
    .local v0, "config":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1003
    if-eqz p1, :cond_1

    .line 1004
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1000
    :cond_0
    :goto_0
    return-void

    .line 1006
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
    .line 996
    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->tryToContinueOrFinish()V

    .line 995
    return-void
.end method

.method public setIsScreenshotSaved()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 438
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mIsScreenshotSaved:Z

    .line 439
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mPendingSavedRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mPendingSavedRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 441
    iput-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mPendingSavedRunnable:Ljava/lang/Runnable;

    .line 437
    :cond_0
    return-void
.end method

.method public show(Landroid/graphics/Bitmap;Lcom/android/systemui/screenshot/NotifyMediaStoreData;IIII)V
    .locals 10
    .param p1, "screenshot"    # Landroid/graphics/Bitmap;
    .param p2, "data"    # Lcom/android/systemui/screenshot/NotifyMediaStoreData;
    .param p3, "thumbnailX"    # I
    .param p4, "thumbnailY"    # I
    .param p5, "thumbnailW"    # I
    .param p6, "thumbnailH"    # I

    .prologue
    .line 338
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 339
    iput-object p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mNotifyMediaStoreData:Lcom/android/systemui/screenshot/NotifyMediaStoreData;

    .line 340
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mIsShow:Z

    .line 341
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshot:Landroid/graphics/Bitmap;

    .line 342
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mIsShowingLongScreenshot:Z

    .line 343
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mIsScreenshotSaved:Z

    .line 344
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mPendingSavedRunnable:Ljava/lang/Runnable;

    .line 345
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshot:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->setSingleBitmap(Landroid/graphics/Bitmap;)V

    .line 347
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mRootView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 349
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 350
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 351
    .local v7, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 352
    const-string/jumbo v0, "android.intent.action.PHONE_STATE"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 353
    const-string/jumbo v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mQuitReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 355
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->sendNavigationBarVisibilityChangeIfNeed(Z)V

    .line 357
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mRootView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 358
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 357
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 359
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mRootView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 360
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 365
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    .line 366
    .local v6, "config":Landroid/content/res/Configuration;
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mActionBarFeedback:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout$LayoutParams;

    .line 367
    .local v8, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget v0, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 368
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mTopMsgDivider:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 369
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 373
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 375
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mButtonLongScreenshot:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 376
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mButtonLongScreenshot:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->canLongScreenshot()Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 378
    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->isShowFeedback()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mHasNavigationBar:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 379
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mActionBarFeedback:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v9

    new-instance v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$13;

    move-object v1, p0

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$13;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;IIII)V

    invoke-virtual {v9, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 337
    :goto_2
    return-void

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mTopMsgDivider:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 376
    :cond_1
    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_1

    .line 392
    :cond_2
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->calScreenshotViewPaddingAndAnim(IIIII)V

    goto :goto_2
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1013
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mRootView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1014
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mRootView:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 1016
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 1017
    .local v0, "defaultExceptionHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    if-eqz v0, :cond_1

    .line 1018
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 1012
    :cond_1
    return-void
.end method
