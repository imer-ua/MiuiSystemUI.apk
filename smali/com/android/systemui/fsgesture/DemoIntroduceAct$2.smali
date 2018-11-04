.class Lcom/android/systemui/fsgesture/DemoIntroduceAct$2;
.super Ljava/lang/Object;
.source "DemoIntroduceAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/fsgesture/DemoIntroduceAct;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fsgesture/DemoIntroduceAct;

.field final synthetic val$isFromPro:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/fsgesture/DemoIntroduceAct;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/fsgesture/DemoIntroduceAct;
    .param p2, "val$isFromPro"    # Z

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/systemui/fsgesture/DemoIntroduceAct$2;->this$0:Lcom/android/systemui/fsgesture/DemoIntroduceAct;

    iput-boolean p2, p0, Lcom/android/systemui/fsgesture/DemoIntroduceAct$2;->val$isFromPro:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 49
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 50
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/fsgesture/DemoIntroduceAct$2;->this$0:Lcom/android/systemui/fsgesture/DemoIntroduceAct;

    const-class v2, Lcom/android/systemui/fsgesture/HomeDemoAct;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 51
    const-string/jumbo v1, "DEMO_TYPE"

    const-string/jumbo v2, "DEMO_FULLY_SHOW"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    const-string/jumbo v1, "FULLY_SHOW_STEP"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 53
    const-string/jumbo v1, "IS_FROM_PROVISION"

    iget-boolean v2, p0, Lcom/android/systemui/fsgesture/DemoIntroduceAct$2;->val$isFromPro:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 54
    iget-object v1, p0, Lcom/android/systemui/fsgesture/DemoIntroduceAct$2;->this$0:Lcom/android/systemui/fsgesture/DemoIntroduceAct;

    invoke-virtual {v1, v0}, Lcom/android/systemui/fsgesture/DemoIntroduceAct;->startActivity(Landroid/content/Intent;)V

    .line 55
    iget-object v1, p0, Lcom/android/systemui/fsgesture/DemoIntroduceAct$2;->this$0:Lcom/android/systemui/fsgesture/DemoIntroduceAct;

    invoke-virtual {v1}, Lcom/android/systemui/fsgesture/DemoIntroduceAct;->finish()V

    .line 48
    return-void
.end method
