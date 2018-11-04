.class public Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BaseRecentsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/BaseRecentsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecentsReceiver"
.end annotation


# instance fields
.field private final pkgsAllowCallClear:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/recents/BaseRecentsImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/BaseRecentsImpl;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/systemui/recents/BaseRecentsImpl;

    .prologue
    .line 1836
    iput-object p1, p0, Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1841
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    .line 1842
    const-string/jumbo v1, "com.miui.home"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1843
    const-string/jumbo v1, "com.miui.securitycenter"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 1844
    const-string/jumbo v1, "com.miui.touchassistant"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 1845
    const-string/jumbo v1, "com.android.snapshot"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 1846
    const-string/jumbo v1, "com.android.keyguard"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 1847
    const-string/jumbo v1, "com.android.systemui"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 1848
    const-string/jumbo v1, "com.mi.android.globallauncher"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 1849
    const-string/jumbo v1, "com.xiaomi.mihomemanager"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 1850
    const-string/jumbo v1, "com.miui.voiceassist"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 1841
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver;->pkgsAllowCallClear:Ljava/util/List;

    .line 1836
    return-void
.end method

.method private doClear(Ljava/util/List;ILjava/util/List;)V
    .locals 2
    .param p2, "cleanType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1919
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "taskinfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver$1;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver$1;-><init>(Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver;ILjava/util/List;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1918
    return-void
.end method

