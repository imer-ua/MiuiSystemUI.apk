.class public Lcom/android/systemui/recents/RecentsDebugFlags;
.super Ljava/lang/Object;
.source "RecentsDebugFlags.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isFastToggleRecentsEnabled()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 89
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 90
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasFreeformWorkspaceSupport()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    :cond_0
    return v2

    .line 93
    :cond_1
    return v2
.end method

.method public isPagingEnabled()Z
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    return v0
.end method
