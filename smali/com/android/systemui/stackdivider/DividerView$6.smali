.class Lcom/android/systemui/stackdivider/DividerView$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DividerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/stackdivider/DividerView;->getFlingAnimator(ILcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;J)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancelled:Z

.field final synthetic this$0:Lcom/android/systemui/stackdivider/DividerView;

.field final synthetic val$endAction:Ljava/lang/Runnable;

.field final synthetic val$endDelay:J

.field final synthetic val$snapTarget:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

.field final synthetic val$taskPositionSameAtEnd:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/DividerView;Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;ZJLjava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/stackdivider/DividerView;
    .param p2, "val$snapTarget"    # Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;
    .param p3, "val$taskPositionSameAtEnd"    # Z
    .param p4, "val$endDelay"    # J
    .param p6, "val$endAction"    # Ljava/lang/Runnable;

    .prologue
    .line 565
    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerView$6;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    iput-object p2, p0, Lcom/android/systemui/stackdivider/DividerView$6;->val$snapTarget:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    iput-boolean p3, p0, Lcom/android/systemui/stackdivider/DividerView$6;->val$taskPositionSameAtEnd:Z

    iput-wide p4, p0, Lcom/android/systemui/stackdivider/DividerView$6;->val$endDelay:J

    iput-object p6, p0, Lcom/android/systemui/stackdivider/DividerView$6;->val$endAction:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 571
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView$6;->mCancelled:Z

    .line 570
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 576
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView$6;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$6;->val$snapTarget:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    iget v2, v0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 577
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView$6;->val$taskPositionSameAtEnd:Z

    if-eqz v0, :cond_1

    .line 578
    const v0, 0x7fffffff

    .line 579
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView$6;->val$snapTarget:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    const/4 v4, 0x1

    .line 576
    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->resizeStack(IILcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;Z)V

    .line 581
    iget-wide v0, p0, Lcom/android/systemui/stackdivider/DividerView$6;->val$endDelay:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView$6;->mCancelled:Z

    if-eqz v0, :cond_2

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$6;->val$endAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 575
    :goto_1
    return-void

    .line 579
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$6;->val$snapTarget:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    iget v0, v0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;->taskPosition:I

    goto :goto_0

    .line 584
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$6;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView;->-get2(Lcom/android/systemui/stackdivider/DividerView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView$6;->val$endAction:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/android/systemui/stackdivider/DividerView$6;->val$endDelay:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method