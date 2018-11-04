.class Lcom/android/systemui/recents/BaseRecentsImpl$6;
.super Landroid/content/BroadcastReceiver;
.source "BaseRecentsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/BaseRecentsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/BaseRecentsImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/BaseRecentsImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/BaseRecentsImpl;

    .prologue
    .line 669
    iput-object p1, p0, Lcom/android/systemui/recents/BaseRecentsImpl$6;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 672
    const-string/jumbo v2, "com.android.systemui.fsgesture"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 673
    const-string/jumbo v2, "isEnter"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 674
    .local v0, "isEnter":Z
    const-string/jumbo v2, "typeFrom"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 675
    .local v1, "typeFrom":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/recents/BaseRecentsImpl$6;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v2, v0, v1}, Lcom/android/systemui/recents/BaseRecentsImpl;->-wrap9(Lcom/android/systemui/recents/BaseRecentsImpl;ZLjava/lang/String;)V

    .line 671
    .end local v0    # "isEnter":Z
    .end local v1    # "typeFrom":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 676
    :cond_1
    const-string/jumbo v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 677
    const-string/jumbo v2, "RecentsImpl"

    const-string/jumbo v3, "registerMiuiGestureControlHelper: user switched."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    iget-object v2, p0, Lcom/android/systemui/recents/BaseRecentsImpl$6;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-virtual {v2}, Lcom/android/systemui/recents/BaseRecentsImpl;->registerMiuiGestureControlHelper()V

    goto :goto_0
.end method
