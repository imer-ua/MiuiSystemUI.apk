.class Lcom/android/systemui/fsgesture/NavStubDemoView$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NavStubDemoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/fsgesture/NavStubDemoView;->startCancelAnim()V
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
    .line 599
    iput-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$9;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 602
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$9;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-virtual {v0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/fsgesture/NavStubDemoView$9$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/fsgesture/NavStubDemoView$9$1;-><init>(Lcom/android/systemui/fsgesture/NavStubDemoView$9;)V

    .line 608
    const-wide/16 v2, 0x12c

    .line 602
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 609
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$9;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {v0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->-wrap0(Lcom/android/systemui/fsgesture/NavStubDemoView;)V

    .line 601
    return-void
.end method
