.class Lcom/android/systemui/recents/misc/SystemServicesProxy$3;
.super Ljava/lang/Object;
.source "SystemServicesProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/misc/SystemServicesProxy;->killProcess(Lcom/android/systemui/recents/model/Task;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

.field final synthetic val$task:Lcom/android/systemui/recents/model/Task;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/misc/SystemServicesProxy;Lcom/android/systemui/recents/model/Task;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .param p2, "val$task"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 794
    iput-object p1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$3;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    iput-object p2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$3;->val$task:Lcom/android/systemui/recents/model/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 797
    iget-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$3;->val$task:Lcom/android/systemui/recents/model/Task;

    iget-object v3, v3, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 798
    .local v0, "pkgName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$3;->val$task:Lcom/android/systemui/recents/model/Task;

    iget-object v3, v3, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v2, v3, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    .line 799
    .local v2, "userId":I
    new-instance v1, Lmiui/process/ProcessConfig;

    .line 800
    iget-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$3;->val$task:Lcom/android/systemui/recents/model/Task;

    iget-object v3, v3, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    .line 799
    const/4 v4, 0x7

    invoke-direct {v1, v4, v0, v2, v3}, Lmiui/process/ProcessConfig;-><init>(ILjava/lang/String;II)V

    .line 801
    .local v1, "processConfig":Lmiui/process/ProcessConfig;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lmiui/process/ProcessConfig;->setRemoveTaskNeeded(Z)V

    .line 802
    invoke-static {v1}, Lmiui/process/ProcessManager;->kill(Lmiui/process/ProcessConfig;)Z

    .line 796
    return-void
.end method
