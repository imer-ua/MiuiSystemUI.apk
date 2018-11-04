.class Lcom/android/systemui/fsgesture/DemoFinishAct$1;
.super Ljava/lang/Object;
.source "DemoFinishAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/fsgesture/DemoFinishAct;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fsgesture/DemoFinishAct;

.field final synthetic val$demoType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/fsgesture/DemoFinishAct;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/fsgesture/DemoFinishAct;
    .param p2, "val$demoType"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/systemui/fsgesture/DemoFinishAct$1;->this$0:Lcom/android/systemui/fsgesture/DemoFinishAct;

    iput-object p2, p0, Lcom/android/systemui/fsgesture/DemoFinishAct$1;->val$demoType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 46
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 47
    .local v0, "replayIntent":Landroid/content/Intent;
    const-string/jumbo v1, "DEMO_TO_HOME"

    iget-object v2, p0, Lcom/android/systemui/fsgesture/DemoFinishAct$1;->val$demoType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 48
    const-string/jumbo v1, "DEMO_TO_RECENTTASK"

    iget-object v2, p0, Lcom/android/systemui/fsgesture/DemoFinishAct$1;->val$demoType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 47
    if-eqz v1, :cond_2

    .line 49
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/fsgesture/DemoFinishAct$1;->this$0:Lcom/android/systemui/fsgesture/DemoFinishAct;

    const-class v2, Lcom/android/systemui/fsgesture/HomeDemoAct;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 50
    const-string/jumbo v1, "DEMO_TYPE"

    iget-object v2, p0, Lcom/android/systemui/fsgesture/DemoFinishAct$1;->val$demoType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/fsgesture/DemoFinishAct$1;->this$0:Lcom/android/systemui/fsgesture/DemoFinishAct;

    invoke-virtual {v1, v0}, Lcom/android/systemui/fsgesture/DemoFinishAct;->startActivity(Landroid/content/Intent;)V

    .line 61
    iget-object v1, p0, Lcom/android/systemui/fsgesture/DemoFinishAct$1;->this$0:Lcom/android/systemui/fsgesture/DemoFinishAct;

    const v2, 0x905000c

    const v3, 0x905000d

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/fsgesture/DemoFinishAct;->overridePendingTransition(II)V

    .line 62
    iget-object v1, p0, Lcom/android/systemui/fsgesture/DemoFinishAct$1;->this$0:Lcom/android/systemui/fsgesture/DemoFinishAct;

    invoke-virtual {v1}, Lcom/android/systemui/fsgesture/DemoFinishAct;->finish()V

    .line 45
    return-void

    .line 51
    :cond_2
    const-string/jumbo v1, "DEMO_FULLY_SHOW"

    iget-object v2, p0, Lcom/android/systemui/fsgesture/DemoFinishAct$1;->val$demoType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 52
    iget-object v1, p0, Lcom/android/systemui/fsgesture/DemoFinishAct$1;->this$0:Lcom/android/systemui/fsgesture/DemoFinishAct;

    const-class v2, Lcom/android/systemui/fsgesture/HomeDemoAct;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 53
    const-string/jumbo v1, "DEMO_TYPE"

    iget-object v2, p0, Lcom/android/systemui/fsgesture/DemoFinishAct$1;->val$demoType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    const-string/jumbo v1, "FULLY_SHOW_STEP"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 55
    const-string/jumbo v1, "IS_FROM_PROVISION"

    iget-object v2, p0, Lcom/android/systemui/fsgesture/DemoFinishAct$1;->this$0:Lcom/android/systemui/fsgesture/DemoFinishAct;

    invoke-static {v2}, Lcom/android/systemui/fsgesture/DemoFinishAct;->-get0(Lcom/android/systemui/fsgesture/DemoFinishAct;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 56
    :cond_3
    const-string/jumbo v1, "FSG_BACK_GESTURE"

    iget-object v2, p0, Lcom/android/systemui/fsgesture/DemoFinishAct$1;->val$demoType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    iget-object v1, p0, Lcom/android/systemui/fsgesture/DemoFinishAct$1;->this$0:Lcom/android/systemui/fsgesture/DemoFinishAct;

    const-class v2, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 58
    const-string/jumbo v1, "DEMO_TYPE"

    const-string/jumbo v2, "FSG_BACK_GESTURE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
