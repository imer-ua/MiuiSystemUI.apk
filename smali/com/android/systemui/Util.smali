.class public Lcom/android/systemui/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static sMiuiOptimizationDisabled:Z

.field private static sUserExperienceEnable:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    .line 40
    move-object v0, p0

    .line 42
    .local v0, "contextForUser":Landroid/content/Context;
    if-ltz p1, :cond_0

    .line 47
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 49
    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 48
    const/4 v4, 0x4

    .line 47
    invoke-virtual {p0, v2, v4, v3}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 54
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    return-object v2

    .line 50
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public static hideSystemBars(Landroid/view/View;)V
    .locals 1
    .param p0, "decorView"    # Landroid/view/View;

    .prologue
    .line 137
    const/16 v0, 0x2f06

    .line 136
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 135
    return-void
.end method

.method public static isBrowserSearchExist(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.browser.browser_search"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 107
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.browser"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    invoke-static {p0, v0}, Lcom/android/systemui/Util;->isIntentActivityExist(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    return v1
.end method

.method public static isCNFileExplorerExist(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 101
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.fileexplorer"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    invoke-static {p0, v0}, Lcom/android/systemui/Util;->isIntentActivityExist(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    return v1
.end method

.method public static isDefaultTheme()Z
    .locals 1

    .prologue
    .line 159
    sget-object v0, Lcom/android/systemui/Constants;->THEME_FILE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isGlobalFileExplorerExist(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 95
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.mi.android.globalFileexplorer"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    invoke-static {p0, v0}, Lcom/android/systemui/Util;->isIntentActivityExist(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    return v1
.end method

.method private static isIntentActivityExist(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 112
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 113
    :cond_0
    return v2

    .line 116
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 117
    const/high16 v4, 0xc0000

    .line 116
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 119
    .local v1, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-lez v3, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2

    .line 120
    .end local v1    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 123
    return v2
.end method

.method public static isMiuiOptimizationDisabled()Z
    .locals 1

    .prologue
    .line 86
    sget-boolean v0, Lcom/android/systemui/Util;->sMiuiOptimizationDisabled:Z

    return v0
.end method

.method public static isUserExperienceProgramEnable()Z
    .locals 1

    .prologue
    .line 78
    sget-boolean v0, Lcom/android/systemui/Util;->sUserExperienceEnable:Z

    return v0
.end method

.method public static makeSystemOverlayToast(Landroid/content/Context;II)Landroid/widget/Toast;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "duration"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ShowToast"
        }
    .end annotation

    .prologue
    .line 195
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 196
    .local v0, "toast":Landroid/widget/Toast;
    const/16 v1, 0x7d6

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setType(I)V

    .line 197
    invoke-virtual {v0}, Landroid/widget/Toast;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 199
    return-object v0
.end method

.method public static playRingtoneAsync(Landroid/content/Context;Landroid/net/Uri;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "streamType"    # I

    .prologue
    .line 175
    const-class v0, Lcom/android/systemui/UiOffloadThread;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/UiOffloadThread;

    new-instance v1, Lcom/android/systemui/Util$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/Util$2;-><init>(Landroid/content/Context;Landroid/net/Uri;I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 174
    return-void
.end method

.method public static setMiuiOptimizationDisabled(Z)V
    .locals 0
    .param p0, "miuiOptimizationDisabled"    # Z

    .prologue
    .line 82
    sput-boolean p0, Lcom/android/systemui/Util;->sMiuiOptimizationDisabled:Z

    .line 81
    return-void
.end method

.method public static setUserExperienceProgramEnabled(Z)V
    .locals 0
    .param p0, "enable"    # Z

    .prologue
    .line 74
    sput-boolean p0, Lcom/android/systemui/Util;->sUserExperienceEnable:Z

    .line 73
    return-void
.end method

.method public static setViewRoundCorner(Landroid/view/View;F)V
    .locals 2
    .param p0, "imageView"    # Landroid/view/View;
    .param p1, "radius"    # F

    .prologue
    .line 148
    new-instance v0, Lcom/android/systemui/Util$1;

    invoke-direct {v0, p1}, Lcom/android/systemui/Util$1;-><init>(F)V

    .line 154
    .local v0, "viewOutlineProvider":Landroid/view/ViewOutlineProvider;
    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 155
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/View;->setClipToOutline(Z)V

    .line 147
    return-void
.end method

.method public static showCtsSpecifiedColor()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 90
    sget-boolean v1, Lcom/android/systemui/Util;->sMiuiOptimizationDisabled:Z

    if-eqz v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x19

    if-le v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