.method private showCleanEndMsg(J)V
    .locals 13
    .param p1, "freeAtFirst"    # J

    .prologue
    const-wide/16 v10, 0x400

    const/4 v1, -0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1941
    new-instance v8, Lmiui/widget/CircleProgressBar;

    iget-object v2, p0, Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    iget-object v2, v2, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-direct {v8, v2}, Lmiui/widget/CircleProgressBar;-><init>(Landroid/content/Context;)V

    .line 1943
    .local v8, "clearButton":Lmiui/widget/CircleProgressBar;
    new-array v2, v5, [I

    const v3, 0x9020083

    aput v3, v2, v4

    .line 1944
    new-array v3, v5, [I

    const v6, 0x9020084

    aput v6, v3, v4

    const/4 v6, 0x0

    .line 1942
    invoke-virtual {v8, v2, v3, v6}, Lmiui/widget/CircleProgressBar;->setDrawablesForLevels([I[I[I)V

    .line 1945
    invoke-static {}, Lmiui/util/HardwareInfo;->getTotalPhysicalMemory()J

    move-result-wide v2

    div-long/2addr v2, v10

    long-to-int v2, v2

    invoke-virtual {v8, v2}, Lmiui/widget/CircleProgressBar;->setMax(I)V

    .line 1946
    invoke-static {}, Lmiui/util/HardwareInfo;->getTotalPhysicalMemory()J

    move-result-wide v2

    div-long/2addr v2, v10

    sub-long/2addr v2, p1

    long-to-int v2, v2

    invoke-virtual {v8, v2}, Lmiui/widget/CircleProgressBar;->setProgress(I)V

    .line 1947
    const-string/jumbo v2, "RecentsReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "totalPhysicalMemory:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lmiui/util/HardwareInfo;->getTotalPhysicalMemory()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1949
    iget-object v2, p0, Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    iget-object v2, v2, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    .line 1950
    .local v9, "wm":Landroid/view/WindowManager;
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 1953
    const/16 v3, 0x7d6

    move v2, v1

    .line 1950
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 1956
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x51

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1957
    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    iget-object v1, v1, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x90f0284

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1958
    const v1, 0x91101db

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1959
    const/16 v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1960
    invoke-interface {v9, v8, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1962
    new-instance v2, Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver$2;

    move-object v3, p0

    move-object v4, v8

    move-object v5, v9

    move-wide v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver$2;-><init>(Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver;Lmiui/widget/CircleProgressBar;Landroid/view/WindowManager;J)V

    .line 1984
    const-wide/16 v4, 0xfa

    .line 1962
    invoke-virtual {v8, v2, v4, v5}, Lmiui/widget/CircleProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1940
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1858
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1859
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v5, "com.android.systemui.taskmanager.Clear"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1860
    invoke-virtual {p2}, Landroid/content/Intent;->getSender()Ljava/lang/String;

    move-result-object v3

    .line 1861
    .local v3, "sender":Ljava/lang/String;
    const-string/jumbo v5, "RecentsReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onReceive: senderName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    iget-object v5, p0, Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver;->pkgsAllowCallClear:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    if-eqz v5, :cond_2

    .line 1863
    const-string/jumbo v5, "show_toast"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 1864
    .local v4, "showToast":Z
    const-string/jumbo v5, "protected_pkgnames"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1865
    .local v2, "protectedPkgNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v5, "clean_type"

    const/4 v6, -0x1

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1866
    .local v1, "cleanType":I
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1867
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/recents/events/ui/CleanInRecentsEvents;

    invoke-direct {v6}, Lcom/android/systemui/recents/events/ui/CleanInRecentsEvents;-><init>()V

    invoke-virtual {v5, v6}, Lcom/android/systemui/recents/events/RecentsEventBus;->post(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    .line 1857
    .end local v1    # "cleanType":I
    .end local v2    # "protectedPkgNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "sender":Ljava/lang/String;
    .end local v4    # "showToast":Z
    :cond_0
    :goto_0
    return-void

    .line 1869
    .restart local v1    # "cleanType":I
    .restart local v2    # "protectedPkgNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "sender":Ljava/lang/String;
    .restart local v4    # "showToast":Z
    :cond_1
    invoke-virtual {p0, v4, v2, v1}, Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver;->removeAllTask(ZLjava/util/List;I)V

    goto :goto_0

    .line 1872
    .end local v1    # "cleanType":I
    .end local v2    # "protectedPkgNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "showToast":Z
    :cond_2
    const-string/jumbo v5, "RecentsReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is not allow to call clear"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeAllTask(ZLjava/util/List;I)V
    .locals 16
    .param p1, "showToast"    # Z
    .param p3, "cleanType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1878
    .local p2, "pPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-wide/16 v6, 0x0

    .line 1879
    .local v6, "freeAtFirst":J
    if-eqz p1, :cond_0

    .line 1880
    invoke-static {}, Lmiui/util/HardwareInfo;->getFreeMemory()J

    move-result-wide v12

    const-wide/16 v14, 0x400

    div-long v6, v12, v14

    .line 1881
    const-string/jumbo v11, "RecentsReceiver"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "freeMemoryAtFirst:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Lmiui/util/HardwareInfo;->getFreeMemory()J

    move-result-wide v14

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1885
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    iget-object v11, v11, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v11

    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    move-result v12

    .line 1886
    new-instance v13, Landroid/util/ArraySet;

    invoke-direct {v13}, Landroid/util/ArraySet;-><init>()V

    const/4 v14, -0x2

    const/4 v15, 0x0

    .line 1885
    invoke-virtual {v11, v12, v14, v15, v13}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRecentTasks(IIZLandroid/util/ArraySet;)Ljava/util/List;

    move-result-object v10

    .line 1888
    .local v10, "taskinfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1889
    .local v9, "protectedPkgNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p2, :cond_1

    .line 1890
    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1893
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasDockedTask()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1895
    const/4 v11, 0x3

    const/4 v12, 0x3

    const/4 v13, 0x0

    .line 1894
    invoke-static {v11, v12, v13}, Landroid/app/ActivityManagerCompat;->getStackInfo(III)Landroid/app/ActivityManager$StackInfo;

    move-result-object v2

    .line 1896
    .local v2, "dockedStackInfo":Landroid/app/ActivityManager$StackInfo;
    iget-object v3, v2, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    .line 1897
    .local v3, "dockedTopActivity":Landroid/content/ComponentName;
    if-eqz v3, :cond_2

    iget-boolean v11, v2, Landroid/app/ActivityManager$StackInfo;->visible:Z

    if-eqz v11, :cond_2

    .line 1898
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1901
    :cond_2
    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 1900
    invoke-static {v11, v12, v13}, Landroid/app/ActivityManagerCompat;->getStackInfo(III)Landroid/app/ActivityManager$StackInfo;

    move-result-object v5

    .line 1902
    .local v5, "fullScreenStackInfo":Landroid/app/ActivityManager$StackInfo;
    iget-object v8, v5, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    .line 1903
    .local v8, "fullScreenTopActivity":Landroid/content/ComponentName;
    if-eqz v8, :cond_3

    iget-boolean v11, v5, Landroid/app/ActivityManager$StackInfo;->visible:Z

    if-eqz v11, :cond_3

    .line 1904
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1911
    .end local v2    # "dockedStackInfo":Landroid/app/ActivityManager$StackInfo;
    .end local v3    # "dockedTopActivity":Landroid/content/ComponentName;
    .end local v5    # "fullScreenStackInfo":Landroid/app/ActivityManager$StackInfo;
    .end local v8    # "fullScreenTopActivity":Landroid/content/ComponentName;
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v9, v1, v10}, Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver;->doClear(Ljava/util/List;ILjava/util/List;)V

    .line 1913
    if-eqz p1, :cond_4

    .line 1914
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver;->showCleanEndMsg(J)V

    .line 1877
    :cond_4
    return-void

    .line 1907
    :catch_0
    move-exception v4

    .line 1908
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v11, "RecentsReceiver"

    const-string/jumbo v12, "getProtectedTaskPkg"

    invoke-static {v11, v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
