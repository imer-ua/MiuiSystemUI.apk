.class public Lcom/android/systemui/recents/RecentsConfiguration;
.super Ljava/lang/Object;
.source "RecentsConfiguration.java"


# static fields
.field public static sCanMultiWindow:Z


# instance fields
.field public fakeShadows:Z

.field public final isLargeScreen:Z

.field public final isXLargeScreen:Z

.field public mLaunchState:Lcom/android/systemui/recents/RecentsActivityLaunchState;

.field public final smallestWidth:I

.field public svelteLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/recents/RecentsConfiguration;->sCanMultiWindow:Z

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v4, Lcom/android/systemui/recents/RecentsActivityLaunchState;

    invoke-direct {v4}, Lcom/android/systemui/recents/RecentsActivityLaunchState;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mLaunchState:Lcom/android/systemui/recents/RecentsActivityLaunchState;

    .line 66
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v3

    .line 67
    .local v3, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 68
    .local v0, "appContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 69
    .local v1, "res":Landroid/content/res/Resources;
    const v4, 0x90d0007

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/recents/RecentsConfiguration;->fakeShadows:Z

    .line 70
    const v4, 0x90e0028

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/recents/RecentsConfiguration;->svelteLevel:I

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v2, v4, Landroid/util/DisplayMetrics;->density:F

    .line 73
    .local v2, "screenDensity":F
    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDeviceSmallestWidth()I

    move-result v4

    iput v4, p0, Lcom/android/systemui/recents/RecentsConfiguration;->smallestWidth:I

    .line 74
    iget v4, p0, Lcom/android/systemui/recents/RecentsConfiguration;->smallestWidth:I

    const/high16 v7, 0x44160000    # 600.0f

    mul-float/2addr v7, v2

    float-to-int v7, v7

    if-lt v4, v7, :cond_0

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/android/systemui/recents/RecentsConfiguration;->isLargeScreen:Z

    .line 75
    iget v4, p0, Lcom/android/systemui/recents/RecentsConfiguration;->smallestWidth:I

    const/high16 v7, 0x44340000    # 720.0f

    mul-float/2addr v7, v2

    float-to-int v7, v7

    if-lt v4, v7, :cond_1

    :goto_1
    iput-boolean v5, p0, Lcom/android/systemui/recents/RecentsConfiguration;->isXLargeScreen:Z

    .line 63
    return-void

    :cond_0
    move v4, v6

    .line 74
    goto :goto_0

    :cond_1
    move v5, v6

    .line 75
    goto :goto_1
.end method


# virtual methods
.method public getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mLaunchState:Lcom/android/systemui/recents/RecentsActivityLaunchState;

    return-object v0
.end method
