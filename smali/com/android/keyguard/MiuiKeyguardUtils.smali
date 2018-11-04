.class public Lcom/android/keyguard/MiuiKeyguardUtils;
.super Ljava/lang/Object;
.source "MiuiKeyguardUtils.java"


# static fields
.field public static final AOD_MODE:Ljava/lang/String;

.field private static final GXZW_SENSOR:Z

.field private static final SUPPORT_WIRELESS_CHARGE:Z

.field private static sDayOfStatistics:I

.field private static sDeviceSupportFace:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sDeviceSupportNewPickupSensorByXiaomi:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sDeviceSupportPickupByXiaomi:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sDeviceSupportScreenOnDelay:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sDeviceUseCamera1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sDeviceUseCamera2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sFingerprintHelper:Lcom/android/keyguard/FingerprintHelper;

.field private static sGlobalDeviceFaceJiajiaSupport:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sGlobalDeviceSenseTimeSupport:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sGlobalRegionFaceJiajiaSupport:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sGlobalRegionSenseTimeSupport:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sHasNavigationBar:Z

.field private static sHasSetAuth:Z

.field private static sIsEllipticProximity:Z

.field private static sIsFullScreenGestureOpened:Z

.field private static sIsScreenTurnOnDelayed:Z

.field private static sLockWallpaperCache:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/io/File;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private static sLockWallpaperModifiedTime:J

.field private static sSCSlideNotOpenCameraList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sWallpaperPreviewAvailable:Z

.field private static sWindowManager:Landroid/view/IWindowManager;

.field private static sYearOfStatistics:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 91
    sput-boolean v3, Lcom/android/keyguard/MiuiKeyguardUtils;->sIsFullScreenGestureOpened:Z

    .line 92
    sput-boolean v3, Lcom/android/keyguard/MiuiKeyguardUtils;->sIsScreenTurnOnDelayed:Z

    .line 93
    sput-boolean v3, Lcom/android/keyguard/MiuiKeyguardUtils;->sWallpaperPreviewAvailable:Z

    .line 94
    const/4 v1, 0x0

    sput-object v1, Lcom/android/keyguard/MiuiKeyguardUtils;->sFingerprintHelper:Lcom/android/keyguard/FingerprintHelper;

    .line 95
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/keyguard/MiuiKeyguardUtils;->sGlobalDeviceFaceJiajiaSupport:Ljava/util/List;

    .line 96
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/keyguard/MiuiKeyguardUtils;->sGlobalRegionFaceJiajiaSupport:Ljava/util/List;

    .line 97
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/keyguard/MiuiKeyguardUtils;->sGlobalDeviceSenseTimeSupport:Ljava/util/List;

    .line 98
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/keyguard/MiuiKeyguardUtils;->sGlobalRegionSenseTimeSupport:Ljava/util/List;

    .line 99
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/keyguard/MiuiKeyguardUtils;->sDeviceSupportFace:Ljava/util/List;

    .line 100
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/keyguard/MiuiKeyguardUtils;->sDeviceUseCamera1:Ljava/util/List;

    .line 101
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/keyguard/MiuiKeyguardUtils;->sDeviceUseCamera2:Ljava/util/List;

    .line 102
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/keyguard/MiuiKeyguardUtils;->sDeviceSupportPickupByXiaomi:Ljava/util/List;

    .line 103
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/keyguard/MiuiKeyguardUtils;->sDeviceSupportNewPickupSensorByXiaomi:Ljava/util/List;

    .line 104
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/keyguard/MiuiKeyguardUtils;->sDeviceSupportScreenOnDelay:Ljava/util/List;

    .line 114
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/keyguard/MiuiKeyguardUtils;->sSCSlideNotOpenCameraList:Ljava/util/List;

    .line 480
    const-string/jumbo v1, "ro.vendor.audio.us.proximity"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 481
    const-string/jumbo v1, "ro.audio.us.proximity"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 480
    :goto_0
    sput-boolean v1, Lcom/android/keyguard/MiuiKeyguardUtils;->sIsEllipticProximity:Z

    .line 530
    const-string/jumbo v1, "gxzw_property"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 531
    const-string/jumbo v1, "cepheus"

    sget-object v2, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 530
    :cond_0
    sput-boolean v2, Lcom/android/keyguard/MiuiKeyguardUtils;->GXZW_SENSOR:Z

    .line 539
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/sys/class/power_supply/wireless/signal_strength"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 540
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    sput-boolean v1, Lcom/android/keyguard/MiuiKeyguardUtils;->SUPPORT_WIRELESS_CHARGE:Z

    .line 653
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_2

    const-string/jumbo v1, "doze_always_on"

    :goto_1
    sput-object v1, Lcom/android/keyguard/MiuiKeyguardUtils;->AOD_MODE:Ljava/lang/String;

    .line 798
    sput v4, Lcom/android/keyguard/MiuiKeyguardUtils;->sYearOfStatistics:I

    .line 799
    sput v4, Lcom/android/keyguard/MiuiKeyguardUtils;->sDayOfStatistics:I

    .line 61
    return-void

    .end local v0    # "file":Ljava/io/File;
    :cond_1
    move v1, v2

    .line 480
    goto :goto_0

    .line 653
    .restart local v0    # "file":Ljava/io/File;
    :cond_2
    const-string/jumbo v1, "aod_mode"

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addTwoColor(II)I
    .locals 8
    .param p0, "colorDown"    # I
    .param p1, "colorUp"    # I

    .prologue
    const/high16 v4, 0x437f0000    # 255.0f

    const/high16 v7, 0x3f800000    # 1.0f

    .line 405
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    div-float v0, v2, v4

    .line 406
    .local v0, "alphaDown":F
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v4

    .line 407
    .local v1, "alphaUp":F
    add-float v2, v0, v1

    mul-float v3, v0, v1

    sub-float/2addr v2, v3

    mul-float/2addr v2, v4

    float-to-int v2, v2

    .line 408
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    sub-float v4, v7, v1

    mul-float/2addr v3, v4

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    add-float v4, v0, v1

    mul-float v5, v0, v1

    sub-float/2addr v4, v5

    div-float/2addr v3, v4

    float-to-int v3, v3

    .line 409
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    sub-float v5, v7, v1

    mul-float/2addr v4, v5

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    add-float v5, v0, v1

    mul-float v6, v0, v1

    sub-float/2addr v5, v6

    div-float/2addr v4, v5

    float-to-int v4, v4

    .line 410
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v0

    sub-float v6, v7, v1

    mul-float/2addr v5, v6

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    add-float v6, v0, v1

    mul-float v7, v0, v1

    sub-float/2addr v6, v7

    div-float/2addr v5, v6

    float-to-int v5, v5

    .line 407
    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    return v2
.end method

