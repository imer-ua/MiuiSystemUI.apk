.class public Lcom/android/systemui/recents/model/TaskStack;
.super Ljava/lang/Object;
.source "TaskStack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/model/TaskStack$1;,
        Lcom/android/systemui/recents/model/TaskStack$DockState;,
        Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;
    }
.end annotation


# instance fields
.field private FREEFORM_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;"
        }
    .end annotation
.end field

.field mAffinitiesGroups:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/recents/model/TaskGrouping;",
            ">;"
        }
    .end annotation
.end field

.field mCb:Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;

.field mGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/TaskGrouping;",
            ">;"
        }
    .end annotation
.end field

.field mRawTaskList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;"
        }
    .end annotation
.end field

.field mStackTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 535
    new-instance v0, Lcom/android/systemui/recents/model/TaskStack$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/model/TaskStack$1;-><init>(Lcom/android/systemui/recents/model/TaskStack;)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->FREEFORM_COMPARATOR:Ljava/util/Comparator;

    .line 551
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mRawTaskList:Ljava/util/ArrayList;

    .line 552
    new-instance v0, Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-direct {v0}, Lcom/android/systemui/recents/model/FilteredTaskList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    .line 555
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mGroups:Ljava/util/ArrayList;

    .line 556
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mAffinitiesGroups:Landroid/util/ArrayMap;

    .line 560
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    new-instance v1, Lcom/android/systemui/recents/model/TaskStack$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/model/TaskStack$2;-><init>(Lcom/android/systemui/recents/model/TaskStack;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/FilteredTaskList;->setFilter(Lcom/android/systemui/recents/model/TaskFilter;)Z

    .line 558
    return-void
.end method

.method private createTaskKeyMapFromList(Ljava/util/List;)Landroid/util/ArrayMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;)",
            "Landroid/util/ArrayMap",
            "<",
            "Lcom/android/systemui/recents/model/Task$TaskKey;",
            "Lcom/android/systemui/recents/model/Task;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1071
    .local p1, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/model/Task;>;"
    new-instance v1, Landroid/util/ArrayMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v1, v4}, Landroid/util/ArrayMap;-><init>(I)V

    .line 1072
    .local v1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/systemui/recents/model/Task$TaskKey;Lcom/android/systemui/recents/model/Task;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 1073
    .local v3, "taskCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 1074
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/Task;

    .line 1075
    .local v2, "task":Lcom/android/systemui/recents/model/Task;
    iget-object v4, v2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v1, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1073
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1077
    .end local v2    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_0
    return-object v1
.end method


# virtual methods
.method public addGroup(Lcom/android/systemui/recents/model/TaskGrouping;)V
    .locals 2
    .param p1, "group"    # Lcom/android/systemui/recents/model/TaskGrouping;

    .prologue
    .line 890
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 891
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mAffinitiesGroups:Landroid/util/ArrayMap;

    iget v1, p1, Lcom/android/systemui/recents/model/TaskGrouping;->affiliation:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    return-void
.end method

.method public computeAllTasksList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;"
        }
    .end annotation

    .prologue
    .line 809
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 810
    .local v0, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    iget-object v1, p0, Lcom/android/systemui/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 811
    return-object v0
.end method

