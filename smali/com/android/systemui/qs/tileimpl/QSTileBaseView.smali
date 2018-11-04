.class public Lcom/android/systemui/qs/tileimpl/QSTileBaseView;
.super Lcom/android/systemui/plugins/qs/QSTileView;
.source "QSTileBaseView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tileimpl/QSTileBaseView$H;
    }
.end annotation


# instance fields
.field private mAccessibilityClass:Ljava/lang/String;

.field private mClicked:Z

.field private mCollapsedView:Z

.field private final mHandler:Lcom/android/systemui/qs/tileimpl/QSTileBaseView$H;

.field protected mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

.field private final mIconFrame:Landroid/widget/FrameLayout;

.field private mTileState:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "icon"    # Lcom/android/systemui/plugins/qs/QSIconView;
    .param p3, "collapsedView"    # Z

    .prologue
    const/4 v3, 0x0

    .line 54
    invoke-direct {p0, p1}, Lcom/android/systemui/plugins/qs/QSTileView;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance v1, Lcom/android/systemui/qs/tileimpl/QSTileBaseView$H;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView$H;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileBaseView;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileBaseView$H;

    .line 57
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    .line 58
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setForegroundGravity(I)V

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x90f0117

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 60
    .local v0, "size":I
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    iput-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    .line 62
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 63
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->setImportantForAccessibility(I)V

    .line 65
    invoke-virtual {p0, v3, v3, v3, v3}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->setPadding(IIII)V

    .line 66
    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->setClipChildren(Z)V

    .line 67
    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->setClipToPadding(Z)V

    .line 68
    iput-boolean p3, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mCollapsedView:Z

    .line 69
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->setFocusable(Z)V

    .line 53
    return-void
.end method


# virtual methods
.method public getDetailY()I
    .locals 2

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->getTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public getIcon()Lcom/android/systemui/plugins/qs/QSIconView;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    return-object v0
.end method

.method public getIconWithBackground()Landroid/view/View;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method protected handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 4
    .param p1, "state"    # Lcom/android/systemui/plugins/qs/QSTile$State;

    .prologue
    const/4 v2, 0x0

    .line 121
    iget v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->setClickable(Z)V

    .line 122
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    invoke-virtual {v1, p1}, Lcom/android/systemui/plugins/qs/QSIconView;->setIcon(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    .line 123
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    iget-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Lcom/android/systemui/plugins/qs/QSIconView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    .line 126
    instance-of v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    if-eqz v1, :cond_0

    .line 127
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .end local p1    # "state":Lcom/android/systemui/plugins/qs/QSTile$State;
    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 128
    .local v0, "newState":Z
    iget-boolean v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mTileState:Z

    if-eq v1, v0, :cond_0

    .line 129
    iput-boolean v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mClicked:Z

    .line 130
    iput-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mTileState:Z

    .line 120
    .end local v0    # "newState":Z
    :cond_0
    return-void

    .restart local p1    # "state":Lcom/android/systemui/plugins/qs/QSTile$State;
    :cond_1
    move v1, v2

    .line 121
    goto :goto_0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public init(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .locals 1
    .param p1, "click"    # Landroid/view/View$OnClickListener;
    .param p2, "secondaryClick"    # Landroid/view/View$OnClickListener;
    .param p3, "longClick"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p3}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 94
    return-void
.end method

.method public init(Lcom/android/systemui/plugins/qs/QSTile;)V
    .locals 3
    .param p1, "tile"    # Lcom/android/systemui/plugins/qs/QSTile;

    .prologue
    .line 74
    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView$1;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileBaseView;Lcom/android/systemui/plugins/qs/QSTile;)V

    .line 79
    new-instance v1, Lcom/android/systemui/qs/tileimpl/QSTileBaseView$2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView$2;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileBaseView;Lcom/android/systemui/plugins/qs/QSTile;)V

    .line 84
    new-instance v2, Lcom/android/systemui/qs/tileimpl/QSTileBaseView$3;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView$3;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileBaseView;Lcom/android/systemui/plugins/qs/QSTile;)V

    .line 74
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->init(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    .line 73
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 160
    invoke-super {p0, p1}, Lcom/android/systemui/plugins/qs/QSTileView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 161
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 162
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 163
    const-class v2, Landroid/widget/Switch;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    iget-boolean v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mClicked:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mTileState:Z

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    .line 165
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 166
    if-eqz v0, :cond_3

    const v2, 0x91002ad

    .line 165
    :goto_1
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, "label":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 168
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    .line 159
    .end local v1    # "label":Ljava/lang/String;
    :cond_0
    return-void

    .line 164
    :cond_1
    const/4 v0, 0x1

    .local v0, "b":Z
    goto :goto_0

    .end local v0    # "b":Z
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mTileState:Z

    .local v0, "b":Z
    goto :goto_0

    .line 166
    .end local v0    # "b":Z
    :cond_3
    const v2, 0x91002ae

    goto :goto_1
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 175
    invoke-super {p0, p1}, Lcom/android/systemui/plugins/qs/QSTileView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 176
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 177
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    const-class v3, Landroid/widget/Button;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 178
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 180
    :cond_0
    const-class v2, Landroid/widget/Switch;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 181
    iget-boolean v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mClicked:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mTileState:Z

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    .line 182
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 183
    if-eqz v0, :cond_4

    const v2, 0x91002ad

    .line 182
    :goto_1
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, "label":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 185
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 186
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 174
    .end local v1    # "label":Ljava/lang/String;
    :cond_1
    return-void

    .line 181
    :cond_2
    const/4 v0, 0x1

    .local v0, "b":Z
    goto :goto_0

    .end local v0    # "b":Z
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mTileState:Z

    .local v0, "b":Z
    goto :goto_0

    .line 183
    .end local v0    # "b":Z
    :cond_4
    const v2, 0x91002ae

    goto :goto_1
.end method

.method public onStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/plugins/qs/QSTile$State;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileBaseView$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 116
    return-void
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mClicked:Z

    .line 155
    invoke-super {p0}, Lcom/android/systemui/plugins/qs/QSTileView;->performClick()Z

    move-result v0

    return v0
.end method

.method public updateAccessibilityOrder(Landroid/view/View;)Landroid/view/View;
    .locals 1
    .param p1, "previousView"    # Landroid/view/View;

    .prologue
    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->setAccessibilityTraversalAfter(I)V

    .line 113
    return-object p0
.end method
