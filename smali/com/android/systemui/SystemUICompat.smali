.class public Lcom/android/systemui/SystemUICompat;
.super Ljava/lang/Object;
.source "SystemUICompat.java"


# static fields
.field private static sINM:Landroid/app/INotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-string/jumbo v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 40
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/SystemUICompat;->sINM:Landroid/app/INotificationManager;

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelTaskThumbnailTransition(Landroid/app/IActivityManager;I)V
    .locals 1
    .param p0, "mIam"    # Landroid/app/IActivityManager;
    .param p1, "taskId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->cancelTaskThumbnailTransition(I)V

    .line 107
    return-void
.end method

.method public static cancelTaskWindowTransition(Landroid/app/IActivityManager;I)V
    .locals 1
    .param p0, "mIam"    # Landroid/app/IActivityManager;
    .param p1, "taskId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->cancelTaskWindowTransition(I)V

    .line 103
    return-void
.end method

.method public static dismissKeyguardOnNextActivity()V
    .locals 3

    .prologue
    .line 89
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/IWindowManager;->dismissKeyguard()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .local v0, "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 90
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_0
    move-exception v0

    .line 91
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SystemUICompat"

    const-string/jumbo v2, "Error dismissing keyguard"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getDeclaredAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public static getLocales(Landroid/content/res/Configuration;)Ljava/lang/Object;
    .locals 1
    .param p0, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 50
    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    return-object v0
.end method

.method public static getNotificationDefaultColor()I
    .locals 1

    .prologue
    .line 84
    const v0, 0x1060051

    return v0
.end method

.method public static getRecentsWindowRect(Landroid/app/IActivityManager;)Landroid/graphics/Rect;
    .locals 4
    .param p0, "iam"    # Landroid/app/IActivityManager;

    .prologue
    .line 116
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 117
    .local v2, "windowRect":Landroid/graphics/Rect;
    if-nez p0, :cond_0

    return-object v2

    .line 122
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/systemui/recents/misc/Utilities;->isAndroidNorNewer()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasDockedTask()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x3

    .line 121
    :goto_0
    invoke-interface {p0, v3}, Landroid/app/IActivityManager;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;

    move-result-object v1

    .line 123
    .local v1, "stackInfo":Landroid/app/ActivityManager$StackInfo;
    if-eqz v1, :cond_1

    .line 124
    iget-object v3, v1, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    :cond_1
    return-object v2

    .line 122
    .end local v1    # "stackInfo":Landroid/app/ActivityManager$StackInfo;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    return-object v2

    .line 128
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    .line 129
    return-object v2
.end method

.method public static getStableInsets(Landroid/graphics/Rect;)V
    .locals 1
    .param p0, "outStableInsets"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/IWindowManager;->getStableInsets(Landroid/graphics/Rect;)V

    .line 111
    return-void
.end method