.method public computeComponentsRemoved(Ljava/lang/String;I)Landroid/util/ArraySet;
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/util/ArraySet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1029
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v4

    .line 1030
    .local v4, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 1031
    .local v1, "existingComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 1032
    .local v3, "removedComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    invoke-virtual {p0}, Lcom/android/systemui/recents/model/TaskStack;->getTaskKeys()Ljava/util/ArrayList;

    move-result-object v7

    .line 1033
    .local v7, "taskKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task$TaskKey;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1034
    .local v6, "taskKeyCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v6, :cond_3

    .line 1035
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/recents/model/Task$TaskKey;

    .line 1038
    .local v5, "t":Lcom/android/systemui/recents/model/Task$TaskKey;
    iget v8, v5, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    if-eq v8, p2, :cond_1

    .line 1034
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1040
    :cond_1
    invoke-virtual {v5}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 1041
    .local v0, "cn":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1042
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1046
    invoke-virtual {v4, v0, p2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 1047
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1049
    :cond_2
    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1053
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v5    # "t":Lcom/android/systemui/recents/model/Task$TaskKey;
    :cond_3
    return-object v3
.end method

.method createAffiliatedGroupings(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 908
    iget-object v12, p0, Lcom/android/systemui/recents/model/TaskStack;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 909
    iget-object v12, p0, Lcom/android/systemui/recents/model/TaskStack;->mAffinitiesGroups:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->clear()V

    .line 977
    new-instance v11, Landroid/util/ArrayMap;

    invoke-direct {v11}, Landroid/util/ArrayMap;-><init>()V

    .line 978
    .local v11, "tasksMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/systemui/recents/model/Task$TaskKey;Lcom/android/systemui/recents/model/Task;>;"
    iget-object v12, p0, Lcom/android/systemui/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v12}, Lcom/android/systemui/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v10

    .line 979
    .local v10, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 980
    .local v8, "taskCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v8, :cond_0

    .line 981
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/recents/model/Task;

    .line 993
    .local v7, "t":Lcom/android/systemui/recents/model/Task;
    new-instance v3, Lcom/android/systemui/recents/model/TaskGrouping;

    iget-object v12, v7, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v12, v12, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-direct {v3, v12}, Lcom/android/systemui/recents/model/TaskGrouping;-><init>(I)V

    .line 994
    .local v3, "group":Lcom/android/systemui/recents/model/TaskGrouping;
    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/model/TaskStack;->addGroup(Lcom/android/systemui/recents/model/TaskGrouping;)V

    .line 996
    invoke-virtual {v3, v7}, Lcom/android/systemui/recents/model/TaskGrouping;->addTask(Lcom/android/systemui/recents/model/Task;)V

    .line 997
    iget-object v12, v7, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v11, v12, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1000
    .end local v3    # "group":Lcom/android/systemui/recents/model/TaskGrouping;
    .end local v7    # "t":Lcom/android/systemui/recents/model/Task;
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 1001
    const v13, 0x90f01ed

    .line 1000
    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v6

    .line 1002
    .local v6, "minAlpha":F
    iget-object v12, p0, Lcom/android/systemui/recents/model/TaskStack;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 1003
    .local v9, "taskGroupCount":I
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v9, :cond_3

    .line 1004
    iget-object v12, p0, Lcom/android/systemui/recents/model/TaskStack;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/model/TaskGrouping;

    .line 1005
    .restart local v3    # "group":Lcom/android/systemui/recents/model/TaskGrouping;
    invoke-virtual {v3}, Lcom/android/systemui/recents/model/TaskGrouping;->getTaskCount()I

    move-result v8

    .line 1007
    const/4 v12, 0x1

    if-gt v8, v12, :cond_2

    .line 1003
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1009
    :cond_2
    iget-object v12, v3, Lcom/android/systemui/recents/model/TaskGrouping;->mTaskKeys:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/recents/model/Task;

    iget v0, v12, Lcom/android/systemui/recents/model/Task;->affiliationColor:I

    .line 1010
    .local v0, "affiliationColor":I
    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v12, v6

    int-to-float v13, v8

    div-float v2, v12, v13

    .line 1011
    .local v2, "alphaStep":F
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1012
    .local v1, "alpha":F
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    if-ge v5, v8, :cond_1

    .line 1013
    iget-object v12, v3, Lcom/android/systemui/recents/model/TaskGrouping;->mTaskKeys:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/recents/model/Task;

    .line 1014
    .restart local v7    # "t":Lcom/android/systemui/recents/model/Task;
    const/4 v12, -0x1

    invoke-static {v0, v12, v1}, Lcom/android/systemui/recents/misc/Utilities;->getColorWithOverlay(IIF)I

    move-result v12

    iput v12, v7, Lcom/android/systemui/recents/model/Task;->colorPrimary:I

    .line 1016
    sub-float/2addr v1, v2

    .line 1012
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 907
    .end local v0    # "affiliationColor":I
    .end local v1    # "alpha":F
    .end local v2    # "alphaStep":F
    .end local v3    # "group":Lcom/android/systemui/recents/model/TaskGrouping;
    .end local v5    # "j":I
    .end local v7    # "t":Lcom/android/systemui/recents/model/Task;
    :cond_3
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .prologue
    .line 1081
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1083
    .local v1, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "TaskStack"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1084
    const-string/jumbo v4, " numStackTasks="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/FilteredTaskList;->size()I

    move-result v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 1085
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1086
    iget-object v4, p0, Lcom/android/systemui/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v3

    .line 1087
    .local v3, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1088
    .local v2, "taskCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1089
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v4, v1, p2}, Lcom/android/systemui/recents/model/Task;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1088
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1080
    :cond_0
    return-void
