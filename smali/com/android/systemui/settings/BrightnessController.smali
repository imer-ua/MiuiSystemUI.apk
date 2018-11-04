.class public Lcom/android/systemui/settings/BrightnessController;
.super Ljava/lang/Object;
.source "BrightnessController.java"

# interfaces
.implements Lcom/android/systemui/settings/ToggleSlider$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/settings/BrightnessController$1;,
        Lcom/android/systemui/settings/BrightnessController$2;,
        Lcom/android/systemui/settings/BrightnessController$3;,
        Lcom/android/systemui/settings/BrightnessController$4;,
        Lcom/android/systemui/settings/BrightnessController$5;,
        Lcom/android/systemui/settings/BrightnessController$BrightnessFileObserver;,
        Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;,
        Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;
    }
.end annotation


# static fields
.field private static final IS_PINECONE:Z

.field public static final MINIMUM_BACKLIGHT:I

.field public static final RANGE:I

.field private static final SUPPORT_AUTO_BRIGHTNESS_OPTIMIZE:Z

.field public static final USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z


# instance fields
.field private mAutoScreenBrightness:I

.field private volatile mAutomatic:Z

.field private final mAutomaticAvailable:Z

.field private final mBackgroundHandler:Landroid/os/Handler;

.field private mBrightnessFileObserver:Lcom/android/systemui/settings/BrightnessController$BrightnessFileObserver;

.field private final mBrightnessObserver:Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;

.field private mChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mControl:Lcom/android/systemui/settings/ToggleSlider;

.field private mExternalChange:Z

.field private final mHandler:Landroid/os/Handler;

.field private mListening:Z

.field private mManualScreenBrightness:I

.field private final mPower:Landroid/os/IPowerManager;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mStartListeningRunnable:Ljava/lang/Runnable;

.field private final mStopListeningRunnable:Ljava/lang/Runnable;

.field private final mUpdateMiuiSliderRunnable:Ljava/lang/Runnable;

.field private final mUpdateModeRunnable:Ljava/lang/Runnable;

.field private final mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/settings/BrightnessController;->SUPPORT_AUTO_BRIGHTNESS_OPTIMIZE:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/settings/BrightnessController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomatic:Z

    return v0
.end method

