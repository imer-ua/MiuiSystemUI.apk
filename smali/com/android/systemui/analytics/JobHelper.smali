.class public Lcom/android/systemui/analytics/JobHelper;
.super Ljava/lang/Object;
.source "JobHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public startJob(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v10, 0x493e2

    .line 20
    const-string/jumbo v7, "jobscheduler"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/job/JobScheduler;

    .line 21
    .local v5, "jobSchedule":Landroid/app/job/JobScheduler;
    new-instance v1, Landroid/content/ComponentName;

    const-class v7, Lcom/android/systemui/analytics/SettingsJobSchedulerService;

    invoke-direct {v1, p1, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 22
    .local v1, "cmpName":Landroid/content/ComponentName;
    new-instance v0, Landroid/app/job/JobInfo$Builder;

    invoke-direct {v0, v10, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 23
    .local v0, "builder":Landroid/app/job/JobInfo$Builder;
    const-wide/32 v8, 0x5265c00

    invoke-virtual {v0, v8, v9}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    .line 24
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    .line 25
    invoke-virtual {v5}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object v6

    .line 27
    .local v6, "jobs":Ljava/util/List;, "Ljava/util/List<Landroid/app/job/JobInfo;>;"
    const/4 v2, 0x0

    .line 28
    .local v2, "jobAdded":Z
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "jobInfo$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/job/JobInfo;

    .line 29
    .local v3, "jobInfo":Landroid/app/job/JobInfo;
    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getId()I

    move-result v7

    if-ne v7, v10, :cond_0

    .line 30
    const/4 v2, 0x1

    goto :goto_0

    .line 33
    .end local v3    # "jobInfo":Landroid/app/job/JobInfo;
    :cond_1
    if-nez v2, :cond_2

    .line 34
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result v7

    if-nez v7, :cond_2

    .line 35
    const-string/jumbo v7, "JobHelper"

    const-string/jumbo v8, "SettingsJobSchedulerService schedule failed"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    :cond_2
    return-void
.end method
