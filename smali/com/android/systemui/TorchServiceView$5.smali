.class Lcom/android/systemui/TorchServiceView$5;
.super Landroid/content/BroadcastReceiver;
.source "TorchServiceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/TorchServiceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/TorchServiceView;


# direct methods
.method constructor <init>(Lcom/android/systemui/TorchServiceView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/TorchServiceView;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/android/systemui/TorchServiceView$5;->this$0:Lcom/android/systemui/TorchServiceView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 224
    const/4 v3, 0x0

    .line 225
    .local v3, "mode":I
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "miui.intent.action.TOGGLE_TORCH"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 227
    iget-object v4, p0, Lcom/android/systemui/TorchServiceView$5;->this$0:Lcom/android/systemui/TorchServiceView;

    invoke-static {v4}, Lcom/android/systemui/TorchServiceView;->-get4(Lcom/android/systemui/TorchServiceView;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 228
    iget-object v4, p0, Lcom/android/systemui/TorchServiceView$5;->this$0:Lcom/android/systemui/TorchServiceView;

    invoke-static {v4}, Lcom/android/systemui/TorchServiceView;->-wrap2(Lcom/android/systemui/TorchServiceView;)V

    .line 229
    return-void

    .line 231
    :cond_0
    const-string/jumbo v4, "miui.intent.extra.IS_TOGGLE"

    invoke-virtual {p2, v4, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 232
    .local v2, "isToggle":Z
    if-eqz v2, :cond_3

    .line 233
    iget-object v4, p0, Lcom/android/systemui/TorchServiceView$5;->this$0:Lcom/android/systemui/TorchServiceView;

    invoke-static {v4}, Lcom/android/systemui/TorchServiceView;->-get2(Lcom/android/systemui/TorchServiceView;)I

    move-result v4

    if-nez v4, :cond_2

    const/4 v3, 0x1

    .line 237
    :goto_0
    const-string/jumbo v4, "TorchServiceView"

    const-string/jumbo v5, "onReceive mode=%d isToggle=%b"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v4, p0, Lcom/android/systemui/TorchServiceView$5;->this$0:Lcom/android/systemui/TorchServiceView;

    invoke-static {v4, v3}, Lcom/android/systemui/TorchServiceView;->-wrap1(Lcom/android/systemui/TorchServiceView;I)V

    .line 223
    .end local v2    # "isToggle":Z
    :cond_1
    :goto_1
    return-void

    .line 233
    .restart local v2    # "isToggle":Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 235
    :cond_3
    const-string/jumbo v4, "miui.intent.extra.IS_ENABLE"

    invoke-virtual {p2, v4, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .line 239
    .end local v2    # "isToggle":Z
    :cond_5
    const-string/jumbo v4, "action_temp_state_change"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 240
    const-string/jumbo v4, "temp_state"

    invoke-virtual {p2, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v9, :cond_6

    const/4 v1, 0x1

    .line 241
    .local v1, "forceOff":Z
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/TorchServiceView$5;->this$0:Lcom/android/systemui/TorchServiceView;

    invoke-static {v4, v1}, Lcom/android/systemui/TorchServiceView;->-set0(Lcom/android/systemui/TorchServiceView;Z)Z

    .line 242
    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/android/systemui/TorchServiceView$5;->this$0:Lcom/android/systemui/TorchServiceView;

    invoke-static {v4}, Lcom/android/systemui/TorchServiceView;->-get2(Lcom/android/systemui/TorchServiceView;)I

    move-result v4

    if-ne v4, v9, :cond_1

    .line 243
    iget-object v4, p0, Lcom/android/systemui/TorchServiceView$5;->this$0:Lcom/android/systemui/TorchServiceView;

    invoke-static {v4, v8}, Lcom/android/systemui/TorchServiceView;->-wrap1(Lcom/android/systemui/TorchServiceView;I)V

    .line 244
    iget-object v4, p0, Lcom/android/systemui/TorchServiceView$5;->this$0:Lcom/android/systemui/TorchServiceView;

    invoke-static {v4}, Lcom/android/systemui/TorchServiceView;->-wrap2(Lcom/android/systemui/TorchServiceView;)V

    goto :goto_1

    .line 240
    .end local v1    # "forceOff":Z
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "forceOff":Z
    goto :goto_2
.end method