.method static synthetic -get10(Lcom/android/systemui/settings/BrightnessController;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mUpdateModeRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/CurrentUserTracker;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/settings/BrightnessController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/BrightnessController$BrightnessFileObserver;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mBrightnessFileObserver:Lcom/android/systemui/settings/BrightnessController$BrightnessFileObserver;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mBrightnessObserver:Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/settings/BrightnessController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/settings/BrightnessController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/ToggleSlider;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/settings/BrightnessController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/settings/BrightnessController;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mUpdateMiuiSliderRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/settings/BrightnessController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/settings/BrightnessController;->mExternalChange:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/settings/BrightnessController;Z)V
    .locals 0
    .param p1, "isModeChanged"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/settings/BrightnessController;->updateBrightnessMode(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/settings/BrightnessController;Z)V
    .locals 0
    .param p1, "isChanged"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/settings/BrightnessController;->updateBrightness(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/settings/BrightnessController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/settings/BrightnessController;->updatePineconeBrightness()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    sget-boolean v0, Lmiui/os/DeviceFeature;->SUPPORT_AUTO_BRIGHTNESS_OPTIMIZE:Z

    sput-boolean v0, Lcom/android/systemui/settings/BrightnessController;->SUPPORT_AUTO_BRIGHTNESS_OPTIMIZE:Z

    .line 57
    const-string/jumbo v0, "pinecone"

    .line 58
    const-string/jumbo v1, "auto_brightness_optimize_strategy"

    invoke-static {v1}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/settings/BrightnessController;->IS_PINECONE:Z

    .line 62
    const-string/jumbo v0, "persist.power.useautobrightadj"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 61
    sput-boolean v0, Lcom/android/systemui/settings/BrightnessController;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    .line 86
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 87
    const v1, 0x11080005

    .line 86
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/android/systemui/settings/BrightnessController;->MINIMUM_BACKLIGHT:I

    .line 89
    sget v0, Lcom/android/systemui/settings/BrightnessController;->MINIMUM_BACKLIGHT:I

    rsub-int v0, v0, 0xff

    sput v0, Lcom/android/systemui/settings/BrightnessController;->RANGE:I

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/settings/ToggleSlider;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "control"    # Lcom/android/systemui/settings/ToggleSlider;

    .prologue
    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;

    .line 95
    const/16 v0, 0x80

    iput v0, p0, Lcom/android/systemui/settings/BrightnessController;->mManualScreenBrightness:I

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/settings/BrightnessController;->mAutoScreenBrightness:I

    .line 162
    new-instance v0, Lcom/android/systemui/settings/BrightnessController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/BrightnessController$1;-><init>(Lcom/android/systemui/settings/BrightnessController;)V

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mStartListeningRunnable:Ljava/lang/Runnable;

    .line 177
    new-instance v0, Lcom/android/systemui/settings/BrightnessController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/BrightnessController$2;-><init>(Lcom/android/systemui/settings/BrightnessController;)V

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mStopListeningRunnable:Ljava/lang/Runnable;

    .line 194
    new-instance v0, Lcom/android/systemui/settings/BrightnessController$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/BrightnessController$3;-><init>(Lcom/android/systemui/settings/BrightnessController;)V

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mUpdateModeRunnable:Ljava/lang/Runnable;

    .line 255
    new-instance v0, Lcom/android/systemui/settings/BrightnessController$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/BrightnessController$4;-><init>(Lcom/android/systemui/settings/BrightnessController;)V

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mUpdateMiuiSliderRunnable:Ljava/lang/Runnable;

    .line 312
    new-instance v0, Lcom/android/systemui/settings/BrightnessController$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/BrightnessController$5;-><init>(Lcom/android/systemui/settings/BrightnessController;)V

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mHandler:Landroid/os/Handler;

    .line 341
    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    .line 342
    iput-object p2, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    .line 343
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/DependencyUI;->initDependencies(Landroid/content/Context;)V

    .line 344
    new-instance v1, Landroid/os/Handler;

    sget-object v0, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    .line 345
    new-instance v0, Lcom/android/systemui/settings/BrightnessController$6;

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/settings/BrightnessController$6;-><init>(Lcom/android/systemui/settings/BrightnessController;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    .line 352
    new-instance v0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;-><init>(Lcom/android/systemui/settings/BrightnessController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mBrightnessObserver:Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;

    .line 354
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 355
    const v1, 0x1120026

    .line 354
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomaticAvailable:Z

    .line 357
    const-string/jumbo v0, "power"

    .line 356
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mPower:Landroid/os/IPowerManager;

    .line 358
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mPowerManager:Landroid/os/PowerManager;

    .line 360
    sget-boolean v0, Lcom/android/systemui/settings/BrightnessController;->SUPPORT_AUTO_BRIGHTNESS_OPTIMIZE:Z

    if-eqz v0, :cond_0

    .line 361
    new-instance v0, Lcom/android/systemui/settings/BrightnessController$BrightnessFileObserver;

    invoke-direct {p0}, Lcom/android/systemui/settings/BrightnessController;->getBrightnessFile()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/settings/BrightnessController$BrightnessFileObserver;-><init>(Lcom/android/systemui/settings/BrightnessController;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mBrightnessFileObserver:Lcom/android/systemui/settings/BrightnessController$BrightnessFileObserver;

    .line 340
    :cond_0
    return-void
.end method

.method private getBrightnessFile()Ljava/lang/String;
    .locals 5

    .prologue
    .line 366
    const-string/jumbo v0, "/sys/class/leds/lcd-backlight/brightness"

    .line 367
    .local v0, "brightnessFile":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 368
    const v4, 0x1106001a

    .line 367
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 369
    .local v1, "filesArray":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 370
    aget-object v3, v1, v2

    if-eqz v3, :cond_1

    .line 371
    new-instance v3, Ljava/io/File;

    aget-object v4, v1, v2

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 372
    aget-object v0, v1, v2

    .line 377
    :cond_0
    return-object v0

    .line 369
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private setPineconeAutoBrightnessCustomizing(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "setAutoBrightnessCustomizing"

    const-class v2, Ljava/lang/Boolean;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v2, v3}, Lmiui/util/ReflectionUtils;->tryCallMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;

    .line 427
    return-void
.end method

.method private updateBrightness(Z)V
    .locals 5
    .param p1, "isChanged"    # Z

    .prologue
    const/4 v3, -0x2

    const/4 v4, 0x0

    .line 263
    iget-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomatic:Z

    if-eqz v0, :cond_2

    .line 264
    sget-boolean v0, Lcom/android/systemui/settings/BrightnessController;->SUPPORT_AUTO_BRIGHTNESS_OPTIMIZE:Z

    if-eqz v0, :cond_1

    .line 265
    if-eqz p1, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mHandler:Landroid/os/Handler;

    .line 268
    sget v1, Lcom/android/systemui/settings/BrightnessController;->RANGE:I

    .line 269
    invoke-virtual {p0}, Lcom/android/systemui/settings/BrightnessController;->getScreenBrightness()I

    move-result v2

    sget v3, Lcom/android/systemui/settings/BrightnessController;->MINIMUM_BACKLIGHT:I

    sub-int/2addr v2, v3

    .line 266
    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 276
    const-string/jumbo v1, "screen_auto_brightness_adj"

    .line 277
    const/4 v2, 0x0

    .line 274
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    .line 278
    const/high16 v1, 0x3f800000    # 1.0f

    .line 274
    add-float/2addr v0, v1

    .line 278
    sget v1, Lcom/android/systemui/settings/BrightnessController;->RANGE:I

    int-to-float v1, v1

    .line 274
    mul-float/2addr v0, v1

    .line 278
    const/high16 v1, 0x40000000    # 2.0f

    .line 274
    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/settings/BrightnessController;->mAutoScreenBrightness:I

    .line 279
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mHandler:Landroid/os/Handler;

    .line 281
    sget v1, Lcom/android/systemui/settings/BrightnessController;->RANGE:I

    .line 282
    iget v2, p0, Lcom/android/systemui/settings/BrightnessController;->mAutoScreenBrightness:I

    .line 279
    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 287
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 288
    const-string/jumbo v1, "screen_brightness"

    .line 289
    const/16 v2, 0x80

    .line 286
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/settings/BrightnessController;->mManualScreenBrightness:I

    .line 292
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mHandler:Landroid/os/Handler;

    .line 294
    sget v1, Lcom/android/systemui/settings/BrightnessController;->RANGE:I

    .line 295
    iget v2, p0, Lcom/android/systemui/settings/BrightnessController;->mManualScreenBrightness:I

    sget v3, Lcom/android/systemui/settings/BrightnessController;->MINIMUM_BACKLIGHT:I

    sub-int/2addr v2, v3

    .line 292
    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private updateBrightnessMode(Z)V
    .locals 6
    .param p1, "isModeChanged"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v5, -0x2

    .line 202
    iget-boolean v4, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomaticAvailable:Z

    if-eqz v4, :cond_1

    .line 204
    iget-object v4, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 207
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v4, "screen_brightness_mode"

    .line 205
    invoke-static {v1, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 211
    .local v0, "automatic":I
    if-eqz v0, :cond_0

    move v2, v3

    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomatic:Z

    .line 213
    iget-boolean v2, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomatic:Z

    if-eqz v2, :cond_4

    .line 214
    sget-boolean v2, Lcom/android/systemui/settings/BrightnessController;->SUPPORT_AUTO_BRIGHTNESS_OPTIMIZE:Z

    if-eqz v2, :cond_2

    .line 215
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController;->mBrightnessFileObserver:Lcom/android/systemui/settings/BrightnessController$BrightnessFileObserver;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/android/systemui/settings/BrightnessController$BrightnessFileObserver;->startWatching(J)V

    .line 201
    .end local v0    # "automatic":I
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    :cond_1
    :goto_0
    return-void

    .line 216
    .restart local v0    # "automatic":I
    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    :cond_2
    sget-boolean v2, Lcom/android/systemui/settings/BrightnessController;->IS_PINECONE:Z

    if-eqz v2, :cond_3

    .line 217
    invoke-direct {p0}, Lcom/android/systemui/settings/BrightnessController;->updatePineconeBrightness()V

    goto :goto_0

    .line 220
    :cond_3
    invoke-direct {p0, v3}, Lcom/android/systemui/settings/BrightnessController;->updateBrightness(Z)V

    goto :goto_0

    .line 223
    :cond_4
    if-eqz p1, :cond_5

    .line 224
    sget-boolean v2, Lcom/android/systemui/settings/BrightnessController;->SUPPORT_AUTO_BRIGHTNESS_OPTIMIZE:Z

    if-eqz v2, :cond_6

    .line 226
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 227
    const-string/jumbo v3, "screen_brightness"

    .line 228
    invoke-virtual {p0}, Lcom/android/systemui/settings/BrightnessController;->getScreenBrightness()I

    move-result v4

    .line 225
    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 244
    :cond_5
    :goto_1
    sget-boolean v2, Lcom/android/systemui/settings/BrightnessController;->SUPPORT_AUTO_BRIGHTNESS_OPTIMIZE:Z

    if-eqz v2, :cond_1

    .line 245
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController;->mBrightnessFileObserver:Lcom/android/systemui/settings/BrightnessController$BrightnessFileObserver;

    invoke-virtual {v2}, Lcom/android/systemui/settings/BrightnessController$BrightnessFileObserver;->stopWatching()V

    goto :goto_0

    .line 231
    :cond_6
    sget-boolean v2, Lcom/android/systemui/settings/BrightnessController;->IS_PINECONE:Z

    if-eqz v2, :cond_7

    .line 232
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 234
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 235
    const-string/jumbo v3, "screen_brightness"

    .line 236
    invoke-virtual {p0}, Lcom/android/systemui/settings/BrightnessController;->getPineconeScreenBrightness()I

    move-result v4

    .line 233
    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_1

    .line 241
    :cond_7
    invoke-direct {p0, v3}, Lcom/android/systemui/settings/BrightnessController;->updateBrightness(Z)V

    goto :goto_1
.end method

.method private updatePineconeBrightness()V
    .locals 6

    .prologue
    const/4 v3, 0x3

    .line 301
    invoke-virtual {p0}, Lcom/android/systemui/settings/BrightnessController;->getPineconeScreenBrightness()I

    move-result v0

    .line 302
    .local v0, "brightness":I
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    sget v2, Lcom/android/systemui/settings/BrightnessController;->RANGE:I

    invoke-interface {v1, v2}, Lcom/android/systemui/settings/ToggleSlider;->setMax(I)V

    .line 303
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    sget v2, Lcom/android/systemui/settings/BrightnessController;->MINIMUM_BACKLIGHT:I

    sub-int v2, v0, v2

    invoke-interface {v1, v2}, Lcom/android/systemui/settings/ToggleSlider;->setValue(I)V

    .line 305
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 306
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mHandler:Landroid/os/Handler;

    .line 307
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 308
    const-wide/16 v4, 0x32

    .line 306
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 300
    return-void
.end method


# virtual methods
.method public getPineconeScreenBrightness()I
    .locals 6

    .prologue
    .line 422
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v2

    sget v3, Lcom/android/systemui/settings/BrightnessController;->MINIMUM_BACKLIGHT:I

    add-int v0, v2, v3

    .line 423
    .local v0, "defaultBrightness":I
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController;->mPower:Landroid/os/IPowerManager;

    const-string/jumbo v3, "getScreenBrightness"

    const-class v4, Ljava/lang/Integer;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v5}, Lmiui/util/ReflectionUtils;->tryCallMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;

    move-result-object v1

    .line 424
    .local v1, "reference":Lmiui/util/ObjectReference;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lmiui/util/ObjectReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .end local v0    # "defaultBrightness":I
    :cond_0
    return v0
.end method

.method public getScreenBrightness()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 417
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController;->mPower:Landroid/os/IPowerManager;

    const-string/jumbo v3, "getScreenBrightnessReal"

    const-class v4, Ljava/lang/Integer;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v5}, Lmiui/util/ReflectionUtils;->tryCallMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;

    move-result-object v0

    .line 418
    .local v0, "reference":Lmiui/util/ObjectReference;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiui/util/ObjectReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_0
    return v1
.end method

.method public onChanged(Lcom/android/systemui/settings/ToggleSlider;ZIZ)V
    .locals 7
    .param p1, "toggleSlider"    # Lcom/android/systemui/settings/ToggleSlider;
    .param p2, "tracking"    # Z
    .param p3, "value"    # I
    .param p4, "stopTracking"    # Z

    .prologue
    .line 518
    iget-boolean v4, p0, Lcom/android/systemui/settings/BrightnessController;->mExternalChange:Z

    if-eqz v4, :cond_0

    return-void

    .line 520
    :cond_0
    iget-boolean v4, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomatic:Z

    if-eqz v4, :cond_3

    sget-boolean v4, Lcom/android/systemui/settings/BrightnessController;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v4, :cond_3

    .line 521
    sget-boolean v4, Lcom/android/systemui/settings/BrightnessController;->IS_PINECONE:Z

    if-eqz v4, :cond_2

    .line 522
    sget v4, Lcom/android/systemui/settings/BrightnessController;->MINIMUM_BACKLIGHT:I

    add-int v1, p3, v4

    .line 523
    .local v1, "brightness":I
    invoke-static {v1}, Lcom/android/systemui/SystemUICompat;->setTemporaryScreenBrightness(I)V

    .line 559
    .end local v1    # "brightness":I
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/settings/BrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "cb$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;

    .line 560
    .local v2, "cb":Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;
    invoke-interface {v2}, Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;->onBrightnessLevelChanged()V

    goto :goto_1

    .line 525
    .end local v2    # "cb":Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;
    .end local v3    # "cb$iterator":Ljava/util/Iterator;
    :cond_2
    int-to-float v4, p3

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    sget v5, Lcom/android/systemui/settings/BrightnessController;->RANGE:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v0, v4, v5

    .line 526
    .local v0, "brightness":F
    invoke-static {v0}, Lcom/android/systemui/SystemUICompat;->setTemporaryScreenAutoBrightness(F)V

    .line 527
    if-eqz p4, :cond_1

    .line 528
    iget-object v4, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    float-to-int v5, v0

    const/16 v6, 0xdb

    invoke-static {v4, v6, v5}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 529
    new-instance v4, Lcom/android/systemui/settings/BrightnessController$7;

    invoke-direct {v4, p0, v0}, Lcom/android/systemui/settings/BrightnessController$7;-><init>(Lcom/android/systemui/settings/BrightnessController;F)V

    invoke-static {v4}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 542
    .end local v0    # "brightness":F
    :cond_3
    sget v4, Lcom/android/systemui/settings/BrightnessController;->MINIMUM_BACKLIGHT:I

    add-int v1, p3, v4

    .line 543
    .restart local v1    # "brightness":I
    invoke-static {v1}, Lcom/android/systemui/SystemUICompat;->setTemporaryScreenBrightness(I)V

    .line 544
    if-eqz p4, :cond_1

    .line 545
    iget-object v4, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    const/16 v5, 0xda

    invoke-static {v4, v5, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 546
    new-instance v4, Lcom/android/systemui/settings/BrightnessController$8;

    invoke-direct {v4, p0, v1}, Lcom/android/systemui/settings/BrightnessController$8;-><init>(Lcom/android/systemui/settings/BrightnessController;I)V

    invoke-static {v4}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 517
    .end local v1    # "brightness":I
    .restart local v3    # "cb$iterator":Ljava/util/Iterator;
    :cond_4
    return-void
.end method

.method public onInit(Lcom/android/systemui/settings/ToggleSlider;)V
    .locals 0
    .param p1, "control"    # Lcom/android/systemui/settings/ToggleSlider;

    .prologue
    .line 389
    return-void
.end method

.method public onStart(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 483
    iget-boolean v2, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomatic:Z

    if-eqz v2, :cond_0

    .line 484
    sget-boolean v2, Lcom/android/systemui/settings/BrightnessController;->SUPPORT_AUTO_BRIGHTNESS_OPTIMIZE:Z

    if-eqz v2, :cond_1

    .line 485
    invoke-virtual {p0}, Lcom/android/systemui/settings/BrightnessController;->stopObserverBrightness()V

    .line 486
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lcom/android/systemui/SystemUICompat;->setTemporaryScreenAutoBrightness(F)V

    .line 492
    :cond_0
    :goto_0
    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v2

    .line 493
    iget-boolean v3, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomatic:Z

    if-eqz v3, :cond_2

    :goto_1
    const-string/jumbo v3, ""

    .line 492
    invoke-virtual {v2, v1, p1, v0, v3}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportBrightnessEvent(IIILjava/lang/String;)V

    .line 482
    return-void

    .line 487
    :cond_1
    sget-boolean v2, Lcom/android/systemui/settings/BrightnessController;->IS_PINECONE:Z

    if-eqz v2, :cond_0

    .line 488
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 489
    invoke-direct {p0, v0}, Lcom/android/systemui/settings/BrightnessController;->setPineconeAutoBrightnessCustomizing(Z)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 493
    goto :goto_1
.end method

.method public onStop(I)V
    .locals 6
    .param p1, "value"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 498
    iget-boolean v2, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomatic:Z

    if-eqz v2, :cond_0

    .line 499
    sget-boolean v2, Lcom/android/systemui/settings/BrightnessController;->SUPPORT_AUTO_BRIGHTNESS_OPTIMIZE:Z

    if-eqz v2, :cond_2

    .line 500
    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/settings/BrightnessController;->startObserverBrightness(J)V

    .line 501
    const/high16 v2, -0x40000000    # -2.0f

    invoke-static {v2}, Lcom/android/systemui/SystemUICompat;->setTemporaryScreenAutoBrightness(F)V

    .line 511
    :cond_0
    :goto_0
    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v2

    .line 512
    iget-boolean v3, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomatic:Z

    if-eqz v3, :cond_1

    move v0, v1

    :cond_1
    const-string/jumbo v3, ""

    .line 511
    invoke-virtual {v2, v1, p1, v0, v3}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportBrightnessEvent(IIILjava/lang/String;)V

    .line 497
    return-void

    .line 502
    :cond_2
    sget-boolean v2, Lcom/android/systemui/settings/BrightnessController;->IS_PINECONE:Z

    if-eqz v2, :cond_0

    .line 503
    invoke-direct {p0, v0}, Lcom/android/systemui/settings/BrightnessController;->setPineconeAutoBrightnessCustomizing(Z)V

    .line 504
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 505
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController;->mHandler:Landroid/os/Handler;

    .line 506
    iget-object v3, p0, Lcom/android/systemui/settings/BrightnessController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 507
    const-wide/16 v4, 0x32

    .line 505
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public registerCallbacks()V
    .locals 2

    .prologue
    .line 394
    iget-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mListening:Z

    if-eqz v0, :cond_0

    .line 395
    return-void

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mStartListeningRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 399
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mListening:Z

    .line 393
    return-void
.end method

.method public startObserverBrightness(J)V
    .locals 1
    .param p1, "delayMillis"    # J

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mBrightnessFileObserver:Lcom/android/systemui/settings/BrightnessController$BrightnessFileObserver;

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mBrightnessFileObserver:Lcom/android/systemui/settings/BrightnessController$BrightnessFileObserver;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/settings/BrightnessController$BrightnessFileObserver;->startWatching(J)V

    .line 475
    :cond_0
    return-void
.end method

.method public stopObserverBrightness()V
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mBrightnessFileObserver:Lcom/android/systemui/settings/BrightnessController$BrightnessFileObserver;

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mBrightnessFileObserver:Lcom/android/systemui/settings/BrightnessController$BrightnessFileObserver;

    invoke-virtual {v0}, Lcom/android/systemui/settings/BrightnessController$BrightnessFileObserver;->stopWatching()V

    .line 469
    :cond_0
    return-void
.end method

.method public unregisterCallbacks()V
    .locals 2

    .prologue
    .line 404
    iget-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mListening:Z

    if-nez v0, :cond_0

    .line 405
    return-void

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mStopListeningRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 409
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mListening:Z

    .line 411
    sget-boolean v0, Lcom/android/systemui/settings/BrightnessController;->SUPPORT_AUTO_BRIGHTNESS_OPTIMIZE:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomatic:Z

    if-eqz v0, :cond_1

    .line 412
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mBrightnessFileObserver:Lcom/android/systemui/settings/BrightnessController$BrightnessFileObserver;

    invoke-virtual {v0}, Lcom/android/systemui/settings/BrightnessController$BrightnessFileObserver;->stopWatching()V

    .line 403
    :cond_1
    return-void
.end method
