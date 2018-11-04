.class Lcom/android/systemui/fsgesture/DemoFinishAct$2;
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


# direct methods
.method constructor <init>(Lcom/android/systemui/fsgesture/DemoFinishAct;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/fsgesture/DemoFinishAct;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/systemui/fsgesture/DemoFinishAct$2;->this$0:Lcom/android/systemui/fsgesture/DemoFinishAct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 69
    iget-object v1, p0, Lcom/android/systemui/fsgesture/DemoFinishAct$2;->this$0:Lcom/android/systemui/fsgesture/DemoFinishAct;

    invoke-static {v1}, Lcom/android/systemui/fsgesture/DemoFinishAct;->-get0(Lcom/android/systemui/fsgesture/DemoFinishAct;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 71
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.provision"

    const-string/jumbo v3, "com.android.provision.activities.NavigationModePickerActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 72
    const-string/jumbo v1, "IS_COMPLETE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 73
    iget-object v1, p0, Lcom/android/systemui/fsgesture/DemoFinishAct$2;->this$0:Lcom/android/systemui/fsgesture/DemoFinishAct;

    invoke-virtual {v1, v0}, Lcom/android/systemui/fsgesture/DemoFinishAct;->startActivity(Landroid/content/Intent;)V

    .line 74
    iget-object v1, p0, Lcom/android/systemui/fsgesture/DemoFinishAct$2;->this$0:Lcom/android/systemui/fsgesture/DemoFinishAct;

    const v2, 0x905000c

    const v3, 0x905000d

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/fsgesture/DemoFinishAct;->overridePendingTransition(II)V

    .line 76
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/fsgesture/DemoFinishAct$2;->this$0:Lcom/android/systemui/fsgesture/DemoFinishAct;

    invoke-virtual {v1}, Lcom/android/systemui/fsgesture/DemoFinishAct;->finish()V

    .line 68
    return-void
.end method
