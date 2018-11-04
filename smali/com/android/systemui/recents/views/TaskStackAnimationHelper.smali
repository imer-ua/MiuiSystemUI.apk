.class public Lcom/android/systemui/recents/views/TaskStackAnimationHelper;
.super Ljava/lang/Object;
.source "TaskStackAnimationHelper.java"


# static fields
.field private static final DISMISS_ALL_TRANSLATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final ENTER_FROM_HOME_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final ENTER_FROM_HOME_TRANSLATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final ENTER_WHILE_DOCKING_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final EXIT_TO_HOME_TRANSLATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final FOCUS_BEHIND_NEXT_TASK_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final FOCUS_IN_FRONT_NEXT_TASK_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final FOCUS_NEXT_TASK_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private mStackView:Lcom/android/systemui/recents/views/TaskStackView;

.field private mTmpCurrentTaskTransforms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/views/TaskViewTransform;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpFinalTaskTransforms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/views/TaskViewTransform;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;


# direct methods
.method static synthetic -get0()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->FOCUS_BEHIND_NEXT_TASK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/recents/views/TaskStackAnimationHelper;)Lcom/android/systemui/recents/views/TaskStackView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 88
    new-instance v0, Lmiui/view/animation/QuinticEaseOutInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/QuinticEaseOutInterpolator;-><init>()V

    .line 87
    sput-object v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->ENTER_FROM_HOME_TRANSLATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 89
    sget-object v0, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    sput-object v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->ENTER_FROM_HOME_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 93
    new-instance v0, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    .line 92
    sput-object v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->EXIT_TO_HOME_TRANSLATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 98
    sget-object v0, Lcom/android/systemui/Interpolators;->EASE_IN_OUT:Landroid/view/animation/Interpolator;

    .line 97
    sput-object v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->DISMISS_ALL_TRANSLATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 101
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v1, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 100
    sput-object v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->FOCUS_NEXT_TASK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 103
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 102
    sput-object v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->FOCUS_IN_FRONT_NEXT_TASK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 105
    sget-object v0, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 104
    sput-object v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->FOCUS_BEHIND_NEXT_TASK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 108
    sget-object v0, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 107
    sput-object v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->ENTER_WHILE_DOCKING_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/recents/views/TaskStackView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "stackView"    # Lcom/android/systemui/recents/views/TaskStackView;

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v0}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpCurrentTaskTransforms:Ljava/util/ArrayList;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpFinalTaskTransforms:Ljava/util/ArrayList;

    .line 117
    iput-object p2, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    .line 116
    return-void
.end method

