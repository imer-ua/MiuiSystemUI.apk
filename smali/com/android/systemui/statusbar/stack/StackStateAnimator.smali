.class public Lcom/android/systemui/statusbar/stack/StackStateAnimator;
.super Ljava/lang/Object;
.source "StackStateAnimator.java"


# instance fields
.field private mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

.field private mAnimationListenerPool:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/animation/AnimatorListenerAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final mAnimationProperties:Lcom/android/systemui/statusbar/stack/AnimationProperties;

.field private mAnimatorSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mBottomOverScrollAnimator:Landroid/animation/ValueAnimator;

.field private mChildrenToClearFromOverlay:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentAdditionalDelay:J

.field private mCurrentLastNotAddedIndex:I

.field private mCurrentLength:J

.field private mDismissChildren:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mGoToFullShadeAppearingTranslation:I

.field private mHeadsUpAppearChildren:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mHeadsUpAppearHeightBottom:I

.field private mHeadsUpDisappearChildren:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

.field private mNewAddChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mNewEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mPopupChildren:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mShadeExpanded:Z

.field private mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

.field private final mTmpState:Lcom/android/systemui/statusbar/stack/ExpandableViewState;

.field private mTopOverScrollAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/stack/StackStateAnimator;)Lcom/android/systemui/statusbar/stack/AnimationFilter;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/stack/StackStateAnimator;)Ljava/util/Stack;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationListenerPool:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/stack/StackStateAnimator;)Ljava/util/HashSet;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimatorSet:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/stack/StackStateAnimator;)Ljava/util/HashSet;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mDismissChildren:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/stack/StackStateAnimator;)Ljava/util/HashSet;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHeadsUpAppearChildren:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/statusbar/stack/StackStateAnimator;)Ljava/util/HashSet;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHeadsUpDisappearChildren:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/statusbar/stack/StackStateAnimator;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewAddChildren:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/statusbar/stack/StackStateAnimator;)Ljava/util/HashSet;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mPopupChildren:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mBottomOverScrollAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTopOverScrollAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/stack/StackStateAnimator;)Landroid/animation/AnimatorListenerAdapter;
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getGlobalAnimationFinishedListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/stack/StackStateAnimator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->onAnimationFinished()V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V
    .locals 2
    .param p1, "hostLayout"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTmpState:Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 64
    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewEvents:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewAddChildren:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHeadsUpAppearChildren:Ljava/util/HashSet;

    .line 68
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHeadsUpDisappearChildren:Ljava/util/HashSet;

    .line 69
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mPopupChildren:Ljava/util/HashSet;

    .line 70
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mDismissChildren:Ljava/util/HashSet;

    .line 71
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimatorSet:Ljava/util/HashSet;

    .line 72
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationListenerPool:Ljava/util/Stack;

    .line 73
    new-instance v0, Lcom/android/systemui/statusbar/stack/AnimationFilter;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/stack/AnimationFilter;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mChildrenToClearFromOverlay:Ljava/util/ArrayList;

    .line 87
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 89
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 90
    const v1, 0x90f0181

    .line 89
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 88
    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mGoToFullShadeAppearingTranslation:I

    .line 91
    new-instance v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator$1;-><init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationProperties:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .line 86
    return-void
.end method

.method private adaptDurationWhenGoingToFullShade(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/ExpandableViewState;Z)V
    .locals 6
    .param p1, "child"    # Lcom/android/systemui/statusbar/ExpandableView;
    .param p2, "viewState"    # Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    .param p3, "wasAdded"    # Z

    .prologue
    .line 183
    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasGoToFullShadeEvent:Z

    if-eqz v1, :cond_0

    .line 184
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mGoToFullShadeAppearingTranslation:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/ExpandableView;->setTranslationY(F)V

    .line 185
    iget v1, p2, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->notGoneIndex:I

    iget v2, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mCurrentLastNotAddedIndex:I

    sub-int/2addr v1, v2

    int-to-float v0, v1

    .line 186
    .local v0, "longerDurationFactor":F
    float-to-double v2, v0

    const-wide v4, 0x3fe6666660000000L    # 0.699999988079071

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v0, v2

    .line 187
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationProperties:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .line 188
    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v2, v0

    float-to-long v2, v2

    .line 187
    const-wide/16 v4, 0x202

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/android/systemui/statusbar/stack/AnimationProperties;->duration:J

    .line 182
    .end local v0    # "longerDurationFactor":F
    :cond_0
    return-void
