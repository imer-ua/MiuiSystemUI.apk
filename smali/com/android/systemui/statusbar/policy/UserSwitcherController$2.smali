.class Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;
.super Landroid/content/BroadcastReceiver;
.source "UserSwitcherController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/UserSwitcherController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .prologue
    .line 476
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private showLogoutNotification(I)V
    .locals 7
    .param p1, "userId"    # I

    .prologue
    const/4 v5, 0x0

    .line 562
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    .line 563
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.android.systemui.LOGOUT_USER"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroid/os/UserHandleCompat;->SYSTEM:Landroid/os/UserHandle;

    .line 562
    invoke-static {v2, v5, v3, v5, v4}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 565
    .local v1, "logoutPI":Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/systemui/util/NotificationChannels;->GENERAL:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/app/NotificationCompat;->newBuilder(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 566
    const/4 v3, -0x1

    .line 565
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 567
    const v3, 0x9020130

    .line 565
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 568
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    .line 569
    const v4, 0x91001bd

    .line 568
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 565
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 570
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    .line 571
    const v4, 0x91001be

    .line 570
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 565
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 573
    const/4 v3, 0x1

    .line 565
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 576
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    const v4, 0x91001bf

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 575
    const v4, 0x90200e2

    .line 565
    invoke-virtual {v2, v4, v3, v1}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 578
    .local v0, "builder":Landroid/app/Notification$Builder;
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/android/systemui/SystemUI;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;)V

    .line 579
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v2

    const-string/jumbo v3, "logout_user"

    .line 580
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, p1}, Landroid/os/UserHandle;-><init>(I)V

    const/16 v6, 0x3f3

    .line 579
    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 561
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 484
    const/4 v7, 0x0

    .line 485
    .local v7, "unpauseRefreshUsers":Z
    const/16 v3, -0x2710

    .line 487
    .local v3, "forcePictureLoadForId":I
    const-string/jumbo v10, "com.android.systemui.REMOVE_GUEST"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 488
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 489
    .local v2, "currentUser":I
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v10, v10, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v10, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v9

    .line 490
    .local v9, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 491
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v10, v2}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-wrap3(Lcom/android/systemui/statusbar/policy/UserSwitcherController;I)V

    .line 493
    :cond_0
    return-void

    .line 494
    .end local v2    # "currentUser":I
    .end local v9    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_1
    const-string/jumbo v10, "com.android.systemui.LOGOUT_USER"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 495
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->logoutCurrentUser()V

    .line 555
    :cond_2
    :goto_0
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v10, v3}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-wrap2(Lcom/android/systemui/statusbar/policy/UserSwitcherController;I)V

    .line 556
    if-eqz v7, :cond_3

    .line 557
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v10}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get5(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Ljava/lang/Runnable;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Runnable;->run()V

    .line 478
    :cond_3
    return-void

    .line 496
    :cond_4
    const-string/jumbo v10, "android.intent.action.USER_SWITCHED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 497
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v10}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get0(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/app/Dialog;

    move-result-object v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v10}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get0(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/app/Dialog;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Dialog;->isShowing()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 498
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v10}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get0(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/app/Dialog;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Dialog;->cancel()V

    .line 499
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-set1(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 502
    :cond_5
    const-string/jumbo v10, "android.intent.extra.user_handle"

    const/4 v11, -0x1

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 503
    .local v1, "currentId":I
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v10, v10, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v10, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v9

    .line 504
    .restart local v9    # "userInfo":Landroid/content/pm/UserInfo;
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v10}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get6(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 505
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_d

    .line 506
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v10}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get6(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    .line 507
    .local v5, "record":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    iget-object v10, v5, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    if-nez v10, :cond_7

    .line 505
    :cond_6
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 508
    :cond_7
    iget-object v10, v5, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    iget v10, v10, Landroid/content/pm/UserInfo;->id:I

    if-ne v10, v1, :cond_b

    const/4 v6, 0x1

    .line 509
    .local v6, "shouldBeCurrent":Z
    :goto_3
    iget-boolean v10, v5, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isCurrent:Z

    if-eq v10, v6, :cond_8

    .line 510
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v10}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get6(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->copyWithIsCurrent(Z)Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    move-result-object v11

    invoke-virtual {v10, v4, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 512
    :cond_8
    if-eqz v6, :cond_9

    iget-boolean v10, v5, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isGuest:Z

    if-eqz v10, :cond_c

    .line 515
    :cond_9
    :goto_4
    if-eqz v9, :cond_a

    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v10

    if-nez v10, :cond_6

    :cond_a
    iget-boolean v10, v5, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isRestricted:Z

    if-eqz v10, :cond_6

    .line 517
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v10}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get6(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 518
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 508
    .end local v6    # "shouldBeCurrent":Z
    :cond_b
    const/4 v6, 0x0

    .restart local v6    # "shouldBeCurrent":Z
    goto :goto_3

    .line 513
    :cond_c
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v11, v5, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    iget v11, v11, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v10, v11}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-set2(Lcom/android/systemui/statusbar/policy/UserSwitcherController;I)I

    goto :goto_4

    .line 521
    .end local v5    # "record":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    .end local v6    # "shouldBeCurrent":Z
    :cond_d
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v10}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-wrap1(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    .line 524
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v10}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get2(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)I

    move-result v10

    const/16 v11, -0x2710

    if-eq v10, v11, :cond_e

    .line 525
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v10}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get3(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/content/Intent;

    move-result-object v10

    .line 526
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v11}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get2(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)I

    move-result v11

    invoke-static {v11}, Landroid/os/UserHandleCompat;->of(I)Landroid/os/UserHandle;

    move-result-object v11

    .line 525
    invoke-virtual {p1, v10, v11}, Landroid/content/Context;->stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    .line 527
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    const/16 v11, -0x2710

    invoke-static {v10, v11}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-set4(Lcom/android/systemui/statusbar/policy/UserSwitcherController;I)I

    .line 531
    :cond_e
    if-eqz v9, :cond_f

    iget v10, v9, Landroid/content/pm/UserInfo;->id:I

    if-eqz v10, :cond_f

    .line 532
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v10}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get3(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/content/Intent;

    move-result-object v10

    .line 533
    iget v11, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v11}, Landroid/os/UserHandleCompat;->of(I)Landroid/os/UserHandle;

    move-result-object v11

    .line 532
    invoke-virtual {p1, v10, v11}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 534
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget v11, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v10, v11}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-set4(Lcom/android/systemui/statusbar/policy/UserSwitcherController;I)I

    .line 537
    :cond_f
    invoke-static {}, Landroid/os/UserManagerCompat;->isSplitSystemUser()Z

    move-result v10

    if-eqz v10, :cond_10

    if-eqz v9, :cond_10

    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v10

    if-eqz v10, :cond_12

    .line 541
    :cond_10
    :goto_5
    if-eqz v9, :cond_11

    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v10

    if-eqz v10, :cond_11

    .line 542
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v10, v1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-wrap4(Lcom/android/systemui/statusbar/policy/UserSwitcherController;I)V

    .line 544
    :cond_11
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 538
    :cond_12
    iget v10, v9, Landroid/content/pm/UserInfo;->id:I

    if-eqz v10, :cond_10

    .line 539
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->showLogoutNotification(I)V

    goto :goto_5

    .line 545
    .end local v0    # "N":I
    .end local v1    # "currentId":I
    .end local v4    # "i":I
    .end local v9    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_13
    const-string/jumbo v10, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 546
    const-string/jumbo v10, "android.intent.extra.user_handle"

    .line 547
    const/16 v11, -0x2710

    .line 546
    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    goto/16 :goto_0

    .line 548
    :cond_14
    const-string/jumbo v10, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 550
    const-string/jumbo v10, "android.intent.extra.user_handle"

    const/16 v11, -0x2710

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 551
    .local v8, "userId":I
    if-eqz v8, :cond_2

    .line 552
    return-void
.end method