.method public static canSwitchUser(Landroid/content/Context;I)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 715
    if-eqz p1, :cond_0

    .line 716
    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getStrongAuthTracker()Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->hasOwnerUserAuthenticatedSinceBoot()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 722
    :cond_0
    invoke-static {p0}, Lcom/android/keyguard/MiuiKeyguardUtils;->isGreenKidActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 723
    const-string/jumbo v0, "MiuiKeyguardUtils"

    const-string/jumbo v1, "Can\'t switch user when green kid active."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    return v2

    .line 718
    :cond_1
    return v2

    .line 727
    :cond_2
    invoke-static {p0}, Lcom/android/keyguard/MiuiKeyguardUtils;->isPhoneCalling(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 728
    const-string/jumbo v0, "MiuiKeyguardUtils"

    const-string/jumbo v1, "Can\'t switch user when phone calling."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    return v2

    .line 731
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public static drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 384
    if-nez p0, :cond_0

    .line 385
    return-object v2

    .line 387
    :cond_0
    instance-of v2, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_1

    .line 388
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2

    .line 392
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 393
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 394
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_2

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 390
    :goto_0
    invoke-static {v3, v4, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 396
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 397
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 398
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 397
    invoke-virtual {p0, v6, v6, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 399
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 400
    return-object v0

    .line 395
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :cond_2
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method public static formatTime(I)Ljava/lang/String;
    .locals 3
    .param p0, "time"    # I

    .prologue
    .line 509
    const-string/jumbo v0, ""

    .line 510
    .local v0, "str":Ljava/lang/String;
    const/16 v1, 0xa

    if-lt p0, v1, :cond_0

    .line 511
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 517
    :goto_0
    return-object v0

    .line 512
    :cond_0
    if-lez p0, :cond_1

    .line 513
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 515
    :cond_1
    const-string/jumbo v0, "00"

    goto :goto_0
.end method

.method public static getAuthUserId(Landroid/content/Context;I)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "targetId"    # I

    .prologue
    const/4 v6, 0x0

    const/16 v5, -0x2710

    .line 786
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 787
    const-string/jumbo v4, "second_user_id"

    .line 786
    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 788
    .local v1, "secondSpaceId":I
    const/4 v2, 0x0

    .line 789
    .local v2, "userId":I
    if-eq v1, v5, :cond_0

    .line 790
    invoke-static {p0, v1}, Landroid/security/FingerprintIdUtils;->getUserFingerprintIds(Landroid/content/Context;I)Ljava/util/HashMap;

    move-result-object v0

    .line 791
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 792
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 795
    .end local v0    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_0
    return v2
.end method

.method public static getCameraImageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 580
    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardUtils;->hasNavigationBar()Z

    move-result v0

    if-nez v0, :cond_0

    .line 582
    const-string/jumbo v0, "camera_preview"

    return-object v0

    .line 586
    :cond_0
    sget-boolean v0, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/keyguard/MiuiKeyguardUtils;->sIsFullScreenGestureOpened:Z

    if-eqz v0, :cond_1

    .line 587
    const-string/jumbo v0, "camera_preview_notch_nvirtualkey"

    return-object v0

    .line 589
    :cond_1
    const-string/jumbo v0, "camera_preview_nvirtualkey"

    return-object v0
.end method

.method public static getDrawableFromPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 563
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 564
    .local v2, "manager":Landroid/content/pm/PackageManager;
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    .line 565
    .local v4, "resources":Landroid/content/res/Resources;
    const-string/jumbo v5, "drawable"

    invoke-virtual {v4, p2, v5, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 566
    .local v3, "resId":I
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 567
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    return-object v0

    .line 568
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "manager":Landroid/content/pm/PackageManager;
    .end local v3    # "resId":I
    .end local v4    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v1

    .line 569
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "miui_keyguard"

    const-string/jumbo v6, "something wrong when get camera image"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 572
    const/4 v5, 0x0

    return-object v5
.end method

.method public static getFastBlurColor(Landroid/content/Context;Landroid/graphics/Bitmap;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 233
    if-nez p1, :cond_0

    .line 234
    return v5

    .line 237
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 238
    .local v2, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 239
    .local v1, "height":I
    :goto_0
    if-le v2, v4, :cond_2

    .line 240
    div-int/lit8 v2, v2, 0x2

    .line 241
    if-ge v2, v4, :cond_1

    const/4 v2, 0x1

    .line 242
    :cond_1
    const/4 v3, 0x1

    invoke-static {p1, v2, v1, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    .line 244
    :cond_2
    :goto_1
    if-le v1, v4, :cond_4

    .line 245
    div-int/lit8 v1, v1, 0x2

    .line 246
    if-ge v1, v4, :cond_3

    const/4 v1, 0x1

    .line 247
    :cond_3
    const/4 v3, 0x1

    invoke-static {p1, v2, v1, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_1

    .line 249
    :cond_4
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Bitmap;->getPixel(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 253
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 249
    return v3

    .line 250
    .end local v1    # "height":I
    .end local v2    # "width":I
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v3, "miui_keyguard"

    const-string/jumbo v4, "getFastBlurColor"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 253
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 255
    return v5

    .line 252
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 253
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 252
    throw v3
.end method

.method public static getFastBlurColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 379
    invoke-static {p1}, Lcom/android/keyguard/MiuiKeyguardUtils;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 380
    .local v0, "background":Landroid/graphics/Bitmap;
    invoke-static {p0, v0}, Lcom/android/keyguard/MiuiKeyguardUtils;->getFastBlurColor(Landroid/content/Context;Landroid/graphics/Bitmap;)I

    move-result v1

    return v1
.end method

.method public static final getLockWallpaperCache(Landroid/content/Context;)Landroid/util/Pair;
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/io/File;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 318
    const/4 v6, 0x0

    .line 319
    .local v6, "file":Ljava/io/File;
    const/4 v9, 0x0

    .line 320
    .local v9, "previewFile":Ljava/io/File;
    invoke-static/range {p0 .. p0}, Lcom/android/keyguard/MiuiKeyguardUtils;->useDefaultWallpaper(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 321
    new-instance v6, Ljava/io/File;

    .end local v6    # "file":Ljava/io/File;
    const-string/jumbo v15, "/system/media/lockscreen/video/video_wallpaper.mp4"

    invoke-direct {v6, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 322
    .local v6, "file":Ljava/io/File;
    new-instance v9, Ljava/io/File;

    .end local v9    # "previewFile":Ljava/io/File;
    const-string/jumbo v15, "/system/media/lockscreen/video/video_wallpaper_thumbnail.jpg"

    invoke-direct {v9, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 328
    .end local v6    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_1

    if-nez v9, :cond_4

    .line 329
    :cond_1
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v15

    invoke-virtual {v15}, Lmiui/content/res/ThemeResourcesSystem;->getLockscreenWallpaper()Ljava/io/File;

    move-result-object v6

    .line 330
    .restart local v6    # "file":Ljava/io/File;
    move-object v9, v6

    .line 333
    .end local v6    # "file":Ljava/io/File;
    :goto_1
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_2

    if-nez v9, :cond_5

    .line 335
    :cond_2
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 336
    .local v7, "filePath":Ljava/lang/String;
    :goto_2
    if-eqz v9, :cond_7

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    .line 337
    .local v10, "previewPath":Ljava/lang/String;
    :goto_3
    const-string/jumbo v15, "ThemeResources"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "getLockWallpaperCache return null; filePath = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 338
    const-string/jumbo v17, " previewPath = "

    .line 337
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const/4 v15, 0x0

    return-object v15

    .line 323
    .end local v7    # "filePath":Ljava/lang/String;
    .end local v10    # "previewPath":Ljava/lang/String;
    .local v6, "file":Ljava/io/File;
    .restart local v9    # "previewFile":Ljava/io/File;
    :cond_3
    invoke-static/range {p0 .. p0}, Lcom/android/keyguard/MiuiKeyguardUtils;->useLockLiveWallpaper(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 324
    new-instance v6, Ljava/io/File;

    .end local v6    # "file":Ljava/io/File;
    const-string/jumbo v15, "/data/system/theme_magic/video/video_wallpaper.mp4"

    invoke-direct {v6, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 325
    .local v6, "file":Ljava/io/File;
    new-instance v9, Ljava/io/File;

    .end local v9    # "previewFile":Ljava/io/File;
    const-string/jumbo v15, "/data/system/theme_magic/video/video_wallpaper_thumbnail.jpg"

    invoke-direct {v9, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v9, "previewFile":Ljava/io/File;
    goto :goto_0

    .line 328
    .end local v6    # "file":Ljava/io/File;
    .end local v9    # "previewFile":Ljava/io/File;
    :cond_4
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_1

    goto :goto_1

    .line 333
    :cond_5
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 343
    sget-wide v16, Lcom/android/keyguard/MiuiKeyguardUtils;->sLockWallpaperModifiedTime:J

    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v18

    cmp-long v15, v16, v18

    if-nez v15, :cond_8

    sget-object v15, Lcom/android/keyguard/MiuiKeyguardUtils;->sLockWallpaperCache:Landroid/util/Pair;

    if-eqz v15, :cond_8

    .line 344
    sget-object v15, Lcom/android/keyguard/MiuiKeyguardUtils;->sLockWallpaperCache:Landroid/util/Pair;

    iget-object v15, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v15, :cond_8

    sget-object v15, Lcom/android/keyguard/MiuiKeyguardUtils;->sLockWallpaperCache:Landroid/util/Pair;

    iget-object v15, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, Ljava/io/File;

    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v15

    .line 343
    if-eqz v15, :cond_8

    .line 344
    sget-object v15, Lcom/android/keyguard/MiuiKeyguardUtils;->sLockWallpaperCache:Landroid/util/Pair;

    iget-object v15, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v6, v15}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v15

    .line 343
    if-eqz v15, :cond_8

    .line 345
    sget-object v15, Lcom/android/keyguard/MiuiKeyguardUtils;->sLockWallpaperCache:Landroid/util/Pair;

    return-object v15

    .line 335
    :cond_6
    const-string/jumbo v7, "null"

    .restart local v7    # "filePath":Ljava/lang/String;
    goto/16 :goto_2

    .line 336
    :cond_7
    const-string/jumbo v10, "null"

    .restart local v10    # "previewPath":Ljava/lang/String;
    goto/16 :goto_3

    .line 349
    .end local v7    # "filePath":Ljava/lang/String;
    .end local v10    # "previewPath":Ljava/lang/String;
    :cond_8
    const/4 v15, 0x0

    sput-object v15, Lcom/android/keyguard/MiuiKeyguardUtils;->sLockWallpaperCache:Landroid/util/Pair;

    .line 351
    :try_start_0
    const-string/jumbo v15, "window"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/WindowManager;

    .line 352
    .local v14, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v14}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 353
    .local v3, "display":Landroid/view/Display;
    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11}, Landroid/graphics/Point;-><init>()V

    .line 354
    .local v11, "size":Landroid/graphics/Point;
    invoke-static {v3, v11}, Lcom/android/keyguard/MiuiKeyguardUtils;->getRealSize(Landroid/view/Display;Landroid/graphics/Point;)V

    .line 355
    iget v13, v11, Landroid/graphics/Point;->x:I

    .line 356
    .local v13, "width":I
    iget v8, v11, Landroid/graphics/Point;->y:I

    .line 357
    .local v8, "height":I
    if-le v13, v8, :cond_9

    .line 358
    const-string/jumbo v15, "LockWallpaper"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Wrong display metrics for width = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " and height = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    move v12, v13

    .line 360
    .local v12, "tmp":I
    move v13, v8

    .line 361
    move v8, v12

    .line 364
    .end local v12    # "tmp":I
    :cond_9
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v15, v13, v8, v0}, Lmiui/graphics/BitmapFactory;->decodeBitmap(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 365
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_a

    .line 366
    new-instance v15, Landroid/util/Pair;

    new-instance v16, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v16

    invoke-direct {v15, v6, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v15, Lcom/android/keyguard/MiuiKeyguardUtils;->sLockWallpaperCache:Landroid/util/Pair;

    .line 367
    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v16

    sput-wide v16, Lcom/android/keyguard/MiuiKeyguardUtils;->sLockWallpaperModifiedTime:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "display":Landroid/view/Display;
    .end local v8    # "height":I
    .end local v11    # "size":Landroid/graphics/Point;
    .end local v13    # "width":I
    .end local v14    # "windowManager":Landroid/view/WindowManager;
    :cond_a
    :goto_4
    sget-object v15, Lcom/android/keyguard/MiuiKeyguardUtils;->sLockWallpaperCache:Landroid/util/Pair;

    return-object v15

    .line 371
    :catch_0
    move-exception v5

    .line 372
    .local v5, "error":Ljava/lang/OutOfMemoryError;
    const-string/jumbo v15, "ThemeResources"

    invoke-virtual {v5}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v15, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 369
    .end local v5    # "error":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v4

    .line 370
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v15, "ThemeResources"

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v15, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method public static getLockWallpaperPreview(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 268
    invoke-static {p0}, Lcom/android/keyguard/MiuiKeyguardUtils;->useSystemLiveWallpaper(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 269
    const-string/jumbo v5, "wallpaper"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/WallpaperManager;

    .line 270
    .local v3, "wpm":Landroid/app/WallpaperManager;
    invoke-virtual {v3}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v0

    .line 271
    .local v0, "paperInfo":Landroid/app/WallpaperInfo;
    if-eqz v0, :cond_1

    .line 272
    const-string/jumbo v4, "com.miui.miwallpaper.MiWallpaper"

    invoke-virtual {v0}, Landroid/app/WallpaperInfo;->getServiceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 273
    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardUtils;->isMiwallpaperPreviewExist()Z

    move-result v4

    .line 272
    if-eqz v4, :cond_0

    .line 274
    const-string/jumbo v4, "/data/system/theme/miwallpaper_preview"

    invoke-static {p0, v4}, Lcom/android/keyguard/MiuiKeyguardUtils;->loadDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 275
    .local v1, "preview":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 276
    return-object v1

    .line 279
    .end local v1    # "preview":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/WallpaperInfo;->loadThumbnail(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    return-object v4

    .line 282
    .end local v0    # "paperInfo":Landroid/app/WallpaperInfo;
    .end local v3    # "wpm":Landroid/app/WallpaperManager;
    :cond_1
    invoke-static {p0}, Lcom/android/keyguard/MiuiKeyguardUtils;->getLockWallpaperCache(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v2

    .line 283
    .local v2, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/io/File;Landroid/graphics/drawable/Drawable;>;"
    if-nez v2, :cond_2

    :goto_0
    return-object v4

    :cond_2
    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public static getPhoneCount()I
    .locals 2

    .prologue
    .line 216
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    .line 217
    .local v0, "phoneCount":I
    if-gtz v0, :cond_0

    const/4 v0, 0x1

    .end local v0    # "phoneCount":I
    :cond_0
    return v0
.end method

.method private static getRealSize(Landroid/view/Display;Landroid/graphics/Point;)V
    .locals 7
    .param p0, "display"    # Landroid/view/Display;
    .param p1, "outPoint"    # Landroid/graphics/Point;

    .prologue
    .line 309
    :try_start_0
    const-class v2, Landroid/view/Display;

    const-string/jumbo v3, "getRealSize"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/graphics/Point;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 310
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 311
    :catch_0
    move-exception v0

    .line 312
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "LockWallpaper"

    const-string/jumbo v3, "no getRealSize hack method"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-virtual {p0, p1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    goto :goto_0
.end method

.method public static getUserList(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    const-string/jumbo v2, "user"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 137
    .local v0, "userManager":Landroid/os/UserManager;
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 138
    .local v1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    return-object v1
.end method

.method public static gotoLockScreenWallpaper(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 736
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.miui.REQUEST_LOCKSCREEN_WALLPAPER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 737
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "showTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x258

    add-long/2addr v4, v6

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 738
    const-string/jumbo v2, "startTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 739
    const-string/jumbo v2, "from"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 740
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 734
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 741
    :catch_0
    move-exception v0

    .line 742
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "keyguard_goto_lockscreen_magazine_fail"

    invoke-static {v2}, Lcom/android/keyguard/AnalyticsHelper;->record(Ljava/lang/String;)V

    .line 743
    const-string/jumbo v2, "miui_keyguard"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static hasNavigationBar()Z
    .locals 3

    .prologue
    .line 221
    sget-object v1, Lcom/android/keyguard/MiuiKeyguardUtils;->sWindowManager:Landroid/view/IWindowManager;

    if-nez v1, :cond_0

    .line 222
    const-string/jumbo v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    sput-object v1, Lcom/android/keyguard/MiuiKeyguardUtils;->sWindowManager:Landroid/view/IWindowManager;

    .line 224
    :try_start_0
    sget-object v1, Lcom/android/keyguard/MiuiKeyguardUtils;->sWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v1}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v1

    sput-boolean v1, Lcom/android/keyguard/MiuiKeyguardUtils;->sHasNavigationBar:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    .local v0, "ex":Ljava/lang/Exception;
    :cond_0
    :goto_0
    sget-boolean v1, Lcom/android/keyguard/MiuiKeyguardUtils;->sHasNavigationBar:Z

    return v1

    .line 225
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 226
    .restart local v0    # "ex":Ljava/lang/Exception;
    const-string/jumbo v1, "miui_keyguard"

    const-string/jumbo v2, "no window manager to get navigation bar information"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isAodClockDisable(Landroid/content/Context;)Z
    .locals 16
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 626
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 627
    sget-object v12, Lcom/android/keyguard/MiuiKeyguardUtils;->AOD_MODE:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, -0x2

    .line 626
    invoke-static {v11, v12, v13, v14}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    if-nez v11, :cond_0

    const/4 v1, 0x1

    .line 628
    .local v1, "disableAodClock":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 629
    const/4 v11, 0x1

    return v11

    .line 626
    .end local v1    # "disableAodClock":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 631
    .restart local v1    # "disableAodClock":Z
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 632
    const-string/jumbo v12, "aod_mode_time"

    const/4 v13, 0x0

    const/4 v14, -0x2

    .line 631
    invoke-static {v11, v12, v13, v14}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    .line 632
    const/4 v12, 0x1

    .line 631
    if-ne v11, v12, :cond_3

    const/4 v10, 0x1

    .line 633
    .local v10, "timeSet":Z
    :goto_1
    if-eqz v10, :cond_6

    .line 634
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "aod_start"

    const/4 v13, 0x0

    const/4 v14, -0x2

    invoke-static {v11, v12, v13, v14}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    int-to-long v12, v11

    .line 635
    const-wide/32 v14, 0xea60

    .line 634
    mul-long v8, v12, v14

    .line 636
    .local v8, "startTime":J
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "aod_end"

    const/4 v13, 0x0

    const/4 v14, -0x2

    invoke-static {v11, v12, v13, v14}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    int-to-long v12, v11

    .line 637
    const-wide/32 v14, 0xea60

    .line 636
    mul-long v2, v12, v14

    .line 639
    .local v2, "endTime":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 640
    .local v0, "c":Ljava/util/Calendar;
    const/16 v11, 0xb

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 641
    .local v4, "hour":I
    const/16 v11, 0xc

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 642
    .local v5, "minute":I
    mul-int/lit8 v11, v4, 0x3c

    add-int/2addr v11, v5

    int-to-long v12, v11

    const-wide/32 v14, 0xea60

    mul-long/2addr v12, v14

    const-wide/16 v14, 0x1

    add-long v6, v12, v14

    .line 645
    .local v6, "now":J
    cmp-long v11, v8, v2

    if-gez v11, :cond_4

    cmp-long v11, v6, v8

    if-ltz v11, :cond_2

    cmp-long v11, v6, v2

    if-lez v11, :cond_4

    :cond_2
    const/4 v11, 0x1

    :goto_2
    return v11

    .line 631
    .end local v0    # "c":Ljava/util/Calendar;
    .end local v2    # "endTime":J
    .end local v4    # "hour":I
    .end local v5    # "minute":I
    .end local v6    # "now":J
    .end local v8    # "startTime":J
    .end local v10    # "timeSet":Z
    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    .line 646
    .restart local v0    # "c":Ljava/util/Calendar;
    .restart local v2    # "endTime":J
    .restart local v4    # "hour":I
    .restart local v5    # "minute":I
    .restart local v6    # "now":J
    .restart local v8    # "startTime":J
    .restart local v10    # "timeSet":Z
    :cond_4
    cmp-long v11, v8, v2

    if-lez v11, :cond_5

    cmp-long v11, v6, v8

    if-gez v11, :cond_5

    cmp-long v11, v6, v2

    if-lez v11, :cond_5

    const/4 v11, 0x1

    goto :goto_2

    :cond_5
    const/4 v11, 0x0

    goto :goto_2

    .line 648
    .end local v0    # "c":Ljava/util/Calendar;
    .end local v2    # "endTime":J
    .end local v4    # "hour":I
    .end local v5    # "minute":I
    .end local v6    # "now":J
    .end local v8    # "startTime":J
    :cond_6
    const/4 v11, 0x0

    return v11
.end method

.method public static isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 196
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    return v3

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v1, "miui_keyguard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "name not found pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const/4 v1, 0x0

    return v1
.end method

.method public static isDozing()Z
    .locals 1

    .prologue
    .line 900
    invoke-static {}, Lcom/android/systemui/Dependency;->getHost()Lcom/android/systemui/doze/DozeHost;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/Dependency;->getHost()Lcom/android/systemui/doze/DozeHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->isDozing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFingerprintHardwareAvailable(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 164
    sget-object v0, Lcom/android/keyguard/MiuiKeyguardUtils;->sFingerprintHelper:Lcom/android/keyguard/FingerprintHelper;

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Lcom/android/keyguard/FingerprintHelper;

    invoke-direct {v0, p0}, Lcom/android/keyguard/FingerprintHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/keyguard/MiuiKeyguardUtils;->sFingerprintHelper:Lcom/android/keyguard/FingerprintHelper;

    .line 167
    :cond_0
    sget-object v0, Lcom/android/keyguard/MiuiKeyguardUtils;->sFingerprintHelper:Lcom/android/keyguard/FingerprintHelper;

    invoke-virtual {v0}, Lcom/android/keyguard/FingerprintHelper;->isHardwareDetected()Z

    move-result v0

    return v0
.end method

.method public static isGreenKidActive(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 682
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/MiuiSettings$Secure;->isGreenKidActive(Landroid/content/ContentResolver;)Z

    move-result v0

    return v0
.end method

.method public static isGxzwSensor()Z
    .locals 1

    .prologue
    .line 533
    sget-boolean v0, Lcom/android/keyguard/MiuiKeyguardUtils;->GXZW_SENSOR:Z

    return v0
.end method

.method public static isIndianBuild()Z
    .locals 2

    .prologue
    .line 142
    const-string/jumbo v0, "IN"

    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isInvertColorsEnable(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 782
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "accessibility_display_inversion_enabled"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isKeyguardWallpaperPreviewAvailable()Z
    .locals 1

    .prologue
    .line 752
    sget-boolean v0, Lcom/android/keyguard/MiuiKeyguardUtils;->sWallpaperPreviewAvailable:Z

    return v0
.end method

.method private static isMiwallpaperPreviewExist()Z
    .locals 2

    .prologue
    .line 263
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/system/theme/miwallpaper_preview"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 264
    .local v0, "wallpaperPreview":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public static isNonUI()Z
    .locals 2

    .prologue
    .line 490
    const-string/jumbo v0, "sys.power.nonui"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isPhoneCalling(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 694
    const-string/jumbo v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 693
    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 695
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 696
    .local v0, "callState":I
    if-eq v0, v2, :cond_0

    .line 697
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 696
    :cond_0
    :goto_0
    return v2

    .line 697
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isPsensorDisabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 484
    const-string/jumbo v2, "sensor"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    .line 485
    .local v1, "sensorManager":Landroid/hardware/SensorManager;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 486
    .local v0, "sensor":Landroid/hardware/Sensor;
    if-eqz v0, :cond_0

    sget-boolean v2, Lcom/android/keyguard/MiuiKeyguardUtils;->sIsEllipticProximity:Z

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isSCSlideNotOpenCamera(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    .line 882
    sget-object v5, Lcom/android/keyguard/MiuiKeyguardUtils;->sSCSlideNotOpenCameraList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 883
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x90b0103

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    sput-object v5, Lcom/android/keyguard/MiuiKeyguardUtils;->sSCSlideNotOpenCameraList:Ljava/util/List;

    .line 886
    :cond_0
    :try_start_0
    const-string/jumbo v5, "activity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 887
    .local v3, "manager":Landroid/app/ActivityManager;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    .line 888
    .local v4, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 896
    .end local v3    # "manager":Landroid/app/ActivityManager;
    .end local v4    # "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_1
    :goto_0
    return v8

    .line 889
    .restart local v3    # "manager":Landroid/app/ActivityManager;
    .restart local v4    # "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_2
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 890
    .local v1, "cn":Landroid/content/ComponentName;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v0, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 891
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    sget-object v5, Lcom/android/keyguard/MiuiKeyguardUtils;->sSCSlideNotOpenCameraList:Ljava/util/List;

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    return v5

    .line 893
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "cn":Landroid/content/ComponentName;
    .end local v3    # "manager":Landroid/app/ActivityManager;
    .end local v4    # "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :catch_0
    move-exception v2

    .line 894
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isScreenTurnOnDelayed()Z
    .locals 1

    .prologue
    .line 606
    sget-boolean v0, Lcom/android/keyguard/MiuiKeyguardUtils;->sIsScreenTurnOnDelayed:Z

    return v0
.end method

.method public static isSupportFaceUnlock(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 414
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_7

    .line 415
    sget-object v0, Lcom/android/keyguard/MiuiKeyguardUtils;->sGlobalDeviceFaceJiajiaSupport:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/keyguard/MiuiKeyguardUtils;->sGlobalRegionFaceJiajiaSupport:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 416
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x90b00fc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/MiuiKeyguardUtils;->sGlobalDeviceFaceJiajiaSupport:Ljava/util/List;

    .line 417
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x90b00f9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/MiuiKeyguardUtils;->sGlobalRegionFaceJiajiaSupport:Ljava/util/List;

    .line 419
    :cond_1
    sget-object v0, Lcom/android/keyguard/MiuiKeyguardUtils;->sGlobalDeviceSenseTimeSupport:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/keyguard/MiuiKeyguardUtils;->sGlobalRegionSenseTimeSupport:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 420
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x90b00fd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/MiuiKeyguardUtils;->sGlobalDeviceSenseTimeSupport:Ljava/util/List;

    .line 421
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x90b00fa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/MiuiKeyguardUtils;->sGlobalRegionSenseTimeSupport:Ljava/util/List;

    .line 423
    :cond_3
    sget-object v0, Lcom/android/keyguard/MiuiKeyguardUtils;->sGlobalDeviceFaceJiajiaSupport:Ljava/util/List;

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/keyguard/MiuiKeyguardUtils;->sGlobalRegionFaceJiajiaSupport:Ljava/util/List;

    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 424
    :cond_4
    sget-object v0, Lcom/android/keyguard/MiuiKeyguardUtils;->sGlobalDeviceSenseTimeSupport:Ljava/util/List;

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/android/keyguard/MiuiKeyguardUtils;->sGlobalRegionSenseTimeSupport:Ljava/util/List;

    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 423
    :goto_0
    return v0

    :cond_5
    const/4 v0, 0x1

    goto :goto_0

    .line 424
    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    .line 427
    :cond_7
    sget-object v0, Lcom/android/keyguard/MiuiKeyguardUtils;->sDeviceSupportFace:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 428
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x90b00fb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/MiuiKeyguardUtils;->sDeviceSupportFace:Ljava/util/List;

    .line 430
    :cond_8
    sget-object v0, Lcom/android/keyguard/MiuiKeyguardUtils;->sDeviceSupportFace:Ljava/util/List;

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSupportFaceUnlockUseCamera1(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 435
    sget-object v0, Lcom/android/keyguard/MiuiKeyguardUtils;->sDeviceUseCamera1:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x90b00fe

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/MiuiKeyguardUtils;->sDeviceUseCamera1:Ljava/util/List;

    .line 438
    :cond_0
    invoke-static {p0}, Lcom/android/keyguard/MiuiKeyguardUtils;->isSupportFaceUnlock(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/keyguard/MiuiKeyguardUtils;->sDeviceUseCamera1:Ljava/util/List;

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportNewPickupSensorByXiaomi(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 460
    sget-object v0, Lcom/android/keyguard/MiuiKeyguardUtils;->sDeviceSupportNewPickupSensorByXiaomi:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x90b0101

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/MiuiKeyguardUtils;->sDeviceSupportNewPickupSensorByXiaomi:Ljava/util/List;

    .line 463
    :cond_0
    sget-object v0, Lcom/android/keyguard/MiuiKeyguardUtils;->sDeviceSupportNewPickupSensorByXiaomi:Ljava/util/List;

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSupportPickupByXiaomi(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 453
    sget-object v0, Lcom/android/keyguard/MiuiKeyguardUtils;->sDeviceSupportPickupByXiaomi:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x90b0100

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/MiuiKeyguardUtils;->sDeviceSupportPickupByXiaomi:Ljava/util/List;

    .line 456
    :cond_0
    sget-object v0, Lcom/android/keyguard/MiuiKeyguardUtils;->sDeviceSupportPickupByXiaomi:Ljava/util/List;

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSupportScreenOnDelayed(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 467
    const-string/jumbo v1, "ursa"

    sget-object v2, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 468
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 469
    const-string/jumbo v2, "face_unlock_model"

    .line 470
    invoke-static {}, Lcom/android/keyguard/LockPatternUtilsWrapper;->getCurrentUser()I

    move-result v3

    .line 468
    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 472
    :cond_1
    sget-object v0, Lcom/android/keyguard/MiuiKeyguardUtils;->sDeviceSupportScreenOnDelay:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 473
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x90b0102

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/MiuiKeyguardUtils;->sDeviceSupportScreenOnDelay:Ljava/util/List;

    .line 475
    :cond_2
    sget-object v0, Lcom/android/keyguard/MiuiKeyguardUtils;->sDeviceSupportScreenOnDelay:Ljava/util/List;

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSupportVerticalClock(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 522
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x90d0040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "enable_vertical_clock"

    invoke-static {v0, p0}, Landroid/preference/MiuiCoreSettingsPreference;->gKP(Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public static isTopActivitySystemApp(Landroid/content/Context;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 548
    :try_start_0
    const-string/jumbo v5, "activity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 549
    .local v3, "manager":Landroid/app/ActivityManager;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    .line 550
    .local v4, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 551
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v5

    const/4 v8, 0x0

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 552
    .local v1, "cn":Landroid/content/ComponentName;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v0, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 553
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v5, v5, 0x1

    if-lez v5, :cond_0

    move v5, v6

    :goto_0
    return v5

    :cond_0
    move v5, v7

    goto :goto_0

    .line 555
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "cn":Landroid/content/ComponentName;
    .end local v3    # "manager":Landroid/app/ActivityManager;
    .end local v4    # "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :catch_0
    move-exception v2

    .line 556
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 558
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    return v7
.end method

.method public static join(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "join"    # Ljava/lang/String;
    .param p1, "strAry"    # [Ljava/lang/String;

    .prologue
    .line 494
    const-string/jumbo v1, ""

    .line 495
    .local v1, "result":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_2

    .line 496
    aget-object v2, p1, v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 497
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 498
    aget-object v1, p1, v0

    .line 495
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 500
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 505
    :cond_2
    return-object v1
.end method

.method private static loadDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 287
    const/4 v0, 0x0

    .line 289
    .local v0, "b":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1, v2}, Lmiui/graphics/BitmapFactory;->decodeBitmap(Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 293
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 294
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v2

    .line 290
    .local v0, "b":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 291
    .local v1, "e":Ljava/io/IOException;
    return-object v3

    .line 296
    .end local v1    # "e":Ljava/io/IOException;
    .local v0, "b":Landroid/graphics/Bitmap;
    :cond_0
    return-object v3
.end method

.method public static maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;
    .locals 4
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 177
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_0

    .line 178
    return-object p0

    .line 180
    :cond_0
    if-nez p0, :cond_1

    .line 181
    return-object v3

    .line 182
    :cond_1
    const/4 v1, -0x2

    if-eq p1, v1, :cond_2

    .line 183
    const-string/jumbo v1, "content"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 182
    if-eqz v1, :cond_2

    .line 184
    invoke-static {p0}, Lcom/android/keyguard/MiuiKeyguardUtils;->uriHasUserId(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 186
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 187
    .local v0, "builder":Landroid/net/Uri$Builder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 188
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 191
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    :cond_2
    return-object p0
.end method

.method public static needPasswordCheck(ZI)Z
    .locals 4
    .param p0, "match"    # Z
    .param p1, "userIdMatched"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 701
    if-eqz p0, :cond_0

    .line 702
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x19

    if-ge v2, v3, :cond_1

    .line 701
    :cond_0
    :goto_0
    return v0

    .line 703
    :cond_1
    if-eqz p0, :cond_2

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    if-ne p1, v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static recordKeyguardSettingsStatistics(Landroid/content/Context;)V
    .locals 18
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 802
    new-instance v4, Landroid/security/MiuiLockPatternUtils;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 803
    .local v4, "lockPatternUtils":Landroid/security/MiuiLockPatternUtils;
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v13

    invoke-virtual {v4, v13}, Landroid/security/MiuiLockPatternUtils;->isSecure(I)Z

    move-result v13

    if-nez v13, :cond_1

    .line 804
    invoke-static/range {p0 .. p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v3

    .line 805
    .local v3, "isSecure":Z
    :goto_0
    if-nez v3, :cond_0

    .line 806
    const-string/jumbo v13, "none"

    invoke-static {v13}, Lcom/android/keyguard/AnalyticsHelper;->recordUnlockWay(Ljava/lang/String;)V

    .line 808
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 809
    .local v2, "calendar":Ljava/util/Calendar;
    sget v13, Lcom/android/keyguard/MiuiKeyguardUtils;->sYearOfStatistics:I

    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    if-ne v13, v14, :cond_2

    .line 810
    sget v13, Lcom/android/keyguard/MiuiKeyguardUtils;->sDayOfStatistics:I

    const/4 v14, 0x6

    invoke-virtual {v2, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    if-ne v13, v14, :cond_2

    .line 811
    return-void

    .line 803
    .end local v2    # "calendar":Ljava/util/Calendar;
    .end local v3    # "isSecure":Z
    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    .line 814
    .restart local v2    # "calendar":Ljava/util/Calendar;
    .restart local v3    # "isSecure":Z
    :cond_2
    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    sput v13, Lcom/android/keyguard/MiuiKeyguardUtils;->sYearOfStatistics:I

    .line 815
    const/4 v13, 0x6

    invoke-virtual {v2, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    sput v13, Lcom/android/keyguard/MiuiKeyguardUtils;->sDayOfStatistics:I

    .line 816
    new-instance v5, Lcom/android/keyguard/LockPatternUtilsWrapper;

    invoke-direct {v5, v4}, Lcom/android/keyguard/LockPatternUtilsWrapper;-><init>(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 817
    .local v5, "lockPatternUtilsWrapper":Lcom/android/keyguard/LockPatternUtilsWrapper;
    const-string/jumbo v11, "unsecure"

    .line 818
    .local v11, "secureType":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 819
    invoke-virtual {v5}, Lcom/android/keyguard/LockPatternUtilsWrapper;->getActivePasswordQuality()I

    move-result v13

    sparse-switch v13, :sswitch_data_0

    .line 834
    :cond_3
    :goto_1
    const-string/jumbo v13, "keyguard_secure_type"

    invoke-static {v13, v11}, Lcom/android/keyguard/AnalyticsHelper;->recordEnum(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    invoke-static/range {p0 .. p0}, Lcom/android/keyguard/MiuiKeyguardUtils;->isSupportFaceUnlock(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 837
    const-string/jumbo v12, "unsecure"

    .line 838
    .local v12, "state":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasFaceUnlockData()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 839
    invoke-static/range {p0 .. p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/keyguard/KeyguardUpdateMonitor;->faceUnlockApplyLock()Z

    move-result v13

    .line 838
    if-eqz v13, :cond_9

    .line 840
    const-string/jumbo v12, "enable"

    .line 845
    :cond_4
    :goto_2
    const-string/jumbo v13, "face_unlock_state"

    invoke-static {v13, v12}, Lcom/android/keyguard/AnalyticsHelper;->recordEnum(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    const-string/jumbo v13, "face_unlock_notification_toggle"

    .line 847
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    .line 848
    const-string/jumbo v15, "face_unlock_by_notification_screen_on"

    .line 849
    invoke-static {}, Lcom/android/keyguard/LockPatternUtilsWrapper;->getCurrentUser()I

    move-result v16

    const/16 v17, 0x0

    .line 846
    move/from16 v0, v17

    move/from16 v1, v16

    invoke-static {v14, v15, v0, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/keyguard/AnalyticsHelper;->recordEnum(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    .end local v12    # "state":Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 853
    const-string/jumbo v14, "wakeup_for_keyguard_notification"

    invoke-static {}, Lcom/android/keyguard/LockPatternUtilsWrapper;->getCurrentUser()I

    move-result v15

    const/16 v16, 0x1

    .line 852
    move/from16 v0, v16

    invoke-static {v13, v14, v0, v15}, Landroid/provider/MiuiSettings$System;->getBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    move-result v10

    .line 854
    .local v10, "screenOnWhenNotification":Z
    const-string/jumbo v13, "keyguard_screen_on_when_notification"

    .line 855
    invoke-static {v10}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v14

    .line 854
    invoke-static {v13, v14}, Lcom/android/keyguard/AnalyticsHelper;->recordEnum(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    new-instance v13, Lcom/android/keyguard/LockPatternUtilsWrapper;

    invoke-direct {v13, v4}, Lcom/android/keyguard/LockPatternUtilsWrapper;-><init>(Lcom/android/internal/widget/LockPatternUtils;)V

    invoke-virtual {v13}, Lcom/android/keyguard/LockPatternUtilsWrapper;->isOwnerInfoEnabled()Z

    move-result v6

    .line 858
    .local v6, "ownerInfoEnabled":Z
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v13

    invoke-virtual {v4, v13}, Landroid/security/MiuiLockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v7

    .line 859
    .local v7, "ownerInfoString":Ljava/lang/String;
    const-string/jumbo v14, "keyguard_has_owner_info"

    .line 860
    if-eqz v6, :cond_6

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_a

    :cond_6
    const/4 v13, 0x0

    :goto_3
    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    .line 859
    invoke-static {v14, v13}, Lcom/android/keyguard/AnalyticsHelper;->recordEnum(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 863
    const-string/jumbo v14, "screen_off_timeout"

    const-wide/16 v16, 0x7530

    invoke-static {}, Lcom/android/keyguard/LockPatternUtilsWrapper;->getCurrentUser()I

    move-result v15

    .line 862
    move-wide/from16 v0, v16

    invoke-static {v13, v14, v0, v1, v15}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v8

    .line 864
    .local v8, "screenOffTimeout":J
    const-string/jumbo v13, "keyguard_auto_lock"

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/keyguard/AnalyticsHelper;->recordEnum(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    invoke-static/range {p0 .. p0}, Lcom/android/keyguard/MiuiKeyguardUtils;->isFingerprintHardwareAvailable(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 867
    const-string/jumbo v12, "not_secure"

    .line 868
    .restart local v12    # "state":Ljava/lang/String;
    if-eqz v3, :cond_7

    .line 869
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 870
    const-string/jumbo v14, "miui_keyguard"

    .line 871
    invoke-static {}, Lcom/android/keyguard/LockPatternUtilsWrapper;->getCurrentUser()I

    move-result v15

    .line 870
    const/16 v16, 0x2

    .line 869
    move/from16 v0, v16

    invoke-static {v13, v14, v0, v15}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v13

    .line 871
    const/4 v14, 0x2

    .line 869
    if-ne v13, v14, :cond_b

    .line 872
    const-string/jumbo v12, "enabled"

    .line 877
    :cond_7
    :goto_4
    const-string/jumbo v13, "keyguard_fingerprint_state_new"

    invoke-static {v13, v12}, Lcom/android/keyguard/AnalyticsHelper;->recordEnum(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    .end local v12    # "state":Ljava/lang/String;
    :cond_8
    return-void

    .line 821
    .end local v6    # "ownerInfoEnabled":Z
    .end local v7    # "ownerInfoString":Ljava/lang/String;
    .end local v8    # "screenOffTimeout":J
    .end local v10    # "screenOnWhenNotification":Z
    :sswitch_0
    const-string/jumbo v11, "pattern"

    goto/16 :goto_1

    .line 825
    :sswitch_1
    const-string/jumbo v11, "numeric"

    goto/16 :goto_1

    .line 830
    :sswitch_2
    const-string/jumbo v11, "mixed"

    goto/16 :goto_1

    .line 842
    .restart local v12    # "state":Ljava/lang/String;
    :cond_9
    invoke-static/range {p0 .. p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasFaceUnlockData()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 843
    const-string/jumbo v12, "disable"

    goto/16 :goto_2

    .line 860
    .end local v12    # "state":Ljava/lang/String;
    .restart local v6    # "ownerInfoEnabled":Z
    .restart local v7    # "ownerInfoString":Ljava/lang/String;
    .restart local v10    # "screenOnWhenNotification":Z
    :cond_a
    const/4 v13, 0x1

    goto :goto_3

    .line 874
    .restart local v8    # "screenOffTimeout":J
    .restart local v12    # "state":Ljava/lang/String;
    :cond_b
    const-string/jumbo v12, "disabled"

    goto :goto_4

    .line 819
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_2
        0x60000 -> :sswitch_2
    .end sparse-switch
.end method

.method public static recordLockScreenMagazine(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 756
    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getWallpaperInfo()Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;

    move-result-object v5

    .line 757
    .local v5, "wallpaperInfo":Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;
    if-eqz v5, :cond_0

    .line 758
    iget-object v0, v5, Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;->authority:Ljava/lang/String;

    .line 759
    .local v0, "authority":Ljava/lang/String;
    iget-boolean v6, v5, Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;->isLockScreenMagazine:Z

    if-eqz v6, :cond_0

    .line 760
    const-string/jumbo v6, "com.xiaomi.ad.LockScreenAdProvider"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 759
    if-eqz v6, :cond_0

    .line 761
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 762
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "content://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 761
    invoke-virtual {v6, v7}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v4

    .line 763
    .local v4, "provider":Landroid/content/IContentProvider;
    if-eqz v4, :cond_0

    .line 765
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 766
    .local v3, "jo":Lorg/json/JSONObject;
    const-string/jumbo v6, "key"

    iget-object v7, v5, Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;->key:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 767
    const-string/jumbo v6, "event"

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 768
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 769
    .local v2, "extras":Landroid/os/Bundle;
    const-string/jumbo v6, "request_json"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "recordEvent"

    const/4 v8, 0x0

    invoke-interface {v4, v6, v7, v8, v2}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 774
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 755
    .end local v0    # "authority":Ljava/lang/String;
    .end local v2    # "extras":Landroid/os/Bundle;
    .end local v3    # "jo":Lorg/json/JSONObject;
    .end local v4    # "provider":Landroid/content/IContentProvider;
    :cond_0
    :goto_0
    return-void

    .line 771
    .restart local v0    # "authority":Ljava/lang/String;
    .restart local v4    # "provider":Landroid/content/IContentProvider;
    :catch_0
    move-exception v1

    .line 772
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v6, "miui_keyguard"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 774
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    goto :goto_0

    .line 773
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 774
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 773
    throw v6
.end method

.method public static setFaceUnlockCameraProperty(Ljava/lang/String;)V
    .locals 2
    .param p0, "property"    # Ljava/lang/String;

    .prologue
    .line 595
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v1, "wayne"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v1, "whyred"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v1, "ysl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 596
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v1, "tulip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 595
    if-nez v0, :cond_0

    .line 596
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v1, "clover"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 595
    if-eqz v0, :cond_1

    .line 597
    :cond_0
    const-string/jumbo v0, "sys.camera.face.unlock"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    :cond_1
    return-void
.end method

.method public static setIsFullScreenGestureOpened(Z)V
    .locals 0
    .param p0, "isFullScreenGestureOpened"    # Z

    .prologue
    .line 576
    sput-boolean p0, Lcom/android/keyguard/MiuiKeyguardUtils;->sIsFullScreenGestureOpened:Z

    .line 575
    return-void
.end method

.method public static setKeyguardWallpaperPreviewAvailability(Z)V
    .locals 0
    .param p0, "isWallpaperPreviewAvailable"    # Z

    .prologue
    .line 748
    sput-boolean p0, Lcom/android/keyguard/MiuiKeyguardUtils;->sWallpaperPreviewAvailable:Z

    .line 747
    return-void
.end method

.method public static setScreenTurnOnDelayed(Z)V
    .locals 0
    .param p0, "isScreenTurnOnDelayed"    # Z

    .prologue
    .line 602
    sput-boolean p0, Lcom/android/keyguard/MiuiKeyguardUtils;->sIsScreenTurnOnDelayed:Z

    .line 601
    return-void
.end method

.method public static setUserAuthenticatedSinceBoot()V
    .locals 2

    .prologue
    .line 661
    sget-boolean v0, Lcom/android/keyguard/MiuiKeyguardUtils;->sHasSetAuth:Z

    if-nez v0, :cond_0

    .line 662
    const-string/jumbo v0, "sys.miui.user_authenticated"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/keyguard/MiuiKeyguardUtils;->sHasSetAuth:Z

    .line 660
    :cond_0
    return-void
.end method

.method public static setUserAuthenticatedSinceBootSecond()V
    .locals 2

    .prologue
    .line 211
    const-string/jumbo v0, "sys.miui.user_authenticated_sec"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method public static skipFaceUnlockWhenStopDoze(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 449
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "config_displayBlanksAfterDoze"

    const-string/jumbo v4, "bool"

    const-string/jumbo v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 450
    .local v0, "id":I
    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    :cond_0
    return v1
.end method

.method public static supportWirelessCharge()Z
    .locals 1

    .prologue
    .line 543
    sget-boolean v0, Lcom/android/keyguard/MiuiKeyguardUtils;->SUPPORT_WIRELESS_CHARGE:Z

    return v0
.end method

.method public static uriHasUserId(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v0, 0x0

    .line 171
    if-nez p0, :cond_0

    .line 172
    return v0

    .line 173
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static useDefaultWallpaper(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "lock_wallpaper_provider_authority"

    const-string/jumbo v3, "com.miui.home.none_provider"

    invoke-static {v1, v2, v3}, Landroid/provider/MiuiSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "status":Ljava/lang/String;
    const-string/jumbo v1, "com.miui.home.none_provider"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static useLockLiveWallpaper(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 125
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "lock_wallpaper_provider_authority"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "status":Ljava/lang/String;
    const-string/jumbo v1, "com.android.thememanager.theme_lock_video_wallpaper"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static useSystemLiveWallpaper(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 120
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "lock_wallpaper_provider_authority"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "status":Ljava/lang/String;
    const-string/jumbo v1, "com.android.thememanager.theme_lock_live_wallpaper"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method
