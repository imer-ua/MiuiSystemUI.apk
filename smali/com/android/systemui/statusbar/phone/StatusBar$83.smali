.class Lcom/android/systemui/statusbar/phone/StatusBar$83;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;->updateGutsState(Lcom/android/systemui/statusbar/ExpandableNotificationRow;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

.field final synthetic val$guts:Lcom/android/systemui/statusbar/NotificationGuts;

.field final synthetic val$item:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

.field final synthetic val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationGuts;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/StatusBar;
    .param p2, "val$row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p3, "val$guts"    # Lcom/android/systemui/statusbar/NotificationGuts;
    .param p4, "val$x"    # I
    .param p5, "val$y"    # I
    .param p6, "val$item"    # Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    .prologue
    .line 8001
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$83;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$83;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$83;->val$guts:Lcom/android/systemui/statusbar/NotificationGuts;

    iput p4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$83;->val$x:I

    iput p5, p0, Lcom/android/systemui/statusbar/phone/StatusBar$83;->val$y:I

    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/StatusBar$83;->val$item:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v4, -0x1

    const/4 v6, 0x0

    const/4 v1, 0x1

    .line 8004
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$83;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 8005
    const-string/jumbo v0, "StatusBar"

    const-string/jumbo v1, "Trying to show notification guts, but not attached to window"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8007
    return-void

    .line 8009
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$83;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    move v2, v1

    move v3, v1

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->closeAndSaveGuts(ZZZIIZ)V

    .line 8012
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$83;->val$guts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/NotificationGuts;->setVisibility(I)V

    .line 8013
    const/4 v0, 0x0

    if-nez v0, :cond_1

    .line 8014
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$83;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateLargeIconVisibility(Z)V

    .line 8016
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$83;->val$guts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationGuts;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$83;->val$x:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$83;->val$x:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-double v8, v0

    .line 8017
    .local v8, "horz":D
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$83;->val$guts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationGuts;->getHeight()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$83;->val$y:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$83;->val$y:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-double v12, v0

    .line 8018
    .local v12, "vert":D
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v11, v2

    .line 8020
    .local v11, "r":F
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$83;->val$guts:Lcom/android/systemui/statusbar/NotificationGuts;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$83;->val$x:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$83;->val$y:I

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4, v11}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v7

    .line 8021
    .local v7, "a":Landroid/animation/Animator;
    const-wide/16 v2, 0x168

    invoke-virtual {v7, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 8022
    sget-object v0, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v7, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 8023
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$83$1;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$83;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$83;->val$guts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-direct {v0, p0, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBar$83$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar$83;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationGuts;)V

    invoke-virtual {v7, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 8032
    invoke-virtual {v7}, Landroid/animation/Animator;->start()V

    .line 8033
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$83;->val$guts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationGuts;->setIsAnimating(Z)V

    .line 8035
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$83;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-ne v0, v1, :cond_3

    .line 8036
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$83;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v10, 0x0

    .line 8037
    .local v10, "needsFalsingProtection":Z
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$83;->val$guts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v0, v1, v10}, Lcom/android/systemui/statusbar/NotificationGuts;->setExposed(ZZ)V

    .line 8038
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$83;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->closeRemoteInput()V

    .line 8039
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$83;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$83;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onHeightChanged(Lcom/android/systemui/statusbar/ExpandableView;Z)V

    .line 8040
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$83;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$83;->val$guts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-set14(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/NotificationGuts;)Lcom/android/systemui/statusbar/NotificationGuts;

    .line 8041
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$83;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$83;->val$item:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-set7(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    .line 8003
    return-void

    .line 8036
    .end local v10    # "needsFalsingProtection":Z
    :cond_2
    const/4 v10, 0x1

    .restart local v10    # "needsFalsingProtection":Z
    goto :goto_0

    .line 8035
    .end local v10    # "needsFalsingProtection":Z
    :cond_3
    const/4 v10, 0x0

    .restart local v10    # "needsFalsingProtection":Z
    goto :goto_0
.end method
