.class Lcom/android/systemui/recents/RecentsActivity$18;
.super Ljava/lang/Object;
.source "RecentsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/RecentsActivity;->deepClean()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/RecentsActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/RecentsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/RecentsActivity;

    .prologue
    .line 1567
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsActivity$18;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/16 v7, 0x3e8

    .line 1570
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsActivity$18;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-static {v5}, Lcom/android/systemui/recents/RecentsActivity;->-get4(Lcom/android/systemui/recents/RecentsActivity;)Lcom/android/systemui/recents/views/RecentsView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/RecentsView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v4

    .line 1571
    .local v4, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1572
    .local v1, "removingTaskIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "task$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/Task;

    .line 1573
    .local v2, "task":Lcom/android/systemui/recents/model/Task;
    iget-object v5, v2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v5, v5, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1575
    .end local v2    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_0
    new-instance v0, Lmiui/process/ProcessConfig;

    invoke-direct {v0, v6}, Lmiui/process/ProcessConfig;-><init>(I)V

    .line 1576
    .local v0, "processConfig":Lmiui/process/ProcessConfig;
    invoke-virtual {v0, v6}, Lmiui/process/ProcessConfig;->setRemoveTaskNeeded(Z)V

    .line 1577
    invoke-virtual {v0, v1}, Lmiui/process/ProcessConfig;->setRemovingTaskIdList(Ljava/util/List;)V

    .line 1578
    invoke-static {v0}, Lmiui/process/ProcessManager;->kill(Lmiui/process/ProcessConfig;)Z

    .line 1579
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsActivity$18;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-static {v5}, Lcom/android/systemui/recents/RecentsActivity;->-get2(Lcom/android/systemui/recents/RecentsActivity;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1580
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsActivity$18;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-static {v5}, Lcom/android/systemui/recents/RecentsActivity;->-get2(Lcom/android/systemui/recents/RecentsActivity;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1581
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsActivity$18;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-static {v5}, Lcom/android/systemui/recents/RecentsActivity;->-get2(Lcom/android/systemui/recents/RecentsActivity;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/recents/RecentsActivity$18;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-static {v6}, Lcom/android/systemui/recents/RecentsActivity;->-get2(Lcom/android/systemui/recents/RecentsActivity;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1569
    :cond_1
    return-void
.end method
