.class public final Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;
.super Landroid/os/Handler;
.source "QSTileImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;


# direct methods
.method protected constructor <init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 433
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>.H;"
    .local p1, "this$0":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    .line 434
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 433
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>.H;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 439
    const/4 v3, 0x0

    .line 441
    .local v3, "name":Ljava/lang/String;
    :try_start_0
    iget v7, p1, Landroid/os/Message;->what:I

    if-ne v7, v5, :cond_1

    .line 442
    const-string/jumbo v3, "handleAddCallback"

    .line 443
    .local v3, "name":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/systemui/plugins/qs/QSTile$Callback;

    invoke-static {v6, v5}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->-wrap0(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Lcom/android/systemui/plugins/qs/QSTile$Callback;)V

    .line 438
    .end local v3    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 444
    .local v3, "name":Ljava/lang/String;
    :cond_1
    iget v7, p1, Landroid/os/Message;->what:I

    const/16 v8, 0xc

    if-ne v7, v8, :cond_2

    .line 445
    const-string/jumbo v3, "handleRemoveCallbacks"

    .line 446
    .local v3, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    invoke-static {v5}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->-wrap2(Lcom/android/systemui/qs/tileimpl/QSTileImpl;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 503
    .end local v3    # "name":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 504
    .local v4, "t":Ljava/lang/Throwable;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 505
    .local v0, "error":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object v5, v5, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    invoke-static {v5, v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 506
    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object v5, v5, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v5, v0, v4}, Lcom/android/systemui/qs/QSHost;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 447
    .end local v0    # "error":Ljava/lang/String;
    .end local v4    # "t":Ljava/lang/Throwable;
    .local v3, "name":Ljava/lang/String;
    :cond_2
    :try_start_1
    iget v7, p1, Landroid/os/Message;->what:I

    const/16 v8, 0xd

    if-ne v7, v8, :cond_3

    .line 448
    const-string/jumbo v3, "handleRemoveCallback"

    .line 449
    .local v3, "name":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/systemui/plugins/qs/QSTile$Callback;

    invoke-static {v6, v5}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->-wrap1(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Lcom/android/systemui/plugins/qs/QSTile$Callback;)V

    goto :goto_0

    .line 450
    .local v3, "name":Ljava/lang/String;
    :cond_3
    iget v7, p1, Landroid/os/Message;->what:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_6

    .line 451
    const-string/jumbo v3, "handleClick"

    .line 452
    .local v3, "name":Ljava/lang/String;
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v5, v5, Ljava/lang/Boolean;

    if-eqz v5, :cond_4

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 453
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object v5, v5, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-boolean v5, v5, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    if-eqz v5, :cond_5

    .line 455
    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object v5, v5, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    invoke-static {v6}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->-get0(Lcom/android/systemui/qs/tileimpl/QSTileImpl;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v6

    .line 454
    invoke-static {v5, v6}, Lcom/android/settingslib/RestrictedLockUtils;->getShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroid/content/Intent;

    move-result-object v2

    .line 456
    .local v2, "intent":Landroid/content/Intent;
    const-class v5, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/plugins/ActivityStarter;

    .line 457
    const/4 v6, 0x0

    .line 456
    invoke-interface {v5, v2, v6}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    goto :goto_0

    .line 452
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_4
    const/4 v1, 0x0

    .local v1, "inCustomizer":Z
    goto :goto_1

    .line 459
    .end local v1    # "inCustomizer":Z
    :cond_5
    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    invoke-virtual {v5}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v5

    iget v5, v5, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-eqz v5, :cond_0

    .line 460
    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    invoke-virtual {v5}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleClick()V

    .line 461
    if-nez v1, :cond_0

    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object v5, v5, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v5}, Lcom/android/systemui/qs/QSHost;->collapseAfterClick()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 462
    const-string/jumbo v5, "edit"

    iget-object v6, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    invoke-virtual {v6}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getTileSpec()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "autobrightness"

    iget-object v6, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    invoke-virtual {v6}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getTileSpec()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 463
    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object v5, v5, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v5}, Lcom/android/systemui/qs/QSHost;->collapsePanels()V

    goto/16 :goto_0

    .line 467
    .local v3, "name":Ljava/lang/String;
    :cond_6
    iget v7, p1, Landroid/os/Message;->what:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_7

    .line 468
    const-string/jumbo v3, "handleSecondaryClick"

    .line 469
    .local v3, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    invoke-virtual {v5}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleSecondaryClick()V

    goto/16 :goto_0

    .line 470
    .local v3, "name":Ljava/lang/String;
    :cond_7
    iget v7, p1, Landroid/os/Message;->what:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_8

    .line 471
    const-string/jumbo v3, "handleLongClick"

    .line 472
    .local v3, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    invoke-virtual {v5}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleLongClick()V

    goto/16 :goto_0

    .line 473
    .local v3, "name":Ljava/lang/String;
    :cond_8
    iget v7, p1, Landroid/os/Message;->what:I

    const/4 v8, 0x5

    if-ne v7, v8, :cond_9

    .line 474
    const-string/jumbo v3, "handleRefreshState"

    .line 475
    .local v3, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleRefreshState(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 476
    .local v3, "name":Ljava/lang/String;
    :cond_9
    iget v7, p1, Landroid/os/Message;->what:I

    const/4 v8, 0x6

    if-ne v7, v8, :cond_b

    .line 477
    const-string/jumbo v3, "handleShowDetail"

    .line 478
    .local v3, "name":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget v8, p1, Landroid/os/Message;->arg1:I

    if-eqz v8, :cond_a

    :goto_2
    invoke-static {v7, v5}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->-wrap5(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Z)V

    goto/16 :goto_0

    :cond_a
    move v5, v6

    goto :goto_2

    .line 479
    .local v3, "name":Ljava/lang/String;
    :cond_b
    iget v7, p1, Landroid/os/Message;->what:I

    const/16 v8, 0xf

    if-ne v7, v8, :cond_d

    .line 480
    const-string/jumbo v3, "handleShowEdit"

    .line 481
    .local v3, "name":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget v8, p1, Landroid/os/Message;->arg1:I

    if-eqz v8, :cond_c

    :goto_3
    invoke-static {v7, v5}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->-wrap6(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Z)V

    goto/16 :goto_0

    :cond_c
    move v5, v6

    goto :goto_3

    .line 482
    .local v3, "name":Ljava/lang/String;
    :cond_d
    iget v7, p1, Landroid/os/Message;->what:I

    const/4 v8, 0x7

    if-ne v7, v8, :cond_e

    .line 483
    const-string/jumbo v3, "handleUserSwitch"

    .line 484
    .local v3, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleUserSwitch(I)V

    goto/16 :goto_0

    .line 485
    .local v3, "name":Ljava/lang/String;
    :cond_e
    iget v7, p1, Landroid/os/Message;->what:I

    const/16 v8, 0x8

    if-ne v7, v8, :cond_10

    .line 486
    const-string/jumbo v3, "handleToggleStateChanged"

    .line 487
    .local v3, "name":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget v8, p1, Landroid/os/Message;->arg1:I

    if-eqz v8, :cond_f

    :goto_4
    invoke-static {v7, v5}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->-wrap7(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Z)V

    goto/16 :goto_0

    :cond_f
    move v5, v6

    goto :goto_4

    .line 488
    .local v3, "name":Ljava/lang/String;
    :cond_10
    iget v7, p1, Landroid/os/Message;->what:I

    const/16 v8, 0x9

    if-ne v7, v8, :cond_12

    .line 489
    const-string/jumbo v3, "handleScanStateChanged"

    .line 490
    .local v3, "name":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget v8, p1, Landroid/os/Message;->arg1:I

    if-eqz v8, :cond_11

    :goto_5
    invoke-static {v7, v5}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->-wrap3(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Z)V

    goto/16 :goto_0

    :cond_11
    move v5, v6

    goto :goto_5

    .line 491
    .local v3, "name":Ljava/lang/String;
    :cond_12
    iget v7, p1, Landroid/os/Message;->what:I

    const/16 v8, 0xa

    if-ne v7, v8, :cond_13

    .line 492
    const-string/jumbo v3, "handleDestroy"

    .line 493
    .local v3, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    invoke-virtual {v5}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    goto/16 :goto_0

    .line 494
    .local v3, "name":Ljava/lang/String;
    :cond_13
    iget v7, p1, Landroid/os/Message;->what:I

    const/16 v8, 0xb

    if-ne v7, v8, :cond_14

    .line 495
    const-string/jumbo v3, "handleClearState"

    .line 496
    .local v3, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    invoke-virtual {v5}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleClearState()V

    goto/16 :goto_0

    .line 497
    .local v3, "name":Ljava/lang/String;
    :cond_14
    iget v7, p1, Landroid/os/Message;->what:I

    const/16 v8, 0xe

    if-ne v7, v8, :cond_16

    .line 498
    const-string/jumbo v3, "handleSetListeningInternal"

    .line 499
    .local v3, "name":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget v9, p1, Landroid/os/Message;->arg1:I

    if-eqz v9, :cond_15

    :goto_6
    invoke-static {v7, v8, v5}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->-wrap4(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Ljava/lang/Object;Z)V

    goto/16 :goto_0

    :cond_15
    move v5, v6

    goto :goto_6

    .line 501
    .local v3, "name":Ljava/lang/String;
    :cond_16
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unknown msg: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
.end method