.method private calculateStaggeredAnimDuration(I)I
    .locals 2
    .param p1, "i"    # I

    .prologue
    const/16 v1, 0x64

    .line 666
    add-int/lit8 v0, p1, -0x1

    mul-int/lit8 v0, v0, 0x32

    add-int/lit8 v0, v0, 0x64

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public prepareForEnterAnimation()V
    .locals 27

    .prologue
    .line 125
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v6

    .line 126
    .local v6, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    invoke-virtual {v6}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v11

    .line 127
    .local v11, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/systemui/recents/views/TaskStackView;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 128
    .local v16, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/systemui/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 130
    .local v5, "appResources":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v18

    .line 131
    .local v18, "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v19

    .line 132
    .local v19, "stackScroller":Lcom/android/systemui/recents/views/TaskStackViewScroller;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v17

    .line 133
    .local v17, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/recents/model/TaskStack;->getLaunchTarget()Lcom/android/systemui/recents/model/Task;

    move-result-object v12

    .line 136
    .local v12, "launchTargetTask":Lcom/android/systemui/recents/model/Task;
    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v24

    if-nez v24, :cond_0

    .line 137
    return-void

    .line 140
    :cond_0
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Rect;->height()I

    move-result v14

    .line 142
    .local v14, "offscreenYOffset":I
    const v24, 0x90f01ee

    .line 141
    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    .line 144
    .local v21, "taskViewAffiliateGroupEnterOffset":I
    const v24, 0x90f01ef

    .line 143
    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 145
    .local v13, "launchedWhileDockingOffset":I
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v24, v0

    .line 146
    const/16 v25, 0x2

    .line 145
    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2

    const/4 v10, 0x1

    .line 149
    .local v10, "isLandscape":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v22

    .line 150
    .local v22, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v24

    add-int/lit8 v9, v24, -0x1

    .local v9, "i":I
    :goto_1
    if-ltz v9, :cond_c

    .line 151
    move-object/from16 v0, v22

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/systemui/recents/views/TaskView;

    .line 152
    .local v23, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual/range {v23 .. v23}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v20

    .line 153
    .local v20, "task":Lcom/android/systemui/recents/model/Task;
    if-eqz v12, :cond_3

    .line 154
    iget-object v0, v12, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    move-object/from16 v24, v0

    if-eqz v24, :cond_3

    .line 155
    iget-object v0, v12, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v12}, Lcom/android/systemui/recents/model/TaskGrouping;->isTaskAboveTask(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/model/Task;)Z

    move-result v7

    .line 156
    :goto_2
    if-eqz v12, :cond_4

    .line 157
    invoke-virtual {v12}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v24

    .line 156
    if-eqz v24, :cond_4

    .line 158
    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v8

    .line 161
    :goto_3
    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v25, v0

    .line 162
    const/16 v26, 0x0

    .line 161
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, v24

    move-object/from16 v3, v25

    move-object/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 164
    if-eqz v8, :cond_5

    .line 165
    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/android/systemui/recents/views/TaskView;->setVisibility(I)V

    .line 150
    :cond_1
    :goto_4
    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    .line 145
    .end local v9    # "i":I
    .end local v10    # "isLandscape":Z
    .end local v20    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v22    # "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    .end local v23    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_2
    const/4 v10, 0x0

    .restart local v10    # "isLandscape":Z
    goto :goto_0

    .line 153
    .restart local v9    # "i":I
    .restart local v20    # "task":Lcom/android/systemui/recents/model/Task;
    .restart local v22    # "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    .restart local v23    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_3
    const/4 v7, 0x0

    .local v7, "currentTaskOccludesLaunchTarget":Z
    goto :goto_2

    .line 156
    .end local v7    # "currentTaskOccludesLaunchTarget":Z
    :cond_4
    const/4 v8, 0x0

    .local v8, "hideTask":Z
    goto :goto_3

    .line 166
    .end local v8    # "hideTask":Z
    :cond_5
    iget-boolean v0, v11, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaFsGesture:Z

    move/from16 v24, v0

    if-eqz v24, :cond_6

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v25, v0

    sget-object v26, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    goto :goto_4

    .line 168
    :cond_6
    iget-boolean v0, v11, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    move/from16 v24, v0

    if-eqz v24, :cond_7

    iget-boolean v0, v11, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    move/from16 v24, v0

    if-eqz v24, :cond_8

    .line 179
    :cond_7
    iget-boolean v0, v11, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    move/from16 v24, v0

    if-eqz v24, :cond_a

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    int-to-float v0, v14

    move/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Landroid/graphics/RectF;->offset(FF)V

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v25, v0

    sget-object v26, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    goto :goto_4

    .line 169
    :cond_8
    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/systemui/recents/model/Task;->isLaunchTarget:Z

    move/from16 v24, v0

    if-eqz v24, :cond_9

    .line 170
    invoke-virtual/range {v23 .. v23}, Lcom/android/systemui/recents/views/TaskView;->onPrepareLaunchTargetForEnterAnimation()V

    goto/16 :goto_4

    .line 171
    :cond_9
    if-eqz v7, :cond_1

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Landroid/graphics/RectF;->offset(FF)V

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v25, v0

    .line 176
    sget-object v26, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    .line 175
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    .line 177
    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    goto/16 :goto_4

    .line 184
    :cond_a
    iget-boolean v0, v11, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    move/from16 v24, v0

    if-eqz v24, :cond_1

    .line 185
    if-eqz v10, :cond_b

    .line 186
    move v15, v13

    .line 188
    .local v15, "offset":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    int-to-float v0, v15

    move/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Landroid/graphics/RectF;->offset(FF)V

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v25, v0

    sget-object v26, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    goto/16 :goto_4

    .line 187
    .end local v15    # "offset":I
    :cond_b
    int-to-float v0, v14

    move/from16 v24, v0

    const v25, 0x3f666666    # 0.9f

    mul-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v15, v0

    .restart local v15    # "offset":I
    goto :goto_5

    .line 124
    .end local v15    # "offset":I
    .end local v20    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v23    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_c
    return-void
.end method

.method public startDeleteAllTasksAnimation(Ljava/util/List;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V
    .locals 10
    .param p2, "postAnimationTrigger"    # Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/recents/views/TaskView;",
            ">;",
            "Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 435
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 436
    .local v3, "taskViewCount":I
    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 437
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/views/TaskView;

    .line 438
    .local v4, "tv":Lcom/android/systemui/recents/views/TaskView;
    mul-int/lit8 v1, v0, 0x32

    .line 441
    .local v1, "startDelay":I
    invoke-virtual {v4, v9}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 443
    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/Task;->isProtected()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 436
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 447
    :cond_0
    new-instance v2, Lcom/android/systemui/recents/views/AnimationProps;

    .line 448
    sget-object v5, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->DISMISS_ALL_TRANSLATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 449
    new-instance v6, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$6;

    invoke-direct {v6, p0, p2, v4}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$6;-><init>(Lcom/android/systemui/recents/views/TaskStackAnimationHelper;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;Lcom/android/systemui/recents/views/TaskView;)V

    .line 448
    const/16 v7, 0x96

    .line 447
    invoke-direct {v2, v1, v7, v5, v6}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(IILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    .line 458
    .local v2, "taskAnimation":Lcom/android/systemui/recents/views/AnimationProps;
    invoke-virtual {p2}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 460
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-virtual {v5, v4}, Lcom/android/systemui/recents/views/TaskViewTransform;->fillIn(Lcom/android/systemui/recents/views/TaskView;)V

    .line 461
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-object v5, v5, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_1

    .line 462
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-object v5, v5, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskView;->getRight()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v5, v6, v8}, Landroid/graphics/RectF;->offset(FF)V

    .line 466
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-virtual {v5, v4, v6, v2}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    goto :goto_1

    .line 464
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-object v5, v5, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackView;->getWidth()I

    move-result v6

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskView;->getLeft()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v5, v6, v8}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_2

    .line 434
    .end local v1    # "startDelay":I
    .end local v2    # "taskAnimation":Lcom/android/systemui/recents/views/AnimationProps;
    .end local v4    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_2
    return-void
