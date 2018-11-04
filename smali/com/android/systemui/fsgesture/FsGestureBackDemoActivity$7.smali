.class Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$7;
.super Ljava/lang/Object;
.source "FsGestureBackDemoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->finishGestureBack()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    .prologue
    .line 290
    iput-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$7;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const v4, 0x905000d

    const v3, 0x905000c

    .line 293
    iget-object v1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$7;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v1}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-get12(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 294
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$7;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    const-class v2, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 295
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "DEMO_TYPE"

    iget-object v2, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$7;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v2}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-get0(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    const-string/jumbo v1, "DEMO_STEP"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 297
    const-string/jumbo v1, "IS_FROM_PROVISION"

    iget-object v2, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$7;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v2}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-get1(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 298
    iget-object v1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$7;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-virtual {v1, v0}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->startActivity(Landroid/content/Intent;)V

    .line 299
    iget-object v1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$7;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-virtual {v1, v3, v4}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->overridePendingTransition(II)V

    .line 309
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$7;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-virtual {v1}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->finish()V

    .line 292
    return-void

    .line 301
    :cond_1
    const-string/jumbo v1, "DEMO_FULLY_SHOW"

    iget-object v2, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$7;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v2}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-get0(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 302
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$7;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    const-class v2, Lcom/android/systemui/fsgesture/DemoFinishAct;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 303
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v1, "DEMO_TYPE"

    iget-object v2, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$7;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v2}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-get0(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    const-string/jumbo v1, "IS_FROM_PROVISION"

    iget-object v2, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$7;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v2}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-get1(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 305
    iget-object v1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$7;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-virtual {v1, v0}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->startActivity(Landroid/content/Intent;)V

    .line 306
    iget-object v1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$7;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-virtual {v1, v3, v4}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->overridePendingTransition(II)V

    goto :goto_0
.end method
