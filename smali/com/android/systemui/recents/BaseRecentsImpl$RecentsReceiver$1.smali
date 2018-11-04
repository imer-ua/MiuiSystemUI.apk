.class Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver$1;
.super Ljava/lang/Object;
.source "BaseRecentsImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver;->doClear(Ljava/util/List;ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver;

.field final synthetic val$cleanType:I

.field final synthetic val$packages:Ljava/util/List;

.field final synthetic val$taskinfos:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver;ILjava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver;
    .param p2, "val$cleanType"    # I

    .prologue
    .line 1914
    .local p3, "val$packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "val$taskinfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    iput-object p1, p0, Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver$1;->this$1:Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver;

    iput p2, p0, Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver$1;->val$cleanType:I

    iput-object p3, p0, Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver$1;->val$packages:Ljava/util/List;

    iput-object p4, p0, Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver$1;->val$taskinfos:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1918
    iget v4, p0, Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver$1;->val$cleanType:I

    if-nez v4, :cond_0

    .line 1919
    new-instance v0, Lmiui/process/ProcessConfig;

    const/4 v4, 0x4

    invoke-direct {v0, v4}, Lmiui/process/ProcessConfig;-><init>(I)V

    .line 1920
    .local v0, "processConfig":Lmiui/process/ProcessConfig;
    iget-object v4, p0, Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver$1;->val$packages:Ljava/util/List;

    invoke-virtual {v0, v4}, Lmiui/process/ProcessConfig;->setWhiteList(Ljava/util/List;)V

    .line 1924
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1925
    .local v1, "removingTaskIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver$1;->val$taskinfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "task$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 1926
    .local v2, "task":Landroid/app/ActivityManager$RecentTaskInfo;
    iget v4, v2, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1922
    .end local v0    # "processConfig":Lmiui/process/ProcessConfig;
    .end local v1    # "removingTaskIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2    # "task":Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v3    # "task$iterator":Ljava/util/Iterator;
    :cond_0
    new-instance v0, Lmiui/process/ProcessConfig;

    invoke-direct {v0, v5}, Lmiui/process/ProcessConfig;-><init>(I)V

    .restart local v0    # "processConfig":Lmiui/process/ProcessConfig;
    goto :goto_0

    .line 1928
    .restart local v1    # "removingTaskIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v3    # "task$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {v0, v5}, Lmiui/process/ProcessConfig;->setRemoveTaskNeeded(Z)V

    .line 1929
    invoke-virtual {v0, v1}, Lmiui/process/ProcessConfig;->setRemovingTaskIdList(Ljava/util/List;)V

    .line 1930
    invoke-static {v0}, Lmiui/process/ProcessManager;->kill(Lmiui/process/ProcessConfig;)Z

    .line 1916
    return-void
.end method
