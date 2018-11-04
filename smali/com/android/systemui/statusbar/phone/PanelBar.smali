.class public abstract Lcom/android/systemui/statusbar/phone/PanelBar;
.super Landroid/widget/FrameLayout;
.source "PanelBar.java"


# static fields
.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String;


# instance fields
.field mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

.field private mState:I

.field private mTracking:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    sget-boolean v0, Lcom/android/systemui/Constants;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/PanelBar;->DEBUG:Z

    .line 31
    const-class v0, Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    .line 61
    return-void
.end method

.method public static final LOG(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .param p0, "t"    # Ljava/lang/Class;
    .param p1, "fmt"    # Ljava/lang/String;

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/systemui/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return-void
.end method

.method public static final varargs LOG(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "fmt"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 35
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PanelBar;->DEBUG:Z

    if-nez v0, :cond_0

    return-void

    .line 36
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    return-void
.end method


# virtual methods
.method public collapsePanel(ZZF)V
    .locals 7
    .param p1, "animate"    # Z
    .param p2, "delayed"    # Z
    .param p3, "speedUpFactor"    # F

    .prologue
    const/4 v6, 0x0

    .line 158
    const/4 v1, 0x0

    .line 159
    .local v1, "waiting":Z
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    .line 160
    .local v0, "pv":Lcom/android/systemui/statusbar/phone/PanelView;
    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 164
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelView;->resetViews()V

    .line 165
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedFraction(F)V

    .line 166
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelPeek()V

    .line 168
    :goto_0
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/PanelBar;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "collapsePanel: animate=%s waiting=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/phone/PanelBar;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    :cond_1
    if-nez v1, :cond_2

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    if-eqz v2, :cond_2

    .line 172
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/PanelBar;->go(I)V

    .line 173
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelCollapsed()V

    .line 157
    :cond_2
    return-void

    .line 161
    :cond_3
    invoke-virtual {v0, p2, p3}, Lcom/android/systemui/statusbar/phone/PanelView;->collapse(ZF)V

    .line 162
    const/4 v1, 0x1

    .line 160
    goto :goto_0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    return v0
.end method

.method public go(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 53
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PanelBar;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "go state: %d -> %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelBar;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    .line 52
    return-void
.end method

.method public isClosed()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 182
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onClosingFinished()V
    .locals 0

    .prologue
    .line 205
    return-void
.end method

.method public onExpandingFinished()V
    .locals 2

    .prologue
    .line 202
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PanelBar;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "onExpandingFinished"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelBar;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 67
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 66
    return-void
.end method

.method public onPanelCollapsed()V
    .locals 2

    .prologue
    .line 186
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PanelBar;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "onPanelCollapsed"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelBar;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    :cond_0
    return-void
.end method

.method public onPanelFullyOpened()V
    .locals 2

    .prologue
    .line 190
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PanelBar;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "onPanelFullyOpened"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelBar;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    :cond_0
    return-void
.end method

.method public onPanelPeeked()V
    .locals 2

    .prologue
    .line 178
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PanelBar;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "onPanelPeeked"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelBar;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x3

    const/4 v8, 0x2

    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 91
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 92
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 93
    sget-object v2, Lcom/android/systemui/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onTouch: all panels disabled, ignoring touch at (%d,%d)"

    new-array v5, v8, [Ljava/lang/Object;

    .line 94
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    .line 93
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_0
    return v7

    .line 99
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_5

    .line 100
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    .line 101
    .local v1, "panel":Lcom/android/systemui/statusbar/phone/PanelView;
    if-nez v1, :cond_2

    .line 103
    sget-object v2, Lcom/android/systemui/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onTouch: no panel for touch at (%d,%d)"

    new-array v5, v8, [Ljava/lang/Object;

    .line 104
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    .line 103
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return v3

    .line 107
    :cond_2
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PanelView;->isEnabled()Z

    move-result v0

    .line 108
    .local v0, "enabled":Z
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/PanelBar;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string/jumbo v4, "PanelBar.onTouch: state=%d ACTION_DOWN: panel %s %s"

    new-array v5, v6, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v7

    aput-object v1, v5, v3

    .line 109
    if-eqz v0, :cond_4

    const-string/jumbo v2, ""

    :goto_0
    aput-object v2, v5, v8

    .line 108
    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/phone/PanelBar;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    :cond_3
    if-nez v0, :cond_5

    .line 112
    sget-object v2, Lcom/android/systemui/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    .line 113
    const-string/jumbo v4, "onTouch: panel (%s) is disabled, ignoring touch at (%d,%d)"

    .line 112
    new-array v5, v6, [Ljava/lang/Object;

    .line 114
    aput-object v1, v5, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    .line 112
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return v3

    .line 109
    :cond_4
    const-string/jumbo v2, " (disabled)"

    goto :goto_0

    .line 118
    .end local v0    # "enabled":Z
    .end local v1    # "panel":Lcom/android/systemui/statusbar/phone/PanelView;
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_1
    return v2

    :cond_6
    move v2, v3

    goto :goto_1
.end method

.method public onTrackingStarted()V
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTracking:Z

    .line 193
    return-void
.end method

.method public onTrackingStopped(Z)V
    .locals 1
    .param p1, "expand"    # Z

    .prologue
    .line 198
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTracking:Z

    .line 197
    return-void
.end method

.method public panelEnabled()Z
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x1

    return v0
.end method

.method public panelExpansionChanged(FZ)V
    .locals 6
    .param p1, "frac"    # F
    .param p2, "expanded"    # Z

    .prologue
    const/4 v5, 0x0

    .line 129
    const/4 v0, 0x1

    .line 130
    .local v0, "fullyClosed":Z
    const/4 v1, 0x0

    .line 132
    .local v1, "fullyOpened":Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    .line 133
    .local v2, "pv":Lcom/android/systemui/statusbar/phone/PanelView;
    if-eqz p2, :cond_4

    move v4, v5

    :goto_0
    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/phone/PanelView;->setVisibility(I)V

    .line 135
    if-eqz p2, :cond_1

    .line 136
    iget v4, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    if-nez v4, :cond_0

    .line 137
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/PanelBar;->go(I)V

    .line 138
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelPeeked()V

    .line 140
    :cond_0
    const/4 v0, 0x0

    .line 141
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedFraction()F

    move-result v3

    .line 143
    .local v3, "thisFrac":F
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_5

    const/4 v1, 0x1

    .line 145
    .end local v3    # "thisFrac":F
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTracking:Z

    if-eqz v4, :cond_6

    .line 148
    :cond_2
    if-eqz v0, :cond_3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTracking:Z

    if-eqz v4, :cond_7

    .line 128
    :cond_3
    :goto_2
    return-void

    .line 133
    :cond_4
    const/4 v4, 0x4

    goto :goto_0

    .line 143
    .restart local v3    # "thisFrac":F
    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    .line 146
    .end local v3    # "thisFrac":F
    :cond_6
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/PanelBar;->go(I)V

    .line 147
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelFullyOpened()V

    goto :goto_2

    .line 148
    :cond_7
    iget v4, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    if-eqz v4, :cond_3

    .line 149
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/PanelBar;->go(I)V

    .line 150
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelCollapsed()V

    goto :goto_2
.end method

.method public abstract panelScrimMinFractionChanged(F)V
.end method

.method public setBouncerShowing(Z)V
    .locals 2
    .param p1, "showing"    # Z

    .prologue
    .line 76
    if-eqz p1, :cond_1

    const/4 v0, 0x4

    .line 79
    .local v0, "important":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelBar;->setImportantForAccessibility(I)V

    .line 81
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->setImportantForAccessibility(I)V

    .line 75
    :cond_0
    return-void

    .line 77
    .end local v0    # "important":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPanel(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 0
    .param p1, "pv"    # Lcom/android/systemui/statusbar/phone/PanelView;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    .line 72
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/PanelView;->setBar(Lcom/android/systemui/statusbar/phone/PanelBar;)V

    .line 70
    return-void
.end method
