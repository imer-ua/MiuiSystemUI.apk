.class public Lcom/android/systemui/recents/misc/SystemServicesProxy;
.super Ljava/lang/Object;
.source "SystemServicesProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/misc/SystemServicesProxy$1;,
        Lcom/android/systemui/recents/misc/SystemServicesProxy$H;,
        Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;
    }
.end annotation


# static fields
.field public static DEBUG:Z

.field static final sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

.field private static final sMultiWindowForceNotResizePkgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sMultiWindowForceResizePkgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final sRecentsBlacklist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;


# instance fields
.field private mAccessLockedFakeScreenshotLand:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mAccessLockedFakeScreenshotPort:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field mAccm:Landroid/view/accessibility/AccessibilityManager;

.field mAm:Landroid/app/ActivityManager;

.field mAssistComponent:Landroid/content/ComponentName;

.field mAssistUtils:Lcom/android/internal/app/AssistUtils;

.field mBgProtectionCanvas:Landroid/graphics/Canvas;

.field mBgProtectionPaint:Landroid/graphics/Paint;

.field mContext:Landroid/content/Context;

.field mDisplay:Landroid/view/Display;

.field private final mDreamManager:Landroid/service/dreams/IDreamManager;

.field mDummyThumbnailHeight:I

.field mDummyThumbnailWidth:I

.field private final mHandler:Landroid/os/Handler;

.field mHasFreeformWorkspaceSupport:Z

.field public final mIFsGestureCallbackMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/fsgesture/IFsGestureCallback;",
            ">;"
        }
    .end annotation
.end field

.field mIam:Landroid/app/IActivityManager;

.field mIpm:Landroid/content/pm/IPackageManager;

.field private mIsFsGestureAnimating:Z

.field mIsSafeMode:Z

.field mIwm:Landroid/view/IWindowManager;

.field mPm:Landroid/content/pm/PackageManager;

.field mRecentsPackage:Ljava/lang/String;

.field mStatusBarHeight:I

.field private mTaskStackListener:Lcom/android/systemui/recents/misc/TaskStackListener;

.field private mTaskStackListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;",
            ">;"
        }
    .end annotation
.end field

.field mTtsEngines:Landroid/speech/tts/TtsEngines;

.field mUm:Landroid/os/UserManager;

.field mWebAppDAO:Lcom/miui/browser/webapps/WebAppDAO;

.field public mWm:Landroid/view/WindowManager;

.field mWpm:Landroid/app/WallpaperManager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Landroid/service/dreams/IDreamManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDreamManager:Landroid/service/dreams/IDreamManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mTaskStackListeners:Ljava/util/List;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 150
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->DEBUG:Z

    .line 154
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 155
    sget-object v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 156
    sget-object v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sRecentsBlacklist:Ljava/util/List;

    .line 162
    sget-object v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sRecentsBlacklist:Ljava/util/List;

    const-string/jumbo v1, "com.android.systemui.tv.pip.PipOnboardingActivity"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    sget-object v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sRecentsBlacklist:Ljava/util/List;

    const-string/jumbo v1, "com.android.systemui.tv.pip.PipMenuActivity"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    sget-object v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sRecentsBlacklist:Ljava/util/List;

    const-string/jumbo v1, "com.android.systemui.recents.RecentsActivity"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sMultiWindowForceResizePkgList:Ljava/util/List;

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sMultiWindowForceNotResizePkgList:Ljava/util/List;

    .line 140
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    new-instance v3, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;-><init>(Lcom/android/systemui/recents/misc/SystemServicesProxy;Lcom/android/systemui/recents/misc/SystemServicesProxy$H;)V

    iput-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mHandler:Landroid/os/Handler;

    .line 204
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIFsGestureCallbackMap:Ljava/util/HashMap;

    .line 205
    iput-boolean v5, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIsFsGestureAnimating:Z

    .line 256
    new-instance v3, Lcom/android/systemui/recents/misc/SystemServicesProxy$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/recents/misc/SystemServicesProxy$1;-><init>(Lcom/android/systemui/recents/misc/SystemServicesProxy;)V

    iput-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mTaskStackListener:Lcom/android/systemui/recents/misc/TaskStackListener;

    .line 340
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mTaskStackListeners:Ljava/util/List;

    .line 344
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAccm:Landroid/view/accessibility/AccessibilityManager;

    .line 345
    const-string/jumbo v3, "activity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    iput-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    .line 346
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    .line 347
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    .line 348
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIpm:Landroid/content/pm/IPackageManager;

    .line 349
    new-instance v3, Lcom/android/internal/app/AssistUtils;

    invoke-direct {v3, p1}, Lcom/android/internal/app/AssistUtils;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    .line 350
    const-string/jumbo v3, "window"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    iput-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mWm:Landroid/view/WindowManager;

    .line 351
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIwm:Landroid/view/IWindowManager;

    .line 352
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mUm:Landroid/os/UserManager;

    .line 354
    const-string/jumbo v3, "dreams"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 353
    invoke-static {v3}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDreamManager:Landroid/service/dreams/IDreamManager;

    .line 355
    iget-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mWm:Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDisplay:Landroid/view/Display;

    .line 356
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mWpm:Landroid/app/WallpaperManager;

    .line 357
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mRecentsPackage:Ljava/lang/String;

    .line 362
    iput-boolean v5, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mHasFreeformWorkspaceSupport:Z

    .line 363
    iget-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIsSafeMode:Z

    .line 366
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 367
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x1050002

    .line 368
    .local v2, "wId":I
    const v0, 0x1050001

    .line 369
    .local v0, "hId":I
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDummyThumbnailWidth:I

    .line 370
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDummyThumbnailHeight:I

    .line 372
    const v3, 0x105001b

    .line 371
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mStatusBarHeight:I

    .line 375
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mBgProtectionPaint:Landroid/graphics/Paint;

    .line 376
    iget-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mBgProtectionPaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 377
    iget-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mBgProtectionPaint:Landroid/graphics/Paint;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 378
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3}, Landroid/graphics/Canvas;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mBgProtectionCanvas:Landroid/graphics/Canvas;

    .line 381
    iget-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAssistComponent:Landroid/content/ComponentName;

    .line 388
    invoke-static {p1}, Lcom/miui/browser/webapps/WebAppDAO;->getInstance(Landroid/content/Context;)Lcom/miui/browser/webapps/WebAppDAO;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mWebAppDAO:Lcom/miui/browser/webapps/WebAppDAO;

    .line 389
    new-instance v3, Landroid/speech/tts/TtsEngines;

    iget-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mTtsEngines:Landroid/speech/tts/TtsEngines;

    .line 390
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mContext:Landroid/content/Context;

    .line 343
    return-void
