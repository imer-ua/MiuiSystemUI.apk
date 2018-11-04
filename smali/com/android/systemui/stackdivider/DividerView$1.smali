.class Lcom/android/systemui/stackdivider/DividerView$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "DividerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/stackdivider/DividerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/DividerView;


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/DividerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/stackdivider/DividerView;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerView$1;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 8
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const v7, 0x912004c

    const v6, 0x912004b

    const v5, 0x912004a

    const v4, 0x9120049

    const v3, 0x9120048

    .line 165
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 166
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$1;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 167
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 168
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView$1;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v1}, Lcom/android/systemui/stackdivider/DividerView;->-get0(Lcom/android/systemui/stackdivider/DividerView;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x91002c9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 167
    invoke-direct {v0, v3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 169
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$1;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView;->-get4(Lcom/android/systemui/stackdivider/DividerView;)Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->isFirstSplitTargetAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 171
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView$1;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v1}, Lcom/android/systemui/stackdivider/DividerView;->-get0(Lcom/android/systemui/stackdivider/DividerView;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x91002ca

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 170
    invoke-direct {v0, v4, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 173
    :cond_0
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 174
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView$1;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v1}, Lcom/android/systemui/stackdivider/DividerView;->-get0(Lcom/android/systemui/stackdivider/DividerView;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x91002cb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 173
    invoke-direct {v0, v5, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 175
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$1;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView;->-get4(Lcom/android/systemui/stackdivider/DividerView;)Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->isLastSplitTargetAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 177
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView$1;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v1}, Lcom/android/systemui/stackdivider/DividerView;->-get0(Lcom/android/systemui/stackdivider/DividerView;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x91002cc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 176
    invoke-direct {v0, v6, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 179
    :cond_1
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 180
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView$1;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v1}, Lcom/android/systemui/stackdivider/DividerView;->-get0(Lcom/android/systemui/stackdivider/DividerView;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x91002cd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 179
    invoke-direct {v0, v7, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 164
    :goto_0
    return-void

    .line 182
    :cond_2
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 183
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView$1;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v1}, Lcom/android/systemui/stackdivider/DividerView;->-get0(Lcom/android/systemui/stackdivider/DividerView;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x91002c4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 182
    invoke-direct {v0, v3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 184
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$1;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView;->-get4(Lcom/android/systemui/stackdivider/DividerView;)Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->isFirstSplitTargetAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 185
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 186
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView$1;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v1}, Lcom/android/systemui/stackdivider/DividerView;->-get0(Lcom/android/systemui/stackdivider/DividerView;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x91002c5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-direct {v0, v4, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 188
    :cond_3
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 189
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView$1;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v1}, Lcom/android/systemui/stackdivider/DividerView;->-get0(Lcom/android/systemui/stackdivider/DividerView;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x91002c6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 188
    invoke-direct {v0, v5, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 190
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$1;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView;->-get4(Lcom/android/systemui/stackdivider/DividerView;)Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->isLastSplitTargetAvailable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 191
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 192
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView$1;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v1}, Lcom/android/systemui/stackdivider/DividerView;->-get0(Lcom/android/systemui/stackdivider/DividerView;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x91002c7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 191
    invoke-direct {v0, v6, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 194
    :cond_4
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 195
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView$1;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v1}, Lcom/android/systemui/stackdivider/DividerView;->-get0(Lcom/android/systemui/stackdivider/DividerView;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x91002c8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 194
    invoke-direct {v0, v7, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto/16 :goto_0
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 8
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    .line 201
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$1;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v2

    .line 202
    .local v2, "currentPosition":I
    const/4 v3, 0x0

    .line 203
    .local v3, "nextTarget":Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;
    packed-switch p2, :pswitch_data_0

    .line 220
    .end local v3    # "nextTarget":Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;
    :goto_0
    if-eqz v3, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$1;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v7, v1}, Lcom/android/systemui/stackdivider/DividerView;->startDragging(ZZ)Z

    .line 222
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView$1;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    const-wide/16 v4, 0xfa

    sget-object v6, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(ILcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;JLandroid/view/animation/Interpolator;)V

    .line 223
    return v7

    .line 205
    .restart local v3    # "nextTarget":Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$1;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView;->-get4(Lcom/android/systemui/stackdivider/DividerView;)Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    .local v3, "nextTarget":Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;
    goto :goto_0

    .line 208
    .local v3, "nextTarget":Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$1;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView;->-get4(Lcom/android/systemui/stackdivider/DividerView;)Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    .local v3, "nextTarget":Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;
    goto :goto_0

    .line 211
    .local v3, "nextTarget":Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$1;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView;->-get4(Lcom/android/systemui/stackdivider/DividerView;)Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    .local v3, "nextTarget":Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;
    goto :goto_0

    .line 214
    .local v3, "nextTarget":Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$1;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView;->-get4(Lcom/android/systemui/stackdivider/DividerView;)Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    .local v3, "nextTarget":Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;
    goto :goto_0

    .line 217
    .local v3, "nextTarget":Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$1;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView;->-get4(Lcom/android/systemui/stackdivider/DividerView;)Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    .local v3, "nextTarget":Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;
    goto :goto_0

    .line 225
    .end local v3    # "nextTarget":Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0

    .line 203
    nop

    :pswitch_data_0
    .packed-switch 0x9120048
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
