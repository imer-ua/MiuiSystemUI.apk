.class Lcom/android/systemui/SwipeHelper$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/SwipeHelper;->dismissChild(Landroid/view/View;FLjava/lang/Runnable;JZJZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancelled:Z

.field final synthetic this$0:Lcom/android/systemui/SwipeHelper;

.field final synthetic val$animView:Landroid/view/View;

.field final synthetic val$canBeDismissed:Z

.field final synthetic val$endAction:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;ZLjava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/SwipeHelper;
    .param p2, "val$animView"    # Landroid/view/View;
    .param p3, "val$canBeDismissed"    # Z
    .param p4, "val$endAction"    # Ljava/lang/Runnable;

    .prologue
    .line 554
    iput-object p1, p0, Lcom/android/systemui/SwipeHelper$4;->this$0:Lcom/android/systemui/SwipeHelper;

    iput-object p2, p0, Lcom/android/systemui/SwipeHelper$4;->val$animView:Landroid/view/View;

    iput-boolean p3, p0, Lcom/android/systemui/SwipeHelper$4;->val$canBeDismissed:Z

    iput-object p4, p0, Lcom/android/systemui/SwipeHelper$4;->val$endAction:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 559
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/SwipeHelper$4;->mCancelled:Z

    .line 558
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v3, 0x0

    .line 564
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper$4;->this$0:Lcom/android/systemui/SwipeHelper;

    iget-object v1, p0, Lcom/android/systemui/SwipeHelper$4;->val$animView:Landroid/view/View;

    iget-boolean v2, p0, Lcom/android/systemui/SwipeHelper$4;->val$canBeDismissed:Z

    invoke-static {v0, v1, v2}, Lcom/android/systemui/SwipeHelper;->-wrap1(Lcom/android/systemui/SwipeHelper;Landroid/view/View;Z)V

    .line 565
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper$4;->this$0:Lcom/android/systemui/SwipeHelper;

    invoke-static {v0}, Lcom/android/systemui/SwipeHelper;->-get4(Lcom/android/systemui/SwipeHelper;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/SwipeHelper$4;->val$animView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    iget-boolean v0, p0, Lcom/android/systemui/SwipeHelper$4;->mCancelled:Z

    if-nez v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper$4;->this$0:Lcom/android/systemui/SwipeHelper;

    invoke-static {v0}, Lcom/android/systemui/SwipeHelper;->-get0(Lcom/android/systemui/SwipeHelper;)Lcom/android/systemui/SwipeHelper$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/SwipeHelper$4;->val$animView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/android/systemui/SwipeHelper$Callback;->onChildDismissed(Landroid/view/View;)V

    .line 569
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper$4;->val$endAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 570
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper$4;->val$endAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 572
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper$4;->this$0:Lcom/android/systemui/SwipeHelper;

    invoke-static {v0}, Lcom/android/systemui/SwipeHelper;->-get3(Lcom/android/systemui/SwipeHelper;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 573
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper$4;->val$animView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 563
    :cond_2
    return-void
.end method