.end method

.method private createAccessLockedFakeScreenshot()Landroid/graphics/Bitmap;
    .locals 10

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    const/4 v8, 0x0

    const v7, 0x3f19999a    # 0.6f

    .line 1372
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 1373
    .local v3, "size":Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 1375
    .local v2, "displayRect":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v7

    float-to-int v5, v5

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Point;->set(II)V

    .line 1376
    iget v5, v3, Landroid/graphics/Point;->x:I

    iget v6, v3, Landroid/graphics/Point;->y:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1377
    .local v0, "bmp":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1379
    .local v1, "canvas":Landroid/graphics/Canvas;
    iget-object v5, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x9040101

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1380
    .local v4, "view":Landroid/view/View;
    iget v5, v3, Landroid/graphics/Point;->x:I

    invoke-static {v5, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 1381
    iget v6, v3, Landroid/graphics/Point;->y:I

    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1380
    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    .line 1382
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v4, v8, v8, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 1383
    invoke-virtual {v4, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1384
    return-object v0
.end method

.method private getAccessLockedFakeScreenshot(Z)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "mIsPort"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1361
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAccessLockedFakeScreenshotPort:Ljava/lang/ref/SoftReference;

    if-nez v2, :cond_1

    move-object v0, v1

    .line 1363
    .local v0, "bmp":Landroid/graphics/Bitmap;
    :goto_0
    if-nez v0, :cond_0

    .line 1364
    invoke-direct {p0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->createAccessLockedFakeScreenshot()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1365
    if-eqz p1, :cond_4

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAccessLockedFakeScreenshotPort:Ljava/lang/ref/SoftReference;

    .line 1368
    :cond_0
    :goto_1
    return-object v0

    .line 1361
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAccessLockedFakeScreenshotPort:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    move-object v0, v1

    goto :goto_0

    .line 1362
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAccessLockedFakeScreenshotLand:Ljava/lang/ref/SoftReference;

    if-nez v2, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAccessLockedFakeScreenshotLand:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    move-object v0, v1

    goto :goto_0

    .line 1366
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_4
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAccessLockedFakeScreenshotLand:Ljava/lang/ref/SoftReference;

    goto :goto_1
.end method

.method private getBadgedIcon(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "userId"    # I

    .prologue
    .line 1016
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eq p2, v0, :cond_0

    .line 1017
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 1019
    :cond_0
    return-object p1
.end method

.method private getBadgedLabel(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1057
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eq p2, v0, :cond_0

    .line 1058
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1060
    :cond_0
    return-object p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 398
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 399
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Must be called on the UI thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 401
    :cond_0
    sget-object v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    if-nez v0, :cond_1

    .line 402
    new-instance v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    .line 404
    :cond_1
    sget-object v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    return-object v0
.end method

.method public static getMultiWindowForceNotResizeList(Landroid/content/Context;)Ljava/util/List;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1503
    sget-object v9, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sMultiWindowForceNotResizePkgList:Ljava/util/List;

    monitor-enter v9

    .line 1504
    :try_start_0
    sget-object v8, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sMultiWindowForceNotResizePkgList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1506
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 1507
    invoke-static {}, Lcom/android/systemui/recents/misc/Utilities;->isAndroidNorNewer()Z

    move-result v8

    if-eqz v8, :cond_3

    const-string/jumbo v8, "MultiWindowForceNotResizePkgsForN"

    .line 1506
    :goto_0
    invoke-static {v10, v8}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataList(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 1508
    .local v5, "multiWindowForceNotResizePkgsCloudDataList":Ljava/util/List;, "Ljava/util/List<Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;>;"
    if-eqz v5, :cond_1

    .line 1510
    :try_start_1
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "data$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;

    .line 1511
    .local v0, "data":Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    invoke-virtual {v0}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1512
    .local v3, "json":Ljava/lang/String;
    const-string/jumbo v8, "SystemServicesProxy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "json="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1516
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1518
    .local v4, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v8, "pkg"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1519
    .local v6, "pkg":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1520
    sget-object v8, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sMultiWindowForceNotResizePkgList:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1523
    .end local v0    # "data":Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    .end local v1    # "data$iterator":Ljava/util/Iterator;
    .end local v3    # "json":Ljava/lang/String;
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v6    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1524
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1529
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "multiWindowForceNotResizePkgsCloudDataList":Ljava/util/List;, "Ljava/util/List<Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;>;"
    :cond_1
    sget-object v8, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sMultiWindowForceNotResizePkgList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1530
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x90b00e1

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 1531
    .local v7, "stringArray":[Ljava/lang/String;
    sget-object v8, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sMultiWindowForceNotResizePkgList:Ljava/util/List;

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v7    # "stringArray":[Ljava/lang/String;
    :cond_2
    monitor-exit v9

    .line 1534
    sget-object v8, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sMultiWindowForceNotResizePkgList:Ljava/util/List;

    return-object v8

    .line 1507
    :cond_3
    :try_start_3
    const-string/jumbo v8, "MultiWindowForceNotResizePkgsForM"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1503
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8
.end method

.method public static getMultiWindowForceResizeList(Landroid/content/Context;)Ljava/util/List;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1468
    sget-object v9, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sMultiWindowForceResizePkgList:Ljava/util/List;

    monitor-enter v9

    .line 1469
    :try_start_0
    sget-object v8, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sMultiWindowForceResizePkgList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1471
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 1472
    invoke-static {}, Lcom/android/systemui/recents/misc/Utilities;->isAndroidNorNewer()Z

    move-result v8

    if-eqz v8, :cond_3

    const-string/jumbo v8, "MultiWindowForceResizePkgsForN"

    .line 1471
    :goto_0
    invoke-static {v10, v8}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataList(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 1473
    .local v5, "multiWindowForceResizePkgsCloudDataList":Ljava/util/List;, "Ljava/util/List<Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;>;"
    if-eqz v5, :cond_1

    .line 1475
    :try_start_1
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "data$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;

    .line 1476
    .local v0, "data":Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    invoke-virtual {v0}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1477
    .local v3, "json":Ljava/lang/String;
    const-string/jumbo v8, "SystemServicesProxy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "json="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1481
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1483
    .local v4, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v8, "pkg"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1484
    .local v6, "pkg":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1485
    sget-object v8, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sMultiWindowForceResizePkgList:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1488
    .end local v0    # "data":Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    .end local v1    # "data$iterator":Ljava/util/Iterator;
    .end local v3    # "json":Ljava/lang/String;
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v6    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1489
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1494
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "multiWindowForceResizePkgsCloudDataList":Ljava/util/List;, "Ljava/util/List<Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;>;"
    :cond_1
    sget-object v8, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sMultiWindowForceResizePkgList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1495
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x90b00e0

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 1496
    .local v7, "stringArray":[Ljava/lang/String;
    sget-object v8, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sMultiWindowForceResizePkgList:Ljava/util/List;

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v7    # "stringArray":[Ljava/lang/String;
    :cond_2
    monitor-exit v9

    .line 1499
    sget-object v8, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sMultiWindowForceResizePkgList:Ljava/util/List;

    return-object v8

    .line 1472
    :cond_3
    :try_start_3
    const-string/jumbo v8, "MultiWindowForceResizePkgsForM"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1468
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8
.end method

.method private getTaskThumbnailInfo(Landroid/app/ActivityManager$TaskThumbnail;)Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;
    .locals 3
    .param p1, "taskThumbnail"    # Landroid/app/ActivityManager$TaskThumbnail;

    .prologue
    const/4 v2, 0x0

    .line 756
    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/app/ActivityManager$TaskThumbnail;->thumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

    if-nez v1, :cond_1

    :cond_0
    return-object v2

    .line 757
    :cond_1
    new-instance v0, Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;

    invoke-direct {v0}, Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;-><init>()V

    .line 758
    .local v0, "taskThumbnailInfo":Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;
    iget-object v1, p1, Landroid/app/ActivityManager$TaskThumbnail;->thumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

    iget v1, v1, Landroid/app/ActivityManager$TaskThumbnailInfo;->taskWidth:I

    iput v1, v0, Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;->taskWidth:I

    .line 759
    iget-object v1, p1, Landroid/app/ActivityManager$TaskThumbnail;->thumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

    iget v1, v1, Landroid/app/ActivityManager$TaskThumbnailInfo;->taskHeight:I

    iput v1, v0, Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;->taskHeight:I

    .line 760
    iget-object v1, p1, Landroid/app/ActivityManager$TaskThumbnail;->thumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

    iget v1, v1, Landroid/app/ActivityManager$TaskThumbnailInfo;->screenOrientation:I

    iput v1, v0, Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;->screenOrientation:I

    .line 761
    return-object v0
.end method

.method public static isFreeformStack(I)Z
    .locals 1
    .param p0, "stackId"    # I

    .prologue
    .line 606
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHomeOrRecentsStack(ILandroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 1
    .param p0, "stackId"    # I
    .param p1, "runningTask"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .prologue
    .line 585
    invoke-static {p0, p1}, Lcom/android/systemui/SystemUICompat;->isHomeOrRecentsStack(ILandroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public awakenDreamsAsync()V
    .locals 2

    .prologue
    .line 1415
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/misc/SystemServicesProxy$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/misc/SystemServicesProxy$4;-><init>(Lcom/android/systemui/recents/misc/SystemServicesProxy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1414
    return-void
.end method

.method public cancelThumbnailTransition(I)V
    .locals 2
    .param p1, "taskId"    # I

    .prologue
    .line 659
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    if-nez v1, :cond_0

    return-void

    .line 662
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    invoke-static {v1, p1}, Lcom/android/systemui/SystemUICompat;->cancelTaskThumbnailTransition(Landroid/app/IActivityManager;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 658
    :goto_0
    return-void

    .line 663
    :catch_0
    move-exception v0

    .line 664
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public cancelWindowTransition(I)V
    .locals 2
    .param p1, "taskId"    # I

    .prologue
    .line 646
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    if-nez v1, :cond_0

    return-void

    .line 649
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    invoke-static {v1, p1}, Lcom/android/systemui/SystemUICompat;->cancelTaskWindowTransition(Landroid/app/IActivityManager;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 645
    :goto_0
    return-void

    .line 650
    :catch_0
    move-exception v0

    .line 651
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public changeAlphaScaleForFsGesture(Ljava/lang/String;FF)V
    .locals 6
    .param p1, "callbackKey"    # Ljava/lang/String;
    .param p2, "alpha"    # F
    .param p3, "scale"    # F

    .prologue
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    .line 1561
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->changeAlphaScaleForFsGesture(Ljava/lang/String;FFII)V

    .line 1560
    return-void
.end method

.method public changeAlphaScaleForFsGesture(Ljava/lang/String;FFII)V
    .locals 9
    .param p1, "callbackKey"    # Ljava/lang/String;
    .param p2, "alpha"    # F
    .param p3, "scale"    # F
    .param p4, "pivotX"    # I
    .param p5, "pivotY"    # I

    .prologue
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v7, v6

    move v8, v6

    .line 1565
    invoke-virtual/range {v0 .. v8}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->changeAlphaScaleForFsGesture(Ljava/lang/String;FFIIIIZ)V

    .line 1564
    return-void
.end method

.method public changeAlphaScaleForFsGesture(Ljava/lang/String;FFIIIIZ)V
    .locals 9
    .param p1, "callbackKey"    # Ljava/lang/String;
    .param p2, "alpha"    # F
    .param p3, "scale"    # F
    .param p4, "pivotX"    # I
    .param p5, "pivotY"    # I
    .param p6, "iconPivotX"    # I
    .param p7, "iconPivotY"    # I
    .param p8, "visible"    # Z

    .prologue
    .line 1569
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIFsGestureCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/fsgesture/IFsGestureCallback;

    .line 1571
    .local v0, "callback":Lcom/android/systemui/fsgesture/IFsGestureCallback;
    if-eqz v0, :cond_0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    .line 1572
    :try_start_0
    invoke-interface/range {v0 .. v7}, Lcom/android/systemui/fsgesture/IFsGestureCallback;->changeAlphaScale(FFIIIIZ)V

    .line 1573
    sget-boolean v1, Lcom/android/systemui/recents/misc/SystemServicesProxy;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1574
    const-string/jumbo v1, "SystemServicesProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "changeAlphaScaleForFsGesture callbackKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " alpha="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1575
    const-string/jumbo v3, " scale="

    .line 1574
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1575
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    .line 1574
    invoke-static {v1, v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1568
    :cond_0
    :goto_0
    return-void

    .line 1578
    :catch_0
    move-exception v8

    .line 1579
    .local v8, "e":Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public endProlongedAnimations()V
    .locals 2

    .prologue
    .line 1288
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mWm:Landroid/view/WindowManager;

    if-nez v1, :cond_0

    .line 1289
    return-void

    .line 1292
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/IWindowManager;->endProlongedAnimations()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1287
    :goto_0
    return-void

    .line 1293
    :catch_0
    move-exception v0

    .line 1294
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getActivityInfo(Landroid/content/ComponentName;)Landroid/content/pm/ActivityInfo;
    .locals 4
    .param p1, "cn"    # Landroid/content/ComponentName;

    .prologue
    const/4 v3, 0x0

    .line 882
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    if-nez v1, :cond_0

    return-object v3

    .line 886
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    const/16 v2, 0x80

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 887
    :catch_0
    move-exception v0

    .line 888
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 889
    return-object v3
.end method

.method public getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .locals 4
    .param p1, "cn"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 865
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIpm:Landroid/content/pm/IPackageManager;

    if-nez v1, :cond_0

    return-object v3

    .line 869
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIpm:Landroid/content/pm/IPackageManager;

    const/16 v2, 0x80

    invoke-interface {v1, p1, v2, p2}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 870
    :catch_0
    move-exception v0

    .line 871
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 872
    return-object v3
.end method

.method public getBadgedActivityIcon(Landroid/content/pm/ActivityInfo;I)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;
    .param p2, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 951
    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    if-nez v2, :cond_0

    return-object v3

    .line 957
    :cond_0
    const/4 v0, 0x0

    .line 958
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mWebAppDAO:Lcom/miui/browser/webapps/WebAppDAO;

    invoke-virtual {v2, p1}, Lcom/miui/browser/webapps/WebAppDAO;->get(Landroid/content/pm/ActivityInfo;)Lcom/miui/browser/webapps/WebAppInfo;

    move-result-object v1

    .line 959
    .local v1, "webAppInfo":Lcom/miui/browser/webapps/WebAppInfo;
    if-eqz v1, :cond_1

    .line 960
    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/miui/browser/webapps/WebAppInfo;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 962
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_1
    if-nez v0, :cond_2

    .line 963
    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    const-wide/32 v4, 0x2932e00

    invoke-static {v2, p1, v3, v4, v5}, Lmiui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;J)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 965
    :cond_2
    if-nez v0, :cond_3

    .line 966
    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v2}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 969
    :cond_3
    invoke-static {p2}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 970
    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lmiui/securityspace/XSpaceUserHandle;->getXSpaceIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 972
    :cond_4
    invoke-direct {p0, v0, p2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getBadgedIcon(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2
.end method

.method public getBadgedActivityLabel(Landroid/content/pm/ActivityInfo;I)Ljava/lang/String;
    .locals 4
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;
    .param p2, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 897
    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    if-nez v2, :cond_0

    return-object v3

    .line 903
    :cond_0
    const/4 v0, 0x0

    .line 904
    .local v0, "title":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mWebAppDAO:Lcom/miui/browser/webapps/WebAppDAO;

    invoke-virtual {v2, p1}, Lcom/miui/browser/webapps/WebAppDAO;->get(Landroid/content/pm/ActivityInfo;)Lcom/miui/browser/webapps/WebAppInfo;

    move-result-object v1

    .line 905
    .local v1, "webAppInfo":Lcom/miui/browser/webapps/WebAppInfo;
    if-eqz v1, :cond_1

    .line 906
    iget-object v0, v1, Lcom/miui/browser/webapps/WebAppInfo;->mLabel:Ljava/lang/String;

    .line 908
    .end local v0    # "title":Ljava/lang/String;
    :cond_1
    if-nez v0, :cond_2

    .line 909
    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 911
    :cond_2
    invoke-direct {p0, v0, p2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getBadgedLabel(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getBadgedContentDescription(Landroid/content/pm/ActivityInfo;ILandroid/content/res/Resources;)Ljava/lang/String;
    .locals 5
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;
    .param p2, "userId"    # I
    .param p3, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 938
    iget-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v3}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 939
    .local v0, "activityLabel":Ljava/lang/String;
    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 940
    .local v1, "applicationLabel":Ljava/lang/String;
    invoke-direct {p0, v1, p2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getBadgedLabel(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 941
    .local v2, "badgedApplicationLabel":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .end local v2    # "badgedApplicationLabel":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 942
    .restart local v2    # "badgedApplicationLabel":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 943
    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    .line 942
    const v4, 0x91000e7

    invoke-virtual {p3, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getBadgedTaskDescriptionIcon(Landroid/app/ActivityManager$TaskDescription;ILandroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "taskDescription"    # Landroid/app/ActivityManager$TaskDescription;
    .param p2, "userId"    # I
    .param p3, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v2, 0x0

    .line 1002
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getInMemoryIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1003
    .local v0, "tdIcon":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 1004
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/app/ActivityManagerCompat;->loadTaskDescriptionIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1006
    :cond_0
    if-eqz v0, :cond_1

    .line 1007
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v1, p2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getBadgedIcon(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 1009
    :cond_1
    return-object v2
.end method

.method public getCurrentUser()I
    .locals 1

    .prologue
    .line 1092
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1094
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    return v0
.end method

.method public getDeviceSmallestWidth()I
    .locals 3

    .prologue
    .line 1154
    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDisplay:Landroid/view/Display;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    return v2

    .line 1156
    :cond_0
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 1157
    .local v1, "smallestSizeRange":Landroid/graphics/Point;
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 1158
    .local v0, "largestSizeRange":Landroid/graphics/Point;
    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2, v1, v0}, Landroid/view/Display;->getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 1159
    iget v2, v1, Landroid/graphics/Point;->x:I

    return v2
.end method

.method public getDisplayRect()Landroid/graphics/Rect;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1166
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1167
    .local v0, "displayRect":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDisplay:Landroid/view/Display;

    if-nez v2, :cond_0

    return-object v0

    .line 1169
    :cond_0
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 1170
    .local v1, "p":Landroid/graphics/Point;
    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1171
    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1172
    return-object v0
.end method

.method public getDisplayRotation()I
    .locals 1

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDisplay:Landroid/view/Display;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1200
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    return v0
.end method

.method public getDockedDividerSize(Landroid/content/Context;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1312
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1314
    .local v2, "res":Landroid/content/res/Resources;
    const v3, 0x90f0237

    .line 1313
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1316
    .local v1, "dividerWindowWidth":I
    const v3, 0x90f0238

    .line 1315
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1317
    .local v0, "dividerInsets":I
    mul-int/lit8 v3, v0, 0x2

    sub-int v3, v1, v3

    return v3
.end method

.method public getProcessUser()I
    .locals 1

    .prologue
    .line 1101
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mUm:Landroid/os/UserManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1102
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserHandle()I

    move-result v0

    return v0
.end method

.method public getRecentTasks(IIZLandroid/util/ArraySet;)Ljava/util/List;
    .locals 11
    .param p1, "numLatestTasks"    # I
    .param p2, "userId"    # I
    .param p3, "includeFrontMostExcludedTask"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 416
    .local p4, "quietProfileIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v9, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    if-nez v9, :cond_0

    const/4 v9, 0x0

    return-object v9

    .line 450
    :cond_0
    const/16 v5, 0xa

    .line 451
    .local v5, "minNumTasksToQuery":I
    invoke-static {v5, p1}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 452
    .local v6, "numTasksToQuery":I
    const/16 v1, 0x3e

    .line 457
    .local v1, "flags":I
    if-eqz p3, :cond_1

    .line 458
    const/16 v1, 0x3f

    .line 460
    :cond_1
    const/4 v8, 0x0

    .line 462
    .local v8, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :try_start_0
    iget-object v9, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v9, v6, v1, p2}, Landroid/app/ActivityManager;->getRecentTasksForUser(III)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 468
    .end local v8    # "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :goto_0
    if-nez v8, :cond_2

    .line 469
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    return-object v9

    .line 463
    .restart local v8    # "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :catch_0
    move-exception v0

    .line 464
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "SystemServicesProxy"

    const-string/jumbo v10, "Failed to get recent tasks"

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 472
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v8    # "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :cond_2
    const/4 v3, 0x1

    .line 473
    .local v3, "isFirstValidTask":Z
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 474
    .local v4, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 475
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 481
    .local v7, "t":Landroid/app/ActivityManager$RecentTaskInfo;
    if-eqz v7, :cond_4

    iget-object v9, v7, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v9, :cond_4

    .line 482
    sget-object v9, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sRecentsBlacklist:Ljava/util/List;

    iget-object v10, v7, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 483
    sget-object v9, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sRecentsBlacklist:Ljava/util/List;

    iget-object v10, v7, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    .line 481
    if-eqz v9, :cond_4

    .line 484
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 490
    :cond_4
    iget-object v9, v7, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getFlags()I

    move-result v9

    const/high16 v10, 0x800000

    and-int/2addr v9, v10

    .line 491
    const/high16 v10, 0x800000

    .line 490
    if-ne v9, v10, :cond_6

    const/4 v2, 0x1

    .line 492
    .local v2, "isExcluded":Z
    :goto_2
    iget v9, v7, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p4, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v2, v9

    .line 493
    .local v2, "isExcluded":Z
    if-eqz v2, :cond_5

    if-eqz v3, :cond_7

    if-eqz p3, :cond_7

    .line 497
    :cond_5
    :goto_3
    const/4 v3, 0x0

    goto :goto_1

    .line 490
    .end local v2    # "isExcluded":Z
    :cond_6
    const/4 v2, 0x0

    .local v2, "isExcluded":Z
    goto :goto_2

    .line 494
    .local v2, "isExcluded":Z
    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 500
    .end local v2    # "isExcluded":Z
    .end local v7    # "t":Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_8
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9, p1}, Ljava/lang/Math;->min(II)I

    move-result v9

    const/4 v10, 0x0

    invoke-interface {v8, v10, v9}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v9

    return-object v9
.end method

.method public getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 507
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 508
    .local v0, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 511
    :cond_0
    return-object v3

    .line 509
    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    return-object v1
.end method

.method public getStableInsets(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "outStableInsets"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x0

    .line 1321
    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mWm:Landroid/view/WindowManager;

    if-nez v2, :cond_0

    return-void

    .line 1324
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/android/systemui/SystemUICompat;->getStableInsets(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1328
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1329
    const-string/jumbo v3, "force_fsg_nav_bar"

    .line 1328
    invoke-static {v2, v3}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    .line 1330
    .local v1, "hideNav":Z
    if-eqz v1, :cond_1

    .line 1331
    iput v4, p1, Landroid/graphics/Rect;->left:I

    .line 1332
    iput v4, p1, Landroid/graphics/Rect;->right:I

    .line 1333
    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 1320
    :cond_1
    return-void

    .line 1325
    .end local v1    # "hideNav":Z
    :catch_0
    move-exception v0

    .line 1326
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getSystemSetting(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "setting"    # Ljava/lang/String;

    .prologue
    .line 1139
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1140
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public getTaskStackListener()Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;
    .locals 1

    .prologue
    .line 1689
    new-instance v0, Lcom/android/systemui/recents/misc/SystemServicesProxy$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/misc/SystemServicesProxy$6;-><init>(Lcom/android/systemui/recents/misc/SystemServicesProxy;)V

    return-object v0
.end method

.method public getTaskThumbnail(Lcom/android/systemui/recents/model/Task$TaskKey;)Lcom/android/systemui/recents/model/ThumbnailData;
    .locals 8
    .param p1, "taskKey"    # Lcom/android/systemui/recents/model/Task$TaskKey;

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 670
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    return-object v7

    .line 671
    :cond_0
    new-instance v6, Lcom/android/systemui/recents/model/ThumbnailData;

    invoke-direct {v6}, Lcom/android/systemui/recents/model/ThumbnailData;-><init>()V

    .line 681
    .local v6, "thumbnailData":Lcom/android/systemui/recents/model/ThumbnailData;
    invoke-virtual {p0, p1, v6}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getThumbnail(Lcom/android/systemui/recents/model/Task$TaskKey;Lcom/android/systemui/recents/model/ThumbnailData;)V

    .line 682
    iget-object v0, v6, Lcom/android/systemui/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 683
    iget-object v0, v6, Lcom/android/systemui/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 687
    iget-object v0, v6, Lcom/android/systemui/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 688
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mBgProtectionCanvas:Landroid/graphics/Canvas;

    iget-object v2, v6, Lcom/android/systemui/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 689
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mBgProtectionCanvas:Landroid/graphics/Canvas;

    iget-object v2, v6, Lcom/android/systemui/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v3, v2

    .line 690
    iget-object v2, v6, Lcom/android/systemui/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v4, v2

    iget-object v5, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mBgProtectionPaint:Landroid/graphics/Paint;

    move v2, v1

    .line 689
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 691
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mBgProtectionCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 692
    const-string/jumbo v0, "SystemServicesProxy"

    const-string/jumbo v1, "Invalid screenshot detected from getTaskThumbnail()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    :cond_1
    return-object v6
.end method

.method public getThumbnail(Lcom/android/systemui/recents/model/Task$TaskKey;Lcom/android/systemui/recents/model/ThumbnailData;)V
    .locals 23
    .param p1, "taskKey"    # Lcom/android/systemui/recents/model/Task$TaskKey;
    .param p2, "thumbnailDataOut"    # Lcom/android/systemui/recents/model/ThumbnailData;

    .prologue
    .line 702
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isAccessLocked(Lcom/android/systemui/recents/model/Task$TaskKey;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDisplay:Landroid/view/Display;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/Display;->getRotation()I

    move-result v19

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDisplay:Landroid/view/Display;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/Display;->getRotation()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v14, 0x1

    .line 704
    .local v14, "mIsPort":Z
    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getAccessLockedFakeScreenshot(Z)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 705
    .local v5, "accessLockedFakeScreenshot":Landroid/graphics/Bitmap;
    move-object/from16 v0, p2

    iput-object v5, v0, Lcom/android/systemui/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    .line 706
    new-instance v17, Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;

    invoke-direct/range {v17 .. v17}, Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;-><init>()V

    .line 707
    .local v17, "taskThumbnailInfo":Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;
    if-eqz v14, :cond_2

    const/16 v19, 0x1

    :goto_1
    move/from16 v0, v19

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;->screenOrientation:I

    .line 708
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;->taskWidth:I

    .line 709
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;->taskHeight:I

    .line 710
    move-object/from16 v0, v17

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/systemui/recents/model/ThumbnailData;->thumbnailInfo:Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;

    .line 711
    return-void

    .line 703
    .end local v5    # "accessLockedFakeScreenshot":Landroid/graphics/Bitmap;
    .end local v14    # "mIsPort":Z
    .end local v17    # "taskThumbnailInfo":Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;
    :cond_1
    const/4 v14, 0x0

    goto :goto_0

    .line 707
    .restart local v5    # "accessLockedFakeScreenshot":Landroid/graphics/Bitmap;
    .restart local v14    # "mIsPort":Z
    .restart local v17    # "taskThumbnailInfo":Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;
    :cond_2
    const/16 v19, 0x2

    goto :goto_1

    .line 713
    .end local v5    # "accessLockedFakeScreenshot":Landroid/graphics/Bitmap;
    .end local v14    # "mIsPort":Z
    .end local v17    # "taskThumbnailInfo":Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    move-object/from16 v19, v0

    if-nez v19, :cond_4

    .line 714
    return-void

    .line 719
    :cond_4
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/app/ActivityManager;->getTaskThumbnail(I)Landroid/app/ActivityManager$TaskThumbnail;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    .line 724
    .local v16, "taskThumbnail":Landroid/app/ActivityManager$TaskThumbnail;
    if-nez v16, :cond_5

    .line 725
    return-void

    .line 720
    .end local v16    # "taskThumbnail":Landroid/app/ActivityManager$TaskThumbnail;
    :catch_0
    move-exception v11

    .line 721
    .local v11, "e":Ljava/lang/Exception;
    const-string/jumbo v19, "SystemServicesProxy"

    const-string/jumbo v20, "Failed to get task thumbnail"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 722
    return-void

    .line 728
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v16    # "taskThumbnail":Landroid/app/ActivityManager$TaskThumbnail;
    :cond_5
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/app/ActivityManager$TaskThumbnail;->mainThumbnail:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    .line 729
    .local v18, "thumbnail":Landroid/graphics/Bitmap;
    move-object/from16 v0, v16

    iget-object v6, v0, Landroid/app/ActivityManager$TaskThumbnail;->thumbnailFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 730
    .local v6, "descriptor":Landroid/os/ParcelFileDescriptor;
    if-nez v18, :cond_6

    if-eqz v6, :cond_6

    .line 731
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v19

    .line 732
    sget-object v20, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/16 v21, 0x0

    .line 731
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 734
    :cond_6
    if-eqz v6, :cond_7

    .line 736
    :try_start_1
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 740
    :cond_7
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v8

    .line 741
    .local v8, "displayRect":Landroid/graphics/Rect;
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v19

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v20

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 742
    .local v9, "displayWidth":I
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v19

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v20

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 743
    .local v7, "displayHeight":I
    int-to-float v0, v9

    move/from16 v19, v0

    const v20, 0x3f19999a    # 0.6f

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v13, v0

    .line 744
    .local v13, "fullScreenShotWidth":I
    int-to-float v0, v7

    move/from16 v19, v0

    const v20, 0x3f19999a    # 0.6f

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v12, v0

    .line 745
    .local v12, "fullScreenShotHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mStatusBarHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const v20, 0x3f19999a    # 0.6f

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v15, v0

    .line 746
    .local v15, "statusBarScaleHeight":I
    if-eqz v18, :cond_8

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/app/ActivityManager$TaskThumbnail;->thumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

    move-object/from16 v19, v0

    if-eqz v19, :cond_8

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/app/ActivityManager$TaskThumbnail;->thumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/app/ActivityManager$TaskThumbnailInfo;->screenOrientation:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 747
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    move/from16 v0, v19

    if-ne v0, v13, :cond_8

    .line 748
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    sub-int v20, v20, v15

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-static {v0, v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 751
    :cond_8
    move-object/from16 v0, v18

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/systemui/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    .line 752
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTaskThumbnailInfo(Landroid/app/ActivityManager$TaskThumbnail;)Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/systemui/recents/model/ThumbnailData;->thumbnailInfo:Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;

    .line 701
    return-void

    .line 737
    .end local v7    # "displayHeight":I
    .end local v8    # "displayRect":Landroid/graphics/Rect;
    .end local v9    # "displayWidth":I
    .end local v12    # "fullScreenShotHeight":I
    .end local v13    # "fullScreenShotWidth":I
    .end local v15    # "statusBarScaleHeight":I
    :catch_1
    move-exception v10

    .local v10, "e":Ljava/io/IOException;
    goto/16 :goto_2
.end method

.method public getWindowModeFromRecentTaskInfo(Landroid/app/ActivityManager$RecentTaskInfo;)I
    .locals 1
    .param p1, "info"    # Landroid/app/ActivityManager$RecentTaskInfo;

    .prologue
    .line 617
    const/4 v0, 0x0

    return v0
.end method

.method public getWindowRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1192
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    invoke-static {v0}, Lcom/android/systemui/SystemUICompat;->getRecentsWindowRect(Landroid/app/IActivityManager;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public hasDockedTask()Z
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    invoke-static {v0}, Lcom/android/systemui/SystemUICompat;->hasDockedTask(Landroid/app/IActivityManager;)Z

    move-result v0

    return v0
.end method

.method public hasFreeformWorkspaceSupport()Z
    .locals 1

    .prologue
    .line 535
    iget-boolean v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mHasFreeformWorkspaceSupport:Z

    return v0
.end method

.method public hasSoftNavigationBar()Z
    .locals 2

    .prologue
    .line 625
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/IWindowManager;->hasNavigationBar()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 626
    :catch_0
    move-exception v0

    .line 627
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 629
    const/4 v1, 0x0

    return v1
.end method

.method public isAccessLocked(Lcom/android/systemui/recents/model/Task$TaskKey;)Z
    .locals 4
    .param p1, "taskKey"    # Lcom/android/systemui/recents/model/Task$TaskKey;

    .prologue
    const/4 v1, 0x0

    .line 1351
    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "security"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    .line 1352
    .local v0, "sm":Lmiui/security/SecurityManager;
    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lmiui/security/SecurityManager;->isAccessControlActived(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1353
    invoke-virtual {p1}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget v3, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v0, v2, v3}, Lmiui/security/SecurityManager;->getApplicationAccessControlEnabledAsUser(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1354
    invoke-virtual {p1}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget v3, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v0, v2, v3}, Lmiui/security/SecurityManager;->checkAccessControlPassAsUser(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 1357
    :cond_1
    return v1
.end method

.method public isDreaming()Z
    .locals 3

    .prologue
    .line 1407
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v1}, Landroid/service/dreams/IDreamManager;->isDreaming()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1408
    :catch_0
    move-exception v0

    .line 1409
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SystemServicesProxy"

    const-string/jumbo v2, "Failed to query dream manager."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1411
    const/4 v1, 0x0

    return v1
.end method

.method public isFsGestureAnimating()Z
    .locals 1

    .prologue
    .line 1588
    iget-boolean v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIsFsGestureAnimating:Z

    return v0
.end method

.method public isInSafeMode()Z
    .locals 1

    .prologue
    .line 542
    iget-boolean v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIsSafeMode:Z

    return v0
.end method

.method public isRecentsActivityVisible()Z
    .locals 1

    .prologue
    .line 518
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible(Lcom/android/systemui/recents/model/MutableBoolean;)Z

    move-result v0

    return v0
.end method

.method public isRecentsActivityVisible(Lcom/android/systemui/recents/model/MutableBoolean;)Z
    .locals 2
    .param p1, "isHomeStackVisible"    # Lcom/android/systemui/recents/model/MutableBoolean;

    .prologue
    .line 528
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {p1, v0, v1}, Lcom/android/systemui/SystemUICompat;->isRecentsActivityVisible(Lcom/android/systemui/recents/model/MutableBoolean;Landroid/app/IActivityManager;Landroid/content/pm/PackageManager;)Z

    move-result v0

    return v0
.end method

.method public isScreenPinningActive()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1118
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    if-nez v1, :cond_0

    return v2

    .line 1121
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    invoke-interface {v1}, Landroid/app/IActivityManager;->isInLockTaskMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1122
    :catch_0
    move-exception v0

    .line 1123
    .local v0, "e":Landroid/os/RemoteException;
    return v2
.end method

.method public isSystemUser(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 1085
    sget-object v0, Landroid/os/UserHandleCompat;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTouchExplorationEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1109
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAccm:Landroid/view/accessibility/AccessibilityManager;

    if-nez v1, :cond_0

    return v0

    .line 1111
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAccm:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAccm:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    :cond_1
    return v0
.end method

.method public killProcess(Lcom/android/systemui/recents/model/Task;)V
    .locals 2
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 794
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/misc/SystemServicesProxy$3;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy$3;-><init>(Lcom/android/systemui/recents/misc/SystemServicesProxy;Lcom/android/systemui/recents/model/Task;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 793
    return-void
.end method

.method public moveTaskToDockedStack(IILandroid/graphics/Rect;)Z
    .locals 9
    .param p1, "taskId"    # I
    .param p2, "createMode"    # I
    .param p3, "initialBounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v8, 0x0

    .line 568
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    if-nez v0, :cond_0

    .line 569
    return v8

    .line 573
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    const/4 v3, 0x1

    .line 574
    const/4 v4, 0x0

    const/4 v6, 0x1

    move v1, p1

    move v2, p2

    move-object v5, p3

    .line 573
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManagerCompat;->moveTaskToDockedStack(Landroid/app/IActivityManager;IIZZLandroid/graphics/Rect;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 575
    :catch_0
    move-exception v7

    .line 576
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    .line 578
    return v8
.end method

.method public moveTaskToStack(II)V
    .locals 4
    .param p1, "taskId"    # I
    .param p2, "stackId"    # I

    .prologue
    .line 768
    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    if-nez v2, :cond_0

    return-void

    .line 771
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    const/4 v3, 0x0

    invoke-interface {v2, p1, p2, v3}, Landroid/app/IActivityManager;->positionTaskInStack(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 767
    :goto_0
    return-void

    .line 774
    :catch_0
    move-exception v1

    .line 775
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 772
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 773
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public overridePendingAppTransitionMultiThumbFuture(Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/os/IRemoteCallback;Z)V
    .locals 4
    .param p1, "future"    # Landroid/view/IAppTransitionAnimationSpecsFuture;
    .param p2, "animStartedListener"    # Landroid/os/IRemoteCallback;
    .param p3, "scaleUp"    # Z

    .prologue
    .line 1341
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/view/IWindowManager;->overridePendingAppTransitionMultiThumbFuture(Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/os/IRemoteCallback;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1339
    :goto_0
    return-void

    .line 1344
    :catch_0
    move-exception v0

    .line 1345
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SystemServicesProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to override transition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerDockedStackListener(Landroid/view/IDockedStackListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/IDockedStackListener;

    .prologue
    .line 1299
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mWm:Landroid/view/WindowManager;

    if-nez v1, :cond_0

    return-void

    .line 1302
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/IWindowManager;->registerDockedStackListener(Landroid/view/IDockedStackListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1298
    :goto_0
    return-void

    .line 1303
    :catch_0
    move-exception v0

    .line 1304
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public registerFsGestureCall(Ljava/lang/String;Lcom/android/systemui/fsgesture/IFsGestureCallback;)V
    .locals 1
    .param p1, "callbackKey"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/systemui/fsgesture/IFsGestureCallback;

    .prologue
    .line 1545
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1546
    :cond_0
    return-void

    .line 1548
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIFsGestureCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1544
    return-void
.end method

.method public registerMiuiTaskResizeList(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1437
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/misc/SystemServicesProxy$5;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy$5;-><init>(Lcom/android/systemui/recents/misc/SystemServicesProxy;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1436
    return-void
.end method

.method public registerTaskStackListener(Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;

    .prologue
    .line 1274
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    if-nez v1, :cond_0

    return-void

    .line 1276
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mTaskStackListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1277
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mTaskStackListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1280
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mTaskStackListener:Lcom/android/systemui/recents/misc/TaskStackListener;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1273
    :cond_1
    :goto_0
    return-void

    .line 1281
    :catch_0
    move-exception v0

    .line 1282
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "SystemServicesProxy"

    const-string/jumbo v2, "Failed to call registerTaskStackListener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public sendCloseSystemWindows(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 853
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 851
    :goto_0
    return-void

    .line 854
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public sendPushEvent(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .param p3, "uploadPermission"    # Ljava/lang/String;

    .prologue
    .line 1428
    invoke-static {}, Lcom/android/systemui/Util;->isUserExperienceProgramEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1429
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1431
    :cond_0
    sget-boolean v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 1432
    const-string/jumbo v0, "SystemServicesProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "send push event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    :cond_1
    return-void
.end method

.method public setIsFsGestureAnimating(Z)V
    .locals 0
    .param p1, "isAnimating"    # Z

    .prologue
    .line 1584
    iput-boolean p1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIsFsGestureAnimating:Z

    .line 1583
    return-void
.end method

.method public setRecentsVisibility(Landroid/content/Context;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "visible"    # Z

    .prologue
    .line 1391
    invoke-static {p1, p2}, Lcom/android/systemui/SystemUICompat;->setRecentsVisibility(Landroid/content/Context;Z)V

    .line 1390
    return-void
.end method

.method public startActivityFromRecents(Landroid/content/Context;Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/String;Landroid/app/ActivityOptions;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "taskKey"    # Lcom/android/systemui/recents/model/Task$TaskKey;
    .param p3, "taskName"    # Ljava/lang/String;
    .param p4, "options"    # Landroid/app/ActivityOptions;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 1238
    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    if-eqz v2, :cond_3

    .line 1240
    :try_start_0
    iget v2, p2, Lcom/android/systemui/recents/model/Task$TaskKey;->stackId:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 1243
    if-nez p4, :cond_0

    .line 1244
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p4

    .line 1246
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p4, v2}, Landroid/app/ActivityOptions;->setLaunchStackId(I)V

    .line 1248
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    .line 1249
    iget v3, p2, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    if-nez p4, :cond_2

    .line 1248
    :goto_0
    invoke-interface {v2, v3, v1}, Landroid/app/IActivityManager;->startActivityFromRecents(ILandroid/os/Bundle;)I

    .line 1250
    return v4

    .line 1249
    :cond_2
    invoke-virtual {p4}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1251
    :catch_0
    move-exception v0

    .line 1252
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "SystemServicesProxy"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p3, v2, v5

    const v3, 0x910017d

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1255
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    return v5
.end method

.method public startInPlaceAnimationOnFrontMostApplication(Landroid/app/ActivityOptions;)V
    .locals 2
    .param p1, "opts"    # Landroid/app/ActivityOptions;

    .prologue
    .line 1260
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    if-nez v1, :cond_0

    return-void

    .line 1263
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    invoke-static {v1, p1}, Landroid/app/ActivityManagerCompat;->startInPlaceAnimationOnFrontMostApplication(Landroid/app/IActivityManager;Landroid/app/ActivityOptions;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1259
    :goto_0
    return-void

    .line 1264
    :catch_0
    move-exception v0

    .line 1265
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public startTaskInDockedMode(II)Z
    .locals 6
    .param p1, "taskId"    # I
    .param p2, "createMode"    # I

    .prologue
    const/4 v5, 0x0

    .line 552
    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    if-nez v2, :cond_0

    return v5

    .line 555
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    .line 556
    .local v1, "options":Landroid/app/ActivityOptions;
    invoke-static {v1, p2}, Landroid/app/ActivityOptionsCompat;->setDockCreateMode(Landroid/app/ActivityOptions;I)V

    .line 557
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setLaunchStackId(I)V

    .line 558
    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Landroid/app/IActivityManager;->startActivityFromRecents(ILandroid/os/Bundle;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 559
    const/4 v2, 0x1

    return v2

    .line 560
    .end local v1    # "options":Landroid/app/ActivityOptions;
    :catch_0
    move-exception v0

    .line 561
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "SystemServicesProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to dock task: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " with createMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 563
    return v5
.end method

.method public startTaskInDockedMode(Lcom/android/systemui/recents/model/Task;ILandroid/content/Context;)Z
    .locals 1
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "createMode"    # I
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    invoke-static {p1, p2, v0, p3}, Lcom/android/systemui/SystemUICompat;->startTaskInDockedMode(Lcom/android/systemui/recents/model/Task;ILandroid/app/IActivityManager;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public unRegisterFsGestureCall(Ljava/lang/String;Lcom/android/systemui/fsgesture/IFsGestureCallback;)V
    .locals 1
    .param p1, "callbackKey"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/systemui/fsgesture/IFsGestureCallback;

    .prologue
    .line 1552
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1553
    :cond_0
    return-void

    .line 1555
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIFsGestureCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1556
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIFsGestureCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1551
    :cond_2
    return-void
.end method
