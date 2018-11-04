.class Lcom/android/systemui/fsgesture/NavStubDemoView$10$1;
.super Ljava/lang/Object;
.source "NavStubDemoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/fsgesture/NavStubDemoView$10;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/fsgesture/NavStubDemoView$10;


# direct methods
.method constructor <init>(Lcom/android/systemui/fsgesture/NavStubDemoView$10;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/fsgesture/NavStubDemoView$10;

    .prologue
    .line 633
    iput-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$10$1;->this$1:Lcom/android/systemui/fsgesture/NavStubDemoView$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 636
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 637
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$10$1;->this$1:Lcom/android/systemui/fsgesture/NavStubDemoView$10;

    iget-object v1, v1, Lcom/android/systemui/fsgesture/NavStubDemoView$10;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-virtual {v1}, Lcom/android/systemui/fsgesture/NavStubDemoView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 638
    const-string/jumbo v1, "DEMO_TYPE"

    const-string/jumbo v2, "DEMO_FULLY_SHOW"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 639
    const-string/jumbo v1, "IS_FROM_PROVISION"

    iget-object v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$10$1;->this$1:Lcom/android/systemui/fsgesture/NavStubDemoView$10;

    iget-object v2, v2, Lcom/android/systemui/fsgesture/NavStubDemoView$10;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {v2}, Lcom/android/systemui/fsgesture/NavStubDemoView;->-get3(Lcom/android/systemui/fsgesture/NavStubDemoView;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 640
    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$10$1;->this$1:Lcom/android/systemui/fsgesture/NavStubDemoView$10;

    iget-object v1, v1, Lcom/android/systemui/fsgesture/NavStubDemoView$10;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-virtual {v1}, Lcom/android/systemui/fsgesture/NavStubDemoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 641
    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$10$1;->this$1:Lcom/android/systemui/fsgesture/NavStubDemoView$10;

    iget-object v1, v1, Lcom/android/systemui/fsgesture/NavStubDemoView$10;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {v1}, Lcom/android/systemui/fsgesture/NavStubDemoView;->-get0(Lcom/android/systemui/fsgesture/NavStubDemoView;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x905000c

    const v3, 0x905000d

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 642
    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$10$1;->this$1:Lcom/android/systemui/fsgesture/NavStubDemoView$10;

    iget-object v1, v1, Lcom/android/systemui/fsgesture/NavStubDemoView$10;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {v1}, Lcom/android/systemui/fsgesture/NavStubDemoView;->-get0(Lcom/android/systemui/fsgesture/NavStubDemoView;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 635
    return-void
.end method
