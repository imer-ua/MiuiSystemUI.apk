.class public Lcom/android/systemui/recents/views/RecentsTransitionHelper;
.super Ljava/lang/Object;
.source "RecentsTransitionHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;,
        Lcom/android/systemui/recents/views/RecentsTransitionHelper$StartScreenPinningRunnableRunnable;
    }
.end annotation


# static fields
.field private static final SPECS_WAITING:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/AppTransitionAnimationSpec;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAppTransitionAnimationSpecs:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/AppTransitionAnimationSpec;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mStartScreenPinningRunnable:Lcom/android/systemui/recents/views/RecentsTransitionHelper$StartScreenPinningRunnableRunnable;

.field private mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/views/RecentsTransitionHelper;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/recents/views/RecentsTransitionHelper;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/recents/views/RecentsTransitionHelper;)Lcom/android/systemui/recents/views/RecentsTransitionHelper$StartScreenPinningRunnableRunnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mStartScreenPinningRunnable:Lcom/android/systemui/recents/views/RecentsTransitionHelper$StartScreenPinningRunnableRunnable;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/recents/views/RecentsTransitionHelper;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskStackView;I)Ljava/util/List;
    .locals 1
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "stackView"    # Lcom/android/systemui/recents/views/TaskStackView;
    .param p3, "destinationStack"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->composeAnimationSpecs(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskStackView;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/recents/views/RecentsTransitionHelper;Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;Landroid/app/ActivityOptions;Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V
    .locals 0
    .param p1, "stack"    # Lcom/android/systemui/recents/model/TaskStack;
    .param p2, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p3, "taskView"    # Lcom/android/systemui/recents/views/TaskView;
    .param p4, "opts"    # Landroid/app/ActivityOptions;
    .param p5, "transitionFuture"    # Landroid/view/IAppTransitionAnimationSpecsFuture;
    .param p6, "animStartedListener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;

    .prologue
    invoke-direct/range {p0 .. p6}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->startTaskActivity(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;Landroid/app/ActivityOptions;Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->SPECS_WAITING:Ljava/util/List;

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    sget-object v0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->SPECS_WAITING:Ljava/util/List;

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mAppTransitionAnimationSpecs:Ljava/util/List;

    .line 81
    new-instance v0, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v0}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 93
    new-instance v0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$StartScreenPinningRunnableRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/recents/views/RecentsTransitionHelper$StartScreenPinningRunnableRunnable;-><init>(Lcom/android/systemui/recents/views/RecentsTransitionHelper;Lcom/android/systemui/recents/views/RecentsTransitionHelper$StartScreenPinningRunnableRunnable;)V

    .line 92
    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mStartScreenPinningRunnable:Lcom/android/systemui/recents/views/RecentsTransitionHelper$StartScreenPinningRunnableRunnable;

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mContext:Landroid/content/Context;

    .line 97
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mHandler:Landroid/os/Handler;

    .line 95
    return-void
.end method

.method private static composeAnimationSpec(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Z)Landroid/view/AppTransitionAnimationSpec;
    .locals 4
    .param p0, "stackView"    # Lcom/android/systemui/recents/views/TaskStackView;
    .param p1, "taskView"    # Lcom/android/systemui/recents/views/TaskView;
    .param p2, "transform"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p3, "addHeaderBitmap"    # Z

    .prologue
    const/4 v2, 0x0

    .line 401
    const/4 v0, 0x0

    .line 402
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz p3, :cond_0

    .line 403
    invoke-static {p1, p2}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->composeHeaderBitmap(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 404
    .local v0, "b":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 405
    return-object v2

    .line 409
    .end local v0    # "b":Landroid/graphics/Bitmap;
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 410
    .local v1, "taskRect":Landroid/graphics/Rect;
    iget-object v2, p2, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2, v1}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 411
    iget v2, v1, Landroid/graphics/Rect;->top:I

    sget v3, Lcom/android/systemui/recents/RecentsImpl;->mTaskBarHeight:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 416
    new-instance v2, Landroid/view/AppTransitionAnimationSpec;

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-direct {v2, v3, v0, v1}, Landroid/view/AppTransitionAnimationSpec;-><init>(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    return-object v2
.end method

.method private composeAnimationSpecs(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskStackView;I)Ljava/util/List;
    .locals 17
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "stackView"    # Lcom/android/systemui/recents/views/TaskStackView;
    .param p3, "destinationStack"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/recents/model/Task;",
            "Lcom/android/systemui/recents/views/TaskStackView;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/view/AppTransitionAnimationSpec;",
            ">;"
        }
    .end annotation

    .prologue
    .line 266
    const/4 v15, -0x1

    move/from16 v0, p3

    if-eq v0, v15, :cond_2

    move/from16 v9, p3

    .line 268
    .local v9, "targetStackId":I
    :goto_0
    const/4 v15, 0x2

    if-eq v9, v15, :cond_0

    .line 269
    const/4 v15, 0x1

    if-ne v9, v15, :cond_3

    .line 268
    :cond_0
    const/4 v14, 0x1

    .line 272
    .local v14, "useAnimationSpecForAppTransition":Z
    :goto_1
    invoke-static {}, Lcom/android/systemui/recents/misc/Utilities;->isAndroidNorNewer()Z

    move-result v15

    if-nez v15, :cond_1

    .line 273
    const/4 v15, 0x3

    if-ne v9, v15, :cond_5

    const/4 v15, 0x1

    :goto_2
    or-int/2addr v14, v15

    .line 276
    .end local v14    # "useAnimationSpecForAppTransition":Z
    :cond_1
    if-nez v14, :cond_6

    .line 277
    const/4 v15, 0x0

    return-object v15

    .line 267
    .end local v9    # "targetStackId":I
    :cond_2
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v9, v15, Lcom/android/systemui/recents/model/Task$TaskKey;->stackId:I

    goto :goto_0

    .line 269
    .restart local v9    # "targetStackId":I
    :cond_3
    const/4 v15, 0x3

    if-eq v9, v15, :cond_0

    .line 270
    const/4 v15, -0x1

    if-ne v9, v15, :cond_4

    const/4 v14, 0x1

    .restart local v14    # "useAnimationSpecForAppTransition":Z
    goto :goto_1

    .end local v14    # "useAnimationSpecForAppTransition":Z
    :cond_4
    const/4 v14, 0x0

    .restart local v14    # "useAnimationSpecForAppTransition":Z
    goto :goto_1

    .line 273
    :cond_5
    const/4 v15, 0x0

    goto :goto_2

    .line 281
    .end local v14    # "useAnimationSpecForAppTransition":Z
    :cond_6
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v11

    .line 282
    .local v11, "taskView":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v7

    .line 283
    .local v7, "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 284
    .local v3, "offscreenTaskRect":Landroid/graphics/Rect;
    invoke-virtual {v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getFrontOfStackTransform()Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v15

    iget-object v15, v15, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v15, v3}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 285
    iget v15, v3, Landroid/graphics/Rect;->top:I

    sget v16, Lcom/android/systemui/recents/RecentsImpl;->mTaskBarHeight:I

    add-int v15, v15, v16

    iput v15, v3, Landroid/graphics/Rect;->top:I

    .line 289
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 293
    .local v5, "specs":Ljava/util/List;, "Ljava/util/List<Landroid/view/AppTransitionAnimationSpec;>;"
    const/4 v15, 0x1

    if-eq v9, v15, :cond_7

    const/4 v15, 0x3

    if-ne v9, v15, :cond_9

    .line 296
    :cond_7
    if-nez v11, :cond_d

    .line 297
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->composeOffscreenAnimationSpec(Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;)Landroid/view/AppTransitionAnimationSpec;

    move-result-object v15

    invoke-interface {v5, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    :cond_8
    :goto_3
    return-object v5

    .line 294
    :cond_9
    const/4 v15, -0x1

    if-eq v9, v15, :cond_7

    .line 295
    invoke-static {}, Lcom/android/systemui/recents/misc/Utilities;->isAndroidNorNewer()Z

    move-result v15

    if-nez v15, :cond_a

    const/4 v15, 0x3

    if-eq v9, v15, :cond_7

    .line 313
    :cond_a
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v6

    .line 314
    .local v6, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v6}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v12

    .line 315
    .local v12, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 316
    .local v10, "taskCount":I
    add-int/lit8 v2, v10, -0x1

    .local v2, "i":I
    :goto_4
    if-ltz v2, :cond_f

    .line 317
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/recents/model/Task;

    .line 318
    .local v8, "t":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {v8}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v15

    if-nez v15, :cond_b

    const/4 v15, 0x2

    if-ne v9, v15, :cond_c

    .line 319
    :cond_b
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v13

    .line 320
    .local v13, "tv":Lcom/android/systemui/recents/views/TaskView;
    if-nez v13, :cond_e

    .line 323
    invoke-static {v8, v3}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->composeOffscreenAnimationSpec(Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;)Landroid/view/AppTransitionAnimationSpec;

    move-result-object v15

    invoke-interface {v5, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    .end local v13    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_c
    :goto_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 299
    .end local v2    # "i":I
    .end local v6    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v8    # "t":Lcom/android/systemui/recents/model/Task;
    .end local v10    # "taskCount":I
    .end local v12    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-virtual {v15, v11}, Lcom/android/systemui/recents/views/TaskViewTransform;->fillIn(Lcom/android/systemui/recents/views/TaskView;)V

    .line 300
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 301
    const/16 v16, 0x0

    .line 300
    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->transformToScreenCoordinates(Lcom/android/systemui/recents/views/TaskViewTransform;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 303
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/16 v16, 0x1

    .line 302
    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-static {v0, v11, v15, v1}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->composeAnimationSpec(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Z)Landroid/view/AppTransitionAnimationSpec;

    move-result-object v4

    .line 304
    .local v4, "spec":Landroid/view/AppTransitionAnimationSpec;
    if-eqz v4, :cond_8

    .line 305
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 325
    .end local v4    # "spec":Landroid/view/AppTransitionAnimationSpec;
    .restart local v2    # "i":I
    .restart local v6    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .restart local v8    # "t":Lcom/android/systemui/recents/model/Task;
    .restart local v10    # "taskCount":I
    .restart local v12    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    .restart local v13    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-virtual {v15, v11}, Lcom/android/systemui/recents/views/TaskViewTransform;->fillIn(Lcom/android/systemui/recents/views/TaskView;)V

    .line 326
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 327
    const/16 v16, 0x0

    .line 326
    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->transformToScreenCoordinates(Lcom/android/systemui/recents/views/TaskViewTransform;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 329
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/16 v16, 0x1

    .line 328
    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-static {v0, v13, v15, v1}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->composeAnimationSpec(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Z)Landroid/view/AppTransitionAnimationSpec;

    move-result-object v4

    .line 330
    .restart local v4    # "spec":Landroid/view/AppTransitionAnimationSpec;
    if-eqz v4, :cond_c

    .line 331
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 337
    .end local v4    # "spec":Landroid/view/AppTransitionAnimationSpec;
    .end local v8    # "t":Lcom/android/systemui/recents/model/Task;
    .end local v13    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_f
    return-object v5
.end method

.method private static composeHeaderBitmap(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "taskView"    # Lcom/android/systemui/recents/views/TaskView;
    .param p1, "transform"    # Lcom/android/systemui/recents/views/TaskViewTransform;

    .prologue
    const/4 v5, 0x0

    .line 377
    iget v3, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    .line 378
    .local v3, "scale":F
    iget-object v4, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    float-to-int v2, v4

    .line 379
    .local v2, "headerWidth":I
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v1, v4

    .line 380
    .local v1, "headerHeight":I
    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    .line 381
    :cond_0
    const/4 v4, 0x0

    return-object v4

    .line 384
    :cond_1
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 386
    .local v0, "b":Landroid/graphics/Bitmap;
    invoke-virtual {v0, v5}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 393
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->createAshmemBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    return-object v4
.end method

.method private static composeOffscreenAnimationSpec(Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;)Landroid/view/AppTransitionAnimationSpec;
    .locals 3
    .param p0, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p1, "taskRect"    # Landroid/graphics/Rect;

    .prologue
    .line 345
    new-instance v0, Landroid/view/AppTransitionAnimationSpec;

    iget-object v1, p0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p1}, Landroid/view/AppTransitionAnimationSpec;-><init>(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public static composeTaskBitmap(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "taskView"    # Lcom/android/systemui/recents/views/TaskView;
    .param p1, "transform"    # Lcom/android/systemui/recents/views/TaskViewTransform;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 349
    iget v3, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    .line 350
    .local v3, "scale":F
    iget-object v4, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    mul-float/2addr v4, v3

    float-to-int v2, v4

    .line 351
    .local v2, "fromWidth":I
    iget-object v4, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float/2addr v4, v3

    float-to-int v1, v4

    .line 352
    .local v1, "fromHeight":I
    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    .line 353
    :cond_0
    const-string/jumbo v4, "RecentsTransitionHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Could not compose thumbnail for task: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 354
    const-string/jumbo v6, " at transform: "

    .line 353
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v8, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 357
    .local v0, "b":Landroid/graphics/Bitmap;
    invoke-virtual {v0, v7}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 358
    return-object v0

    .line 361
    .end local v0    # "b":Landroid/graphics/Bitmap;
    :cond_1
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 360
    invoke-static {v2, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 364
    .restart local v0    # "b":Landroid/graphics/Bitmap;
    invoke-virtual {v0, v7}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 371
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->createAshmemBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    return-object v4
.end method

.method private startTaskActivity(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;Landroid/app/ActivityOptions;Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V
    .locals 6
    .param p1, "stack"    # Lcom/android/systemui/recents/model/TaskStack;
    .param p2, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p3, "taskView"    # Lcom/android/systemui/recents/views/TaskView;
    .param p4, "opts"    # Landroid/app/ActivityOptions;
    .param p5, "transitionFuture"    # Landroid/view/IAppTransitionAnimationSpecsFuture;
    .param p6, "animStartedListener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;

    .prologue
    .line 205
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 206
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mContext:Landroid/content/Context;

    iget-object v4, p2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v5, p2, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    invoke-virtual {v0, v3, v4, v5, p4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startActivityFromRecents(Landroid/content/Context;Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/String;Landroid/app/ActivityOptions;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 208
    const/4 v2, 0x0

    .line 209
    .local v2, "taskIndexFromFront":I
    invoke-virtual {p1, p2}, Lcom/android/systemui/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v1

    .line 210
    .local v1, "taskIndex":I
    const/4 v3, -0x1

    if-le v1, v3, :cond_0

    .line 211
    invoke-virtual {p1}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v3

    sub-int/2addr v3, v1

    add-int/lit8 v2, v3, -0x1

    .line 213
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/recents/events/activity/LaunchTaskSucceededEvent;

    invoke-direct {v4, v2}, Lcom/android/systemui/recents/events/activity/LaunchTaskSucceededEvent;-><init>(I)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    .line 224
    .end local v1    # "taskIndex":I
    .end local v2    # "taskIndexFromFront":I
    :goto_0
    if-eqz p5, :cond_1

    .line 226
    invoke-virtual {p0, p6}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->wrapStartedListener(Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/os/IRemoteCallback;

    move-result-object v3

    const/4 v4, 0x1

    .line 225
    invoke-virtual {v0, p5, v3, v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->overridePendingAppTransitionMultiThumbFuture(Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/os/IRemoteCallback;Z)V

    .line 204
    :cond_1
    return-void

    .line 216
    :cond_2
    if-eqz p3, :cond_3

    .line 217
    invoke-virtual {p3}, Lcom/android/systemui/recents/views/TaskView;->dismissTask()V

    .line 221
    :cond_3
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/recents/events/activity/LaunchTaskFailedEvent;

    invoke-direct {v4}, Lcom/android/systemui/recents/events/activity/LaunchTaskFailedEvent;-><init>()V

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    goto :goto_0
.end method


# virtual methods
.method public composeDockAnimationSpec(Lcom/android/systemui/recents/views/TaskView;Landroid/graphics/Rect;)Ljava/util/List;
    .locals 4
    .param p1, "taskView"    # Lcom/android/systemui/recents/views/TaskView;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/recents/views/TaskView;",
            "Landroid/graphics/Rect;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/AppTransitionAnimationSpec;",
            ">;"
        }
    .end annotation

    .prologue
    .line 253
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-virtual {v2, p1}, Lcom/android/systemui/recents/views/TaskViewTransform;->fillIn(Lcom/android/systemui/recents/views/TaskView;)V

    .line 254
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v0

    .line 255
    .local v0, "task":Lcom/android/systemui/recents/model/Task;
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-static {p1, v2}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->composeTaskBitmap(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 256
    .local v1, "thumbnail":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/view/AppTransitionAnimationSpec;

    iget-object v3, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-direct {v2, v3, v1, p2}, Landroid/view/AppTransitionAnimationSpec;-><init>(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public getAppTransitionFuture(Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;Landroid/os/Handler;)Landroid/view/IAppTransitionAnimationSpecsFuture;
    .locals 1
    .param p1, "composer"    # Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v0, 0x0

    .line 237
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 238
    :cond_0
    return-object v0

    .line 240
    :cond_1
    new-instance v0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$6;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/systemui/recents/views/RecentsTransitionHelper$6;-><init>(Lcom/android/systemui/recents/views/RecentsTransitionHelper;Landroid/os/Handler;Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;)V

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsTransitionHelper$6;->getFuture()Landroid/view/IAppTransitionAnimationSpecsFuture;

    move-result-object v0

    return-object v0
.end method

.method public launchTaskFromRecents(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskView;ZLandroid/graphics/Rect;I)V
    .locals 20
    .param p1, "stack"    # Lcom/android/systemui/recents/model/TaskStack;
    .param p2, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p3, "stackView"    # Lcom/android/systemui/recents/views/TaskStackView;
    .param p4, "taskView"    # Lcom/android/systemui/recents/views/TaskView;
    .param p5, "screenPinningRequested"    # Z
    .param p6, "bounds"    # Landroid/graphics/Rect;
    .param p7, "destinationStack"    # I

    .prologue
    .line 106
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v8

    .line 107
    .local v8, "opts":Landroid/app/ActivityOptions;
    if-eqz p6, :cond_1

    .line 108
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 p6, 0x0

    .end local p6    # "bounds":Landroid/graphics/Rect;
    :cond_0
    move-object/from16 v0, p6

    invoke-static {v8, v0}, Landroid/app/ActivityOptionsCompat;->setOptionsLaunchBounds(Landroid/app/ActivityOptions;Landroid/graphics/Rect;)V

    .line 113
    :cond_1
    if-eqz p4, :cond_2

    .line 114
    new-instance v4, Lcom/android/systemui/recents/views/RecentsTransitionHelper$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p7

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/android/systemui/recents/views/RecentsTransitionHelper$1;-><init>(Lcom/android/systemui/recents/views/RecentsTransitionHelper;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskStackView;I)V

    .line 119
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/recents/views/TaskStackView;->getHandler()Landroid/os/Handler;

    move-result-object v5

    .line 114
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->getAppTransitionFuture(Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;Landroid/os/Handler;)Landroid/view/IAppTransitionAnimationSpecsFuture;

    move-result-object v9

    .line 120
    .local v9, "transitionFuture":Landroid/view/IAppTransitionAnimationSpecsFuture;
    new-instance v10, Lcom/android/systemui/recents/views/RecentsTransitionHelper$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p5

    invoke-direct {v10, v0, v1, v2, v3}, Lcom/android/systemui/recents/views/RecentsTransitionHelper$2;-><init>(Lcom/android/systemui/recents/views/RecentsTransitionHelper;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskStackView;Z)V

    .line 151
    .end local v9    # "transitionFuture":Landroid/view/IAppTransitionAnimationSpecsFuture;
    .local v10, "animStartedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    :goto_0
    if-nez p4, :cond_3

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p4

    .line 154
    invoke-direct/range {v4 .. v10}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->startTaskActivity(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;Landroid/app/ActivityOptions;Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    .line 105
    :goto_1
    return-void

    .line 138
    .end local v10    # "animStartedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    :cond_2
    const/4 v9, 0x0

    .line 139
    .local v9, "transitionFuture":Landroid/view/IAppTransitionAnimationSpecsFuture;
    new-instance v10, Lcom/android/systemui/recents/views/RecentsTransitionHelper$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v10, v0, v1, v2}, Lcom/android/systemui/recents/views/RecentsTransitionHelper$3;-><init>(Lcom/android/systemui/recents/views/RecentsTransitionHelper;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskStackView;)V

    .restart local v10    # "animStartedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    goto :goto_0

    .line 156
    .end local v9    # "transitionFuture":Landroid/view/IAppTransitionAnimationSpecsFuture;
    :cond_3
    new-instance v19, Lcom/android/systemui/recents/events/activity/LaunchTaskStartedEvent;

    move-object/from16 v0, v19

    move-object/from16 v1, p4

    move/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/events/activity/LaunchTaskStartedEvent;-><init>(Lcom/android/systemui/recents/views/TaskView;Z)V

    .line 158
    .local v19, "launchStartedEvent":Lcom/android/systemui/recents/events/activity/LaunchTaskStartedEvent;
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    if-eqz v4, :cond_4

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/android/systemui/recents/model/TaskGrouping;->isFrontMostTask(Lcom/android/systemui/recents/model/Task;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 168
    :cond_4
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p4

    .line 169
    invoke-direct/range {v4 .. v10}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->startTaskActivity(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;Landroid/app/ActivityOptions;Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    goto :goto_1

    .line 159
    :cond_5
    new-instance v11, Lcom/android/systemui/recents/views/RecentsTransitionHelper$4;

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p4

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    invoke-direct/range {v11 .. v18}, Lcom/android/systemui/recents/views/RecentsTransitionHelper$4;-><init>(Lcom/android/systemui/recents/views/RecentsTransitionHelper;Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;Landroid/app/ActivityOptions;Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lcom/android/systemui/recents/events/activity/LaunchTaskStartedEvent;->addPostAnimationCallback(Ljava/lang/Runnable;)V

    .line 166
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    goto :goto_1
.end method

.method public wrapStartedListener(Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/os/IRemoteCallback;
    .locals 1
    .param p1, "listener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;

    .prologue
    const/4 v0, 0x0

    .line 180
    if-nez p1, :cond_0

    .line 181
    return-object v0

    .line 183
    :cond_0
    new-instance v0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$5;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/recents/views/RecentsTransitionHelper$5;-><init>(Lcom/android/systemui/recents/views/RecentsTransitionHelper;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    return-object v0
.end method
