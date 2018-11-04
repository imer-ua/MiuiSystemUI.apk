.class public Lcom/android/systemui/statusbar/notification/VisualStabilityManager;
.super Ljava/lang/Object;
.source "VisualStabilityManager.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;
    }
.end annotation


# instance fields
.field private mAddedChildren:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowedReorderViews:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mLowPriorityReorderingViews:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mPanelExpanded:Z

.field private mPulsing:Z

.field private mReorderingAllowed:Z

.field private mScreenOn:Z

.field private mVisibilityLocationProvider:Lcom/android/systemui/statusbar/notification/VisibilityLocationProvider;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mCallbacks:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mAllowedReorderViews:Landroid/util/ArraySet;

    .line 41
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mLowPriorityReorderingViews:Landroid/util/ArraySet;

    .line 42
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mAddedChildren:Landroid/util/ArraySet;

    .line 32
    return-void
.end method

.method private notifyCallbacks()V
    .locals 3

    .prologue
    .line 93
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 94
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;

    .line 95
    .local v0, "callback":Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;
    invoke-interface {v0}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;->onReorderingAllowed()V

    .line 93
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    .end local v0    # "callback":Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 92
    return-void
.end method

.method private updateReorderingAllowed()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 84
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mScreenOn:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mPanelExpanded:Z

    if-eqz v3, :cond_3

    :cond_0
    :goto_0
    move v1, v2

    .line 85
    .local v1, "reorderingAllowed":Z
    if-eqz v1, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mReorderingAllowed:Z

    if-eqz v2, :cond_4

    :cond_1
    const/4 v0, 0x0

    .line 86
    .local v0, "changed":Z
    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mReorderingAllowed:Z

    .line 87
    if-eqz v0, :cond_2

    .line 88
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->notifyCallbacks()V

    .line 83
    :cond_2
    return-void

    .line 84
    .end local v0    # "changed":Z
    .end local v1    # "reorderingAllowed":Z
    :cond_3
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mPulsing:Z

    if-nez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 85
    .restart local v1    # "reorderingAllowed":Z
    :cond_4
    const/4 v0, 0x1

    .restart local v0    # "changed":Z
    goto :goto_1
.end method


# virtual methods
.method public addReorderingAllowedCallback(Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    return-void
.end method

.method public canReorderNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z
    .locals 2
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    const/4 v1, 0x1

    .line 113
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mReorderingAllowed:Z

    if-eqz v0, :cond_0

    .line 114
    return v1

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mAddedChildren:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    return v1

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mLowPriorityReorderingViews:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 120
    return v1

    .line 122
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mAllowedReorderViews:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 123
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mVisibilityLocationProvider:Lcom/android/systemui/statusbar/notification/VisibilityLocationProvider;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/notification/VisibilityLocationProvider;->isInVisibleLocation(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 126
    :cond_3
    const/4 v0, 0x0

    return v0

    .line 124
    :cond_4
    return v1
.end method

.method public isReorderingAllowed()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mReorderingAllowed:Z

    return v0
.end method

.method public notifyViewAddition(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mAddedChildren:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 169
    return-void
.end method

.method public onHeadsUpPinned(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0
    .param p1, "headsUp"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 154
    return-void
.end method

.method public onHeadsUpPinnedModeChanged(Z)V
    .locals 0
    .param p1, "inPinnedMode"    # Z

    .prologue
    .line 150
    return-void
.end method

.method public onHeadsUpStateChanged(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V
    .locals 2
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "isHeadsUp"    # Z

    .prologue
    .line 142
    if-eqz p2, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mAllowedReorderViews:Landroid/util/ArraySet;

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_0
    return-void
.end method

.method public onHeadsUpUnPinned(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0
    .param p1, "headsUp"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 158
    return-void
.end method

.method public onLowPriorityUpdated(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 2
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mLowPriorityReorderingViews:Landroid/util/ArraySet;

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 161
    return-void
.end method

.method public onReorderingFinished()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mAllowedReorderViews:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 136
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mAddedChildren:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 137
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mLowPriorityReorderingViews:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 134
    return-void
.end method

.method public setPanelExpanded(Z)V
    .locals 0
    .param p1, "expanded"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mPanelExpanded:Z

    .line 61
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->updateReorderingAllowed()V

    .line 59
    return-void
.end method

.method public setScreenOn(Z)V
    .locals 0
    .param p1, "screenOn"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mScreenOn:Z

    .line 69
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->updateReorderingAllowed()V

    .line 67
    return-void
.end method

.method public setVisibilityLocationProvider(Lcom/android/systemui/statusbar/notification/VisibilityLocationProvider;)V
    .locals 0
    .param p1, "visibilityLocationProvider"    # Lcom/android/systemui/statusbar/notification/VisibilityLocationProvider;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mVisibilityLocationProvider:Lcom/android/systemui/statusbar/notification/VisibilityLocationProvider;

    .line 130
    return-void
.end method
