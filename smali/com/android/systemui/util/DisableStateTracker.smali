.class public Lcom/android/systemui/util/DisableStateTracker;
.super Ljava/lang/Object;
.source "DisableStateTracker.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field private mDisabled:Z

.field private final mMask1:I

.field private final mMask2:I

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "disableMask"    # I
    .param p2, "disable2Mask"    # I

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcom/android/systemui/util/DisableStateTracker;->mMask1:I

    .line 27
    iput p2, p0, Lcom/android/systemui/util/DisableStateTracker;->mMask2:I

    .line 25
    return-void
.end method


# virtual methods
.method public addQsTile(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "tile"    # Landroid/content/ComponentName;

    .prologue
    .line 173
    return-void
.end method

.method public animateCollapsePanels(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 72
    return-void
.end method

.method public animateExpandNotificationsPanel()V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public animateExpandSettingsPanel(Ljava/lang/String;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/String;

    .prologue
    .line 76
    return-void
.end method

.method public appTransitionCancelled()V
    .locals 0

    .prologue
    .line 140
    return-void
.end method

.method public appTransitionFinished()V
    .locals 0

    .prologue
    .line 149
    return-void
.end method

.method public appTransitionPending(Z)V
    .locals 0
    .param p1, "forced"    # Z

    .prologue
    .line 136
    return-void
.end method

.method public appTransitionStarting(JJZ)V
    .locals 0
    .param p1, "startTime"    # J
    .param p3, "duration"    # J
    .param p5, "forced"    # Z

    .prologue
    .line 145
    return-void
.end method

.method public cancelPreloadRecentApps()V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method public clickTile(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "tile"    # Landroid/content/ComponentName;

    .prologue
    .line 181
    return-void
.end method

.method public disable(IIZ)V
    .locals 3
    .param p1, "state1"    # I
    .param p2, "state2"    # I
    .param p3, "animate"    # Z

    .prologue
    const/4 v1, 0x0

    .line 48
    iget v2, p0, Lcom/android/systemui/util/DisableStateTracker;->mMask1:I

    and-int/2addr v2, p1

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/systemui/util/DisableStateTracker;->mMask2:I

    and-int/2addr v2, p2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 49
    .local v0, "disabled":Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/util/DisableStateTracker;->mDisabled:Z

    if-ne v0, v2, :cond_2

    return-void

    .line 48
    .end local v0    # "disabled":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "disabled":Z
    goto :goto_0

    .line 50
    :cond_2
    iput-boolean v0, p0, Lcom/android/systemui/util/DisableStateTracker;->mDisabled:Z

    .line 51
    iget-object v2, p0, Lcom/android/systemui/util/DisableStateTracker;->mView:Landroid/view/View;

    if-eqz v0, :cond_3

    const/16 v1, 0x8

    :cond_3
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 47
    return-void
.end method

.method public dismissKeyboardShortcutsMenu()V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

.method public handleShowGlobalActionsMenu()V
    .locals 0

    .prologue
    .line 189
    return-void
.end method

.method public handleSystemNavigationKey(I)V
    .locals 0
    .param p1, "arg1"    # I

    .prologue
    .line 185
    return-void
.end method

.method public hideFingerprintDialog()V
    .locals 0

    .prologue
    .line 213
    return-void
.end method

.method public hideRecentApps(ZZ)V
    .locals 0
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHomeKey"    # Z

    .prologue
    .line 100
    return-void
.end method

.method public onFingerprintAuthenticated()V
    .locals 0

    .prologue
    .line 201
    return-void
.end method

.method public onFingerprintError(Ljava/lang/String;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 209
    return-void
.end method

.method public onFingerprintHelp(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 205
    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/systemui/util/DisableStateTracker;->mView:Landroid/view/View;

    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0, v1}, Lcom/android/systemui/SystemUI;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 31
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/systemui/util/DisableStateTracker;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0, v1}, Lcom/android/systemui/SystemUI;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->removeCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/util/DisableStateTracker;->mView:Landroid/view/View;

    .line 37
    return-void
.end method

.method public preloadRecentApps()V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method public remQsTile(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "tile"    # Landroid/content/ComponentName;

    .prologue
    .line 177
    return-void
.end method

.method public removeIcon(Ljava/lang/String;)V
    .locals 0
    .param p1, "slot"    # Ljava/lang/String;

    .prologue
    .line 64
    return-void
.end method

.method public setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 0
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .prologue
    .line 60
    return-void
.end method

.method public setImeWindowStatus(Landroid/os/IBinder;IIZ)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "vis"    # I
    .param p3, "backDisposition"    # I
    .param p4, "showImeSwitcher"    # Z

    .prologue
    .line 91
    return-void
.end method

.method public setStatus(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "what"    # I
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "ext"    # Landroid/os/Bundle;

    .prologue
    .line 193
    return-void
.end method

.method public setSystemUiVisibility(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "vis"    # I
    .param p2, "fullscreenStackVis"    # I
    .param p3, "dockedStackVis"    # I
    .param p4, "mask"    # I
    .param p5, "fullscreenStackBounds"    # Landroid/graphics/Rect;
    .param p6, "dockedStackBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 82
    return-void
.end method

.method public setWindowState(II)V
    .locals 0
    .param p1, "window"    # I
    .param p2, "state"    # I

    .prologue
    .line 128
    return-void
.end method

.method public showAssistDisclosure()V
    .locals 0

    .prologue
    .line 153
    return-void
.end method

.method public showFingerprintDialog(Lcom/android/internal/os/SomeArgs;)V
    .locals 0
    .param p1, "args"    # Lcom/android/internal/os/SomeArgs;

    .prologue
    .line 197
    return-void
.end method

.method public showPictureInPictureMenu()V
    .locals 0

    .prologue
    .line 165
    return-void
.end method

.method public showRecentApps(ZZ)V
    .locals 0
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "fromHome"    # Z

    .prologue
    .line 95
    return-void
.end method

.method public showScreenPinningRequest(I)V
    .locals 0
    .param p1, "taskId"    # I

    .prologue
    .line 132
    return-void
.end method

.method public startAssist(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 157
    return-void
.end method

.method public toggleKeyboardShortcutsMenu(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .prologue
    .line 120
    return-void
.end method

.method public toggleRecentApps()V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method public toggleSplitScreen()V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method public topAppWindowChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 86
    return-void
.end method
