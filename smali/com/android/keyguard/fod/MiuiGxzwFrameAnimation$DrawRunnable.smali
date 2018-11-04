.class Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;
.super Ljava/lang/Object;
.source "MiuiGxzwFrameAnimation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrawRunnable"
.end annotation


# instance fields
.field private final mAnimRes:[I

.field private final mBackgroundFrame:I

.field private final mBackgroundRes:I

.field private volatile mCurrentPosition:I

.field private final mCustomerDrawBitmap:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$CustomerDrawBitmap;

.field private mDrawing:Z

.field private final mFrameAnimationListener:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$FrameAnimationListener;

.field final synthetic this$0:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;)Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$FrameAnimationListener;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mFrameAnimationListener:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$FrameAnimationListener;

    return-object v0
.end method

.method private constructor <init>(Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;[IIIILcom/android/keyguard/fod/MiuiGxzwFrameAnimation$FrameAnimationListener;Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$CustomerDrawBitmap;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;
    .param p2, "animRes"    # [I
    .param p3, "startPosition"    # I
    .param p4, "backgroundRes"    # I
    .param p5, "backgroundFrame"    # I
    .param p6, "l"    # Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$FrameAnimationListener;
    .param p7, "customerDrawBitmap"    # Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$CustomerDrawBitmap;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;->this$0:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mDrawing:Z

    .line 286
    iput-object p2, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mAnimRes:[I

    .line 287
    array-length v0, p2

    rem-int v0, p3, v0

    iput v0, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mCurrentPosition:I

    .line 288
    iput p4, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mBackgroundRes:I

    .line 289
    iput p5, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mBackgroundFrame:I

    .line 290
    iput-object p6, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mFrameAnimationListener:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$FrameAnimationListener;

    .line 291
    iput-object p7, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mCustomerDrawBitmap:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$CustomerDrawBitmap;

    .line 285
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;[IIIILcom/android/keyguard/fod/MiuiGxzwFrameAnimation$FrameAnimationListener;Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$CustomerDrawBitmap;Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;
    .param p2, "animRes"    # [I
    .param p3, "startPosition"    # I
    .param p4, "backgroundRes"    # I
    .param p5, "backgroundFrame"    # I
    .param p6, "l"    # Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$FrameAnimationListener;
    .param p7, "customerDrawBitmap"    # Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$CustomerDrawBitmap;

    .prologue
    invoke-direct/range {p0 .. p7}, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;-><init>(Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;[IIIILcom/android/keyguard/fod/MiuiGxzwFrameAnimation$FrameAnimationListener;Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$CustomerDrawBitmap;)V

    return-void
.end method

.method private notifyFinish()V
    .locals 2

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mFrameAnimationListener:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$FrameAnimationListener;

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;->this$0:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;

    invoke-static {v0}, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->-get2(Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable$3;-><init>(Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 392
    :cond_0
    return-void
.end method

.method private notifyInterrupt()V
    .locals 2

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mFrameAnimationListener:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$FrameAnimationListener;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;->this$0:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;

    invoke-static {v0}, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->-get2(Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable$2;-><init>(Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 381
    :cond_0
    return-void
.end method

.method private notifyStart()V
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mFrameAnimationListener:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$FrameAnimationListener;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;->this$0:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;

    invoke-static {v0}, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->-get2(Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable$1;-><init>(Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 370
    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 303
    iget v0, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mCurrentPosition:I

    return v0
.end method

.method public declared-synchronized getDrawing()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 299
    :try_start_0
    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mDrawing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 14

    .prologue
    .line 314
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;->setDrawing(Z)V

    .line 315
    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;->notifyStart()V

    .line 316
    iget-object v10, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mAnimRes:[I

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mAnimRes:[I

    array-length v10, v10

    if-nez v10, :cond_1

    .line 317
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;->notifyFinish()V

    .line 318
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;->setDrawing(Z)V

    .line 319
    return-void

    .line 322
    :cond_1
    const/4 v4, 0x1

    .line 323
    .local v4, "interrupt":Z
    iget-object v10, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;->this$0:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;

    invoke-static {v10}, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->-get4(Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;)Ljava/util/Queue;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Queue;->clear()V

    .line 324
    iget v10, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mBackgroundRes:I

    if-nez v10, :cond_4

    const/4 v0, 0x0

    .line 325
    :goto_0
    const/4 v2, 0x0

    .line 326
    .local v2, "count":I
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;->getDrawing()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 327
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 328
    .local v6, "now":J
    iget-object v10, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mAnimRes:[I

    iget v11, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mCurrentPosition:I

    aget v5, v10, v11

    .line 329
    .local v5, "res":I
    if-nez v5, :cond_5

    .line 330
    iget-object v10, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;->this$0:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;

    invoke-static {v10}, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->-wrap1(Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;)V

    .line 341
    :goto_2
    iget v10, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mCurrentPosition:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mCurrentPosition:I

    .line 342
    add-int/lit8 v2, v2, 0x1

    .line 343
    iget v10, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mCurrentPosition:I

    iget-object v11, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mAnimRes:[I

    array-length v11, v11

    if-ne v10, v11, :cond_a

    .line 344
    iget-object v10, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;->this$0:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;

    invoke-static {v10}, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->-get3(Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_9

    .line 345
    const/4 v4, 0x0

    .line 346
    iget-object v10, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;->this$0:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;

    invoke-static {v10}, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->-get4(Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;)Ljava/util/Queue;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Queue;->clear()V

    .line 362
    .end local v5    # "res":I
    .end local v6    # "now":J
    :cond_3
    :goto_3
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;->setDrawing(Z)V

    .line 363
    if-eqz v4, :cond_b

    .line 364
    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;->notifyInterrupt()V

    .line 313
    :goto_4
    return-void

    .line 324
    .end local v2    # "count":I
    :cond_4
    iget-object v10, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;->this$0:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;

    iget v11, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mBackgroundRes:I

    invoke-static {v10, v11}, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->-wrap0(Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "background":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 332
    .end local v0    # "background":Landroid/graphics/Bitmap;
    .restart local v2    # "count":I
    .restart local v5    # "res":I
    .restart local v6    # "now":J
    :cond_5
    iget-object v10, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;->this$0:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;

    invoke-static {v10, v5}, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->-wrap0(Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 333
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-nez v1, :cond_6

    .line 334
    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;->stopDraw()V

    goto :goto_3

    .line 337
    :cond_6
    iget-object v11, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;->this$0:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;

    iget v10, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mBackgroundFrame:I

    if-lt v2, v10, :cond_7

    iget v10, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mBackgroundFrame:I

    if-gtz v10, :cond_8

    :cond_7
    move-object v10, v0

    .line 338
    :goto_5
    const/high16 v12, 0x3f800000    # 1.0f

    iget-object v13, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mCustomerDrawBitmap:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$CustomerDrawBitmap;

    .line 337
    invoke-static {v11, v1, v10, v12, v13}, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->-wrap2(Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;FLcom/android/keyguard/fod/MiuiGxzwFrameAnimation$CustomerDrawBitmap;)V

    .line 339
    iget-object v10, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;->this$0:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;

    invoke-static {v10}, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->-get4(Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;)Ljava/util/Queue;

    move-result-object v10

    invoke-interface {v10, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_2

    .line 337
    :cond_8
    const/4 v10, 0x0

    goto :goto_5

    .line 348
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_9
    iget-object v10, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;->this$0:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;

    invoke-static {v10}, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->-get3(Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;)I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_a

    .line 349
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mCurrentPosition:I

    .line 354
    :cond_a
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v8, v10, v6

    .line 355
    .local v8, "spend":J
    iget-object v10, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;->this$0:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;

    invoke-static {v10}, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->-get1(Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;)I

    move-result v10

    int-to-long v10, v10

    sub-long/2addr v10, v8

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_2

    .line 356
    iget-object v10, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;->this$0:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;

    invoke-static {v10}, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->-get1(Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;)I

    move-result v10

    int-to-long v10, v10

    sub-long/2addr v10, v8

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 358
    .end local v8    # "spend":J
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/InterruptedException;
    goto/16 :goto_1

    .line 366
    .end local v3    # "e":Ljava/lang/InterruptedException;
    .end local v5    # "res":I
    .end local v6    # "now":J
    :cond_b
    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;->notifyFinish()V

    goto :goto_4
.end method

.method public declared-synchronized setDrawing(Z)V
    .locals 1
    .param p1, "d"    # Z

    .prologue
    monitor-enter p0

    .line 295
    :try_start_0
    iput-boolean p1, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mDrawing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 294
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopDraw()V
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;->setDrawing(Z)V

    .line 308
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;->this$0:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;

    invoke-static {v0}, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->-get0(Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->interrupt()V

    .line 309
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;->this$0:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;

    invoke-static {v0}, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->-get4(Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 306
    return-void
.end method
