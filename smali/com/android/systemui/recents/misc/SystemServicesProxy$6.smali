.class Lcom/android/systemui/recents/misc/SystemServicesProxy$6;
.super Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;
.source "SystemServicesProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTaskStackListener()Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/misc/SystemServicesProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/misc/SystemServicesProxy;

    .prologue
    .line 1689
    iput-object p1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$6;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-direct {p0}, Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskStackChanged()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1693
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    .line 1694
    .local v0, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    iget v6, v0, Lcom/android/systemui/recents/RecentsConfiguration;->svelteLevel:I

    if-nez v6, :cond_1

    .line 1695
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v2

    .line 1696
    .local v2, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v5

    .line 1697
    .local v5, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v5}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    .line 1700
    .local v4, "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v6, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$6;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    iget-object v6, v6, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v3

    .line 1701
    .local v3, "plan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    const/4 v6, -0x1

    invoke-virtual {v2, v3, v6, v7}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V

    .line 1702
    new-instance v1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v1}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    .line 1706
    .local v1, "launchOpts":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    if-eqz v4, :cond_0

    .line 1707
    iget v6, v4, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    iput v6, v1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->runningTaskId:I

    .line 1708
    iget-object v6, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "com.miui.home"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1709
    iget-object v6, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "com.android.systemui"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1713
    :cond_0
    :goto_0
    iput v9, v1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    .line 1714
    iput v9, v1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    .line 1715
    iput-boolean v8, v1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadForCache:Z

    .line 1716
    iput-boolean v8, v1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadPausedActivities:Z

    .line 1717
    iget-object v6, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$6;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    iget-object v6, v6, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6, v3, v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;)V

    .line 1719
    .end local v1    # "launchOpts":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    .end local v2    # "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    .end local v3    # "plan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    .end local v4    # "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v5    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/misc/RecentsPushEventHelper;->sendTaskStackChangedEvent()V

    .line 1691
    return-void

    .line 1710
    .restart local v1    # "launchOpts":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    .restart local v2    # "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    .restart local v3    # "plan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    .restart local v4    # "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    .restart local v5    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    :cond_2
    const-wide/16 v6, 0x0

    sput-wide v6, Lcom/android/systemui/recents/RecentsActivity;->mFreeBeforeClean:J

    goto :goto_0
.end method
