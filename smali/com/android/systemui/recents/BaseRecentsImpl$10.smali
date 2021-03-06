.class Lcom/android/systemui/recents/BaseRecentsImpl$10;
.super Lcom/miui/internal/transition/IMiuiGestureControlHelper$Stub;
.source "BaseRecentsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/BaseRecentsImpl;->registerMiuiGestureControlHelper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/BaseRecentsImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/BaseRecentsImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/BaseRecentsImpl;

    .prologue
    .line 321
    iput-object p1, p0, Lcom/android/systemui/recents/BaseRecentsImpl$10;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-direct {p0}, Lcom/miui/internal/transition/IMiuiGestureControlHelper$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpec(Ljava/lang/String;I)Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 325
    new-instance v0, Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public notifyGestureAnimationCancel()V
    .locals 5

    .prologue
    const/16 v4, 0x67

    .line 371
    const-string/jumbo v2, "RecentsImpl"

    const-string/jumbo v3, "notifyGestureAnimationCancel"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    const/16 v1, 0x67

    .line 374
    .local v1, "what":I
    iget-object v2, p0, Lcom/android/systemui/recents/BaseRecentsImpl$10;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    iget-object v2, v2, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 375
    iget-object v2, p0, Lcom/android/systemui/recents/BaseRecentsImpl$10;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    iget-object v2, v2, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 376
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/systemui/recents/BaseRecentsImpl$10;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    iget-object v2, v2, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 370
    return-void
.end method

.method public notifyGestureAnimationEnd()V
    .locals 6

    .prologue
    const/16 v4, 0x66

    .line 381
    const-string/jumbo v2, "RecentsImpl"

    const-string/jumbo v3, "notifyGestureAnimationEnd"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const/16 v1, 0x66

    .line 383
    .local v1, "what":I
    iget-object v2, p0, Lcom/android/systemui/recents/BaseRecentsImpl$10;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    iget-object v2, v2, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 384
    iget-object v2, p0, Lcom/android/systemui/recents/BaseRecentsImpl$10;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    iget-object v2, v2, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 385
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/systemui/recents/BaseRecentsImpl$10;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    iget-object v2, v2, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 380
    return-void
.end method

.method public notifyGestureAnimationStart()V
    .locals 11

    .prologue
    const/16 v10, 0x6b

    const/16 v9, 0x69

    const/16 v8, 0x68

    .line 349
    const-string/jumbo v6, "RecentsImpl"

    const-string/jumbo v7, "notifyGestureAnimationStart"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v6, p0, Lcom/android/systemui/recents/BaseRecentsImpl$10;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    iget-object v6, v6, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 351
    iget-object v6, p0, Lcom/android/systemui/recents/BaseRecentsImpl$10;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    iget-object v6, v6, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 352
    .local v2, "delayMsg":Landroid/os/Message;
    const-wide/16 v0, 0x11f

    .line 354
    .local v0, "delay":J
    :try_start_0
    iget-object v6, p0, Lcom/android/systemui/recents/BaseRecentsImpl$10;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v6}, Lcom/android/systemui/recents/BaseRecentsImpl;->-get5(Lcom/android/systemui/recents/BaseRecentsImpl;)Landroid/view/IWindowManager;

    move-result-object v6

    const/4 v7, 0x2

    invoke-interface {v6, v7}, Landroid/view/IWindowManager;->getAnimationScale(I)F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    const/high16 v7, 0x43960000    # 300.0f

    mul-float/2addr v6, v7

    const/high16 v7, 0x41880000    # 17.0f

    sub-float/2addr v6, v7

    float-to-long v0, v6

    .line 358
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/recents/BaseRecentsImpl$10;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    iget-object v6, v6, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 360
    iget-object v6, p0, Lcom/android/systemui/recents/BaseRecentsImpl$10;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    iget-object v6, v6, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 361
    iget-object v6, p0, Lcom/android/systemui/recents/BaseRecentsImpl$10;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    iget-object v6, v6, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 362
    .local v4, "msg":Landroid/os/Message;
    iget-object v6, p0, Lcom/android/systemui/recents/BaseRecentsImpl$10;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    iget-object v6, v6, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 364
    iget-object v6, p0, Lcom/android/systemui/recents/BaseRecentsImpl$10;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    iget-object v6, v6, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 365
    iget-object v6, p0, Lcom/android/systemui/recents/BaseRecentsImpl$10;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    iget-object v6, v6, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 366
    .local v5, "removeZoomViewMsg":Landroid/os/Message;
    iget-object v6, p0, Lcom/android/systemui/recents/BaseRecentsImpl$10;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    iget-object v6, v6, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x1f4

    invoke-virtual {v6, v5, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 347
    return-void

    .line 355
    .end local v4    # "msg":Landroid/os/Message;
    .end local v5    # "removeZoomViewMsg":Landroid/os/Message;
    :catch_0
    move-exception v3

    .line 356
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public notifyGestureStartRecents()V
    .locals 9

    .prologue
    const/16 v8, 0x6a

    const/16 v7, 0x65

    const/16 v6, 0x64

    .line 331
    const-string/jumbo v4, "RecentsImpl"

    const-string/jumbo v5, "notifyGestureStartRecents"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const/16 v3, 0x64

    .line 333
    .local v3, "what":I
    iget-object v4, p0, Lcom/android/systemui/recents/BaseRecentsImpl$10;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    iget-object v4, v4, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 334
    iget-object v4, p0, Lcom/android/systemui/recents/BaseRecentsImpl$10;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    iget-object v4, v4, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 335
    .local v1, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/systemui/recents/BaseRecentsImpl$10;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    iget-object v4, v4, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 337
    iget-object v4, p0, Lcom/android/systemui/recents/BaseRecentsImpl$10;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    iget-object v4, v4, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 338
    iget-object v4, p0, Lcom/android/systemui/recents/BaseRecentsImpl$10;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    iget-object v4, v4, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 339
    .local v0, "animationMsg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/systemui/recents/BaseRecentsImpl$10;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    iget-object v4, v4, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 341
    iget-object v4, p0, Lcom/android/systemui/recents/BaseRecentsImpl$10;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    iget-object v4, v4, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 342
    iget-object v4, p0, Lcom/android/systemui/recents/BaseRecentsImpl$10;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    iget-object v4, v4, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 343
    .local v2, "removeAnimationMsg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/systemui/recents/BaseRecentsImpl$10;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    iget-object v4, v4, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 329
    return-void
.end method