.end method

.method public getFreeformTaskCount()I
    .locals 6

    .prologue
    .line 841
    iget-object v5, p0, Lcom/android/systemui/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v4

    .line 842
    .local v4, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    const/4 v0, 0x0

    .line 843
    .local v0, "freeformCount":I
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 844
    .local v3, "taskCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 845
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/Task;

    .line 846
    .local v2, "task":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {v2}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 847
    add-int/lit8 v0, v0, 0x1

    .line 844
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 850
    .end local v2    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_1
    return v0
.end method

.method public getFreeformTasks()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;"
        }
    .end annotation

    .prologue
    .line 793
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 794
    .local v0, "freeformTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    iget-object v5, p0, Lcom/android/systemui/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v4

    .line 795
    .local v4, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 796
    .local v3, "taskCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 797
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/Task;

    .line 798
    .local v2, "task":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {v2}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 799
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 796
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 802
    .end local v2    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_1
    return-object v0
.end method

.method public getLaunchTarget()Lcom/android/systemui/recents/model/Task;
    .locals 5

    .prologue
    .line 857
    iget-object v4, p0, Lcom/android/systemui/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v3

    .line 858
    .local v3, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 859
    .local v2, "taskCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 860
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/model/Task;

    .line 861
    .local v1, "task":Lcom/android/systemui/recents/model/Task;
    iget-boolean v4, v1, Lcom/android/systemui/recents/model/Task;->isLaunchTarget:Z

    if-eqz v4, :cond_0

    .line 862
    return-object v1

    .line 859
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 865
    .end local v1    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_1
    const/4 v4, 0x0

    return-object v4
.end method

.method public getStackFirstTask(Z)Lcom/android/systemui/recents/model/Task;
    .locals 5
    .param p1, "includeFreeformTasks"    # Z

    .prologue
    const/4 v4, 0x0

    .line 757
    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v1

    .line 758
    .local v1, "stackTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 759
    return-object v4

    .line 761
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-gt v0, v3, :cond_3

    .line 762
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/Task;

    .line 763
    .local v2, "task":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {v2}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p1, :cond_2

    .line 764
    :cond_1
    return-object v2

    .line 761
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 767
    .end local v2    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_3
    return-object v4
.end method

.method public getStackFrontMostTask(Z)Lcom/android/systemui/recents/model/Task;
    .locals 1
    .param p1, "includeFreeformTasks"    # Z

    .prologue
    .line 738
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/model/TaskStack;->getStackFirstTask(Z)Lcom/android/systemui/recents/model/Task;

    move-result-object v0

    return-object v0
.end method