.end method

.method public startDeleteTaskAnimation(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V
    .locals 6
    .param p1, "deleteTaskView"    # Lcom/android/systemui/recents/views/TaskView;
    .param p2, "postAnimationTrigger"    # Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    .prologue
    .line 399
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->getTouchHandler()Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    move-result-object v2

    .line 400
    .local v2, "touchHandler":Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;
    invoke-virtual {v2, p1}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->onBeginManualDrag(Lcom/android/systemui/recents/views/TaskView;)V

    .line 402
    invoke-virtual {p2}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 403
    new-instance v3, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$3;

    invoke-direct {v3, p0, v2, p1}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$3;-><init>(Lcom/android/systemui/recents/views/TaskStackAnimationHelper;Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;Lcom/android/systemui/recents/views/TaskView;)V

    invoke-virtual {p2, v3}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->addLastDecrementRunnable(Ljava/lang/Runnable;)V

    .line 410
    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->getScaledDismissSize()F

    move-result v1

    .line 411
    .local v1, "dismissSize":F
    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 412
    .local v0, "animator":Landroid/animation/ValueAnimator;
    const-wide/16 v4, 0x190

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 413
    new-instance v3, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$4;

    invoke-direct {v3, p0, p1, v1, v2}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$4;-><init>(Lcom/android/systemui/recents/views/TaskStackAnimationHelper;Lcom/android/systemui/recents/views/TaskView;FLcom/android/systemui/recents/views/TaskStackViewTouchHandler;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 421
    new-instance v3, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$5;

    invoke-direct {v3, p0, p2}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$5;-><init>(Lcom/android/systemui/recents/views/TaskStackAnimationHelper;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 427
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 398
    return-void

    .line 411
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public startEnterAnimation(Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V
    .locals 28
    .param p1, "postAnimationTrigger"    # Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    .prologue
    .line 200
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v6

    .line 201
    .local v6, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    invoke-virtual {v6}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v10

    .line 202
    .local v10, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/systemui/recents/views/TaskStackView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 203
    .local v12, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/systemui/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 205
    .local v5, "appRes":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v14

    .line 206
    .local v14, "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v15

    .line 207
    .local v15, "stackScroller":Lcom/android/systemui/recents/views/TaskStackViewScroller;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v13

    .line 208
    .local v13, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v13}, Lcom/android/systemui/recents/model/TaskStack;->getLaunchTarget()Lcom/android/systemui/recents/model/Task;

    move-result-object v11

    .line 211
    .local v11, "launchTargetTask":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {v13}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v25

    if-nez v25, :cond_0

    .line 212
    return-void

    .line 216
    :cond_0
    const v25, 0x90e0020

    .line 215
    move/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v22

    .line 218
    .local v22, "taskViewEnterFromAppDuration":I
    const v25, 0x90e0021

    .line 217
    move/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v21

    .line 220
    .local v21, "taskViewEnterFromAffiliatedAppDuration":I
    const v25, 0x90e0029

    .line 219
    move/from16 v0, v25

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .line 223
    .local v8, "dockGestureAnimDuration":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v23

    .line 224
    .local v23, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v20

    .line 225
    .local v20, "taskViewCount":I
    add-int/lit8 v9, v20, -0x1

    .local v9, "i":I
    :goto_0
    if-ltz v9, :cond_7

    .line 226
    sub-int v25, v20, v9

    add-int/lit8 v19, v25, -0x1

    .line 227
    .local v19, "taskIndexFromFront":I
    move/from16 v18, v9

    .line 228
    .local v18, "taskIndexFromBack":I
    move-object/from16 v0, v23

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/systemui/recents/views/TaskView;

    .line 229
    .local v24, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual/range {v24 .. v24}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v16

    .line 230
    .local v16, "task":Lcom/android/systemui/recents/model/Task;
    if-eqz v11, :cond_3

    .line 231
    iget-object v0, v11, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    move-object/from16 v25, v0

    if-eqz v25, :cond_3

    .line 232
    iget-object v0, v11, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v11}, Lcom/android/systemui/recents/model/TaskGrouping;->isTaskAboveTask(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/model/Task;)Z

    move-result v7

    .line 236
    :goto_1
    invoke-virtual {v15}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v26, v0

    .line 237
    const/16 v27, 0x0

    .line 236
    move-object/from16 v0, v16

    move/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v14, v0, v1, v2, v3}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 239
    iget-boolean v0, v10, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    move/from16 v25, v0

    if-eqz v25, :cond_1

    iget-boolean v0, v10, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    move/from16 v25, v0

    if-eqz v25, :cond_4

    .line 261
    :cond_1
    iget-boolean v0, v10, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    move/from16 v25, v0

    if-eqz v25, :cond_6

    .line 264
    new-instance v25, Lcom/android/systemui/recents/views/AnimationProps;

    invoke-direct/range {v25 .. v25}, Lcom/android/systemui/recents/views/AnimationProps;-><init>()V

    .line 266
    const/16 v26, 0x5

    move/from16 v0, v26

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v26

    mul-int/lit8 v26, v26, 0x10

    .line 265
    const/16 v27, 0x4

    .line 264
    move-object/from16 v0, v25

    move/from16 v1, v27

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/views/AnimationProps;->setStartDelay(II)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v25

    .line 268
    const/16 v26, 0x6

    const/16 v27, 0x12c

    .line 264
    invoke-virtual/range {v25 .. v27}, Lcom/android/systemui/recents/views/AnimationProps;->setDuration(II)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v25

    .line 269
    const/16 v26, 0x4

    const/16 v27, 0x64

    .line 264
    invoke-virtual/range {v25 .. v27}, Lcom/android/systemui/recents/views/AnimationProps;->setDuration(II)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v25

    .line 271
    sget-object v26, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->ENTER_FROM_HOME_TRANSLATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 270
    const/16 v27, 0x6

    .line 264
    move-object/from16 v0, v25

    move/from16 v1, v27

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/views/AnimationProps;->setInterpolator(ILandroid/view/animation/Interpolator;)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v25

    .line 272
    sget-object v26, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->ENTER_FROM_HOME_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const/16 v27, 0x4

    .line 264
    move-object/from16 v0, v25

    move/from16 v1, v27

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/views/AnimationProps;->setInterpolator(ILandroid/view/animation/Interpolator;)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v25

    .line 273
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrementOnAnimationEnd()Landroid/animation/Animator$AnimatorListener;

    move-result-object v26

    .line 264
    invoke-virtual/range {v25 .. v26}, Lcom/android/systemui/recents/views/AnimationProps;->setListener(Landroid/animation/Animator$AnimatorListener;)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v17

    .line 274
    .local v17, "taskAnimation":Lcom/android/systemui/recents/views/AnimationProps;
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    move-object/from16 v2, v26

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    .line 276
    add-int/lit8 v25, v20, -0x1

    move/from16 v0, v25

    if-ne v9, v0, :cond_2

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/android/systemui/recents/views/TaskStackView;->mScreenPinningEnabled:Z

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/android/systemui/recents/views/TaskView;->onStartFrontTaskEnterAnimation(Z)V

    .line 225
    .end local v17    # "taskAnimation":Lcom/android/systemui/recents/views/AnimationProps;
    :cond_2
    :goto_2
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_0

    .line 230
    :cond_3
    const/4 v7, 0x0

    .local v7, "currentTaskOccludesLaunchTarget":Z
    goto/16 :goto_1

    .line 240
    .end local v7    # "currentTaskOccludesLaunchTarget":Z
    :cond_4
    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/systemui/recents/model/Task;->isLaunchTarget:Z

    move/from16 v25, v0

    if-eqz v25, :cond_5

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v25, v0

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/systemui/recents/views/TaskStackView;->mScreenPinningEnabled:Z

    move/from16 v26, v0

    .line 241
    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v22

    move/from16 v3, v26

    move-object/from16 v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/recents/views/TaskView;->onStartLaunchTargetEnterAnimation(Lcom/android/systemui/recents/views/TaskViewTransform;IZLcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    goto :goto_2

    .line 246
    :cond_5
    if-eqz v7, :cond_2

    .line 247
    new-instance v17, Lcom/android/systemui/recents/views/AnimationProps;

    .line 248
    sget-object v25, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 249
    new-instance v26, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$1;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$1;-><init>(Lcom/android/systemui/recents/views/TaskStackAnimationHelper;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;Lcom/android/systemui/recents/views/TaskView;)V

    .line 247
    move-object/from16 v0, v17

    move/from16 v1, v21

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    .line 256
    .restart local v17    # "taskAnimation":Lcom/android/systemui/recents/views/AnimationProps;
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    move-object/from16 v2, v26

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    goto :goto_2

    .line 279
    .end local v17    # "taskAnimation":Lcom/android/systemui/recents/views/AnimationProps;
    :cond_6
    iget-boolean v0, v10, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    move/from16 v25, v0

    if-eqz v25, :cond_2

    .line 281
    new-instance v25, Lcom/android/systemui/recents/views/AnimationProps;

    invoke-direct/range {v25 .. v25}, Lcom/android/systemui/recents/views/AnimationProps;-><init>()V

    .line 283
    mul-int/lit8 v26, v18, 0x32

    .line 282
    add-int v26, v26, v8

    const/16 v27, 0x6

    .line 281
    move-object/from16 v0, v25

    move/from16 v1, v27

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/views/AnimationProps;->setDuration(II)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v25

    .line 285
    sget-object v26, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->ENTER_WHILE_DOCKING_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 284
    const/16 v27, 0x6

    .line 281
    move-object/from16 v0, v25

    move/from16 v1, v27

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/views/AnimationProps;->setInterpolator(ILandroid/view/animation/Interpolator;)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v25

    .line 286
    const/16 v26, 0x6

    const/16 v27, 0x30

    .line 281
    invoke-virtual/range {v25 .. v27}, Lcom/android/systemui/recents/views/AnimationProps;->setStartDelay(II)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v25

    .line 287
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrementOnAnimationEnd()Landroid/animation/Animator$AnimatorListener;

    move-result-object v26

    .line 281
    invoke-virtual/range {v25 .. v26}, Lcom/android/systemui/recents/views/AnimationProps;->setListener(Landroid/animation/Animator$AnimatorListener;)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v17

    .line 288
    .restart local v17    # "taskAnimation":Lcom/android/systemui/recents/views/AnimationProps;
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    move-object/from16 v2, v26

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    goto/16 :goto_2

    .line 199
    .end local v16    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v17    # "taskAnimation":Lcom/android/systemui/recents/views/AnimationProps;
    .end local v18    # "taskIndexFromBack":I
    .end local v19    # "taskIndexFromFront":I
    .end local v24    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_7
    return-void
.end method

.method public startExitToHomeAnimation(ZLcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V
    .locals 14
    .param p1, "animated"    # Z
    .param p2, "postAnimationTrigger"    # Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    .prologue
    .line 299
    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v11}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v4

    .line 300
    .local v4, "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v11}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v3

    .line 303
    .local v3, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v3}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v11

    if-nez v11, :cond_0

    .line 304
    return-void

    .line 307
    :cond_0
    iget-object v11, v4, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 310
    .local v2, "offscreenY":I
    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v11}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v9

    .line 311
    .local v9, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v8

    .line 312
    .local v8, "taskViewCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v8, :cond_3

    .line 313
    move v7, v1

    .line 314
    .local v7, "taskIndexFromFront":I
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/recents/views/TaskView;

    .line 315
    .local v10, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v10}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v5

    .line 317
    .local v5, "task":Lcom/android/systemui/recents/model/Task;
    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v11, v5}, Lcom/android/systemui/recents/views/TaskStackView;->isIgnoredTask(Lcom/android/systemui/recents/model/Task;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 312
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 323
    :cond_1
    if-eqz p1, :cond_2

    .line 324
    const/4 v11, 0x5

    invoke-static {v11, v7}, Ljava/lang/Math;->min(II)I

    move-result v11

    mul-int/lit8 v0, v11, 0x32

    .line 326
    .local v0, "delay":I
    new-instance v11, Lcom/android/systemui/recents/views/AnimationProps;

    invoke-direct {v11}, Lcom/android/systemui/recents/views/AnimationProps;-><init>()V

    .line 328
    const/4 v12, 0x6

    const/16 v13, 0x15e

    .line 326
    invoke-virtual {v11, v12, v13}, Lcom/android/systemui/recents/views/AnimationProps;->setDuration(II)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v11

    .line 330
    sget-object v12, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->EXIT_TO_HOME_TRANSLATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 329
    const/4 v13, 0x6

    .line 326
    invoke-virtual {v11, v13, v12}, Lcom/android/systemui/recents/views/AnimationProps;->setInterpolator(ILandroid/view/animation/Interpolator;)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v11

    .line 331
    const/4 v12, 0x4

    const/16 v13, 0x15e

    .line 326
    invoke-virtual {v11, v12, v13}, Lcom/android/systemui/recents/views/AnimationProps;->setDuration(II)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v11

    .line 332
    sget-object v12, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->EXIT_TO_HOME_TRANSLATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const/4 v13, 0x4

    .line 326
    invoke-virtual {v11, v13, v12}, Lcom/android/systemui/recents/views/AnimationProps;->setInterpolator(ILandroid/view/animation/Interpolator;)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v11

    .line 333
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrementOnAnimationEnd()Landroid/animation/Animator$AnimatorListener;

    move-result-object v12

    .line 326
    invoke-virtual {v11, v12}, Lcom/android/systemui/recents/views/AnimationProps;->setListener(Landroid/animation/Animator$AnimatorListener;)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v6

    .line 334
    .local v6, "taskAnimation":Lcom/android/systemui/recents/views/AnimationProps;
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 339
    .end local v0    # "delay":I
    :goto_2
    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-virtual {v11, v10}, Lcom/android/systemui/recents/views/TaskViewTransform;->fillIn(Lcom/android/systemui/recents/views/TaskView;)V

    .line 341
    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/4 v12, 0x0

    iput v12, v11, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    .line 342
    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v12, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-virtual {v11, v10, v12, v6}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    goto :goto_1

    .line 336
    .end local v6    # "taskAnimation":Lcom/android/systemui/recents/views/AnimationProps;
    :cond_2
    sget-object v6, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    .restart local v6    # "taskAnimation":Lcom/android/systemui/recents/views/AnimationProps;
    goto :goto_2

    .line 298
    .end local v5    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v6    # "taskAnimation":Lcom/android/systemui/recents/views/AnimationProps;
    .end local v7    # "taskIndexFromFront":I
    .end local v10    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_3
    return-void
.end method

.method public startLaunchTaskAnimation(Lcom/android/systemui/recents/views/TaskView;ZLcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V
    .locals 16
    .param p1, "launchingTaskView"    # Lcom/android/systemui/recents/views/TaskView;
    .param p2, "screenPinningRequested"    # Z
    .param p3, "postAnimationTrigger"    # Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    .prologue
    .line 352
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v13}, Lcom/android/systemui/recents/views/TaskStackView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 355
    .local v5, "res":Landroid/content/res/Resources;
    const v13, 0x90e0022

    .line 354
    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    .line 357
    .local v10, "taskViewExitToAppDuration":I
    const v13, 0x90f01ee

    .line 356
    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 359
    .local v8, "taskViewAffiliateGroupEnterOffset":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v4

    .line 360
    .local v4, "launchingTask":Lcom/android/systemui/recents/model/Task;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v13}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v11

    .line 361
    .local v11, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v9

    .line 362
    .local v9, "taskViewCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v9, :cond_3

    .line 363
    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/recents/views/TaskView;

    .line 364
    .local v12, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v12}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v6

    .line 365
    .local v6, "task":Lcom/android/systemui/recents/model/Task;
    if-eqz v4, :cond_1

    .line 366
    iget-object v13, v4, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    if-eqz v13, :cond_1

    .line 367
    iget-object v13, v4, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    invoke-virtual {v13, v6, v4}, Lcom/android/systemui/recents/model/TaskGrouping;->isTaskAboveTask(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/model/Task;)Z

    move-result v2

    .line 369
    :goto_1
    move-object/from16 v0, p1

    if-ne v12, v0, :cond_2

    .line 370
    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 371
    new-instance v13, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v12}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$2;-><init>(Lcom/android/systemui/recents/views/TaskStackAnimationHelper;Lcom/android/systemui/recents/views/TaskView;)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->addLastDecrementRunnable(Ljava/lang/Runnable;)V

    .line 377
    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v12, v10, v0, v1}, Lcom/android/systemui/recents/views/TaskView;->onStartLaunchTargetLaunchAnimation(IZLcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    .line 362
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 365
    :cond_1
    const/4 v2, 0x0

    .local v2, "currentTaskOccludesLaunchTarget":Z
    goto :goto_1

    .line 379
    .end local v2    # "currentTaskOccludesLaunchTarget":Z
    :cond_2
    if-eqz v2, :cond_0

    .line 381
    new-instance v7, Lcom/android/systemui/recents/views/AnimationProps;

    .line 382
    sget-object v13, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 383
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrementOnAnimationEnd()Landroid/animation/Animator$AnimatorListener;

    move-result-object v14

    .line 381
    invoke-direct {v7, v10, v13, v14}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    .line 384
    .local v7, "taskAnimation":Lcom/android/systemui/recents/views/AnimationProps;
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 386
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-virtual {v13, v12}, Lcom/android/systemui/recents/views/TaskViewTransform;->fillIn(Lcom/android/systemui/recents/views/TaskView;)V

    .line 387
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/4 v14, 0x0

    iput v14, v13, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    .line 388
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-object v13, v13, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    const/4 v14, 0x0

    int-to-float v15, v8

    invoke-virtual {v13, v14, v15}, Landroid/graphics/RectF;->offset(FF)V

    .line 389
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-virtual {v13, v12, v14, v7}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    goto :goto_2

    .line 351
    .end local v6    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v7    # "taskAnimation":Lcom/android/systemui/recents/views/AnimationProps;
    .end local v12    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_3
    return-void
.end method

.method public startNewStackScrollAnimation(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V
    .locals 24
    .param p1, "newStack"    # Lcom/android/systemui/recents/model/TaskStack;
    .param p2, "animationTrigger"    # Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    .prologue
    .line 578
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v16

    .line 579
    .local v16, "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v17

    .line 582
    .local v17, "stackScroller":Lcom/android/systemui/recents/views/TaskStackViewScroller;
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v5

    .line 583
    .local v5, "stackTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpCurrentTaskTransforms:Ljava/util/ArrayList;

    invoke-virtual {v2, v5, v4}, Lcom/android/systemui/recents/views/TaskStackView;->getCurrentTaskTransforms(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 586
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v4}, Lcom/android/systemui/recents/views/TaskStackView;->setTasks(Lcom/android/systemui/recents/model/TaskStack;Z)V

    .line 587
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    .line 590
    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    .line 591
    .local v3, "newScroll":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/views/TaskStackView;->bindVisibleTaskViews(F)V

    .line 594
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->setFocusState(I)V

    .line 595
    const/4 v2, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->setTaskOverridesForInitialState(Lcom/android/systemui/recents/model/TaskStack;Z)V

    .line 596
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setStackScroll(F)V

    .line 597
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->cancelDeferredTaskViewLayoutAnimation()V

    .line 600
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getFocusState()I

    move-result v4

    .line 601
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpFinalTaskTransforms:Ljava/util/ArrayList;

    const/4 v6, 0x0

    .line 600
    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/recents/views/TaskStackView;->getLayoutTaskTransforms(FILjava/util/ArrayList;ZLjava/util/ArrayList;)V

    .line 604
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/model/TaskStack;->getStackFrontMostTask(Z)Lcom/android/systemui/recents/model/Task;

    move-result-object v11

    .line 605
    .local v11, "frontMostTask":Lcom/android/systemui/recents/model/Task;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2, v11}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v12

    .line 606
    .local v12, "frontMostTaskView":Lcom/android/systemui/recents/views/TaskView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpFinalTaskTransforms:Ljava/util/ArrayList;

    .line 607
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 606
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 608
    .local v13, "frontMostTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    if-eqz v12, :cond_0

    .line 609
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    .line 610
    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getFrontOfStackTransform()Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v4

    sget-object v6, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    .line 609
    invoke-virtual {v2, v12, v4, v6}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    .line 615
    :cond_0
    new-instance v2, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$8;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v12, v13}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$8;-><init>(Lcom/android/systemui/recents/views/TaskStackAnimationHelper;FLcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->addLastDecrementRunnable(Ljava/lang/Runnable;)V

    .line 628
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v21

    .line 629
    .local v21, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v20

    .line 630
    .local v20, "taskViewCount":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    move/from16 v0, v20

    if-ge v14, v0, :cond_4

    .line 631
    move-object/from16 v0, v21

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/systemui/recents/views/TaskView;

    .line 632
    .local v23, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual/range {v23 .. v23}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v18

    .line 634
    .local v18, "task":Lcom/android/systemui/recents/model/Task;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/systemui/recents/views/TaskStackView;->isIgnoredTask(Lcom/android/systemui/recents/model/Task;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 630
    :cond_1
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 637
    :cond_2
    move-object/from16 v0, v18

    if-ne v0, v11, :cond_3

    if-nez v12, :cond_1

    .line 641
    :cond_3
    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v19

    .line 643
    .local v19, "taskIndex":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpCurrentTaskTransforms:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 644
    .local v10, "fromTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpFinalTaskTransforms:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 647
    .local v22, "toTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    sget-object v4, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0, v10, v4}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    .line 649
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->calculateStaggeredAnimDuration(I)I

    move-result v9

    .line 650
    .local v9, "duration":I
    sget-object v15, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->FOCUS_BEHIND_NEXT_TASK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 652
    .local v15, "interpolator":Landroid/view/animation/Interpolator;
    new-instance v2, Lcom/android/systemui/recents/views/AnimationProps;

    invoke-direct {v2}, Lcom/android/systemui/recents/views/AnimationProps;-><init>()V

    .line 653
    const/4 v4, 0x6

    .line 652
    invoke-virtual {v2, v4, v9}, Lcom/android/systemui/recents/views/AnimationProps;->setDuration(II)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v2

    .line 654
    const/4 v4, 0x6

    .line 652
    invoke-virtual {v2, v4, v15}, Lcom/android/systemui/recents/views/AnimationProps;->setInterpolator(ILandroid/view/animation/Interpolator;)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v2

    .line 655
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrementOnAnimationEnd()Landroid/animation/Animator$AnimatorListener;

    move-result-object v4

    .line 652
    invoke-virtual {v2, v4}, Lcom/android/systemui/recents/views/AnimationProps;->setListener(Landroid/animation/Animator$AnimatorListener;)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v8

    .line 656
    .local v8, "anim":Lcom/android/systemui/recents/views/AnimationProps;
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 657
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v2, v0, v1, v8}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    goto :goto_1

    .line 577
    .end local v8    # "anim":Lcom/android/systemui/recents/views/AnimationProps;
    .end local v9    # "duration":I
    .end local v10    # "fromTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .end local v15    # "interpolator":Landroid/view/animation/Interpolator;
    .end local v18    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v19    # "taskIndex":I
    .end local v22    # "toTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .end local v23    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_4
    return-void
.end method

.method public startScrollToFocusedTaskAnimation(Lcom/android/systemui/recents/model/Task;Z)Z
    .locals 28
    .param p1, "newFocusedTask"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "requestViewFocus"    # Z

    .prologue
    .line 477
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v18

    .line 478
    .local v18, "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v19

    .line 479
    .local v19, "stackScroller":Lcom/android/systemui/recents/views/TaskStackViewScroller;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v17

    .line 481
    .local v17, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v9

    .line 483
    .local v9, "curScroll":F
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getTrueStackScrollForTask(Lcom/android/systemui/recents/model/Task;)F

    move-result v2

    .line 482
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getBoundedStackScroll(F)F

    move-result v3

    .line 484
    .local v3, "newScroll":F
    cmpl-float v2, v3, v9

    if-lez v2, :cond_0

    const/16 v27, 0x1

    .line 485
    .local v27, "willScrollToFront":Z
    :goto_0
    invoke-static {v3, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_1

    const/16 v26, 0x1

    .line 488
    .local v26, "willScroll":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v22

    .line 489
    .local v22, "taskViewCount":I
    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v5

    .line 490
    .local v5, "stackTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpCurrentTaskTransforms:Ljava/util/ArrayList;

    invoke-virtual {v2, v5, v4}, Lcom/android/systemui/recents/views/TaskStackView;->getCurrentTaskTransforms(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 493
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/views/TaskStackView;->bindVisibleTaskViews(F)V

    .line 496
    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->setFocusState(I)V

    .line 497
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setStackScroll(FLcom/android/systemui/recents/views/AnimationProps;)V

    .line 498
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->cancelDeferredTaskViewLayoutAnimation()V

    .line 501
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getFocusState()I

    move-result v4

    .line 502
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpFinalTaskTransforms:Ljava/util/ArrayList;

    const/4 v6, 0x1

    .line 501
    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/recents/views/TaskStackView;->getLayoutTaskTransforms(FILjava/util/ArrayList;ZLjava/util/ArrayList;)V

    .line 505
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v15

    .line 506
    .local v15, "newFocusedTaskView":Lcom/android/systemui/recents/views/TaskView;
    if-nez v15, :cond_2

    .line 508
    const-string/jumbo v2, "TaskStackAnimationHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "b/27389156 null-task-view prebind:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 509
    const-string/jumbo v6, " postbind:"

    .line 508
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 509
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    .line 508
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 509
    const-string/jumbo v6, " prescroll:"

    .line 508
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 510
    const-string/jumbo v6, " postscroll: "

    .line 508
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    const/4 v2, 0x0

    return v2

    .line 484
    .end local v5    # "stackTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    .end local v15    # "newFocusedTaskView":Lcom/android/systemui/recents/views/TaskView;
    .end local v22    # "taskViewCount":I
    .end local v26    # "willScroll":Z
    .end local v27    # "willScrollToFront":Z
    :cond_0
    const/16 v27, 0x0

    .restart local v27    # "willScrollToFront":Z
    goto/16 :goto_0

    .line 485
    :cond_1
    const/16 v26, 0x0

    .restart local v26    # "willScroll":Z
    goto/16 :goto_1

    .line 513
    .restart local v5    # "stackTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    .restart local v15    # "newFocusedTaskView":Lcom/android/systemui/recents/views/TaskView;
    .restart local v22    # "taskViewCount":I
    :cond_2
    const/4 v2, 0x1

    move/from16 v0, p2

    invoke-virtual {v15, v2, v0}, Lcom/android/systemui/recents/views/TaskView;->setFocusedState(ZZ)V

    .line 517
    new-instance v16, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-direct/range {v16 .. v16}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;-><init>()V

    .line 518
    .local v16, "postAnimTrigger":Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
    new-instance v2, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$7;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$7;-><init>(Lcom/android/systemui/recents/views/TaskStackAnimationHelper;F)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->addLastDecrementRunnable(Ljava/lang/Runnable;)V

    .line 525
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v23

    .line 526
    .local v23, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v22

    .line 527
    move-object/from16 v0, v23

    invoke-interface {v0, v15}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v14

    .line 528
    .local v14, "newFocusTaskViewIndex":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    move/from16 v0, v22

    if-ge v12, v0, :cond_7

    .line 529
    move-object/from16 v0, v23

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/systemui/recents/views/TaskView;

    .line 530
    .local v25, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual/range {v25 .. v25}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v20

    .line 532
    .local v20, "task":Lcom/android/systemui/recents/model/Task;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/android/systemui/recents/views/TaskStackView;->isIgnoredTask(Lcom/android/systemui/recents/model/Task;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 528
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 536
    :cond_3
    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v21

    .line 538
    .local v21, "taskIndex":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpCurrentTaskTransforms:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 539
    .local v11, "fromTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpFinalTaskTransforms:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 542
    .local v24, "toTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    sget-object v4, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0, v11, v4}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    .line 546
    if-eqz v27, :cond_4

    .line 547
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->calculateStaggeredAnimDuration(I)I

    move-result v10

    .line 548
    .local v10, "duration":I
    sget-object v13, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->FOCUS_BEHIND_NEXT_TASK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 562
    .local v13, "interpolator":Landroid/view/animation/Interpolator;
    :goto_4
    new-instance v2, Lcom/android/systemui/recents/views/AnimationProps;

    invoke-direct {v2}, Lcom/android/systemui/recents/views/AnimationProps;-><init>()V

    .line 563
    const/4 v4, 0x6

    .line 562
    invoke-virtual {v2, v4, v10}, Lcom/android/systemui/recents/views/AnimationProps;->setDuration(II)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v2

    .line 564
    const/4 v4, 0x6

    .line 562
    invoke-virtual {v2, v4, v13}, Lcom/android/systemui/recents/views/AnimationProps;->setInterpolator(ILandroid/view/animation/Interpolator;)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v2

    .line 565
    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrementOnAnimationEnd()Landroid/animation/Animator$AnimatorListener;

    move-result-object v4

    .line 562
    invoke-virtual {v2, v4}, Lcom/android/systemui/recents/views/AnimationProps;->setListener(Landroid/animation/Animator$AnimatorListener;)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v8

    .line 566
    .local v8, "anim":Lcom/android/systemui/recents/views/AnimationProps;
    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 567
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v2, v0, v1, v8}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    goto :goto_3

    .line 550
    .end local v8    # "anim":Lcom/android/systemui/recents/views/AnimationProps;
    .end local v10    # "duration":I
    .end local v13    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_4
    if-ge v12, v14, :cond_5

    .line 551
    sub-int v2, v14, v12

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v2, v2, 0x32

    add-int/lit16 v10, v2, 0x96

    .line 552
    .restart local v10    # "duration":I
    sget-object v13, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->FOCUS_BEHIND_NEXT_TASK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .restart local v13    # "interpolator":Landroid/view/animation/Interpolator;
    goto :goto_4

    .line 553
    .end local v10    # "duration":I
    .end local v13    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_5
    if-le v12, v14, :cond_6

    .line 554
    sub-int v2, v12, v14

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v2, v2, 0x32

    rsub-int v2, v2, 0x96

    const/16 v4, 0x64

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 555
    .restart local v10    # "duration":I
    sget-object v13, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->FOCUS_IN_FRONT_NEXT_TASK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .restart local v13    # "interpolator":Landroid/view/animation/Interpolator;
    goto :goto_4

    .line 557
    .end local v10    # "duration":I
    .end local v13    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_6
    const/16 v10, 0xc8

    .line 558
    .restart local v10    # "duration":I
    sget-object v13, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->FOCUS_NEXT_TASK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .restart local v13    # "interpolator":Landroid/view/animation/Interpolator;
    goto :goto_4

    .line 569
    .end local v10    # "duration":I
    .end local v11    # "fromTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .end local v13    # "interpolator":Landroid/view/animation/Interpolator;
    .end local v20    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v21    # "taskIndex":I
    .end local v24    # "toTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .end local v25    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_7
    return v26
.end method
