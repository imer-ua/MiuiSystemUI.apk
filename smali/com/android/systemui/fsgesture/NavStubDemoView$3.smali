.class Lcom/android/systemui/fsgesture/NavStubDemoView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NavStubDemoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/fsgesture/NavStubDemoView;->startToHomeAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;


# direct methods
.method constructor <init>(Lcom/android/systemui/fsgesture/NavStubDemoView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/fsgesture/NavStubDemoView;

    .prologue
    .line 491
    iput-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$3;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const-wide/16 v2, 0x3e8

    .line 503
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$3;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {v0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->-get1(Lcom/android/systemui/fsgesture/NavStubDemoView;)Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->notifyFinish()V

    .line 504
    const-string/jumbo v0, "DEMO_FULLY_SHOW"

    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$3;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {v1}, Lcom/android/systemui/fsgesture/NavStubDemoView;->-get2(Lcom/android/systemui/fsgesture/NavStubDemoView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 505
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$3;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-virtual {v0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/fsgesture/NavStubDemoView$3$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/fsgesture/NavStubDemoView$3$1;-><init>(Lcom/android/systemui/fsgesture/NavStubDemoView$3;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 502
    :cond_0
    :goto_0
    return-void

    .line 518
    :cond_1
    const-string/jumbo v0, "DEMO_TO_HOME"

    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$3;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {v1}, Lcom/android/systemui/fsgesture/NavStubDemoView;->-get2(Lcom/android/systemui/fsgesture/NavStubDemoView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$3;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-virtual {v0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/fsgesture/NavStubDemoView$3$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/fsgesture/NavStubDemoView$3$2;-><init>(Lcom/android/systemui/fsgesture/NavStubDemoView$3;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/16 v2, 0x8

    .line 494
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$3;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {v0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->-get13(Lcom/android/systemui/fsgesture/NavStubDemoView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 495
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$3;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {v0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->-get5(Lcom/android/systemui/fsgesture/NavStubDemoView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 496
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$3;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {v0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->-get17(Lcom/android/systemui/fsgesture/NavStubDemoView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 497
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$3;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {v0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->-get7(Lcom/android/systemui/fsgesture/NavStubDemoView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 498
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$3;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {v0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->-get4(Lcom/android/systemui/fsgesture/NavStubDemoView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 493
    return-void
.end method