.end method

.method private applyWithoutAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/ExpandableViewState;Lcom/android/systemui/statusbar/stack/StackScrollState;)Z
    .locals 2
    .param p1, "child"    # Lcom/android/systemui/statusbar/ExpandableView;
    .param p2, "viewState"    # Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    .param p3, "finalState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;

    .prologue
    const/4 v1, 0x0

    .line 199
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mShadeExpanded:Z

    if-eqz v0, :cond_0

    .line 200
    return v1

    .line 202
    :cond_0
    invoke-static {p1}, Lcom/android/systemui/statusbar/stack/ViewState;->isAnimatingY(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    return v1

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHeadsUpDisappearChildren:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHeadsUpAppearChildren:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 208
    :cond_2
    return v1

    .line 210
    :cond_3
    invoke-static {p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isPinnedHeadsUp(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 212
    return v1

    .line 214
    :cond_4
    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->applyToView(Landroid/view/View;)V

    .line 215
    const/4 v0, 0x1

    return v0
.end method

.method private calculateChildAnimationDelay(Lcom/android/systemui/statusbar/stack/ExpandableViewState;Lcom/android/systemui/statusbar/stack/StackScrollState;)J
    .locals 18
    .param p1, "viewState"    # Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    .param p2, "finalState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;

    .prologue
    .line 236
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget-boolean v13, v13, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasGoToFullShadeEvent:Z

    if-eqz v13, :cond_0

    .line 237
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->calculateDelayGoToFullShade(Lcom/android/systemui/statusbar/stack/ExpandableViewState;)J

    move-result-wide v14

    return-wide v14

    .line 239
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget-boolean v13, v13, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasHeadsUpDisappearClickEvent:Z

    if-eqz v13, :cond_1

    .line 240
    const-wide/16 v14, 0x78

    return-wide v14

    .line 242
    :cond_1
    const-wide/16 v10, 0x0

    .line 243
    .local v10, "minDelay":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewEvents:Ljava/util/ArrayList;

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "event$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    .line 245
    .local v8, "event":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    iget v13, v8, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    packed-switch v13, :pswitch_data_0

    goto :goto_0

    .line 247
    :pswitch_0
    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->notGoneIndex:I

    .line 248
    .local v12, "ownIndex":I
    iget-object v13, v8, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->changingView:Landroid/view/View;

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v13

    if-eqz v13, :cond_2

    .line 251
    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isFoldAnimating()Z

    move-result v13

    if-nez v13, :cond_2

    .line 255
    iget-object v13, v8, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->changingView:Landroid/view/View;

    .line 254
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v13

    iget v2, v13, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->notGoneIndex:I

    .line 256
    .local v2, "changingIndex":I
    sub-int v13, v12, v2

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 258
    .local v3, "difference":I
    add-int/lit8 v13, v3, -0x1

    .line 257
    const/4 v14, 0x2

    invoke-static {v14, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    const/4 v14, 0x0

    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 259
    rsub-int/lit8 v13, v3, 0x2

    int-to-long v14, v13

    .line 244
    const-wide/16 v16, 0x50

    .line 259
    mul-long v4, v14, v16

    .line 260
    .local v4, "delay":J
    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    goto :goto_0

    .line 264
    .end local v2    # "changingIndex":I
    .end local v3    # "difference":I
    .end local v4    # "delay":J
    .end local v12    # "ownIndex":I
    :pswitch_1
    const-wide/16 v6, 0x20

    .line 267
    :pswitch_2
    const-wide/16 v10, 0x0

    .line 268
    goto :goto_0

    .line 274
    .end local v8    # "event":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    :cond_3
    return-wide v10

    .line 245
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private calculateDelayGoToFullShade(Lcom/android/systemui/statusbar/stack/ExpandableViewState;)J
    .locals 13
    .param p1, "viewState"    # Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    .prologue
    const/high16 v12, 0x42400000    # 48.0f

    const-wide v10, 0x3fe6666660000000L    # 0.699999988079071

    .line 278
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/NotificationShelf;->getNotGoneIndex()I

    move-result v4

    .line 279
    .local v4, "shelfIndex":I
    iget v5, p1, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->notGoneIndex:I

    int-to-float v1, v5

    .line 280
    .local v1, "index":F
    const-wide/16 v2, 0x0

    .line 281
    .local v2, "result":J
    int-to-float v5, v4

    cmpl-float v5, v1, v5

    if-lez v5, :cond_0

    .line 282
    int-to-float v5, v4

    sub-float v0, v1, v5

    .line 283
    .local v0, "diff":F
    float-to-double v6, v0

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v0, v6

    .line 284
    mul-float v5, v0, v12

    float-to-double v6, v5

    const-wide/high16 v8, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v6, v8

    double-to-long v6, v6

    .line 280
    const-wide/16 v8, 0x0

    .line 284
    add-long v2, v8, v6

    .line 285
    int-to-float v1, v4

    .line 287
    .end local v0    # "diff":F
    :cond_0
    float-to-double v6, v1

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v1, v6

    .line 288
    mul-float v5, v1, v12

    float-to-long v6, v5

    add-long/2addr v2, v6

    .line 289
    return-wide v2
.end method

.method private findLastNotAddedIndex(Lcom/android/systemui/statusbar/stack/StackScrollState;)I
    .locals 6
    .param p1, "finalState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;

    .prologue
    .line 219
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v1

    .line 220
    .local v1, "childCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 221
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    .line 223
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v3

    .line 224
    .local v3, "viewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1

    .line 220
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 227
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewAddChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 228
    iget v4, v3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->notGoneIndex:I

    return v4

    .line 231
    .end local v0    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v3    # "viewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    :cond_2
    const/4 v4, -0x1

    return v4
.end method

.method private getGlobalAnimationFinishedListener()Landroid/animation/AnimatorListenerAdapter;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationListenerPool:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationListenerPool:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorListenerAdapter;

    return-object v0

    .line 302
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator$2;-><init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;)V

    return-object v0
.end method

.method private initAnimationProperties(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/ExpandableViewState;)V
    .locals 6
    .param p1, "finalState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "child"    # Lcom/android/systemui/statusbar/ExpandableView;
    .param p3, "viewState"    # Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    .prologue
    .line 164
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationProperties:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->wasAdded(Landroid/view/View;)Z

    move-result v0

    .line 165
    .local v0, "wasAdded":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationProperties:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    iget-wide v2, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mCurrentLength:J

    iput-wide v2, v1, Lcom/android/systemui/statusbar/stack/AnimationProperties;->duration:J

    .line 166
    invoke-direct {p0, p2, p3, v0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->adaptDurationWhenGoingToFullShade(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/ExpandableViewState;Z)V

    .line 167
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationProperties:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    .line 168
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasDelays:Z

    if-eqz v1, :cond_1

    .line 169
    iget v1, p3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 170
    iget v1, p3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->zTranslation:F

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationZ()F

    move-result v2

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    .line 176
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationProperties:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    iget-wide v2, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mCurrentAdditionalDelay:J

    .line 177
    invoke-direct {p0, p3, p1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->calculateChildAnimationDelay(Lcom/android/systemui/statusbar/stack/ExpandableViewState;Lcom/android/systemui/statusbar/stack/StackScrollState;)J

    move-result-wide v4

    .line 176
    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    .line 163
    :cond_1
    return-void

    .line 171
    :cond_2
    iget v1, p3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->alpha:F

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandableView;->getAlpha()F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 172
    iget v1, p3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 173
    iget v1, p3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->clipTopAmount:I

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 174
    iget-boolean v1, p3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->dark:Z

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandableView;->isDark()Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 175
    iget v1, p3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->shadowAlpha:F

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandableView;->getShadowAlpha()F

    move-result v2

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    goto :goto_0
.end method

.method private onAnimationFinished()V
    .locals 3

    .prologue
    .line 328
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onChildAnimationFinished()V

    .line 329
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mChildrenToClearFromOverlay:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "v$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 330
    .local v0, "v":Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->removeFromOverlay(Landroid/view/View;)V

    goto :goto_0

    .line 332
    .end local v0    # "v":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mChildrenToClearFromOverlay:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 327
    return-void
.end method

.method private processAnimationEvents(Ljava/util/ArrayList;Lcom/android/systemui/statusbar/stack/StackScrollState;)V
    .locals 18
    .param p2, "finalState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;",
            ">;",
            "Lcom/android/systemui/statusbar/stack/StackScrollState;",
            ")V"
        }
    .end annotation

    .prologue
    .line 344
    .local p1, "animationEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;>;"
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "event$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    .line 345
    .local v10, "event":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    iget-object v3, v10, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->changingView:Landroid/view/View;

    check-cast v3, Lcom/android/systemui/statusbar/ExpandableView;

    .line 346
    .local v3, "changingView":Lcom/android/systemui/statusbar/ExpandableView;
    iget v4, v10, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    if-nez v4, :cond_2

    .line 350
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v15

    .line 352
    .local v15, "viewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    if-eqz v15, :cond_0

    .line 356
    invoke-virtual {v15, v3}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->applyToView(Landroid/view/View;)V

    .line 357
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewAddChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 461
    .end local v15    # "viewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewEvents:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 359
    :cond_2
    iget v4, v10, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    .line 360
    const/4 v5, 0x1

    .line 359
    if-ne v4, v5, :cond_7

    .line 361
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_3

    .line 362
    invoke-static {v3}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->removeFromOverlay(Landroid/view/View;)V

    goto :goto_0

    .line 369
    :cond_3
    iget-object v4, v10, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->viewAfterChangingView:Landroid/view/View;

    .line 368
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v15

    .line 370
    .restart local v15    # "viewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v2

    .line 373
    .local v2, "actualHeight":I
    const/4 v4, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    invoke-static {v4, v5}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->getFoldTranslationDirection(ZF)F

    move-result v6

    .line 375
    .local v6, "translationDirection":F
    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isFoldAnimating()Z

    move-result v4

    if-nez v4, :cond_5

    if-eqz v15, :cond_5

    .line 376
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v13

    .line 377
    .local v13, "ownPosition":F
    instance-of v4, v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v4, :cond_4

    .line 378
    iget-object v4, v10, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->viewAfterChangingView:Landroid/view/View;

    instance-of v4, v4, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 377
    if-eqz v4, :cond_4

    move-object v9, v3

    .line 380
    check-cast v9, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 382
    .local v9, "changingRow":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    iget-object v12, v10, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->viewAfterChangingView:Landroid/view/View;

    check-cast v12, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 383
    .local v12, "nextRow":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isRemoved()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 384
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->wasChildInGroupWhenRemoved()Z

    move-result v4

    .line 383
    if-eqz v4, :cond_4

    .line 385
    invoke-virtual {v12}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 393
    .end local v9    # "changingRow":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v12    # "nextRow":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_4
    :goto_2
    iget v4, v15, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    .line 394
    int-to-float v5, v2

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    add-float/2addr v5, v13

    .line 393
    sub-float/2addr v4, v5

    .line 394
    const/high16 v5, 0x40000000    # 2.0f

    .line 393
    mul-float/2addr v4, v5

    .line 395
    int-to-float v5, v2

    .line 393
    div-float v6, v4, v5

    .line 396
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/high16 v5, -0x40800000    # -1.0f

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 399
    .end local v13    # "ownPosition":F
    :cond_5
    const-wide/16 v4, 0x1d0

    .line 400
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationProperties:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFinishListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v7

    new-instance v8, Lcom/android/systemui/statusbar/stack/StackStateAnimator$3;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v3}, Lcom/android/systemui/statusbar/stack/StackStateAnimator$3;-><init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Lcom/android/systemui/statusbar/ExpandableView;)V

    .line 399
    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/statusbar/ExpandableView;->performRemoveAnimation(JFLandroid/animation/AnimatorListenerAdapter;Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 388
    .restart local v9    # "changingRow":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .restart local v12    # "nextRow":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .restart local v13    # "ownPosition":F
    :cond_6
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationWhenRemoved()F

    move-result v13

    goto :goto_2

    .line 407
    .end local v2    # "actualHeight":I
    .end local v6    # "translationDirection":F
    .end local v9    # "changingRow":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v12    # "nextRow":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v13    # "ownPosition":F
    .end local v15    # "viewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    :cond_7
    iget v4, v10, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    .line 408
    const/4 v5, 0x2

    .line 407
    if-ne v4, v5, :cond_8

    .line 411
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 412
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslation()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1

    .line 413
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableView;->getTransientContainer()Landroid/view/ViewGroup;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 414
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableView;->getTransientContainer()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->removeTransientView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 416
    :cond_8
    iget v4, v10, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    const/16 v5, 0xd

    if-ne v4, v5, :cond_9

    .line 418
    iget-object v14, v10, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->changingView:Landroid/view/View;

    check-cast v14, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 419
    .local v14, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->prepareExpansionChanged(Lcom/android/systemui/statusbar/stack/StackScrollState;)V

    goto/16 :goto_1

    .line 420
    .end local v14    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_9
    iget v4, v10, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    const/16 v5, 0xe

    if-ne v4, v5, :cond_b

    .line 423
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v15

    .line 424
    .restart local v15    # "viewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTmpState:Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    invoke-virtual {v4, v15}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->copyFrom(Lcom/android/systemui/statusbar/stack/ViewState;)V

    .line 425
    iget-boolean v4, v10, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->headsUpFromBottom:Z

    if-eqz v4, :cond_a

    .line 426
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTmpState:Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHeadsUpAppearHeightBottom:I

    int-to-float v5, v5

    iput v5, v4, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    .line 430
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHeadsUpAppearChildren:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 431
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTmpState:Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->applyToView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 428
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTmpState:Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTmpState:Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    iget v5, v5, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    neg-int v5, v5

    int-to-float v5, v5

    iput v5, v4, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    goto :goto_3

    .line 432
    .end local v15    # "viewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    :cond_b
    iget v4, v10, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    const/16 v5, 0xf

    if-eq v4, v5, :cond_c

    .line 434
    iget v4, v10, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    const/16 v5, 0x10

    if-ne v4, v5, :cond_e

    .line 436
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHeadsUpDisappearChildren:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 437
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_1

    .line 439
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 440
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTmpState:Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->initFrom(Landroid/view/View;)V

    .line 441
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTmpState:Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    iput v5, v4, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    .line 444
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateY:Z

    .line 445
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationProperties:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .line 446
    iget v4, v10, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    const/16 v7, 0x10

    if-ne v4, v7, :cond_d

    .line 448
    const/16 v4, 0x78

    .line 446
    :goto_4
    int-to-long v0, v4

    move-wide/from16 v16, v0

    .line 445
    move-wide/from16 v0, v16

    iput-wide v0, v5, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    .line 450
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationProperties:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    const-wide/16 v16, 0x96

    move-wide/from16 v0, v16

    iput-wide v0, v4, Lcom/android/systemui/statusbar/stack/AnimationProperties;->duration:J

    .line 451
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTmpState:Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationProperties:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    invoke-virtual {v4, v3, v5}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 452
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mChildrenToClearFromOverlay:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 449
    :cond_d
    const/4 v4, 0x0

    goto :goto_4

    .line 454
    :cond_e
    iget v4, v10, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    .line 455
    const/16 v5, 0x12

    .line 454
    if-ne v4, v5, :cond_f

    .line 456
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mPopupChildren:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 457
    :cond_f
    iget v4, v10, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    .line 458
    const/16 v5, 0x13

    .line 457
    if-ne v4, v5, :cond_1

    .line 459
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mDismissChildren:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 343
    .end local v3    # "changingView":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v10    # "event":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    :cond_10
    return-void
.end method

.method public static removeFromOverlay(Landroid/view/View;)V
    .locals 1
    .param p0, "changingView"    # Landroid/view/View;

    .prologue
    .line 466
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 467
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 468
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 465
    :cond_0
    return-void
.end method


# virtual methods
.method public animateOverScrollToAmount(FZZ)V
    .locals 4
    .param p1, "targetAmount"    # F
    .param p2, "onTop"    # Z
    .param p3, "isRubberbanded"    # Z

    .prologue
    .line 474
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v1

    .line 475
    .local v1, "startOverScrollAmount":F
    cmpl-float v2, p1, v1

    if-nez v2, :cond_0

    .line 476
    return-void

    .line 478
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->cancelOverScrollAnimators(Z)V

    .line 479
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    .line 480
    const/4 v3, 0x1

    aput p1, v2, v3

    .line 479
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 481
    .local v0, "overScrollAnimator":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0x168

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 482
    new-instance v2, Lcom/android/systemui/statusbar/stack/StackStateAnimator$4;

    invoke-direct {v2, p0, p2, p3}, Lcom/android/systemui/statusbar/stack/StackStateAnimator$4;-><init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;ZZ)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 491
    sget-object v2, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 492
    new-instance v2, Lcom/android/systemui/statusbar/stack/StackStateAnimator$5;

    invoke-direct {v2, p0, p2}, Lcom/android/systemui/statusbar/stack/StackStateAnimator$5;-><init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Z)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 502
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 503
    if-eqz p2, :cond_1

    .line 504
    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTopOverScrollAnimator:Landroid/animation/ValueAnimator;

    .line 473
    :goto_0
    return-void

    .line 506
    :cond_1
    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mBottomOverScrollAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0
.end method

.method public cancelOverScrollAnimators(Z)V
    .locals 1
    .param p1, "onTop"    # Z

    .prologue
    .line 511
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTopOverScrollAnimator:Landroid/animation/ValueAnimator;

    .line 512
    .local v0, "currentAnimator":Landroid/animation/ValueAnimator;
    :goto_0
    if-eqz v0, :cond_0

    .line 513
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 510
    :cond_0
    return-void

    .line 511
    .end local v0    # "currentAnimator":Landroid/animation/ValueAnimator;
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mBottomOverScrollAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimatorSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setHeadsUpAppearHeightBottom(I)V
    .locals 0
    .param p1, "headsUpAppearHeightBottom"    # I

    .prologue
    .line 518
    iput p1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHeadsUpAppearHeightBottom:I

    .line 517
    return-void
.end method

.method public setShadeExpanded(Z)V
    .locals 0
    .param p1, "shadeExpanded"    # Z

    .prologue
    .line 522
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mShadeExpanded:Z

    .line 521
    return-void
.end method

.method public setShelf(Lcom/android/systemui/statusbar/NotificationShelf;)V
    .locals 0
    .param p1, "shelf"    # Lcom/android/systemui/statusbar/NotificationShelf;

    .prologue
    .line 526
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    .line 525
    return-void
.end method

.method public startAnimationForEvents(Ljava/util/ArrayList;Lcom/android/systemui/statusbar/stack/StackScrollState;J)V
    .locals 7
    .param p2, "finalState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p3, "additionalDelay"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;",
            ">;",
            "Lcom/android/systemui/statusbar/stack/StackScrollState;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p1, "mAnimationEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->processAnimationEvents(Ljava/util/ArrayList;Lcom/android/systemui/statusbar/stack/StackScrollState;)V

    .line 133
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v1

    .line 134
    .local v1, "childCount":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewEvents:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->applyCombination(Ljava/util/ArrayList;)V

    .line 135
    iput-wide p3, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mCurrentAdditionalDelay:J

    .line 136
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewEvents:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->combineLength(Ljava/util/ArrayList;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mCurrentLength:J

    .line 137
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->findLastNotAddedIndex(Lcom/android/systemui/statusbar/stack/StackScrollState;)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mCurrentLastNotAddedIndex:I

    .line 138
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 139
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    .line 141
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v3

    .line 142
    .local v3, "viewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1

    .line 138
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 143
    :cond_1
    invoke-direct {p0, v0, v3, p2}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->applyWithoutAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/ExpandableViewState;Lcom/android/systemui/statusbar/stack/StackScrollState;)Z

    move-result v4

    .line 142
    if-nez v4, :cond_0

    .line 147
    invoke-direct {p0, p2, v0, v3}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->initAnimationProperties(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/ExpandableViewState;)V

    .line 148
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationProperties:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    invoke-virtual {v3, v0, v4}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    goto :goto_1

    .line 150
    .end local v0    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v3    # "viewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->isRunning()Z

    move-result v4

    if-nez v4, :cond_3

    .line 152
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->onAnimationFinished()V

    .line 154
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHeadsUpAppearChildren:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 155
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHeadsUpDisappearChildren:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 156
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mPopupChildren:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 157
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mDismissChildren:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 158
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewEvents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 159
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewAddChildren:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 129
    return-void
.end method