.method public getStackTaskCount()I
    .locals 6

    .prologue
    .line 825
    iget-object v5, p0, Lcom/android/systemui/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v4

    .line 826
    .local v4, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    const/4 v1, 0x0

    .line 827
    .local v1, "stackCount":I
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 828
    .local v3, "taskCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 829
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/Task;

    .line 830
    .local v2, "task":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {v2}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v5

    if-nez v5, :cond_0

    .line 831
    add-int/lit8 v1, v1, 0x1

    .line 828
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 834
    .end local v2    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_1
    return v1
.end method

.method public getStackTasks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;"
        }
    .end annotation

    .prologue
    .line 786
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getTaskCount()I
    .locals 1

    .prologue
    .line 818
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/FilteredTaskList;->size()I

    move-result v0

    return v0
.end method

.method public getTaskKeys()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task$TaskKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 772
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 773
    .local v3, "taskKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task$TaskKey;>;"
    invoke-virtual {p0}, Lcom/android/systemui/recents/model/TaskStack;->computeAllTasksList()Ljava/util/ArrayList;

    move-result-object v4

    .line 774
    .local v4, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 775
    .local v2, "taskCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 776
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/model/Task;

    .line 777
    .local v1, "task":Lcom/android/systemui/recents/model/Task;
    iget-object v5, v1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 775
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 779
    .end local v1    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_0
    return-object v3
.end method

.method public indexOfStackTask(Lcom/android/systemui/recents/model/Task;)I
    .locals 1
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 870
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/model/FilteredTaskList;->indexOf(Lcom/android/systemui/recents/model/Task;)I

    move-result v0

    return v0
.end method

.method public moveTaskToStack(Lcom/android/systemui/recents/model/Task;I)V
    .locals 5
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "newStackId"    # I

    .prologue
    .line 588
    iget-object v4, p0, Lcom/android/systemui/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v3

    .line 589
    .local v3, "taskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 590
    .local v2, "taskCount":I
    invoke-virtual {p1}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x2

    if-ne p2, v4, :cond_1

    .line 592
    iget-object v4, p0, Lcom/android/systemui/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v4, p1, v2, p2}, Lcom/android/systemui/recents/model/FilteredTaskList;->moveTaskToStack(Lcom/android/systemui/recents/model/Task;II)V

    .line 586
    :cond_0
    :goto_0
    return-void

    .line 593
    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    if-ne p2, v4, :cond_0

    .line 595
    const/4 v1, 0x0

    .line 596
    .local v1, "insertIndex":I
    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 597
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v4

    if-nez v4, :cond_3

    .line 598
    add-int/lit8 v1, v0, 0x1

    .line 602
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v4, p1, v1, p2}, Lcom/android/systemui/recents/model/FilteredTaskList;->moveTaskToStack(Lcom/android/systemui/recents/model/Task;II)V

    goto :goto_0

    .line 596
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public removeAllTasks()V
    .locals 4

    .prologue
    .line 641
    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v2

    .line 642
    .local v2, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 643
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/model/Task;

    .line 644
    .local v1, "t":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {v1}, Lcom/android/systemui/recents/model/Task;->isProtected()Z

    move-result v3

    if-nez v3, :cond_0

    .line 645
    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/recents/model/TaskStack;->removeTaskImpl(Lcom/android/systemui/recents/model/FilteredTaskList;Lcom/android/systemui/recents/model/Task;)V

    .line 646
    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack;->mRawTaskList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 642
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 649
    .end local v1    # "t":Lcom/android/systemui/recents/model/Task;
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack;->mCb:Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;

    if-eqz v3, :cond_2

    .line 651
    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack;->mCb:Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;

    invoke-interface {v3, p0}, Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;->onStackTasksRemoved(Lcom/android/systemui/recents/model/TaskStack;)V

    .line 640
    :cond_2
    return-void
.end method

.method public removeGroup(Lcom/android/systemui/recents/model/TaskGrouping;)V
    .locals 2
    .param p1, "group"    # Lcom/android/systemui/recents/model/TaskGrouping;

    .prologue
    .line 895
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 896
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mAffinitiesGroups:Landroid/util/ArrayMap;

    iget v1, p1, Lcom/android/systemui/recents/model/TaskGrouping;->affiliation:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 894
    return-void