.method public static hasDockedTask(Landroid/app/IActivityManager;)Z
    .locals 4
    .param p0, "mIam"    # Landroid/app/IActivityManager;

    .prologue
    const/4 v2, 0x0

    .line 158
    if-nez p0, :cond_0

    return v2

    .line 160
    :cond_0
    const/4 v1, 0x0

    .line 162
    .local v1, "stackInfo":Landroid/app/ActivityManager$StackInfo;
    const/4 v3, 0x3

    :try_start_0
    invoke-interface {p0, v3}, Landroid/app/IActivityManager;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 166
    .end local v1    # "stackInfo":Landroid/app/ActivityManager$StackInfo;
    :goto_0
    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    .line 163
    .restart local v1    # "stackInfo":Landroid/app/ActivityManager$StackInfo;
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isHighPriority(Ljava/lang/String;I)Z
    .locals 2
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 96
    sget-object v0, Lcom/android/systemui/SystemUICompat;->sINM:Landroid/app/INotificationManager;

    invoke-interface {v0, p0, p1}, Landroid/app/INotificationManager;->getPriority(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHomeOrRecentsStack(ILandroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 1
    .param p0, "stackId"    # I
    .param p1, "runningTask"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .prologue
    const/4 v0, 0x0

    .line 100
    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isRecentsActivityVisible(Lcom/android/systemui/recents/model/MutableBoolean;Landroid/app/IActivityManager;Landroid/content/pm/PackageManager;)Z
    .locals 8
    .param p0, "isHomeStackVisible"    # Lcom/android/systemui/recents/model/MutableBoolean;
    .param p1, "mIam"    # Landroid/app/IActivityManager;
    .param p2, "mPm"    # Landroid/content/pm/PackageManager;

    .prologue
    const/4 v6, 0x0

    .line 134
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return v6

    .line 135
    :cond_1
    const/4 v3, 0x0

    .line 137
    .local v3, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v5, 0x1

    const/4 v7, 0x0

    :try_start_0
    invoke-interface {p1, v5, v7}, Landroid/app/IActivityManager;->getTasks(II)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 141
    .end local v3    # "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :goto_0
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 154
    :cond_2
    return v6

    .line 138
    .restart local v3    # "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "SystemUICompat"

    const-string/jumbo v7, "isRecentsActivityVisible"

    invoke-static {v5, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 142
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v3    # "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_3
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 143
    .local v2, "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v4, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 144
    .local v4, "topActivity":Landroid/content/ComponentName;
    if-nez v4, :cond_4

    return v6

    .line 145
    :cond_4
    if-eqz p0, :cond_5

    .line 146
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v7, "android.intent.action.MAIN"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "android.intent.category.HOME"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5, p2, v6}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 148
    .local v1, "homeInfo":Landroid/content/pm/ActivityInfo;
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v7, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 149
    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    iget-object v7, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 148
    :goto_1
    iput-boolean v5, p0, Lcom/android/systemui/recents/model/MutableBoolean;->value:Z

    .line 151
    .end local v1    # "homeInfo":Landroid/content/pm/ActivityInfo;
    :cond_5
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "com.android.systemui"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 152
    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "com.android.systemui.recents.RecentsActivity"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 151
    :cond_6
    return v6

    .restart local v1    # "homeInfo":Landroid/content/pm/ActivityInfo;
    :cond_7
    move v5, v6

    .line 148
    goto :goto_1
.end method

.method public static registerStatusBar(Lcom/android/internal/statusbar/IStatusBarService;Lcom/android/internal/statusbar/IStatusBar;Ljava/util/List;Ljava/util/List;[ILjava/util/List;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0
    .param p0, "barService"    # Lcom/android/internal/statusbar/IStatusBarService;
    .param p1, "callbacks"    # Lcom/android/internal/statusbar/IStatusBar;
    .param p4, "switches"    # [I
    .param p6, "fullscreenStackBounds"    # Landroid/graphics/Rect;
    .param p7, "dockedStackBounds"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/statusbar/IStatusBarService;",
            "Lcom/android/internal/statusbar/IStatusBar;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/statusbar/StatusBarIcon;",
            ">;[I",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 46
    .local p2, "iconSlots":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "iconList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/statusbar/StatusBarIcon;>;"
    .local p5, "binders":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-interface/range {p0 .. p7}, Lcom/android/internal/statusbar/IStatusBarService;->registerStatusBar(Lcom/android/internal/statusbar/IStatusBar;Ljava/util/List;Ljava/util/List;[ILjava/util/List;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 45
    return-void
.end method

.method public static setRecentsVisibility(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "visible"    # Z

    .prologue
    .line 59
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/IWindowManager;->setRecentsVisibility(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SystemServicesProxy"

    const-string/jumbo v2, "Unable to reach window manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static setTemporaryScreenAutoBrightness(F)V
    .locals 3
    .param p0, "valf"    # F

    .prologue
    .line 76
    :try_start_0
    const-string/jumbo v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 77
    .local v1, "power":Landroid/os/IPowerManager;
    invoke-interface {v1, p0}, Landroid/os/IPowerManager;->setTemporaryScreenAutoBrightnessAdjustmentSettingOverride(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .end local v1    # "power":Landroid/os/IPowerManager;
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static setTemporaryScreenBrightness(I)V
    .locals 3
    .param p0, "brightnessValue"    # I

    .prologue
    .line 67
    :try_start_0
    const-string/jumbo v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 68
    .local v1, "power":Landroid/os/IPowerManager;
    invoke-interface {v1, p0}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v1    # "power":Landroid/os/IPowerManager;
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static startTaskInDockedMode(Lcom/android/systemui/recents/model/Task;ILandroid/app/IActivityManager;Landroid/content/Context;)Z
    .locals 6
    .param p0, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p1, "createMode"    # I
    .param p2, "mIam"    # Landroid/app/IActivityManager;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 170
    if-nez p2, :cond_0

    return v5

    .line 173
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    .line 174
    .local v1, "options":Landroid/app/ActivityOptions;
    invoke-virtual {v1, p1}, Landroid/app/ActivityOptions;->setDockCreateMode(I)V

    .line 175
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setLaunchStackId(I)V

    .line 176
    iget-object v2, p0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Landroid/app/IActivityManager;->startActivityFromRecents(ILandroid/os/Bundle;)I

    .line 177
    const-string/jumbo v2, "SystemServicesProxy"

    const-string/jumbo v3, "enter splitScreen mode"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    const/4 v2, 0x1

    return v2

    .line 179
    .end local v1    # "options":Landroid/app/ActivityOptions;
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "SystemServicesProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to dock task: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " with createMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    return v5
.end method
