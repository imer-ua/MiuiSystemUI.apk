.class Lcom/android/systemui/statusbar/policy/DemoModeControllerImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "DemoModeControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/DemoModeControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/DemoModeControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/DemoModeControllerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/DemoModeControllerImpl;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DemoModeControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/DemoModeControllerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 35
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v6, "com.android.systemui.demo"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 37
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 38
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 39
    const-string/jumbo v6, "command"

    const-string/jumbo v7, ""

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 40
    .local v4, "command":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 41
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/DemoModeControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/DemoModeControllerImpl;

    invoke-static {v6, v1}, Lcom/android/systemui/statusbar/policy/DemoModeControllerImpl;->-set0(Lcom/android/systemui/statusbar/policy/DemoModeControllerImpl;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 42
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/DemoModeControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/DemoModeControllerImpl;

    invoke-static {v6, v4}, Lcom/android/systemui/statusbar/policy/DemoModeControllerImpl;->-set1(Lcom/android/systemui/statusbar/policy/DemoModeControllerImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    :try_start_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/DemoModeControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/DemoModeControllerImpl;

    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/DemoModeControllerImpl;->-get0(Lcom/android/systemui/statusbar/policy/DemoModeControllerImpl;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/DemoModeController$DemoModeCallback;

    .line 45
    .local v2, "callback":Lcom/android/systemui/statusbar/policy/DemoModeController$DemoModeCallback;
    invoke-interface {v2, v4, v1}, Lcom/android/systemui/statusbar/policy/DemoModeController$DemoModeCallback;->onDemoModeChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 47
    .end local v2    # "callback":Lcom/android/systemui/statusbar/policy/DemoModeController$DemoModeCallback;
    .end local v3    # "callback$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v5

    .line 48
    .local v5, "t":Ljava/lang/Throwable;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 34
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v4    # "command":Ljava/lang/String;
    .end local v5    # "t":Ljava/lang/Throwable;
    :cond_0
    return-void
.end method
