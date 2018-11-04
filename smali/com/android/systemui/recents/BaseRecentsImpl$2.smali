.class Lcom/android/systemui/recents/BaseRecentsImpl$2;
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
    .line 225
    iput-object p1, p0, Lcom/android/systemui/recents/BaseRecentsImpl$2;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    .line 228
    const-string/jumbo v1, "miui.intent.action.INPUT_METHOD_VISIBLE_HEIGHT_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 229
    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl$2;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v1}, Lcom/android/systemui/recents/BaseRecentsImpl;->-get2(Lcom/android/systemui/recents/BaseRecentsImpl;)Lcom/android/systemui/fsgesture/GestureStubView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl$2;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v1}, Lcom/android/systemui/recents/BaseRecentsImpl;->-get3(Lcom/android/systemui/recents/BaseRecentsImpl;)Lcom/android/systemui/fsgesture/GestureStubView;

    move-result-object v1

    if-nez v1, :cond_1

    .line 230
    :cond_0
    return-void

    .line 233
    :cond_1
    const-string/jumbo v1, "miui.intent.extra.input_method_visible_height"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 235
    .local v0, "inputHeight":I
    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl$2;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v1}, Lcom/android/systemui/recents/BaseRecentsImpl;->-get6(Lcom/android/systemui/recents/BaseRecentsImpl;)I

    move-result v1

    if-lez v1, :cond_2

    if-lez v0, :cond_2

    .line 236
    return-void

    .line 239
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl$2;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v1, v0}, Lcom/android/systemui/recents/BaseRecentsImpl;->-set1(Lcom/android/systemui/recents/BaseRecentsImpl;I)I

    .line 241
    if-eq v0, v3, :cond_3

    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl$2;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v1}, Lcom/android/systemui/recents/BaseRecentsImpl;->-get2(Lcom/android/systemui/recents/BaseRecentsImpl;)Lcom/android/systemui/fsgesture/GestureStubView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/fsgesture/GestureStubView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 242
    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl$2;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v1}, Lcom/android/systemui/recents/BaseRecentsImpl;->-get6(Lcom/android/systemui/recents/BaseRecentsImpl;)I

    move-result v1

    if-lez v1, :cond_4

    .line 243
    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl$2;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v1}, Lcom/android/systemui/recents/BaseRecentsImpl;->-wrap5(Lcom/android/systemui/recents/BaseRecentsImpl;)V

    .line 227
    .end local v0    # "inputHeight":I
    :cond_3
    :goto_0
    return-void

    .line 244
    .restart local v0    # "inputHeight":I
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl$2;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v1}, Lcom/android/systemui/recents/BaseRecentsImpl;->-get6(Lcom/android/systemui/recents/BaseRecentsImpl;)I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl$2;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v1}, Lcom/android/systemui/recents/BaseRecentsImpl;->-get1(Lcom/android/systemui/recents/BaseRecentsImpl;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    .line 246
    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl$2;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v1}, Lcom/android/systemui/recents/BaseRecentsImpl;->-wrap6(Lcom/android/systemui/recents/BaseRecentsImpl;)V

    goto :goto_0
.end method
