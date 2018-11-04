.class public Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
.super Ljava/lang/Object;
.source "RecentsTaskLoadPlan.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    }
.end annotation


# static fields
.field private static MIN_NUM_TASKS:I

.field private static SESSION_BEGIN_TIME:I


# instance fields
.field mContext:Landroid/content/Context;

.field mCurrentQuietProfiles:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mRawTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field mStack:Lcom/android/systemui/recents/model/TaskStack;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x5

    sput v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->MIN_NUM_TASKS:I

    .line 59
    const v0, 0x1499700

    sput v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->SESSION_BEGIN_TIME:I

    .line 55
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mCurrentQuietProfiles:Landroid/util/ArraySet;

    .line 81
    iput-object p1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    .line 80
    return-void
.end method

.method private updateCurrentQuietProfilesCache(I)V
    .locals 6
    .param p1, "currentUserId"    # I

    .prologue
    .line 86
    iget-object v4, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mCurrentQuietProfiles:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->clear()V

    .line 88
    const/4 v4, -0x2

    if-ne p1, v4, :cond_0

    .line 89
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    .line 91
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "user"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 92
    .local v3, "userManager":Landroid/os/UserManager;
    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    .line 93
    .local v1, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v1, :cond_2

    .line 94
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 95
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 96
    .local v2, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v2}, Landroid/content/pm/UserInfoCompat;->isQuietModeEnabled(Landroid/content/pm/UserInfo;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 97
    iget-object v4, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mCurrentQuietProfiles:Landroid/util/ArraySet;

    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    .end local v0    # "i":I
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    :cond_2
    return-void
.end method


# virtual methods
.method public declared-synchronized executePlan(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;Lcom/android/systemui/recents/model/RecentsTaskLoader;Lcom/android/systemui/recents/model/TaskResourceLoadQueue;)V
    .locals 12
    .param p1, "opts"    # Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    .param p2, "loader"    # Lcom/android/systemui/recents/model/RecentsTaskLoader;
    .param p3, "loadQueue"    # Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    .prologue
    monitor-enter p0

    .line 202
    :try_start_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    .line 203
    .local v0, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    iget-object v10, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 206
    .local v5, "res":Landroid/content/res/Resources;
    iget-object v10, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v10}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v9

    .line 207
    .local v9, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 208
    .local v7, "taskCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v7, :cond_a

    .line 209
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/recents/model/Task;

    .line 210
    .local v6, "task":Lcom/android/systemui/recents/model/Task;
    iget-object v8, v6, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    .line 212
    .local v8, "taskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    iget-object v10, v6, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v10, v10, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    iget v11, p1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->runningTaskId:I

    if-ne v10, v11, :cond_1

    const/4 v2, 0x1

    .line 213
    .local v2, "isRunningTask":Z
    :goto_1
    iget v10, p1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    if-gt v1, v10, :cond_2

    const/4 v3, 0x1

    .line 214
    .local v3, "isVisibleTask":Z
    :goto_2
    iget v10, p1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    if-gt v1, v10, :cond_3

    const/4 v4, 0x1

    .line 217
    .local v4, "isVisibleThumbnail":Z
    :goto_3
    iget-boolean v10, p1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadPausedActivities:Z

    if-eqz v10, :cond_4

    if-eqz v2, :cond_4

    .line 208
    :cond_0
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 212
    .end local v2    # "isRunningTask":Z
    .end local v3    # "isVisibleTask":Z
    .end local v4    # "isVisibleThumbnail":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "isRunningTask":Z
    goto :goto_1

    .line 213
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "isVisibleTask":Z
    goto :goto_2

    .line 214
    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "isVisibleThumbnail":Z
    goto :goto_3

    .line 221
    :cond_4
    iget-boolean v10, p1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->loadIcons:Z

    if-eqz v10, :cond_6

    if-nez v2, :cond_5

    if-eqz v3, :cond_6

    .line 222
    :cond_5
    iget-object v10, v6, Lcom/android/systemui/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v10, :cond_6

    .line 223
    iget-object v10, v6, Lcom/android/systemui/recents/model/Task;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 224
    const/4 v11, 0x1

    .line 223
    invoke-virtual {p2, v8, v10, v5, v11}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateActivityIcon(Lcom/android/systemui/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Landroid/content/res/Resources;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iput-object v10, v6, Lcom/android/systemui/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    .line 227
    :cond_6
    iget-boolean v10, p1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->loadThumbnails:Z

    if-eqz v10, :cond_0

    if-nez v2, :cond_7

    if-eqz v4, :cond_0

    .line 228
    :cond_7
    iget-object v10, v6, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v10, :cond_8

    if-nez v2, :cond_8

    iget-boolean v10, v6, Lcom/android/systemui/recents/model/Task;->isAccessLocked:Z

    if-eqz v10, :cond_0

    .line 229
    :cond_8
    iget v10, v0, Lcom/android/systemui/recents/RecentsConfiguration;->svelteLevel:I

    const/4 v11, 0x1

    if-gt v10, v11, :cond_9

    .line 231
    iget-boolean v10, v6, Lcom/android/systemui/recents/model/Task;->isAccessLocked:Z

    const/4 v11, 0x1

    .line 230
    invoke-virtual {p2, v8, v11, v10}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateThumbnail(Lcom/android/systemui/recents/model/Task$TaskKey;ZZ)Landroid/graphics/Bitmap;

    move-result-object v10

    iput-object v10, v6, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    .end local v0    # "config":Lcom/android/systemui/recents/RecentsConfiguration;
    .end local v1    # "i":I
    .end local v2    # "isRunningTask":Z
    .end local v3    # "isVisibleTask":Z
    .end local v4    # "isVisibleThumbnail":Z
    .end local v5    # "res":Landroid/content/res/Resources;
    .end local v6    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v7    # "taskCount":I
    .end local v8    # "taskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    .end local v9    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 232
    .restart local v0    # "config":Lcom/android/systemui/recents/RecentsConfiguration;
    .restart local v1    # "i":I
    .restart local v2    # "isRunningTask":Z
    .restart local v3    # "isVisibleTask":Z
    .restart local v4    # "isVisibleThumbnail":Z
    .restart local v5    # "res":Landroid/content/res/Resources;
    .restart local v6    # "task":Lcom/android/systemui/recents/model/Task;
    .restart local v7    # "taskCount":I
    .restart local v8    # "taskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    .restart local v9    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_9
    :try_start_1
    iget v10, v0, Lcom/android/systemui/recents/RecentsConfiguration;->svelteLevel:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_0

    .line 233
    invoke-virtual {p3, v6}, Lcom/android/systemui/recents/model/TaskResourceLoadQueue;->addTask(Lcom/android/systemui/recents/model/Task;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .end local v2    # "isRunningTask":Z
    .end local v3    # "isVisibleTask":Z
    .end local v4    # "isVisibleThumbnail":Z
    .end local v6    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v8    # "taskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    :cond_a
    monitor-exit p0

    .line 201
    return-void
.end method

.method public getTaskStack()Lcom/android/systemui/recents/model/TaskStack;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    return-object v0
.end method

.method public hasTasks()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 249
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    if-eqz v1, :cond_1

    .line 250
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 252
    :cond_1
    return v0
.end method

.method public declared-synchronized preloadPlan(Lcom/android/systemui/recents/model/RecentsTaskLoader;IZ)V
    .locals 41
    .param p1, "loader"    # Lcom/android/systemui/recents/model/RecentsTaskLoader;
    .param p2, "runningTaskId"    # I
    .param p3, "includeFrontMostExcludedTask"    # Z

    .prologue
    monitor-enter p0

    .line 129
    :try_start_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v38

    .line 131
    .local v38, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v37

    .line 132
    .local v37, "res":Landroid/content/res/Resources;
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v30, "allTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    if-nez v3, :cond_0

    .line 134
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->preloadRawTasks(Z)V

    .line 137
    :cond_0
    new-instance v29, Landroid/util/SparseArray;

    invoke-direct/range {v29 .. v29}, Landroid/util/SparseArray;-><init>()V

    .line 138
    .local v29, "affiliatedTasks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/systemui/recents/model/Task$TaskKey;>;"
    new-instance v28, Landroid/util/SparseIntArray;

    invoke-direct/range {v28 .. v28}, Landroid/util/SparseIntArray;-><init>()V

    .line 139
    .local v28, "affiliatedTaskCounts":Landroid/util/SparseIntArray;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    .line 140
    const v4, 0x91000e2

    .line 139
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 141
    .local v32, "dismissDescFormat":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    .line 142
    const v4, 0x91000e5

    .line 141
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 143
    .local v31, "appInfoDescFormat":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v40

    .line 144
    .local v40, "taskCount":I
    const/16 v34, 0x0

    .local v34, "i":I
    :goto_0
    move/from16 v0, v34

    move/from16 v1, v40

    if-ge v0, v1, :cond_6

    .line 145
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    move/from16 v0, v34

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 147
    .local v39, "t":Landroid/app/ActivityManager$RecentTaskInfo;
    invoke-virtual/range {v38 .. v39}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getWindowModeFromRecentTaskInfo(Landroid/app/ActivityManager$RecentTaskInfo;)I

    move-result v5

    .line 149
    .local v5, "windowMode":I
    new-instance v2, Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v0, v39

    iget v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    move-object/from16 v0, v39

    iget v4, v0, Landroid/app/ActivityManager$RecentTaskInfo;->stackId:I

    move-object/from16 v0, v39

    iget-object v6, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 150
    move-object/from16 v0, v39

    iget v7, v0, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    move-object/from16 v0, v39

    iget-wide v8, v0, Landroid/app/ActivityManager$RecentTaskInfo;->firstActiveTime:J

    move-object/from16 v0, v39

    iget-wide v10, v0, Landroid/app/ActivityManager$RecentTaskInfo;->lastActiveTime:J

    .line 149
    invoke-direct/range {v2 .. v11}, Lcom/android/systemui/recents/model/Task$TaskKey;-><init>(IIILandroid/content/Intent;IJJ)V

    .line 154
    .local v2, "taskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    move-object/from16 v0, v39

    iget v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->stackId:I

    invoke-static {v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isFreeformStack(I)Z

    move-result v36

    .line 155
    .local v36, "isFreeformTask":Z
    const/16 v19, 0x1

    .line 156
    .local v19, "isStackTask":Z
    iget v3, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move/from16 v0, p2

    if-ne v3, v0, :cond_1

    const/16 v18, 0x1

    .line 159
    .local v18, "isLaunchTarget":Z
    :goto_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateActivityInfo(Lcom/android/systemui/recents/model/Task$TaskKey;)Landroid/content/pm/ActivityInfo;

    move-result-object v35

    .line 160
    .local v35, "info":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateActivityTitle(Lcom/android/systemui/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;)Ljava/lang/String;

    move-result-object v12

    .line 161
    .local v12, "title":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateContentDescription(Lcom/android/systemui/recents/model/Task$TaskKey;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v13

    .line 162
    .local v13, "titleDescription":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v13, v3, v4

    move-object/from16 v0, v32

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 163
    .local v14, "dismissDescription":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v13, v3, v4

    move-object/from16 v0, v31

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 164
    .local v15, "appInfoDescription":Ljava/lang/String;
    if-eqz v19, :cond_2

    .line 165
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateActivityIcon(Lcom/android/systemui/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Landroid/content/res/Resources;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 167
    :goto_2
    move-object/from16 v0, v38

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isAccessLocked(Lcom/android/systemui/recents/model/Task$TaskKey;)Z

    move-result v27

    .line 168
    .local v27, "isAccessLocked":Z
    const/4 v3, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateThumbnail(Lcom/android/systemui/recents/model/Task$TaskKey;ZZ)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 169
    .local v11, "thumbnail":Landroid/graphics/Bitmap;
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getActivityPrimaryColor(Landroid/app/ActivityManager$TaskDescription;)I

    move-result v16

    .line 170
    .local v16, "activityColor":I
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getActivityBackgroundColor(Landroid/app/ActivityManager$TaskDescription;)I

    move-result v17

    .line 171
    .local v17, "backgroundColor":I
    if-eqz v35, :cond_4

    .line 172
    move-object/from16 v0, v35

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    const/16 v20, 0x1

    .line 173
    .local v20, "isSystemApp":Z
    :goto_3
    const/16 v26, 0x0

    .line 175
    .local v26, "isLocked":Z
    if-eqz v35, :cond_5

    :try_start_1
    move-object/from16 v0, v35

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    :goto_4
    move-object/from16 v0, v39

    iget v4, v0, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    invoke-static {v3, v4}, Lmiui/process/ProcessManager;->isLockedApplication(Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v26

    .line 181
    .end local v26    # "isLocked":Z
    :goto_5
    :try_start_2
    new-instance v6, Lcom/android/systemui/recents/model/Task;

    move-object/from16 v0, v39

    iget v8, v0, Landroid/app/ActivityManager$RecentTaskInfo;->affiliatedTaskId:I

    move-object/from16 v0, v39

    iget v9, v0, Landroid/app/ActivityManager$RecentTaskInfo;->affiliatedTaskColor:I

    .line 184
    invoke-static/range {v39 .. v39}, Landroid/app/ActivityManagerCompat;->isRecentTaskDockable(Landroid/app/ActivityManager$RecentTaskInfo;)Z

    move-result v21

    invoke-static/range {v39 .. v39}, Landroid/app/ActivityManagerCompat;->getRecentTaskBound(Landroid/app/ActivityManager$RecentTaskInfo;)Landroid/graphics/Rect;

    move-result-object v22

    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    move-object/from16 v23, v0

    .line 185
    invoke-static/range {v39 .. v39}, Landroid/app/ActivityManagerCompat;->getRecentTaskResizeMode(Landroid/app/ActivityManager$RecentTaskInfo;)I

    move-result v24

    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    move-object/from16 v25, v0

    move-object v7, v2

    .line 181
    invoke-direct/range {v6 .. v27}, Lcom/android/systemui/recents/model/Task;-><init>(Lcom/android/systemui/recents/model/Task$TaskKey;IILandroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZZZLandroid/graphics/Rect;Landroid/app/ActivityManager$TaskDescription;ILandroid/content/ComponentName;ZZ)V

    .line 187
    .local v6, "task":Lcom/android/systemui/recents/model/Task;
    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    iget v3, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    iget v4, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    const/4 v7, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 189
    iget v3, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 144
    add-int/lit8 v34, v34, 0x1

    goto/16 :goto_0

    .line 156
    .end local v6    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v11    # "thumbnail":Landroid/graphics/Bitmap;
    .end local v12    # "title":Ljava/lang/String;
    .end local v13    # "titleDescription":Ljava/lang/String;
    .end local v14    # "dismissDescription":Ljava/lang/String;
    .end local v15    # "appInfoDescription":Ljava/lang/String;
    .end local v16    # "activityColor":I
    .end local v17    # "backgroundColor":I
    .end local v18    # "isLaunchTarget":Z
    .end local v20    # "isSystemApp":Z
    .end local v27    # "isAccessLocked":Z
    .end local v35    # "info":Landroid/content/pm/ActivityInfo;
    :cond_1
    const/16 v18, 0x0

    .restart local v18    # "isLaunchTarget":Z
    goto/16 :goto_1

    .line 166
    .restart local v12    # "title":Ljava/lang/String;
    .restart local v13    # "titleDescription":Ljava/lang/String;
    .restart local v14    # "dismissDescription":Ljava/lang/String;
    .restart local v15    # "appInfoDescription":Ljava/lang/String;
    .restart local v35    # "info":Landroid/content/pm/ActivityInfo;
    :cond_2
    const/4 v10, 0x0

    .local v10, "icon":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_2

    .line 172
    .end local v10    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v11    # "thumbnail":Landroid/graphics/Bitmap;
    .restart local v16    # "activityColor":I
    .restart local v17    # "backgroundColor":I
    .restart local v27    # "isAccessLocked":Z
    :cond_3
    const/16 v20, 0x0

    .restart local v20    # "isSystemApp":Z
    goto :goto_3

    .line 171
    .end local v20    # "isSystemApp":Z
    :cond_4
    const/16 v20, 0x0

    .restart local v20    # "isSystemApp":Z
    goto :goto_3

    .line 175
    .restart local v26    # "isLocked":Z
    :cond_5
    const/4 v3, 0x0

    goto :goto_4

    .line 176
    :catch_0
    move-exception v33

    .line 177
    .local v33, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "RecentsTaskLoadPlan"

    const-string/jumbo v4, "getAppLockStateForUserId"

    move-object/from16 v0, v33

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    .end local v2    # "taskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    .end local v5    # "windowMode":I
    .end local v11    # "thumbnail":Landroid/graphics/Bitmap;
    .end local v12    # "title":Ljava/lang/String;
    .end local v13    # "titleDescription":Ljava/lang/String;
    .end local v14    # "dismissDescription":Ljava/lang/String;
    .end local v15    # "appInfoDescription":Ljava/lang/String;
    .end local v16    # "activityColor":I
    .end local v17    # "backgroundColor":I
    .end local v18    # "isLaunchTarget":Z
    .end local v19    # "isStackTask":Z
    .end local v20    # "isSystemApp":Z
    .end local v26    # "isLocked":Z
    .end local v27    # "isAccessLocked":Z
    .end local v28    # "affiliatedTaskCounts":Landroid/util/SparseIntArray;
    .end local v29    # "affiliatedTasks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/systemui/recents/model/Task$TaskKey;>;"
    .end local v30    # "allTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    .end local v31    # "appInfoDescFormat":Ljava/lang/String;
    .end local v32    # "dismissDescFormat":Ljava/lang/String;
    .end local v33    # "e":Ljava/lang/Exception;
    .end local v34    # "i":I
    .end local v35    # "info":Landroid/content/pm/ActivityInfo;
    .end local v36    # "isFreeformTask":Z
    .end local v37    # "res":Landroid/content/res/Resources;
    .end local v38    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .end local v39    # "t":Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v40    # "taskCount":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 193
    .restart local v28    # "affiliatedTaskCounts":Landroid/util/SparseIntArray;
    .restart local v29    # "affiliatedTasks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/systemui/recents/model/Task$TaskKey;>;"
    .restart local v30    # "allTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    .restart local v31    # "appInfoDescFormat":Ljava/lang/String;
    .restart local v32    # "dismissDescFormat":Ljava/lang/String;
    .restart local v34    # "i":I
    .restart local v37    # "res":Landroid/content/res/Resources;
    .restart local v38    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .restart local v40    # "taskCount":I
    :cond_6
    :try_start_3
    new-instance v3, Lcom/android/systemui/recents/model/TaskStack;

    invoke-direct {v3}, Lcom/android/systemui/recents/model/TaskStack;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    .line 194
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v3, v4, v0, v7}, Lcom/android/systemui/recents/model/TaskStack;->setTasks(Landroid/content/Context;Ljava/util/List;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    .line 128
    return-void
.end method

.method public declared-synchronized preloadRawTasks(Z)V
    .locals 4
    .param p1, "includeFrontMostExcludedTask"    # Z

    .prologue
    monitor-enter p0

    .line 108
    const/4 v0, -0x2

    .line 109
    .local v0, "currentUserId":I
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->updateCurrentQuietProfilesCache(I)V

    .line 110
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    .line 111
    .local v1, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    move-result v2

    .line 112
    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mCurrentQuietProfiles:Landroid/util/ArraySet;

    .line 111
    invoke-virtual {v1, v2, v0, p1, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRecentTasks(IIZLandroid/util/ArraySet;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 107
    return-void

    .end local v1    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
