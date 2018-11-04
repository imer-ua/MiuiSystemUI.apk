.class public Lcom/android/systemui/statusbar/CommandQueue;
.super Lcom/android/systemui/statusbar/CompatibilityCommandQueue;
.source "CommandQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/CommandQueue$Callbacks;,
        Lcom/android/systemui/statusbar/CommandQueue$CommandQueueStart;,
        Lcom/android/systemui/statusbar/CommandQueue$H;
    }
.end annotation


# instance fields
.field private mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/CommandQueue$Callbacks;",
            ">;"
        }
    .end annotation
.end field

.field private mDisable1:I

.field private mDisable2:I

.field private mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/CommandQueue;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method protected constructor <init>()V
    .locals 3
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/android/systemui/statusbar/CompatibilityCommandQueue;-><init>()V

    .line 109
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 111
    new-instance v0, Lcom/android/systemui/statusbar/CommandQueue$H;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/statusbar/CommandQueue$H;-><init>(Lcom/android/systemui/statusbar/CommandQueue;Landroid/os/Looper;Lcom/android/systemui/statusbar/CommandQueue$H;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    .line 174
    return-void
.end method


# virtual methods
.method public addCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V
    .locals 3
    .param p1, "callbacks"    # Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    iget v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mDisable1:I

    iget v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mDisable2:I

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->disable(IIZ)V

    .line 177
    return-void
.end method

.method public addQsTile(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "tile"    # Landroid/content/ComponentName;

    .prologue
    .line 462
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 463
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x1b0000

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 461
    return-void

    .line 462
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public animateCollapsePanels()V
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/CommandQueue;->animateCollapsePanels(I)V

    .line 240
    return-void
.end method

.method public animateCollapsePanels(I)V
    .locals 4
    .param p1, "flags"    # I

    .prologue
    .line 245
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x40000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 247
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x40000

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 244
    return-void

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public animateExpandNotificationsPanel()V
    .locals 3

    .prologue
    .line 234
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x30000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 236
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x30000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 233
    return-void

    .line 234
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public animateExpandSettingsPanel(Ljava/lang/String;)V
    .locals 3
    .param p1, "subPanel"    # Ljava/lang/String;

    .prologue
    .line 263
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 264
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x50000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 265
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x50000

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 262
    return-void

    .line 263
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public appTransitionCancelled()V
    .locals 3

    .prologue
    .line 418
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 419
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x140000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 417
    return-void

    .line 418
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public appTransitionFinished()V
    .locals 3

    .prologue
    .line 435
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 436
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x1f0000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 434
    return-void

    .line 435
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public appTransitionPending()V
    .locals 1

    .prologue
    .line 408
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/CommandQueue;->appTransitionPending(Z)V

    .line 407
    return-void
.end method

.method public appTransitionPending(Z)V
    .locals 5
    .param p1, "forced"    # Z

    .prologue
    const/4 v0, 0x0

    .line 412
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 413
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    const/high16 v3, 0x130000

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 411
    return-void

    .line 412
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public appTransitionStarting(JJ)V
    .locals 7
    .param p1, "startTime"    # J
    .param p3, "duration"    # J

    .prologue
    .line 424
    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/CommandQueue;->appTransitionStarting(JJZ)V

    .line 423
    return-void
.end method

.method public appTransitionStarting(JJZ)V
    .locals 7
    .param p1, "startTime"    # J
    .param p3, "duration"    # J
    .param p5, "forced"    # Z

    .prologue
    const/4 v0, 0x0

    .line 428
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 429
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    if-eqz p5, :cond_0

    const/4 v0, 0x1

    .line 430
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    .line 429
    const/high16 v4, 0x150000

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v0, v5, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 427
    return-void

    .line 428
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public buzzBeepBlinked()V
    .locals 0

    .prologue
    .line 570
    return-void
.end method

.method public cancelPreloadRecentApps()V
    .locals 6

    .prologue
    .line 352
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 353
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0xb0000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 354
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0xb0000

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 351
    return-void

    .line 352
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public clickQsTile(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "tile"    # Landroid/content/ComponentName;

    .prologue
    .line 474
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 475
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x1d0000

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 473
    return-void

    .line 474
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public disable(II)V
    .locals 1
    .param p1, "state1"    # I
    .param p2, "state2"    # I

    .prologue
    .line 210
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/CommandQueue;->disable(IIZ)V

    .line 209
    return-void
.end method

.method public disable(IIZ)V
    .locals 5
    .param p1, "state1"    # I
    .param p2, "state2"    # I
    .param p3, "animate"    # Z

    .prologue
    .line 214
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 215
    :try_start_0
    iput p1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mDisable1:I

    .line 216
    iput p2, p0, Lcom/android/systemui/statusbar/CommandQueue;->mDisable2:I

    .line 217
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v3, 0x20000

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 218
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/high16 v4, 0x20000

    invoke-virtual {v1, v4, p1, p2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 219
    .local v0, "msg":Landroid/os/Message;
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v1, v3, :cond_0

    .line 221
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 222
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    .line 213
    return-void

    .line 224
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 214
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public dismissKeyboardShortcutsMenu()V
    .locals 3

    .prologue
    .line 359
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 360
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x200000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 361
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x200000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 358
    return-void

    .line 359
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public handleSystemNavigationKey(I)V
    .locals 4
    .param p1, "key"    # I

    .prologue
    .line 486
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 487
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x630000

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 485
    return-void

    .line 486
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public hideRecentApps(ZZ)V
    .locals 6
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHomeKey"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 320
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 321
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v4, 0xe0000

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 322
    iget-object v4, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    .line 323
    if-eqz p1, :cond_0

    move v2, v0

    :goto_0
    if-eqz p2, :cond_1

    .line 322
    :goto_1
    const/high16 v1, 0xe0000

    .line 324
    const/4 v5, 0x0

    .line 322
    invoke-virtual {v4, v1, v2, v0, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 319
    return-void

    :cond_0
    move v2, v1

    .line 323
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 320
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public notificationLightOff()V
    .locals 0

    .prologue
    .line 573
    return-void
.end method

.method public notificationLightPulse(III)V
    .locals 0
    .param p1, "argb"    # I
    .param p2, "onMillis"    # I
    .param p3, "offMillis"    # I

    .prologue
    .line 576
    return-void
.end method

.method public onCameraLaunchGestureDetected(I)V
    .locals 4
    .param p1, "source"    # I

    .prologue
    .line 455
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 456
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x180000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 457
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x180000

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 454
    return-void

    .line 455
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public preloadRecentApps()V
    .locals 6

    .prologue
    .line 345
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 346
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0xa0000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 347
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0xa0000

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 344
    return-void

    .line 345
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public recomputeDisableFlags(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 230
    iget v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mDisable1:I

    iget v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mDisable2:I

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/systemui/statusbar/CommandQueue;->disable(IIZ)V

    .line 229
    return-void
.end method

.method public remQsTile(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "tile"    # Landroid/content/ComponentName;

    .prologue
    .line 468
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 469
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x1c0000

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 467
    return-void

    .line 468
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public removeCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V
    .locals 1
    .param p1, "callbacks"    # Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 182
    return-void
.end method

.method public removeIcon(Ljava/lang/String;)V
    .locals 5
    .param p1, "slot"    # Ljava/lang/String;

    .prologue
    .line 203
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 205
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x10000

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 202
    return-void

    .line 203
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 6
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .prologue
    .line 191
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    .line 194
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 193
    const/high16 v3, 0x10000

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 190
    return-void

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setImeWindowStatus(Landroid/os/IBinder;IIZ)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "vis"    # I
    .param p3, "backDisposition"    # I
    .param p4, "showImeSwitcher"    # Z

    .prologue
    .line 299
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 300
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v3, 0x80000

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 301
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v3, 0x80000

    invoke-virtual {v1, v3, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 302
    .local v0, "m":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v3, "showImeSwitcherKey"

    invoke-virtual {v1, v3, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 303
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 298
    return-void

    .line 299
    .end local v0    # "m":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setStatus(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "what"    # I
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "ext"    # Landroid/os/Bundle;

    .prologue
    .line 380
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 381
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 382
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v1, "what"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 383
    const-string/jumbo v1, "action"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    const-string/jumbo v1, "ext"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 385
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v3, 0x640000

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 379
    return-void

    .line 380
    .end local v0    # "b":Landroid/os/Bundle;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setSystemUiVisibility(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "vis"    # I
    .param p2, "fullscreenStackVis"    # I
    .param p3, "dockedStackVis"    # I
    .param p4, "mask"    # I
    .param p5, "fullscreenStackBounds"    # Landroid/graphics/Rect;
    .param p6, "dockedStackBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 275
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 278
    :try_start_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 279
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 280
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 281
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 282
    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi4:I

    .line 283
    iput-object p5, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 284
    iput-object p6, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 285
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v3, 0x60000

    invoke-virtual {v1, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 274
    return-void

    .line 275
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setWindowState(II)V
    .locals 4
    .param p1, "window"    # I
    .param p2, "state"    # I

    .prologue
    .line 390
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 392
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0xc0000

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, p2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 389
    return-void

    .line 390
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public showAssistDisclosure()V
    .locals 3

    .prologue
    .line 441
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 442
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x160000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 443
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x160000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 440
    return-void

    .line 441
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public showRecentApps(ZZ)V
    .locals 6
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "fromHome"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 312
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 313
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v4, 0xd0000

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 314
    iget-object v4, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    .line 315
    if-eqz p1, :cond_0

    move v2, v0

    :goto_0
    if-eqz p2, :cond_1

    .line 314
    :goto_1
    const/high16 v1, 0xd0000

    .line 315
    const/4 v5, 0x0

    .line 314
    invoke-virtual {v4, v1, v2, v0, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 311
    return-void

    :cond_0
    move v2, v1

    .line 315
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 312
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public showScreenPinningRequest(I)V
    .locals 5
    .param p1, "taskId"    # I

    .prologue
    .line 401
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 402
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x120000

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, p1, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 400
    return-void

    .line 401
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public showTvPictureInPictureMenu()V
    .locals 0

    .prologue
    .line 579
    return-void
.end method

.method public startAssist(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 448
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 449
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x170000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 450
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x170000

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 447
    return-void

    .line 448
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public toggleKeyboardShortcutsMenu(I)V
    .locals 4
    .param p1, "deviceId"    # I

    .prologue
    .line 366
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 367
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x190000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 368
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x190000

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 365
    return-void

    .line 366
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public toggleRecentApps()V
    .locals 7

    .prologue
    .line 336
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 337
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v3, 0x90000

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 338
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v3, 0x90000

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 339
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 340
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 335
    return-void

    .line 336
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public toggleSplitScreen()V
    .locals 6

    .prologue
    .line 329
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 330
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x1e0000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 331
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x1e0000

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 328
    return-void

    .line 329
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public topAppWindowChanged(Z)V
    .locals 6
    .param p1, "menuVisible"    # Z

    .prologue
    const/4 v0, 0x0

    .line 290
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 291
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v3, 0x70000

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 292
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    const/high16 v3, 0x70000

    const/4 v4, 0x0

    .line 293
    const/4 v5, 0x0

    .line 292
    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 289
    return-void

    .line 290
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