.end method

.method public removeTask(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/AnimationProps;Z)V
    .locals 6
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "animation"    # Lcom/android/systemui/recents/views/AnimationProps;
    .param p3, "fromDockGesture"    # Z

    .prologue
    .line 625
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/model/FilteredTaskList;->contains(Lcom/android/systemui/recents/model/Task;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/recents/model/TaskStack;->removeTaskImpl(Lcom/android/systemui/recents/model/FilteredTaskList;Lcom/android/systemui/recents/model/Task;)V

    .line 627
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/model/TaskStack;->getStackFrontMostTask(Z)Lcom/android/systemui/recents/model/Task;

    move-result-object v3

    .line 628
    .local v3, "newFrontMostTask":Lcom/android/systemui/recents/model/Task;
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mCb:Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mCb:Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;->onStackTaskRemoved(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/AnimationProps;Z)V

    .line 634
    .end local v3    # "newFrontMostTask":Lcom/android/systemui/recents/model/Task;
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mRawTaskList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 624
    return-void
.end method

.method removeTaskImpl(Lcom/android/systemui/recents/model/FilteredTaskList;Lcom/android/systemui/recents/model/Task;)V
    .locals 2
    .param p1, "taskList"    # Lcom/android/systemui/recents/model/FilteredTaskList;
    .param p2, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 609
    invoke-virtual {p1, p2}, Lcom/android/systemui/recents/model/FilteredTaskList;->remove(Lcom/android/systemui/recents/model/Task;)Z

    .line 611
    iget-object v0, p2, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    .line 612
    .local v0, "group":Lcom/android/systemui/recents/model/TaskGrouping;
    if-eqz v0, :cond_0

    .line 613
    invoke-virtual {v0, p2}, Lcom/android/systemui/recents/model/TaskGrouping;->removeTask(Lcom/android/systemui/recents/model/Task;)V

    .line 614
    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskGrouping;->getTaskCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 615
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/model/TaskStack;->removeGroup(Lcom/android/systemui/recents/model/TaskGrouping;)V

    .line 607
    :cond_0
    return-void
.end method

.method public setCallbacks(Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;

    .prologue
    .line 580
    iput-object p1, p0, Lcom/android/systemui/recents/model/TaskStack;->mCb:Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;

    .line 579
    return-void
.end method

.method public setTasks(Landroid/content/Context;Ljava/util/List;Z)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "notifyStackChanges"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 663
    .local p2, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/model/Task;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/model/TaskStack;->mRawTaskList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/systemui/recents/model/TaskStack;->createTaskKeyMapFromList(Ljava/util/List;)Landroid/util/ArrayMap;

    move-result-object v12

    .line 664
    .local v12, "currentTasksMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/systemui/recents/model/Task$TaskKey;Lcom/android/systemui/recents/model/Task;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/model/TaskStack;->createTaskKeyMapFromList(Ljava/util/List;)Landroid/util/ArrayMap;

    move-result-object v15

    .line 665
    .local v15, "newTasksMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/systemui/recents/model/Task$TaskKey;Lcom/android/systemui/recents/model/Task;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 666
    .local v9, "addedTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 667
    .local v17, "removedTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 670
    .local v10, "allTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/model/TaskStack;->mCb:Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;

    if-nez v2, :cond_0

    .line 671
    const/16 p3, 0x0

    .line 675
    .end local p3    # "notifyStackChanges":Z
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/model/TaskStack;->mRawTaskList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 676
    .local v19, "taskCount":I
    add-int/lit8 v13, v19, -0x1

    .local v13, "i":I
    :goto_0
    if-ltz v13, :cond_2

    .line 677
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/model/TaskStack;->mRawTaskList:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/systemui/recents/model/Task;

    .line 678
    .local v18, "task":Lcom/android/systemui/recents/model/Task;
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v15, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 679
    if-eqz p3, :cond_1

    .line 680
    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 683
    :cond_1
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/model/Task;->setGroup(Lcom/android/systemui/recents/model/TaskGrouping;)V

    .line 676
    add-int/lit8 v13, v13, -0x1

    goto :goto_0

    .line 687
    .end local v18    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_2
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v19

    .line 688
    const/4 v13, 0x0

    :goto_1
    move/from16 v0, v19

    if-ge v13, v0, :cond_5

    .line 689
    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/recents/model/Task;

    .line 690
    .local v14, "newTask":Lcom/android/systemui/recents/model/Task;
    iget-object v2, v14, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v12, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/recents/model/Task;

    .line 691
    .local v11, "currentTask":Lcom/android/systemui/recents/model/Task;
    if-nez v11, :cond_4

    if-eqz p3, :cond_4

    .line 692
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 699
    :cond_3
    :goto_2
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 688
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 693
    :cond_4
    if-eqz v11, :cond_3

    .line 696
    invoke-virtual {v11, v14}, Lcom/android/systemui/recents/model/Task;->copyFrom(Lcom/android/systemui/recents/model/Task;)V

    .line 697
    move-object v14, v11

    goto :goto_2

    .line 703
    .end local v11    # "currentTask":Lcom/android/systemui/recents/model/Task;
    .end local v14    # "newTask":Lcom/android/systemui/recents/model/Task;
    :cond_5
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v13, v2, -0x1

    :goto_3
    if-ltz v13, :cond_6

    .line 704
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/Task;

    iput v13, v2, Lcom/android/systemui/recents/model/Task;->temporarySortIndexInStack:I

    .line 703
    add-int/lit8 v13, v13, -0x1

    goto :goto_3

    .line 706
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/model/TaskStack;->FREEFORM_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v10, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 708
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v2, v10}, Lcom/android/systemui/recents/model/FilteredTaskList;->set(Ljava/util/List;)V

    .line 709
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/systemui/recents/model/TaskStack;->mRawTaskList:Ljava/util/ArrayList;

    .line 712
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/recents/model/TaskStack;->createAffiliatedGroupings(Landroid/content/Context;)V

    .line 715
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 716
    .local v16, "removedTaskCount":I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/model/TaskStack;->getStackFrontMostTask(Z)Lcom/android/systemui/recents/model/Task;

    move-result-object v5

    .line 717
    .local v5, "newFrontMostTask":Lcom/android/systemui/recents/model/Task;
    const/4 v13, 0x0

    :goto_4
    move/from16 v0, v16

    if-ge v13, v0, :cond_7

    .line 718
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/model/TaskStack;->mCb:Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/model/Task;

    .line 719
    sget-object v6, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    const/4 v7, 0x0

    move-object/from16 v3, p0

    .line 718
    invoke-interface/range {v2 .. v7}, Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;->onStackTaskRemoved(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/AnimationProps;Z)V

    .line 717
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 723
    :cond_7
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 724
    .local v8, "addedTaskCount":I
    const/4 v13, 0x0

    :goto_5
    if-ge v13, v8, :cond_8

    .line 725
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/model/TaskStack;->mCb:Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/Task;

    move-object/from16 v0, p0

    invoke-interface {v3, v0, v2}, Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;->onStackTaskAdded(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;)V

    .line 724
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 729
    :cond_8
    if-eqz p3, :cond_9

    .line 730
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/model/TaskStack;->mCb:Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;->onStackTasksUpdated(Lcom/android/systemui/recents/model/TaskStack;)V

    .line 661
    :cond_9
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1058
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Stack Tasks ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/FilteredTaskList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "):\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1059
    .local v1, "str":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v3

    .line 1060
    .local v3, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1061
    .local v2, "taskCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1062
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/Task;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1061
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1064
    :cond_0
    return-object v1
.end method
