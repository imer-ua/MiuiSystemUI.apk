.class public Landroid/app/ActivityManagerCompat;
.super Ljava/lang/Object;
.source "ActivityManagerCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFocusedStackId()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-static {}, Landroid/app/ActivityManagerCompat;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getFocusedStackId()I

    move-result v0

    return v0
.end method

.method public static getLastResumedActivityUserId(I)I
    .locals 0
    .param p0, "userIdLegacy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 26
    return p0
.end method

.method public static getRecentTaskBound(Landroid/app/ActivityManager$RecentTaskInfo;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "t"    # Landroid/app/ActivityManager$RecentTaskInfo;

    .prologue
    .line 76
    iget-object v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->bounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public static getRecentTaskResizeMode(Landroid/app/ActivityManager$RecentTaskInfo;)I
    .locals 1
    .param p0, "t"    # Landroid/app/ActivityManager$RecentTaskInfo;

    .prologue
    .line 80
    iget v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->resizeMode:I

    return v0
.end method

.method public static getRecentTasks(III)Ljava/util/List;
    .locals 1
    .param p0, "maxNum"    # I
    .param p1, "flags"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-static {}, Landroid/app/ActivityManagerCompat;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Landroid/app/IActivityManager;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getRecentTasksForUser(Landroid/app/ActivityManager;III)Ljava/util/List;
    .locals 1
    .param p0, "activityManager"    # Landroid/app/ActivityManager;
    .param p1, "maxNum"    # I
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityManager;",
            "III)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/ActivityManager;->getRecentTasksForUser(III)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getRunningTaskResizeMode(Landroid/app/ActivityManager$RunningTaskInfo;)I
    .locals 1
    .param p0, "runningTask"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .prologue
    .line 72
    iget v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->resizeMode:I

    return v0
.end method

.method public static getRunningTaskStackId(Landroid/app/ActivityManager$RunningTaskInfo;)I
    .locals 1
    .param p0, "runningTask"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .prologue
    .line 68
    iget v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->stackId:I

    return v0
.end method

.method public static getService()Landroid/app/IActivityManager;
    .locals 1

    .prologue
    .line 16
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    return-object v0
.end method

.method public static getStackInfo(III)Landroid/app/ActivityManager$StackInfo;
    .locals 1
    .param p0, "stackId"    # I
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-static {}, Landroid/app/ActivityManagerCompat;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getTaskDescriptionBackgroundColor(Landroid/app/ActivityManager$TaskDescription;)I
    .locals 1
    .param p0, "td"    # Landroid/app/ActivityManager$TaskDescription;

    .prologue
    .line 84
    invoke-virtual {p0}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v0

    return v0
.end method

.method public static getUserId(Landroid/app/ActivityManager$StackInfo;)I
    .locals 1
    .param p0, "info"    # Landroid/app/ActivityManager$StackInfo;

    .prologue
    .line 43
    iget v0, p0, Landroid/app/ActivityManager$StackInfo;->userId:I

    return v0
.end method

.method public static isRecentTaskDockable(Landroid/app/ActivityManager$RecentTaskInfo;)Z
    .locals 1
    .param p0, "recentTask"    # Landroid/app/ActivityManager$RecentTaskInfo;

    .prologue
    .line 110
    iget-boolean v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->isDockable:Z

    return v0
.end method

.method public static isRunningTaskDockable(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 1
    .param p0, "runningTask"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .prologue
    .line 106
    iget-boolean v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->isDockable:Z

    return v0
.end method

.method public static keyguardGoingAway(I)V
    .locals 1
    .param p0, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-static {}, Landroid/app/ActivityManagerCompat;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->keyguardGoingAway(I)V

    .line 38
    return-void
.end method

.method public static loadTaskDescriptionIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "iconFilename"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .prologue
    .line 88
    invoke-static {p0, p1}, Landroid/app/ActivityManager$TaskDescription;->loadTaskDescriptionIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static logoutCurrentUser()V
    .locals 0

    .prologue
    .line 64
    invoke-static {}, Landroid/app/ActivityManager;->logoutCurrentUser()V

    .line 63
    return-void
.end method

.method public static moveTaskToDockedStack(Landroid/app/IActivityManager;IIZZLandroid/graphics/Rect;Z)Z
    .locals 1
    .param p0, "mIam"    # Landroid/app/IActivityManager;
    .param p1, "taskId"    # I
    .param p2, "createMode"    # I
    .param p3, "onTop"    # Z
    .param p4, "animate"    # Z
    .param p5, "initialBounds"    # Landroid/graphics/Rect;
    .param p6, "moveHomeStackFront"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 120
    invoke-interface/range {p0 .. p6}, Landroid/app/IActivityManager;->moveTaskToDockedStack(IIZZLandroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public static registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    .locals 1
    .param p0, "observer"    # Landroid/app/IUserSwitchObserver;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 21
    invoke-static {}, Landroid/app/ActivityManagerCompat;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static setHasTopUi(Z)V
    .locals 1
    .param p0, "hasTopUi"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-static {}, Landroid/app/ActivityManagerCompat;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->setHasTopUi(Z)V

    .line 34
    return-void
.end method

.method public static setLockScreenShown(ZZ)V
    .locals 1
    .param p0, "showing"    # Z
    .param p1, "occluded"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-static {}, Landroid/app/ActivityManagerCompat;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/app/IActivityManager;->setLockScreenShown(ZZ)V

    .line 46
    return-void
.end method

.method public static startConfirmDeviceCredentialIntent(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-static {}, Landroid/app/ActivityManagerCompat;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->startConfirmDeviceCredentialIntent(Landroid/content/Intent;)V

    .line 30
    return-void
.end method

.method public static startInPlaceAnimationOnFrontMostApplication(Landroid/app/IActivityManager;Landroid/app/ActivityOptions;)V
    .locals 0
    .param p0, "mIam"    # Landroid/app/IActivityManager;
    .param p1, "opts"    # Landroid/app/ActivityOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 115
    invoke-interface {p0, p1}, Landroid/app/IActivityManager;->startInPlaceAnimationOnFrontMostApplication(Landroid/app/ActivityOptions;)V

    .line 114
    return-void
.end method

.method public static startSystemLockTaskMode(I)V
    .locals 1
    .param p0, "taskId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-static {}, Landroid/app/ActivityManagerCompat;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->startSystemLockTaskMode(I)V

    .line 54
    return-void
.end method

.method public static stopSystemLockTaskMode()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-static {}, Landroid/app/ActivityManagerCompat;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopSystemLockTaskMode()V

    .line 50
    return-void
.end method
