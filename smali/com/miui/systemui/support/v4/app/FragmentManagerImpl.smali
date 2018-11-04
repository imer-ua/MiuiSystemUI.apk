.class final Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;
.super Lcom/miui/systemui/support/v4/app/FragmentManager;
.source "FragmentManager.java"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$1;,
        Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;,
        Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationListenerWrapper;,
        Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;,
        Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimatorOnHWLayerIfNeededListener;,
        Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$FragmentTag;,
        Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$OpGenerator;,
        Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;
    }
.end annotation


# static fields
.field static final ACCELERATE_CUBIC:Landroid/view/animation/Interpolator;

.field static final ACCELERATE_QUINT:Landroid/view/animation/Interpolator;

.field static DEBUG:Z

.field static final DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

.field static final DECELERATE_QUINT:Landroid/view/animation/Interpolator;

.field static sAnimationListenerField:Ljava/lang/reflect/Field;


# instance fields
.field mActive:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/miui/systemui/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field final mAdded:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/systemui/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mAvailBackStackIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mBackStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/systemui/support/v4/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field

.field mBackStackChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/systemui/support/v4/app/FragmentManager$OnBackStackChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field mBackStackIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/systemui/support/v4/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field

.field mContainer:Lcom/miui/systemui/support/v4/app/FragmentContainer;

.field mCreatedMenus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/systemui/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mCurState:I

.field mDestroyed:Z

.field mExecCommit:Ljava/lang/Runnable;

.field mExecutingActions:Z

.field mHavePendingDeferredStart:Z

.field mHost:Lcom/miui/systemui/support/v4/app/FragmentHostCallback;

.field private mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/miui/systemui/support/v4/util/Pair",
            "<",
            "Lcom/miui/systemui/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field mNeedMenuInvalidate:Z

.field mNextFragmentIndex:I

.field mNoTransactionsBecause:Ljava/lang/String;

.field mParent:Lcom/miui/systemui/support/v4/app/Fragment;

.field mPendingActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$OpGenerator;",
            ">;"
        }
    .end annotation
.end field

.field mPostponedTransactions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field mPrimaryNav:Lcom/miui/systemui/support/v4/app/Fragment;

.field mSavedNonConfig:Lcom/miui/systemui/support/v4/app/FragmentManagerNonConfig;

.field mStateArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field mStateBundle:Landroid/os/Bundle;

.field mStateSaved:Z

.field mTmpAddedFragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/systemui/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mTmpIsPop:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mTmpRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/systemui/support/v4/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;Lcom/miui/systemui/support/v4/app/BackStackRecord;ZZZ)V
    .locals 0
    .param p1, "record"    # Lcom/miui/systemui/support/v4/app/BackStackRecord;
    .param p2, "isPop"    # Z
    .param p3, "runTransitions"    # Z
    .param p4, "moveToState"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->completeExecute(Lcom/miui/systemui/support/v4/app/BackStackRecord;ZZZ)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->scheduleCommit()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/high16 v2, 0x40200000    # 2.5f

    const/high16 v1, 0x3fc00000    # 1.5f

    .line 641
    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    .line 672
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->sAnimationListenerField:Ljava/lang/reflect/Field;

    .line 1091
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;

    .line 1092
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

    .line 1093
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->ACCELERATE_QUINT:Landroid/view/animation/Interpolator;

    .line 1094
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->ACCELERATE_CUBIC:Landroid/view/animation/Interpolator;

    .line 640
    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 640
    invoke-direct {p0}, Lcom/miui/systemui/support/v4/app/FragmentManager;-><init>()V

    .line 652
    iput v1, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mNextFragmentIndex:I

    .line 654
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    .line 666
    iput v1, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mCurState:I

    .line 686
    iput-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 687
    iput-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    .line 695
    new-instance v0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$1;

    invoke-direct {v0, p0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$1;-><init>(Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;)V

    iput-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    .line 640
    return-void
.end method

.method private addAddedFragments(Lcom/miui/systemui/support/v4/util/ArraySet;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/systemui/support/v4/util/ArraySet",
            "<",
            "Lcom/miui/systemui/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2590
    .local p1, "added":Lcom/miui/systemui/support/v4/util/ArraySet;, "Landroid/support/v4/util/ArraySet<Landroid/support/v4/app/Fragment;>;"
    iget v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mCurState:I

    const/4 v3, 0x1

    if-ge v0, v3, :cond_0

    .line 2591
    return-void

    .line 2594
    :cond_0
    iget v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mCurState:I

    const/4 v3, 0x4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2595
    .local v2, "state":I
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 2596
    .local v7, "numAdded":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v7, :cond_3

    .line 2597
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/systemui/support/v4/app/Fragment;

    .line 2598
    .local v1, "fragment":Lcom/miui/systemui/support/v4/app/Fragment;
    iget v0, v1, Lcom/miui/systemui/support/v4/app/Fragment;->mState:I

    if-ge v0, v2, :cond_1

    .line 2599
    invoke-virtual {v1}, Lcom/miui/systemui/support/v4/app/Fragment;->getNextAnim()I

    move-result v3

    invoke-virtual {v1}, Lcom/miui/systemui/support/v4/app/Fragment;->getNextTransition()I

    move-result v4

    .line 2600
    const/4 v5, 0x0

    move-object v0, p0

    .line 2599
    invoke-virtual/range {v0 .. v5}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->moveToState(Lcom/miui/systemui/support/v4/app/Fragment;IIIZ)V

    .line 2601
    iget-object v0, v1, Lcom/miui/systemui/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-boolean v0, v1, Lcom/miui/systemui/support/v4/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_2

    .line 2596
    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2601
    :cond_2
    iget-boolean v0, v1, Lcom/miui/systemui/support/v4/app/Fragment;->mIsNewlyAdded:Z

    if-eqz v0, :cond_1

    .line 2602
    invoke-virtual {p1, v1}, Lcom/miui/systemui/support/v4/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2589
    .end local v1    # "fragment":Lcom/miui/systemui/support/v4/app/Fragment;
    :cond_3
    return-void
.end method

.method private animateRemoveFragment(Lcom/miui/systemui/support/v4/app/Fragment;Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;I)V
    .locals 6
    .param p1, "fragment"    # Lcom/miui/systemui/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "anim"    # Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "newState"    # I

    .prologue
    .line 1594
    iget-object v4, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 1595
    .local v4, "viewToAnimate":Landroid/view/View;
    invoke-virtual {p1, p3}, Lcom/miui/systemui/support/v4/app/Fragment;->setStateAfterAnimating(I)V

    .line 1596
    iget-object v5, p2, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v5, :cond_0

    .line 1597
    iget-object v0, p2, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    .line 1598
    .local v0, "animation":Landroid/view/animation/Animation;
    iget-object v5, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p1, v5}, Lcom/miui/systemui/support/v4/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    .line 1599
    invoke-static {v0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->getAnimationListener(Landroid/view/animation/Animation;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v3

    .line 1600
    .local v3, "listener":Landroid/view/animation/Animation$AnimationListener;
    new-instance v5, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$2;

    invoke-direct {v5, p0, v3, p1}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$2;-><init>(Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;Landroid/view/animation/Animation$AnimationListener;Lcom/miui/systemui/support/v4/app/Fragment;)V

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1610
    invoke-static {v4, p2}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;)V

    .line 1611
    iget-object v5, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1593
    .end local v0    # "animation":Landroid/view/animation/Animation;
    .end local v3    # "listener":Landroid/view/animation/Animation$AnimationListener;
    :goto_0
    return-void

    .line 1613
    :cond_0
    iget-object v1, p2, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    .line 1614
    .local v1, "animator":Landroid/animation/Animator;
    iget-object v5, p2, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    invoke-virtual {p1, v5}, Lcom/miui/systemui/support/v4/app/Fragment;->setAnimator(Landroid/animation/Animator;)V

    .line 1615
    iget-object v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1616
    .local v2, "container":Landroid/view/ViewGroup;
    if-eqz v2, :cond_1

    .line 1617
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 1619
    :cond_1
    new-instance v5, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$3;

    invoke-direct {v5, p0, v2, v4, p1}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$3;-><init>(Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;Landroid/view/ViewGroup;Landroid/view/View;Lcom/miui/systemui/support/v4/app/Fragment;)V

    invoke-virtual {v1, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1631
    iget-object v5, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1632
    iget-object v5, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v5, p2}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;)V

    .line 1633
    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method private burpActive()V
    .locals 3

    .prologue
    .line 3133
    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v1, :cond_1

    .line 3134
    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 3135
    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3136
    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->delete(I)V

    .line 3134
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3132
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private checkStateLoss()V
    .locals 3

    .prologue
    .line 2041
    iget-boolean v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    if-eqz v0, :cond_0

    .line 2042
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2043
    const-string/jumbo v1, "Can not perform this action after onSaveInstanceState"

    .line 2042
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2045
    :cond_0
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2046
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2047
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can not perform this action inside of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2046
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2040
    :cond_1
    return-void
.end method

.method private cleanupExec()V
    .locals 1

    .prologue
    .line 2212
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 2213
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2214
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2211
    return-void
.end method

.method private completeExecute(Lcom/miui/systemui/support/v4/app/BackStackRecord;ZZZ)V
    .locals 10
    .param p1, "record"    # Lcom/miui/systemui/support/v4/app/BackStackRecord;
    .param p2, "isPop"    # Z
    .param p3, "runTransitions"    # Z
    .param p4, "moveToState"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x1

    .line 2484
    if-eqz p2, :cond_4

    .line 2485
    invoke-virtual {p1, p4}, Lcom/miui/systemui/support/v4/app/BackStackRecord;->executePopOps(Z)V

    .line 2489
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 2490
    .local v1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/BackStackRecord;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 2491
    .local v2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2492
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2493
    if-eqz p3, :cond_0

    move-object v0, p0

    move v5, v4

    .line 2494
    invoke-static/range {v0 .. v5}, Lcom/miui/systemui/support/v4/app/FragmentTransition;->startTransitions(Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    .line 2496
    :cond_0
    if-eqz p4, :cond_1

    .line 2497
    iget v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mCurState:I

    invoke-virtual {p0, v0, v4}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 2500
    :cond_1
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v0, :cond_6

    .line 2501
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 2502
    .local v8, "numActive":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v8, :cond_6

    .line 2505
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/systemui/support/v4/app/Fragment;

    .line 2506
    .local v6, "fragment":Lcom/miui/systemui/support/v4/app/Fragment;
    if-eqz v6, :cond_3

    iget-object v0, v6, Lcom/miui/systemui/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-boolean v0, v6, Lcom/miui/systemui/support/v4/app/Fragment;->mIsNewlyAdded:Z

    if-eqz v0, :cond_3

    .line 2507
    iget v0, v6, Lcom/miui/systemui/support/v4/app/Fragment;->mContainerId:I

    invoke-virtual {p1, v0}, Lcom/miui/systemui/support/v4/app/BackStackRecord;->interactsWith(I)Z

    move-result v0

    .line 2506
    if-eqz v0, :cond_3

    .line 2508
    iget v0, v6, Lcom/miui/systemui/support/v4/app/Fragment;->mPostponedAlpha:F

    cmpl-float v0, v0, v9

    if-lez v0, :cond_2

    .line 2509
    iget-object v0, v6, Lcom/miui/systemui/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget v4, v6, Lcom/miui/systemui/support/v4/app/Fragment;->mPostponedAlpha:F

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 2511
    :cond_2
    if-eqz p4, :cond_5

    .line 2512
    iput v9, v6, Lcom/miui/systemui/support/v4/app/Fragment;->mPostponedAlpha:F

    .line 2502
    :cond_3
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2487
    .end local v1    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/BackStackRecord;>;"
    .end local v2    # "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .end local v6    # "fragment":Lcom/miui/systemui/support/v4/app/Fragment;
    .end local v7    # "i":I
    .end local v8    # "numActive":I
    :cond_4
    invoke-virtual {p1}, Lcom/miui/systemui/support/v4/app/BackStackRecord;->executeOps()V

    goto :goto_0

    .line 2514
    .restart local v1    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/BackStackRecord;>;"
    .restart local v2    # "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .restart local v6    # "fragment":Lcom/miui/systemui/support/v4/app/Fragment;
    .restart local v7    # "i":I
    .restart local v8    # "numActive":I
    :cond_5
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, v6, Lcom/miui/systemui/support/v4/app/Fragment;->mPostponedAlpha:F

    .line 2515
    iput-boolean v3, v6, Lcom/miui/systemui/support/v4/app/Fragment;->mIsNewlyAdded:Z

    goto :goto_2

    .line 2483
    .end local v6    # "fragment":Lcom/miui/systemui/support/v4/app/Fragment;
    .end local v7    # "i":I
    .end local v8    # "numActive":I
    :cond_6
    return-void
.end method

.method private dispatchStateChange(I)V
    .locals 2
    .param p1, "nextState"    # I

    .prologue
    const/4 v1, 0x0

    .line 3214
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 3215
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3217
    iput-boolean v1, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 3219
    invoke-virtual {p0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    .line 3212
    return-void

    .line 3216
    :catchall_0
    move-exception v0

    .line 3217
    iput-boolean v1, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 3216
    throw v0
.end method

.method private endAnimatingAwayFragments()V
    .locals 11

    .prologue
    const/4 v3, 0x0

    const/4 v10, 0x0

    .line 2624
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-nez v0, :cond_2

    const/4 v9, 0x0

    .line 2625
    .local v9, "numFragments":I
    :goto_0
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v9, :cond_4

    .line 2626
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/systemui/support/v4/app/Fragment;

    .line 2627
    .local v1, "fragment":Lcom/miui/systemui/support/v4/app/Fragment;
    if-eqz v1, :cond_1

    .line 2628
    invoke-virtual {v1}, Lcom/miui/systemui/support/v4/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2630
    invoke-virtual {v1}, Lcom/miui/systemui/support/v4/app/Fragment;->getStateAfterAnimating()I

    move-result v2

    .line 2631
    .local v2, "stateAfterAnimating":I
    invoke-virtual {v1}, Lcom/miui/systemui/support/v4/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v6

    .line 2632
    .local v6, "animatingAway":Landroid/view/View;
    invoke-virtual {v1, v10}, Lcom/miui/systemui/support/v4/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    .line 2633
    invoke-virtual {v6}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v7

    .line 2634
    .local v7, "animation":Landroid/view/animation/Animation;
    if-eqz v7, :cond_0

    .line 2635
    invoke-virtual {v7}, Landroid/view/animation/Animation;->cancel()V

    .line 2638
    invoke-virtual {v6}, Landroid/view/View;->clearAnimation()V

    :cond_0
    move-object v0, p0

    move v4, v3

    move v5, v3

    .line 2640
    invoke-virtual/range {v0 .. v5}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->moveToState(Lcom/miui/systemui/support/v4/app/Fragment;IIIZ)V

    .line 2625
    .end local v2    # "stateAfterAnimating":I
    .end local v6    # "animatingAway":Landroid/view/View;
    .end local v7    # "animation":Landroid/view/animation/Animation;
    :cond_1
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 2624
    .end local v1    # "fragment":Lcom/miui/systemui/support/v4/app/Fragment;
    .end local v8    # "i":I
    .end local v9    # "numFragments":I
    :cond_2
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v9

    .restart local v9    # "numFragments":I
    goto :goto_0

    .line 2641
    .restart local v1    # "fragment":Lcom/miui/systemui/support/v4/app/Fragment;
    .restart local v8    # "i":I
    :cond_3
    invoke-virtual {v1}, Lcom/miui/systemui/support/v4/app/Fragment;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2642
    invoke-virtual {v1}, Lcom/miui/systemui/support/v4/app/Fragment;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    goto :goto_2

    .line 2623
    .end local v1    # "fragment":Lcom/miui/systemui/support/v4/app/Fragment;
    :cond_4
    return-void
.end method

.method private ensureExecReady(Z)V
    .locals 3
    .param p1, "allowStateLoss"    # Z

    .prologue
    const/4 v2, 0x0

    .line 2164
    iget-boolean v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    if-eqz v0, :cond_0

    .line 2165
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "FragmentManager is already executing transactions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2168
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mHost:Lcom/miui/systemui/support/v4/app/FragmentHostCallback;

    invoke-virtual {v1}, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 2169
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Must be called from main thread of fragment host"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2172
    :cond_1
    if-nez p1, :cond_2

    .line 2173
    invoke-direct {p0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->checkStateLoss()V

    .line 2176
    :cond_2
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 2177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    .line 2178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    .line 2180
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 2182
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->executePostponedTransaction(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2184
    iput-boolean v2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 2163
    return-void

    .line 2183
    :catchall_0
    move-exception v0

    .line 2184
    iput-boolean v2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 2183
    throw v0
.end method

.method private static executeOps(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 6
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/systemui/support/v4/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .local p0, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/BackStackRecord;>;"
    .local p1, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    const/4 v5, 0x1

    .line 2567
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_2

    .line 2568
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/systemui/support/v4/app/BackStackRecord;

    .line 2569
    .local v3, "record":Lcom/miui/systemui/support/v4/app/BackStackRecord;
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 2570
    .local v1, "isPop":Z
    if-eqz v1, :cond_1

    .line 2571
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/miui/systemui/support/v4/app/BackStackRecord;->bumpBackStackNesting(I)V

    .line 2574
    add-int/lit8 v4, p3, -0x1

    if-ne v0, v4, :cond_0

    move v2, v5

    .line 2575
    .local v2, "moveToState":Z
    :goto_1
    invoke-virtual {v3, v2}, Lcom/miui/systemui/support/v4/app/BackStackRecord;->executePopOps(Z)V

    .line 2567
    .end local v2    # "moveToState":Z
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2574
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 2577
    :cond_1
    invoke-virtual {v3, v5}, Lcom/miui/systemui/support/v4/app/BackStackRecord;->bumpBackStackNesting(I)V

    .line 2578
    invoke-virtual {v3}, Lcom/miui/systemui/support/v4/app/BackStackRecord;->executeOps()V

    goto :goto_2

    .line 2566
    .end local v1    # "isPop":Z
    .end local v3    # "record":Lcom/miui/systemui/support/v4/app/BackStackRecord;
    :cond_2
    return-void
.end method

.method private executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 20
    .param p3, "startIndex"    # I
    .param p4, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/systemui/support/v4/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 2340
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/BackStackRecord;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/systemui/support/v4/app/BackStackRecord;

    iget-boolean v15, v2, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mReorderingAllowed:Z

    .line 2341
    .local v15, "allowReordering":Z
    const/4 v14, 0x0

    .line 2342
    .local v14, "addToBackStack":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 2343
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    .line 2347
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2348
    invoke-virtual/range {p0 .. p0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->getPrimaryNavigationFragment()Lcom/miui/systemui/support/v4/app/Fragment;

    move-result-object v17

    .line 2349
    .local v17, "oldPrimaryNav":Lcom/miui/systemui/support/v4/app/Fragment;
    move/from16 v19, p3

    .end local v14    # "addToBackStack":Z
    .local v19, "recordNum":I
    :goto_1
    move/from16 v0, v19

    move/from16 v1, p4

    if-ge v0, v1, :cond_3

    .line 2350
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/miui/systemui/support/v4/app/BackStackRecord;

    .line 2351
    .local v18, "record":Lcom/miui/systemui/support/v4/app/BackStackRecord;
    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    .line 2352
    .local v16, "isPop":Z
    if-nez v16, :cond_1

    .line 2353
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Lcom/miui/systemui/support/v4/app/BackStackRecord;->expandOps(Ljava/util/ArrayList;Lcom/miui/systemui/support/v4/app/Fragment;)Lcom/miui/systemui/support/v4/app/Fragment;

    move-result-object v17

    .line 2357
    :goto_2
    if-nez v14, :cond_2

    move-object/from16 v0, v18

    iget-boolean v14, v0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    .line 2349
    :goto_3
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 2345
    .end local v16    # "isPop":Z
    .end local v17    # "oldPrimaryNav":Lcom/miui/systemui/support/v4/app/Fragment;
    .end local v18    # "record":Lcom/miui/systemui/support/v4/app/BackStackRecord;
    .end local v19    # "recordNum":I
    .restart local v14    # "addToBackStack":Z
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 2355
    .end local v14    # "addToBackStack":Z
    .restart local v16    # "isPop":Z
    .restart local v17    # "oldPrimaryNav":Lcom/miui/systemui/support/v4/app/Fragment;
    .restart local v18    # "record":Lcom/miui/systemui/support/v4/app/BackStackRecord;
    .restart local v19    # "recordNum":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Lcom/miui/systemui/support/v4/app/BackStackRecord;->trackAddedFragmentsInPop(Ljava/util/ArrayList;Lcom/miui/systemui/support/v4/app/Fragment;)Lcom/miui/systemui/support/v4/app/Fragment;

    move-result-object v17

    goto :goto_2

    .line 2357
    :cond_2
    const/4 v14, 0x1

    .restart local v14    # "addToBackStack":Z
    goto :goto_3

    .line 2359
    .end local v14    # "addToBackStack":Z
    .end local v16    # "isPop":Z
    .end local v18    # "record":Lcom/miui/systemui/support/v4/app/BackStackRecord;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2361
    if-nez v15, :cond_4

    .line 2363
    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    .line 2362
    invoke-static/range {v2 .. v7}, Lcom/miui/systemui/support/v4/app/FragmentTransition;->startTransitions(Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    .line 2365
    :cond_4
    invoke-static/range {p1 .. p4}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->executeOps(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 2367
    move/from16 v12, p4

    .line 2368
    .local v12, "postponeIndex":I
    if-eqz v15, :cond_5

    .line 2369
    new-instance v7, Lcom/miui/systemui/support/v4/util/ArraySet;

    invoke-direct {v7}, Lcom/miui/systemui/support/v4/util/ArraySet;-><init>()V

    .line 2370
    .local v7, "addedFragments":Lcom/miui/systemui/support/v4/util/ArraySet;, "Landroid/support/v4/util/ArraySet<Landroid/support/v4/app/Fragment;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->addAddedFragments(Lcom/miui/systemui/support/v4/util/ArraySet;)V

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    .line 2371
    invoke-direct/range {v2 .. v7}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->postponePostponableTransactions(Ljava/util/ArrayList;Ljava/util/ArrayList;IILcom/miui/systemui/support/v4/util/ArraySet;)I

    move-result v12

    .line 2373
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->makeRemovedFragmentsInvisible(Lcom/miui/systemui/support/v4/util/ArraySet;)V

    .line 2376
    .end local v7    # "addedFragments":Lcom/miui/systemui/support/v4/util/ArraySet;, "Landroid/support/v4/util/ArraySet<Landroid/support/v4/app/Fragment;>;"
    :cond_5
    move/from16 v0, p3

    if-eq v12, v0, :cond_6

    if-eqz v15, :cond_6

    .line 2379
    const/4 v13, 0x1

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p3

    .line 2378
    invoke-static/range {v8 .. v13}, Lcom/miui/systemui/support/v4/app/FragmentTransition;->startTransitions(Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    .line 2380
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mCurState:I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 2383
    :cond_6
    move/from16 v19, p3

    :goto_4
    move/from16 v0, v19

    move/from16 v1, p4

    if-ge v0, v1, :cond_8

    .line 2384
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/miui/systemui/support/v4/app/BackStackRecord;

    .line 2385
    .restart local v18    # "record":Lcom/miui/systemui/support/v4/app/BackStackRecord;
    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    .line 2386
    .restart local v16    # "isPop":Z
    if-eqz v16, :cond_7

    move-object/from16 v0, v18

    iget v2, v0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mIndex:I

    if-ltz v2, :cond_7

    .line 2387
    move-object/from16 v0, v18

    iget v2, v0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mIndex:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->freeBackStackIndex(I)V

    .line 2388
    const/4 v2, -0x1

    move-object/from16 v0, v18

    iput v2, v0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mIndex:I

    .line 2390
    :cond_7
    invoke-virtual/range {v18 .. v18}, Lcom/miui/systemui/support/v4/app/BackStackRecord;->runOnCommitRunnables()V

    .line 2383
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 2392
    .end local v16    # "isPop":Z
    .end local v18    # "record":Lcom/miui/systemui/support/v4/app/BackStackRecord;
    :cond_8
    if-eqz v14, :cond_9

    .line 2393
    invoke-virtual/range {p0 .. p0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->reportBackStackChanged()V

    .line 2339
    :cond_9
    return-void
.end method

.method private executePostponedTransaction(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/systemui/support/v4/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/BackStackRecord;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    const/4 v7, -0x1

    .line 2246
    iget-object v4, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    if-nez v4, :cond_4

    const/4 v3, 0x0

    .line 2247
    .local v3, "numPostponed":I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_7

    .line 2248
    iget-object v4, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;

    .line 2249
    .local v2, "listener":Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;
    if-eqz p1, :cond_0

    invoke-static {v2}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->-get0(Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2256
    :cond_0
    invoke-virtual {v2}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->isReady()Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz p1, :cond_3

    .line 2257
    invoke-static {v2}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->-get1(Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;)Lcom/miui/systemui/support/v4/app/BackStackRecord;

    move-result-object v4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v4, p1, v6, v5}, Lcom/miui/systemui/support/v4/app/BackStackRecord;->interactsWith(Ljava/util/ArrayList;II)Z

    move-result v4

    .line 2256
    if-eqz v4, :cond_3

    .line 2258
    :cond_1
    iget-object v4, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2259
    add-int/lit8 v0, v0, -0x1

    .line 2260
    add-int/lit8 v3, v3, -0x1

    .line 2262
    if-eqz p1, :cond_2

    invoke-static {v2}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->-get0(Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2268
    :cond_2
    invoke-virtual {v2}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->completeTransaction()V

    .line 2247
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2246
    .end local v0    # "i":I
    .end local v2    # "listener":Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;
    .end local v3    # "numPostponed":I
    :cond_4
    iget-object v4, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .restart local v3    # "numPostponed":I
    goto :goto_0

    .line 2250
    .restart local v0    # "i":I
    .restart local v2    # "listener":Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;
    :cond_5
    invoke-static {v2}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->-get1(Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;)Lcom/miui/systemui/support/v4/app/BackStackRecord;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 2251
    .local v1, "index":I
    if-eq v1, v7, :cond_0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2252
    invoke-virtual {v2}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->cancelTransaction()V

    goto :goto_2

    .line 2263
    .end local v1    # "index":I
    :cond_6
    invoke-static {v2}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->-get1(Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;)Lcom/miui/systemui/support/v4/app/BackStackRecord;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .restart local v1    # "index":I
    if-eq v1, v7, :cond_2

    .line 2264
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 2262
    if-eqz v4, :cond_2

    .line 2266
    invoke-virtual {v2}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->cancelTransaction()V

    goto :goto_2

    .line 2245
    .end local v1    # "index":I
    .end local v2    # "listener":Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;
    :cond_7
    return-void
.end method

.method private findFragmentUnder(Lcom/miui/systemui/support/v4/app/Fragment;)Lcom/miui/systemui/support/v4/app/Fragment;
    .locals 7
    .param p1, "f"    # Lcom/miui/systemui/support/v4/app/Fragment;

    .prologue
    const/4 v6, 0x0

    .line 2539
    iget-object v0, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 2540
    .local v0, "container":Landroid/view/ViewGroup;
    iget-object v4, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 2542
    .local v4, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    if-nez v4, :cond_1

    .line 2543
    :cond_0
    return-object v6

    .line 2546
    :cond_1
    iget-object v5, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 2547
    .local v1, "fragmentIndex":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_3

    .line 2548
    iget-object v5, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/systemui/support/v4/app/Fragment;

    .line 2549
    .local v3, "underFragment":Lcom/miui/systemui/support/v4/app/Fragment;
    iget-object v5, v3, Lcom/miui/systemui/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-ne v5, v0, :cond_2

    iget-object v5, v3, Lcom/miui/systemui/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v5, :cond_2

    .line 2551
    return-object v3

    .line 2547
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2554
    .end local v3    # "underFragment":Lcom/miui/systemui/support/v4/app/Fragment;
    :cond_3
    return-object v6
.end method

.method private forcePostponedTransactions()V
    .locals 2

    .prologue
    .line 2612
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2613
    :goto_0
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2614
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->completeTransaction()V

    goto :goto_0

    .line 2611
    :cond_0
    return-void
.end method

.method private generateOpsForPendingActions(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/systemui/support/v4/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/BackStackRecord;>;"
    .local p2, "isPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    const/4 v4, 0x0

    .line 2660
    const/4 v0, 0x0

    .line 2661
    .local v0, "didSomething":Z
    monitor-enter p0

    .line 2662
    :try_start_0
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    monitor-exit p0

    .line 2663
    return v4

    .line 2666
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2667
    .local v2, "numActions":I
    const/4 v1, 0x0

    .end local v0    # "didSomething":Z
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 2668
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$OpGenerator;

    invoke-interface {v3, p1, p2}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$OpGenerator;->generateOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 2667
    .local v0, "didSomething":Z
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2670
    .end local v0    # "didSomething":Z
    :cond_2
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2671
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mHost:Lcom/miui/systemui/support/v4/app/FragmentHostCallback;

    invoke-virtual {v3}, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 2673
    return v0

    .line 2661
    .end local v1    # "i":I
    .end local v2    # "numActions":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private static getAnimationListener(Landroid/view/animation/Animation;)Landroid/view/animation/Animation$AnimationListener;
    .locals 6
    .param p0, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1260
    const/4 v3, 0x0

    .line 1262
    .local v3, "originalListener":Landroid/view/animation/Animation$AnimationListener;
    :try_start_0
    sget-object v4, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->sAnimationListenerField:Ljava/lang/reflect/Field;

    if-nez v4, :cond_0

    .line 1263
    const-class v4, Landroid/view/animation/Animation;

    const-string/jumbo v5, "mListener"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    sput-object v4, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->sAnimationListenerField:Ljava/lang/reflect/Field;

    .line 1264
    sget-object v4, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->sAnimationListenerField:Ljava/lang/reflect/Field;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1266
    :cond_0
    sget-object v4, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->sAnimationListenerField:Ljava/lang/reflect/Field;

    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/view/animation/Animation$AnimationListener;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1272
    .end local v3    # "originalListener":Landroid/view/animation/Animation$AnimationListener;
    :goto_0
    return-object v3

    .line 1269
    .restart local v3    # "originalListener":Landroid/view/animation/Animation$AnimationListener;
    :catch_0
    move-exception v1

    .line 1270
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v4, "FragmentManager"

    const-string/jumbo v5, "Cannot access Animation\'s mListener field"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1267
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v2

    .line 1268
    .local v2, "e":Ljava/lang/NoSuchFieldException;
    const-string/jumbo v4, "FragmentManager"

    const-string/jumbo v5, "No field with the name mListener is found in Animation class"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static makeFadeAnimation(Landroid/content/Context;FF)Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "start"    # F
    .param p2, "end"    # F

    .prologue
    .line 1114
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p1, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1115
    .local v0, "anim":Landroid/view/animation/AlphaAnimation;
    sget-object v1, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1116
    const-wide/16 v2, 0xdc

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1117
    new-instance v1, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;)V

    return-object v1
.end method

.method static makeOpenCloseAnimation(Landroid/content/Context;FFFF)Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "startScale"    # F
    .param p2, "endScale"    # F
    .param p3, "startAlpha"    # F
    .param p4, "endAlpha"    # F

    .prologue
    .line 1100
    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v10, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1101
    .local v10, "set":Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    .line 1102
    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    move v1, p1

    move v2, p2

    move v3, p1

    move v4, p2

    .line 1101
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1103
    .local v0, "scale":Landroid/view/animation/ScaleAnimation;
    sget-object v1, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1104
    const-wide/16 v2, 0xdc

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1105
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1106
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v9, p3, p4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1107
    .local v9, "alpha":Landroid/view/animation/AlphaAnimation;
    sget-object v1, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1108
    const-wide/16 v2, 0xdc

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1109
    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1110
    new-instance v1, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;

    const/4 v2, 0x0

    invoke-direct {v1, v10, v2}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;)V

    return-object v1
.end method

.method private makeRemovedFragmentsInvisible(Lcom/miui/systemui/support/v4/util/ArraySet;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/systemui/support/v4/util/ArraySet",
            "<",
            "Lcom/miui/systemui/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2405
    .local p1, "fragments":Lcom/miui/systemui/support/v4/util/ArraySet;, "Landroid/support/v4/util/ArraySet<Landroid/support/v4/app/Fragment;>;"
    invoke-virtual {p1}, Lcom/miui/systemui/support/v4/util/ArraySet;->size()I

    move-result v2

    .line 2406
    .local v2, "numAdded":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 2407
    invoke-virtual {p1, v1}, Lcom/miui/systemui/support/v4/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/systemui/support/v4/app/Fragment;

    .line 2408
    .local v0, "fragment":Lcom/miui/systemui/support/v4/app/Fragment;
    iget-boolean v4, v0, Lcom/miui/systemui/support/v4/app/Fragment;->mAdded:Z

    if-nez v4, :cond_0

    .line 2409
    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v3

    .line 2410
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v4

    iput v4, v0, Lcom/miui/systemui/support/v4/app/Fragment;->mPostponedAlpha:F

    .line 2411
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 2406
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2404
    .end local v0    # "fragment":Lcom/miui/systemui/support/v4/app/Fragment;
    :cond_1
    return-void
.end method

.method static modifiesAlpha(Landroid/animation/Animator;)Z
    .locals 8
    .param p0, "anim"    # Landroid/animation/Animator;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 719
    if-nez p0, :cond_0

    .line 720
    return v6

    .line 722
    :cond_0
    instance-of v4, p0, Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_2

    move-object v2, p0

    .line 723
    check-cast v2, Landroid/animation/ValueAnimator;

    .line 724
    .local v2, "valueAnim":Landroid/animation/ValueAnimator;
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 725
    .local v3, "values":[Landroid/animation/PropertyValuesHolder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_4

    .line 726
    const-string/jumbo v4, "alpha"

    aget-object v5, v3, v1

    invoke-virtual {v5}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 727
    return v7

    .line 725
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 730
    .end local v1    # "i":I
    .end local v2    # "valueAnim":Landroid/animation/ValueAnimator;
    .end local v3    # "values":[Landroid/animation/PropertyValuesHolder;
    :cond_2
    instance-of v4, p0, Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_4

    .line 731
    check-cast p0, Landroid/animation/AnimatorSet;

    .end local p0    # "anim":Landroid/animation/Animator;
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v0

    .line 732
    .local v0, "animList":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 733
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    invoke-static {v4}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->modifiesAlpha(Landroid/animation/Animator;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 734
    return v7

    .line 732
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 738
    .end local v0    # "animList":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    .end local v1    # "i":I
    :cond_4
    return v6
.end method

.method static modifiesAlpha(Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;)Z
    .locals 4
    .param p0, "anim"    # Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;

    .prologue
    const/4 v3, 0x1

    .line 703
    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    instance-of v2, v2, Landroid/view/animation/AlphaAnimation;

    if-eqz v2, :cond_0

    .line 704
    return v3

    .line 705
    :cond_0
    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    instance-of v2, v2, Landroid/view/animation/AnimationSet;

    if-eqz v2, :cond_3

    .line 706
    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    check-cast v2, Landroid/view/animation/AnimationSet;

    invoke-virtual {v2}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v0

    .line 707
    .local v0, "anims":Ljava/util/List;, "Ljava/util/List<Landroid/view/animation/Animation;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 708
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroid/view/animation/AlphaAnimation;

    if-eqz v2, :cond_1

    .line 709
    return v3

    .line 707
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 712
    :cond_2
    const/4 v2, 0x0

    return v2

    .line 714
    .end local v0    # "anims":Ljava/util/List;, "Ljava/util/List<Landroid/view/animation/Animation;>;"
    .end local v1    # "i":I
    :cond_3
    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    invoke-static {v2}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->modifiesAlpha(Landroid/animation/Animator;)Z

    move-result v2

    return v2
.end method

.method private popBackStackImmediate(Ljava/lang/String;II)Z
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "flags"    # I

    .prologue
    const/4 v8, 0x1

    .line 832
    invoke-virtual {p0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    .line 833
    invoke-direct {p0, v8}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->ensureExecReady(Z)V

    .line 835
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mPrimaryNav:Lcom/miui/systemui/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 836
    if-gez p2, :cond_0

    .line 837
    if-nez p1, :cond_0

    .line 838
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mPrimaryNav:Lcom/miui/systemui/support/v4/app/Fragment;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/Fragment;->peekChildFragmentManager()Lcom/miui/systemui/support/v4/app/FragmentManager;

    move-result-object v6

    .line 839
    .local v6, "childManager":Lcom/miui/systemui/support/v4/app/FragmentManager;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/miui/systemui/support/v4/app/FragmentManager;->popBackStackImmediate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 841
    return v8

    .line 845
    .end local v6    # "childManager":Lcom/miui/systemui/support/v4/app/FragmentManager;
    :cond_0
    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->popBackStackState(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result v7

    .line 846
    .local v7, "executePop":Z
    if-eqz v7, :cond_1

    .line 847
    iput-boolean v8, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 849
    :try_start_0
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->removeRedundantOperationsAndExecute(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 851
    invoke-direct {p0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->cleanupExec()V

    .line 855
    :cond_1
    invoke-virtual {p0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->doPendingDeferredStart()V

    .line 856
    invoke-direct {p0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->burpActive()V

    .line 857
    return v7

    .line 850
    :catchall_0
    move-exception v0

    .line 851
    invoke-direct {p0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->cleanupExec()V

    .line 850
    throw v0
.end method

.method private postponePostponableTransactions(Ljava/util/ArrayList;Ljava/util/ArrayList;IILcom/miui/systemui/support/v4/util/ArraySet;)I
    .locals 8
    .param p3, "startIndex"    # I
    .param p4, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/systemui/support/v4/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;II",
            "Lcom/miui/systemui/support/v4/util/ArraySet",
            "<",
            "Lcom/miui/systemui/support/v4/app/Fragment;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/BackStackRecord;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .local p5, "added":Lcom/miui/systemui/support/v4/util/ArraySet;, "Landroid/support/v4/util/ArraySet<Landroid/support/v4/app/Fragment;>;"
    const/4 v7, 0x0

    .line 2431
    move v4, p4

    .line 2432
    .local v4, "postponeIndex":I
    add-int/lit8 v0, p4, -0x1

    .local v0, "i":I
    :goto_0
    if-lt v0, p3, :cond_6

    .line 2433
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/systemui/support/v4/app/BackStackRecord;

    .line 2434
    .local v5, "record":Lcom/miui/systemui/support/v4/app/BackStackRecord;
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 2435
    .local v1, "isPop":Z
    invoke-virtual {v5}, Lcom/miui/systemui/support/v4/app/BackStackRecord;->isPostponed()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2436
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5, p1, v6, p4}, Lcom/miui/systemui/support/v4/app/BackStackRecord;->interactsWith(Ljava/util/ArrayList;II)Z

    move-result v6

    if-eqz v6, :cond_3

    move v2, v7

    .line 2437
    .local v2, "isPostponed":Z
    :goto_1
    if-eqz v2, :cond_2

    .line 2438
    iget-object v6, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    if-nez v6, :cond_0

    .line 2439
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    .line 2442
    :cond_0
    new-instance v3, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;

    invoke-direct {v3, v5, v1}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;-><init>(Lcom/miui/systemui/support/v4/app/BackStackRecord;Z)V

    .line 2443
    .local v3, "listener":Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;
    iget-object v6, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2444
    invoke-virtual {v5, v3}, Lcom/miui/systemui/support/v4/app/BackStackRecord;->setOnStartPostponedListener(Lcom/miui/systemui/support/v4/app/Fragment$OnStartEnterTransitionListener;)V

    .line 2447
    if-eqz v1, :cond_5

    .line 2448
    invoke-virtual {v5}, Lcom/miui/systemui/support/v4/app/BackStackRecord;->executeOps()V

    .line 2454
    :goto_2
    add-int/lit8 v4, v4, -0x1

    .line 2455
    if-eq v0, v4, :cond_1

    .line 2456
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2457
    invoke-virtual {p1, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2461
    :cond_1
    invoke-direct {p0, p5}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->addAddedFragments(Lcom/miui/systemui/support/v4/util/ArraySet;)V

    .line 2432
    .end local v3    # "listener":Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2436
    .end local v2    # "isPostponed":Z
    :cond_3
    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    move v2, v7

    .line 2435
    goto :goto_1

    .line 2450
    .restart local v2    # "isPostponed":Z
    .restart local v3    # "listener":Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;
    :cond_5
    invoke-virtual {v5, v7}, Lcom/miui/systemui/support/v4/app/BackStackRecord;->executePopOps(Z)V

    goto :goto_2

    .line 2464
    .end local v1    # "isPop":Z
    .end local v2    # "isPostponed":Z
    .end local v3    # "listener":Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;
    .end local v5    # "record":Lcom/miui/systemui/support/v4/app/BackStackRecord;
    :cond_6
    return v4
.end method

.method private removeRedundantOperationsAndExecute(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/systemui/support/v4/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2290
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/BackStackRecord;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2291
    :cond_0
    return-void

    .line 2294
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eq v5, v6, :cond_3

    .line 2295
    :cond_2
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "Internal error with the back stack records"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2299
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->executePostponedTransaction(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2301
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2302
    .local v1, "numRecords":I
    const/4 v4, 0x0

    .line 2303
    .local v4, "startIndex":I
    const/4 v2, 0x0

    .local v2, "recordNum":I
    :goto_0
    if-ge v2, v1, :cond_8

    .line 2304
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/systemui/support/v4/app/BackStackRecord;

    iget-boolean v0, v5, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mReorderingAllowed:Z

    .line 2305
    .local v0, "canReorder":Z
    if-nez v0, :cond_6

    .line 2307
    if-eq v4, v2, :cond_4

    .line 2308
    invoke-direct {p0, p1, p2, v4, v2}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 2312
    :cond_4
    add-int/lit8 v3, v2, 0x1

    .line 2313
    .local v3, "reorderingEnd":I
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2314
    :goto_1
    if-ge v3, v1, :cond_5

    .line 2315
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 2314
    if-eqz v5, :cond_5

    .line 2316
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/systemui/support/v4/app/BackStackRecord;

    iget-boolean v5, v5, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mReorderingAllowed:Z

    if-eqz v5, :cond_7

    .line 2320
    :cond_5
    invoke-direct {p0, p1, p2, v2, v3}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 2321
    move v4, v3

    .line 2322
    add-int/lit8 v2, v3, -0x1

    .line 2303
    .end local v3    # "reorderingEnd":I
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2317
    .restart local v3    # "reorderingEnd":I
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2325
    .end local v0    # "canReorder":Z
    .end local v3    # "reorderingEnd":I
    :cond_8
    if-eq v4, v1, :cond_9

    .line 2326
    invoke-direct {p0, p1, p2, v4, v1}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 2289
    :cond_9
    return-void
.end method

.method public static reverseTransit(I)I
    .locals 1
    .param p0, "transit"    # I

    .prologue
    .line 3630
    const/4 v0, 0x0

    .line 3631
    .local v0, "rev":I
    sparse-switch p0, :sswitch_data_0

    .line 3642
    :goto_0
    return v0

    .line 3633
    :sswitch_0
    const/16 v0, 0x2002

    .line 3634
    goto :goto_0

    .line 3636
    :sswitch_1
    const/16 v0, 0x1001

    .line 3637
    goto :goto_0

    .line 3639
    :sswitch_2
    const/16 v0, 0x1003

    .line 3640
    goto :goto_0

    .line 3631
    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1003 -> :sswitch_2
        0x2002 -> :sswitch_1
    .end sparse-switch
.end method

.method private scheduleCommit()V
    .locals 4

    .prologue
    .line 2090
    monitor-enter p0

    .line 2092
    :try_start_0
    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    const/4 v1, 0x0

    .line 2093
    .local v1, "postponeReady":Z
    :goto_0
    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    const/4 v0, 0x1

    .line 2094
    .local v0, "pendingReady":Z
    :goto_1
    if-nez v1, :cond_1

    if-eqz v0, :cond_2

    .line 2095
    :cond_1
    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mHost:Lcom/miui/systemui/support/v4/app/FragmentHostCallback;

    invoke-virtual {v2}, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2096
    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mHost:Lcom/miui/systemui/support/v4/app/FragmentHostCallback;

    invoke-virtual {v2}, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    .line 2089
    return-void

    .line 2092
    .end local v0    # "pendingReady":Z
    .end local v1    # "postponeReady":Z
    :cond_3
    const/4 v1, 0x1

    .restart local v1    # "postponeReady":Z
    goto :goto_0

    .line 2093
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "pendingReady":Z
    goto :goto_1

    .line 2090
    .end local v0    # "pendingReady":Z
    .end local v1    # "postponeReady":Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private static setHWLayerAnimListenerIfAlpha(Landroid/view/View;Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;)V
    .locals 3
    .param p0, "v"    # Landroid/view/View;
    .param p1, "anim"    # Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;

    .prologue
    const/4 v2, 0x0

    .line 1238
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1239
    :cond_0
    return-void

    .line 1241
    :cond_1
    invoke-static {p0, p1}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->shouldRunOnHWLayer(Landroid/view/View;Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1242
    iget-object v1, p1, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    if-eqz v1, :cond_3

    .line 1243
    iget-object v1, p1, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    new-instance v2, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimatorOnHWLayerIfNeededListener;

    invoke-direct {v2, p0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimatorOnHWLayerIfNeededListener;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1237
    :cond_2
    :goto_0
    return-void

    .line 1245
    :cond_3
    iget-object v1, p1, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    invoke-static {v1}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->getAnimationListener(Landroid/view/animation/Animation;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    .line 1249
    .local v0, "originalListener":Landroid/view/animation/Animation$AnimationListener;
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1250
    iget-object v1, p1, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    new-instance v2, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;

    invoke-direct {v2, p0, v0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;-><init>(Landroid/view/View;Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method private static setRetaining(Lcom/miui/systemui/support/v4/app/FragmentManagerNonConfig;)V
    .locals 7
    .param p0, "nonConfig"    # Lcom/miui/systemui/support/v4/app/FragmentManagerNonConfig;

    .prologue
    .line 2776
    if-nez p0, :cond_0

    .line 2777
    return-void

    .line 2779
    :cond_0
    invoke-virtual {p0}, Lcom/miui/systemui/support/v4/app/FragmentManagerNonConfig;->getFragments()Ljava/util/List;

    move-result-object v5

    .line 2780
    .local v5, "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    if-eqz v5, :cond_1

    .line 2781
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "fragment$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/systemui/support/v4/app/Fragment;

    .line 2782
    .local v3, "fragment":Lcom/miui/systemui/support/v4/app/Fragment;
    const/4 v6, 0x1

    iput-boolean v6, v3, Lcom/miui/systemui/support/v4/app/Fragment;->mRetaining:Z

    goto :goto_0

    .line 2785
    .end local v3    # "fragment":Lcom/miui/systemui/support/v4/app/Fragment;
    .end local v4    # "fragment$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {p0}, Lcom/miui/systemui/support/v4/app/FragmentManagerNonConfig;->getChildNonConfigs()Ljava/util/List;

    move-result-object v2

    .line 2786
    .local v2, "children":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/FragmentManagerNonConfig;>;"
    if-eqz v2, :cond_2

    .line 2787
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "child$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/systemui/support/v4/app/FragmentManagerNonConfig;

    .line 2788
    .local v0, "child":Lcom/miui/systemui/support/v4/app/FragmentManagerNonConfig;
    invoke-static {v0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->setRetaining(Lcom/miui/systemui/support/v4/app/FragmentManagerNonConfig;)V

    goto :goto_1

    .line 2775
    .end local v0    # "child":Lcom/miui/systemui/support/v4/app/FragmentManagerNonConfig;
    .end local v1    # "child$iterator":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method static shouldRunOnHWLayer(Landroid/view/View;Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;)Z
    .locals 3
    .param p0, "v"    # Landroid/view/View;
    .param p1, "anim"    # Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;

    .prologue
    const/4 v0, 0x0

    .line 742
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 743
    :cond_0
    return v0

    .line 745
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_2

    .line 746
    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result v1

    if-nez v1, :cond_2

    .line 747
    invoke-virtual {p0}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result v1

    .line 745
    if-eqz v1, :cond_2

    .line 748
    invoke-static {p1}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->modifiesAlpha(Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;)Z

    move-result v0

    .line 745
    :cond_2
    return v0
.end method

.method private throwException(Ljava/lang/RuntimeException;)V
    .locals 7
    .param p1, "ex"    # Ljava/lang/RuntimeException;

    .prologue
    .line 752
    const-string/jumbo v3, "FragmentManager"

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    const-string/jumbo v3, "FragmentManager"

    const-string/jumbo v4, "Activity state:"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    new-instance v1, Lcom/miui/systemui/support/v4/util/LogWriter;

    const-string/jumbo v3, "FragmentManager"

    invoke-direct {v1, v3}, Lcom/miui/systemui/support/v4/util/LogWriter;-><init>(Ljava/lang/String;)V

    .line 755
    .local v1, "logw":Lcom/miui/systemui/support/v4/util/LogWriter;
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 756
    .local v2, "pw":Ljava/io/PrintWriter;
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mHost:Lcom/miui/systemui/support/v4/app/FragmentHostCallback;

    if-eqz v3, :cond_0

    .line 758
    :try_start_0
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mHost:Lcom/miui/systemui/support/v4/app/FragmentHostCallback;

    const-string/jumbo v4, "  "

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v2, v5}, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 769
    :goto_0
    throw p1

    .line 759
    :catch_0
    move-exception v0

    .line 760
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "FragmentManager"

    const-string/jumbo v4, "Failed dumping state"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 764
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    const-string/jumbo v3, "  "

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v5, v2, v4}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 765
    :catch_1
    move-exception v0

    .line 766
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "FragmentManager"

    const-string/jumbo v4, "Failed dumping state"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static transitToStyleIndex(IZ)I
    .locals 1
    .param p0, "transit"    # I
    .param p1, "enter"    # Z

    .prologue
    .line 3654
    const/4 v0, -0x1

    .line 3655
    .local v0, "animAttr":I
    sparse-switch p0, :sswitch_data_0

    .line 3666
    :goto_0
    return v0

    .line 3657
    :sswitch_0
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    .line 3660
    :sswitch_1
    if-eqz p1, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    .line 3663
    :sswitch_2
    if-eqz p1, :cond_2

    const/4 v0, 0x5

    goto :goto_0

    :cond_2
    const/4 v0, 0x6

    goto :goto_0

    .line 3655
    nop

    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1003 -> :sswitch_2
        0x2002 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method addBackStackState(Lcom/miui/systemui/support/v4/app/BackStackRecord;)V
    .locals 1
    .param p1, "state"    # Lcom/miui/systemui/support/v4/app/BackStackRecord;

    .prologue
    .line 2701
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2702
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    .line 2704
    :cond_0
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2700
    return-void
.end method

.method public addFragment(Lcom/miui/systemui/support/v4/app/Fragment;Z)V
    .locals 5
    .param p1, "fragment"    # Lcom/miui/systemui/support/v4/app/Fragment;
    .param p2, "moveToStateNow"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1876
    sget-boolean v0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "add: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1877
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->makeActive(Lcom/miui/systemui/support/v4/app/Fragment;)V

    .line 1878
    iget-boolean v0, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mDetached:Z

    if-nez v0, :cond_4

    .line 1879
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1880
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment already added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1882
    :cond_1
    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1883
    :try_start_0
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1885
    iput-boolean v4, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mAdded:Z

    .line 1886
    iput-boolean v3, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mRemoving:Z

    .line 1887
    iget-object v0, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-nez v0, :cond_2

    .line 1888
    iput-boolean v3, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mHiddenChanged:Z

    .line 1890
    :cond_2
    iget-boolean v0, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_3

    .line 1891
    iput-boolean v4, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1893
    :cond_3
    if-eqz p2, :cond_4

    .line 1894
    invoke-virtual {p0, p1}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->moveToState(Lcom/miui/systemui/support/v4/app/Fragment;)V

    .line 1875
    :cond_4
    return-void

    .line 1882
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public allocBackStackIndex(Lcom/miui/systemui/support/v4/app/BackStackRecord;)I
    .locals 4
    .param p1, "bse"    # Lcom/miui/systemui/support/v4/app/BackStackRecord;

    .prologue
    .line 2102
    monitor-enter p0

    .line 2103
    :try_start_0
    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_3

    .line 2104
    :cond_0
    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 2105
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    .line 2107
    :cond_1
    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2108
    .local v0, "index":I
    sget-boolean v1, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Setting back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2109
    :cond_2
    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 2110
    return v0

    .line 2113
    .end local v0    # "index":I
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2114
    .restart local v0    # "index":I
    sget-boolean v1, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Adding back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2115
    :cond_4
    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 2116
    return v0

    .line 2102
    .end local v0    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public attachController(Lcom/miui/systemui/support/v4/app/FragmentHostCallback;Lcom/miui/systemui/support/v4/app/FragmentContainer;Lcom/miui/systemui/support/v4/app/Fragment;)V
    .locals 2
    .param p1, "host"    # Lcom/miui/systemui/support/v4/app/FragmentHostCallback;
    .param p2, "container"    # Lcom/miui/systemui/support/v4/app/FragmentContainer;
    .param p3, "parent"    # Lcom/miui/systemui/support/v4/app/Fragment;

    .prologue
    .line 3144
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mHost:Lcom/miui/systemui/support/v4/app/FragmentHostCallback;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already attached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3145
    :cond_0
    iput-object p1, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mHost:Lcom/miui/systemui/support/v4/app/FragmentHostCallback;

    .line 3146
    iput-object p2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mContainer:Lcom/miui/systemui/support/v4/app/FragmentContainer;

    .line 3147
    iput-object p3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mParent:Lcom/miui/systemui/support/v4/app/Fragment;

    .line 3143
    return-void
.end method

.method public attachFragment(Lcom/miui/systemui/support/v4/app/Fragment;)V
    .locals 4
    .param p1, "fragment"    # Lcom/miui/systemui/support/v4/app/Fragment;

    .prologue
    const/4 v3, 0x1

    .line 1965
    sget-boolean v0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "attach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1966
    :cond_0
    iget-boolean v0, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mDetached:Z

    if-eqz v0, :cond_3

    .line 1967
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mDetached:Z

    .line 1968
    iget-boolean v0, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mAdded:Z

    if-nez v0, :cond_3

    .line 1969
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1970
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment already added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1972
    :cond_1
    sget-boolean v0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "add from attach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1973
    :cond_2
    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1974
    :try_start_0
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1976
    iput-boolean v3, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mAdded:Z

    .line 1977
    iget-boolean v0, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_3

    .line 1978
    iput-boolean v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1964
    :cond_3
    return-void

    .line 1973
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public beginTransaction()Lcom/miui/systemui/support/v4/app/FragmentTransaction;
    .locals 1

    .prologue
    .line 774
    new-instance v0, Lcom/miui/systemui/support/v4/app/BackStackRecord;

    invoke-direct {v0, p0}, Lcom/miui/systemui/support/v4/app/BackStackRecord;-><init>(Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;)V

    return-object v0
.end method

.method completeShowHideFragment(Lcom/miui/systemui/support/v4/app/Fragment;)V
    .locals 9
    .param p1, "fragment"    # Lcom/miui/systemui/support/v4/app/Fragment;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1668
    iget-object v4, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 1669
    invoke-virtual {p1}, Lcom/miui/systemui/support/v4/app/Fragment;->getNextTransition()I

    move-result v7

    .line 1670
    iget-boolean v4, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mHidden:Z

    if-eqz v4, :cond_2

    move v4, v5

    :goto_0
    invoke-virtual {p1}, Lcom/miui/systemui/support/v4/app/Fragment;->getNextTransitionStyle()I

    move-result v8

    .line 1669
    invoke-virtual {p0, p1, v7, v4, v8}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->loadAnimation(Lcom/miui/systemui/support/v4/app/Fragment;IZI)Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;

    move-result-object v0

    .line 1671
    .local v0, "anim":Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;
    if-eqz v0, :cond_5

    iget-object v4, v0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    if-eqz v4, :cond_5

    .line 1672
    iget-object v4, v0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    iget-object v7, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1673
    iget-boolean v4, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mHidden:Z

    if-eqz v4, :cond_4

    .line 1674
    invoke-virtual {p1}, Lcom/miui/systemui/support/v4/app/Fragment;->isHideReplaced()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1675
    invoke-virtual {p1, v5}, Lcom/miui/systemui/support/v4/app/Fragment;->setHideReplaced(Z)V

    .line 1696
    :goto_1
    iget-object v4, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v4, v0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;)V

    .line 1697
    iget-object v4, v0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->start()V

    .line 1713
    .end local v0    # "anim":Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;
    :cond_0
    :goto_2
    iget-boolean v4, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mAdded:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v4, :cond_1

    .line 1714
    iput-boolean v6, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1716
    :cond_1
    iput-boolean v5, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mHiddenChanged:Z

    .line 1717
    iget-boolean v4, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mHidden:Z

    invoke-virtual {p1, v4}, Lcom/miui/systemui/support/v4/app/Fragment;->onHiddenChanged(Z)V

    .line 1667
    return-void

    :cond_2
    move v4, v6

    .line 1670
    goto :goto_0

    .line 1677
    .restart local v0    # "anim":Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;
    :cond_3
    iget-object v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1678
    .local v2, "container":Landroid/view/ViewGroup;
    iget-object v1, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 1679
    .local v1, "animatingView":Landroid/view/View;
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 1682
    iget-object v4, v0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    new-instance v7, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$4;

    invoke-direct {v7, p0, v2, v1, p1}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$4;-><init>(Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;Landroid/view/ViewGroup;Landroid/view/View;Lcom/miui/systemui/support/v4/app/Fragment;)V

    invoke-virtual {v4, v7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_1

    .line 1694
    .end local v1    # "animatingView":Landroid/view/View;
    .end local v2    # "container":Landroid/view/ViewGroup;
    :cond_4
    iget-object v4, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1699
    :cond_5
    if-eqz v0, :cond_6

    .line 1700
    iget-object v4, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v4, v0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;)V

    .line 1701
    iget-object v4, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget-object v7, v0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v4, v7}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1702
    iget-object v4, v0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v4}, Landroid/view/animation/Animation;->start()V

    .line 1704
    :cond_6
    iget-boolean v4, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mHidden:Z

    if-eqz v4, :cond_7

    invoke-virtual {p1}, Lcom/miui/systemui/support/v4/app/Fragment;->isHideReplaced()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1706
    :cond_7
    const/4 v3, 0x0

    .line 1707
    .local v3, "visibility":I
    :goto_3
    iget-object v4, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1708
    invoke-virtual {p1}, Lcom/miui/systemui/support/v4/app/Fragment;->isHideReplaced()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1709
    invoke-virtual {p1, v5}, Lcom/miui/systemui/support/v4/app/Fragment;->setHideReplaced(Z)V

    goto :goto_2

    .line 1705
    .end local v3    # "visibility":I
    :cond_8
    const/16 v3, 0x8

    .restart local v3    # "visibility":I
    goto :goto_3
.end method

.method public detachFragment(Lcom/miui/systemui/support/v4/app/Fragment;)V
    .locals 4
    .param p1, "fragment"    # Lcom/miui/systemui/support/v4/app/Fragment;

    .prologue
    const/4 v3, 0x1

    .line 1947
    sget-boolean v0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "detach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1948
    :cond_0
    iget-boolean v0, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mDetached:Z

    if-nez v0, :cond_3

    .line 1949
    iput-boolean v3, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mDetached:Z

    .line 1950
    iget-boolean v0, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_3

    .line 1952
    sget-boolean v0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remove from detach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1953
    :cond_1
    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1954
    :try_start_0
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1956
    iget-boolean v0, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_2

    .line 1957
    iput-boolean v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1959
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mAdded:Z

    .line 1946
    :cond_3
    return-void

    .line 1953
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public dispatchActivityCreated()V
    .locals 1

    .prologue
    .line 3168
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    .line 3169
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->dispatchStateChange(I)V

    .line 3167
    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 3241
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3242
    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/systemui/support/v4/app/Fragment;

    .line 3243
    .local v0, "f":Lcom/miui/systemui/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 3244
    invoke-virtual {v0, p1}, Lcom/miui/systemui/support/v4/app/Fragment;->performConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3241
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3240
    .end local v0    # "f":Lcom/miui/systemui/support/v4/app/Fragment;
    :cond_1
    return-void
.end method

.method public dispatchContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 3314
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3315
    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/systemui/support/v4/app/Fragment;

    .line 3316
    .local v0, "f":Lcom/miui/systemui/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 3317
    invoke-virtual {v0, p1}, Lcom/miui/systemui/support/v4/app/Fragment;->performContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3318
    const/4 v2, 0x1

    return v2

    .line 3314
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3322
    .end local v0    # "f":Lcom/miui/systemui/support/v4/app/Fragment;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public dispatchCreate()V
    .locals 1

    .prologue
    .line 3163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    .line 3164
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->dispatchStateChange(I)V

    .line 3162
    return-void
.end method

.method public dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 3259
    const/4 v3, 0x0

    .line 3260
    .local v3, "show":Z
    const/4 v2, 0x0

    .line 3261
    .local v2, "newMenus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    const/4 v1, 0x0

    .end local v2    # "newMenus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 3262
    iget-object v4, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/systemui/support/v4/app/Fragment;

    .line 3263
    .local v0, "f":Lcom/miui/systemui/support/v4/app/Fragment;
    if-eqz v0, :cond_1

    .line 3264
    invoke-virtual {v0, p1, p2}, Lcom/miui/systemui/support/v4/app/Fragment;->performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3265
    const/4 v3, 0x1

    .line 3266
    if-nez v2, :cond_0

    .line 3267
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3269
    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3261
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3274
    .end local v0    # "f":Lcom/miui/systemui/support/v4/app/Fragment;
    :cond_2
    iget-object v4, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    .line 3275
    const/4 v1, 0x0

    :goto_1
    iget-object v4, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 3276
    iget-object v4, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/systemui/support/v4/app/Fragment;

    .line 3277
    .restart local v0    # "f":Lcom/miui/systemui/support/v4/app/Fragment;
    if-eqz v2, :cond_3

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3275
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3278
    :cond_3
    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/Fragment;->onDestroyOptionsMenu()V

    goto :goto_2

    .line 3283
    .end local v0    # "f":Lcom/miui/systemui/support/v4/app/Fragment;
    :cond_4
    iput-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    .line 3285
    return v3
.end method

.method public dispatchDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mDestroyed:Z

    .line 3205
    invoke-virtual {p0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    .line 3206
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->dispatchStateChange(I)V

    .line 3207
    iput-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mHost:Lcom/miui/systemui/support/v4/app/FragmentHostCallback;

    .line 3208
    iput-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mContainer:Lcom/miui/systemui/support/v4/app/FragmentContainer;

    .line 3209
    iput-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mParent:Lcom/miui/systemui/support/v4/app/Fragment;

    .line 3203
    return-void
.end method

.method public dispatchDestroyView()V
    .locals 1

    .prologue
    .line 3200
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->dispatchStateChange(I)V

    .line 3199
    return-void
.end method

.method public dispatchLowMemory()V
    .locals 3

    .prologue
    .line 3250
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3251
    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/systemui/support/v4/app/Fragment;

    .line 3252
    .local v0, "f":Lcom/miui/systemui/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 3253
    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/Fragment;->performLowMemory()V

    .line 3250
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3249
    .end local v0    # "f":Lcom/miui/systemui/support/v4/app/Fragment;
    :cond_1
    return-void
.end method

.method public dispatchMultiWindowModeChanged(Z)V
    .locals 3
    .param p1, "isInMultiWindowMode"    # Z

    .prologue
    .line 3223
    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 3224
    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/systemui/support/v4/app/Fragment;

    .line 3225
    .local v0, "f":Lcom/miui/systemui/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 3226
    invoke-virtual {v0, p1}, Lcom/miui/systemui/support/v4/app/Fragment;->performMultiWindowModeChanged(Z)V

    .line 3223
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3222
    .end local v0    # "f":Lcom/miui/systemui/support/v4/app/Fragment;
    :cond_1
    return-void
.end method

.method dispatchOnFragmentActivityCreated(Lcom/miui/systemui/support/v4/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 4
    .param p1, "f"    # Lcom/miui/systemui/support/v4/app/Fragment;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
    .param p3, "onlyRecursive"    # Z

    .prologue
    .line 3449
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mParent:Lcom/miui/systemui/support/v4/app/Fragment;

    if-eqz v3, :cond_0

    .line 3450
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mParent:Lcom/miui/systemui/support/v4/app/Fragment;

    invoke-virtual {v3}, Lcom/miui/systemui/support/v4/app/Fragment;->getFragmentManager()Lcom/miui/systemui/support/v4/app/FragmentManager;

    move-result-object v2

    .line 3451
    .local v2, "parentManager":Lcom/miui/systemui/support/v4/app/FragmentManager;
    instance-of v3, v2, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    if-eqz v3, :cond_0

    .line 3452
    check-cast v2, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    .line 3453
    .end local v2    # "parentManager":Lcom/miui/systemui/support/v4/app/FragmentManager;
    const/4 v3, 0x1

    .line 3452
    invoke-virtual {v2, p1, p2, v3}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentActivityCreated(Lcom/miui/systemui/support/v4/app/Fragment;Landroid/os/Bundle;Z)V

    .line 3456
    :cond_0
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v3, :cond_1

    .line 3457
    return-void

    .line 3459
    :cond_1
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "p$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/systemui/support/v4/util/Pair;

    .line 3460
    .local v0, "p":Lcom/miui/systemui/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    if-eqz p3, :cond_3

    iget-object v3, v0, Lcom/miui/systemui/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3461
    :cond_3
    iget-object v3, v0, Lcom/miui/systemui/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/miui/systemui/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v3, p0, p1, p2}, Lcom/miui/systemui/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentActivityCreated(Lcom/miui/systemui/support/v4/app/FragmentManager;Lcom/miui/systemui/support/v4/app/Fragment;Landroid/os/Bundle;)V

    goto :goto_0

    .line 3448
    .end local v0    # "p":Lcom/miui/systemui/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    :cond_4
    return-void
.end method

.method dispatchOnFragmentAttached(Lcom/miui/systemui/support/v4/app/Fragment;Landroid/content/Context;Z)V
    .locals 4
    .param p1, "f"    # Lcom/miui/systemui/support/v4/app/Fragment;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "onlyRecursive"    # Z

    .prologue
    .line 3393
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mParent:Lcom/miui/systemui/support/v4/app/Fragment;

    if-eqz v3, :cond_0

    .line 3394
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mParent:Lcom/miui/systemui/support/v4/app/Fragment;

    invoke-virtual {v3}, Lcom/miui/systemui/support/v4/app/Fragment;->getFragmentManager()Lcom/miui/systemui/support/v4/app/FragmentManager;

    move-result-object v2

    .line 3395
    .local v2, "parentManager":Lcom/miui/systemui/support/v4/app/FragmentManager;
    instance-of v3, v2, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    if-eqz v3, :cond_0

    .line 3396
    check-cast v2, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    .line 3397
    .end local v2    # "parentManager":Lcom/miui/systemui/support/v4/app/FragmentManager;
    const/4 v3, 0x1

    .line 3396
    invoke-virtual {v2, p1, p2, v3}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentAttached(Lcom/miui/systemui/support/v4/app/Fragment;Landroid/content/Context;Z)V

    .line 3400
    :cond_0
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v3, :cond_1

    .line 3401
    return-void

    .line 3403
    :cond_1
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "p$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/systemui/support/v4/util/Pair;

    .line 3404
    .local v0, "p":Lcom/miui/systemui/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    if-eqz p3, :cond_3

    iget-object v3, v0, Lcom/miui/systemui/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3405
    :cond_3
    iget-object v3, v0, Lcom/miui/systemui/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/miui/systemui/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v3, p0, p1, p2}, Lcom/miui/systemui/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentAttached(Lcom/miui/systemui/support/v4/app/FragmentManager;Lcom/miui/systemui/support/v4/app/Fragment;Landroid/content/Context;)V

    goto :goto_0

    .line 3392
    .end local v0    # "p":Lcom/miui/systemui/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    :cond_4
    return-void
.end method

.method dispatchOnFragmentCreated(Lcom/miui/systemui/support/v4/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 4
    .param p1, "f"    # Lcom/miui/systemui/support/v4/app/Fragment;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
    .param p3, "onlyRecursive"    # Z

    .prologue
    .line 3430
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mParent:Lcom/miui/systemui/support/v4/app/Fragment;

    if-eqz v3, :cond_0

    .line 3431
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mParent:Lcom/miui/systemui/support/v4/app/Fragment;

    invoke-virtual {v3}, Lcom/miui/systemui/support/v4/app/Fragment;->getFragmentManager()Lcom/miui/systemui/support/v4/app/FragmentManager;

    move-result-object v2

    .line 3432
    .local v2, "parentManager":Lcom/miui/systemui/support/v4/app/FragmentManager;
    instance-of v3, v2, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    if-eqz v3, :cond_0

    .line 3433
    check-cast v2, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    .line 3434
    .end local v2    # "parentManager":Lcom/miui/systemui/support/v4/app/FragmentManager;
    const/4 v3, 0x1

    .line 3433
    invoke-virtual {v2, p1, p2, v3}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentCreated(Lcom/miui/systemui/support/v4/app/Fragment;Landroid/os/Bundle;Z)V

    .line 3437
    :cond_0
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v3, :cond_1

    .line 3438
    return-void

    .line 3440
    :cond_1
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "p$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/systemui/support/v4/util/Pair;

    .line 3441
    .local v0, "p":Lcom/miui/systemui/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    if-eqz p3, :cond_3

    iget-object v3, v0, Lcom/miui/systemui/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3442
    :cond_3
    iget-object v3, v0, Lcom/miui/systemui/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/miui/systemui/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v3, p0, p1, p2}, Lcom/miui/systemui/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentCreated(Lcom/miui/systemui/support/v4/app/FragmentManager;Lcom/miui/systemui/support/v4/app/Fragment;Landroid/os/Bundle;)V

    goto :goto_0

    .line 3429
    .end local v0    # "p":Lcom/miui/systemui/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    :cond_4
    return-void
.end method

.method dispatchOnFragmentDestroyed(Lcom/miui/systemui/support/v4/app/Fragment;Z)V
    .locals 4
    .param p1, "f"    # Lcom/miui/systemui/support/v4/app/Fragment;
    .param p2, "onlyRecursive"    # Z

    .prologue
    .line 3594
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mParent:Lcom/miui/systemui/support/v4/app/Fragment;

    if-eqz v3, :cond_0

    .line 3595
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mParent:Lcom/miui/systemui/support/v4/app/Fragment;

    invoke-virtual {v3}, Lcom/miui/systemui/support/v4/app/Fragment;->getFragmentManager()Lcom/miui/systemui/support/v4/app/FragmentManager;

    move-result-object v2

    .line 3596
    .local v2, "parentManager":Lcom/miui/systemui/support/v4/app/FragmentManager;
    instance-of v3, v2, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    if-eqz v3, :cond_0

    .line 3597
    check-cast v2, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    .line 3598
    .end local v2    # "parentManager":Lcom/miui/systemui/support/v4/app/FragmentManager;
    const/4 v3, 0x1

    .line 3597
    invoke-virtual {v2, p1, v3}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentDestroyed(Lcom/miui/systemui/support/v4/app/Fragment;Z)V

    .line 3601
    :cond_0
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v3, :cond_1

    .line 3602
    return-void

    .line 3604
    :cond_1
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "p$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/systemui/support/v4/util/Pair;

    .line 3605
    .local v0, "p":Lcom/miui/systemui/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    if-eqz p2, :cond_3

    iget-object v3, v0, Lcom/miui/systemui/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3606
    :cond_3
    iget-object v3, v0, Lcom/miui/systemui/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/miui/systemui/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v3, p0, p1}, Lcom/miui/systemui/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentDestroyed(Lcom/miui/systemui/support/v4/app/FragmentManager;Lcom/miui/systemui/support/v4/app/Fragment;)V

    goto :goto_0

    .line 3593
    .end local v0    # "p":Lcom/miui/systemui/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    :cond_4
    return-void
.end method

.method dispatchOnFragmentDetached(Lcom/miui/systemui/support/v4/app/Fragment;Z)V
    .locals 4
    .param p1, "f"    # Lcom/miui/systemui/support/v4/app/Fragment;
    .param p2, "onlyRecursive"    # Z

    .prologue
    .line 3612
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mParent:Lcom/miui/systemui/support/v4/app/Fragment;

    if-eqz v3, :cond_0

    .line 3613
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mParent:Lcom/miui/systemui/support/v4/app/Fragment;

    invoke-virtual {v3}, Lcom/miui/systemui/support/v4/app/Fragment;->getFragmentManager()Lcom/miui/systemui/support/v4/app/FragmentManager;

    move-result-object v2

    .line 3614
    .local v2, "parentManager":Lcom/miui/systemui/support/v4/app/FragmentManager;
    instance-of v3, v2, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    if-eqz v3, :cond_0

    .line 3615
    check-cast v2, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    .line 3616
    .end local v2    # "parentManager":Lcom/miui/systemui/support/v4/app/FragmentManager;
    const/4 v3, 0x1

    .line 3615
    invoke-virtual {v2, p1, v3}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentDetached(Lcom/miui/systemui/support/v4/app/Fragment;Z)V

    .line 3619
    :cond_0
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v3, :cond_1

    .line 3620
    return-void

    .line 3622
    :cond_1
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "p$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/systemui/support/v4/util/Pair;

    .line 3623
    .local v0, "p":Lcom/miui/systemui/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    if-eqz p2, :cond_3

    iget-object v3, v0, Lcom/miui/systemui/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3624
    :cond_3
    iget-object v3, v0, Lcom/miui/systemui/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/miui/systemui/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v3, p0, p1}, Lcom/miui/systemui/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentDetached(Lcom/miui/systemui/support/v4/app/FragmentManager;Lcom/miui/systemui/support/v4/app/Fragment;)V

    goto :goto_0

    .line 3611
    .end local v0    # "p":Lcom/miui/systemui/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    :cond_4
    return-void
.end method

.method dispatchOnFragmentPaused(Lcom/miui/systemui/support/v4/app/Fragment;Z)V
    .locals 4
    .param p1, "f"    # Lcom/miui/systemui/support/v4/app/Fragment;
    .param p2, "onlyRecursive"    # Z

    .prologue
    .line 3522
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mParent:Lcom/miui/systemui/support/v4/app/Fragment;

    if-eqz v3, :cond_0

    .line 3523
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mParent:Lcom/miui/systemui/support/v4/app/Fragment;

    invoke-virtual {v3}, Lcom/miui/systemui/support/v4/app/Fragment;->getFragmentManager()Lcom/miui/systemui/support/v4/app/FragmentManager;

    move-result-object v2

    .line 3524
    .local v2, "parentManager":Lcom/miui/systemui/support/v4/app/FragmentManager;
    instance-of v3, v2, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    if-eqz v3, :cond_0

    .line 3525
    check-cast v2, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    .line 3526
    .end local v2    # "parentManager":Lcom/miui/systemui/support/v4/app/FragmentManager;
    const/4 v3, 0x1

    .line 3525
    invoke-virtual {v2, p1, v3}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentPaused(Lcom/miui/systemui/support/v4/app/Fragment;Z)V

    .line 3529
    :cond_0
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v3, :cond_1

    .line 3530
    return-void

    .line 3532
    :cond_1
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "p$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/systemui/support/v4/util/Pair;

    .line 3533
    .local v0, "p":Lcom/miui/systemui/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    if-eqz p2, :cond_3

    iget-object v3, v0, Lcom/miui/systemui/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3534
    :cond_3
    iget-object v3, v0, Lcom/miui/systemui/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/miui/systemui/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v3, p0, p1}, Lcom/miui/systemui/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentPaused(Lcom/miui/systemui/support/v4/app/FragmentManager;Lcom/miui/systemui/support/v4/app/Fragment;)V

    goto :goto_0

    .line 3521
    .end local v0    # "p":Lcom/miui/systemui/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    :cond_4
    return-void
.end method

.method dispatchOnFragmentPreAttached(Lcom/miui/systemui/support/v4/app/Fragment;Landroid/content/Context;Z)V
    .locals 4
    .param p1, "f"    # Lcom/miui/systemui/support/v4/app/Fragment;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "onlyRecursive"    # Z

    .prologue
    .line 3375
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mParent:Lcom/miui/systemui/support/v4/app/Fragment;

    if-eqz v3, :cond_0

    .line 3376
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mParent:Lcom/miui/systemui/support/v4/app/Fragment;

    invoke-virtual {v3}, Lcom/miui/systemui/support/v4/app/Fragment;->getFragmentManager()Lcom/miui/systemui/support/v4/app/FragmentManager;

    move-result-object v2

    .line 3377
    .local v2, "parentManager":Lcom/miui/systemui/support/v4/app/FragmentManager;
    instance-of v3, v2, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    if-eqz v3, :cond_0

    .line 3378
    check-cast v2, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    .line 3379
    .end local v2    # "parentManager":Lcom/miui/systemui/support/v4/app/FragmentManager;
    const/4 v3, 0x1

    .line 3378
    invoke-virtual {v2, p1, p2, v3}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentPreAttached(Lcom/miui/systemui/support/v4/app/Fragment;Landroid/content/Context;Z)V

    .line 3382
    :cond_0
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v3, :cond_1

    .line 3383
    return-void

    .line 3385
    :cond_1
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "p$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/systemui/support/v4/util/Pair;

    .line 3386
    .local v0, "p":Lcom/miui/systemui/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    if-eqz p3, :cond_3

    iget-object v3, v0, Lcom/miui/systemui/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3387
    :cond_3
    iget-object v3, v0, Lcom/miui/systemui/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/miui/systemui/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v3, p0, p1, p2}, Lcom/miui/systemui/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentPreAttached(Lcom/miui/systemui/support/v4/app/FragmentManager;Lcom/miui/systemui/support/v4/app/Fragment;Landroid/content/Context;)V

    goto :goto_0

    .line 3374
    .end local v0    # "p":Lcom/miui/systemui/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    :cond_4
    return-void
.end method

.method dispatchOnFragmentPreCreated(Lcom/miui/systemui/support/v4/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 4
    .param p1, "f"    # Lcom/miui/systemui/support/v4/app/Fragment;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
    .param p3, "onlyRecursive"    # Z

    .prologue
    .line 3412
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mParent:Lcom/miui/systemui/support/v4/app/Fragment;

    if-eqz v3, :cond_0

    .line 3413
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mParent:Lcom/miui/systemui/support/v4/app/Fragment;

    invoke-virtual {v3}, Lcom/miui/systemui/support/v4/app/Fragment;->getFragmentManager()Lcom/miui/systemui/support/v4/app/FragmentManager;

    move-result-object v2

    .line 3414
    .local v2, "parentManager":Lcom/miui/systemui/support/v4/app/FragmentManager;
    instance-of v3, v2, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    if-eqz v3, :cond_0

    .line 3415
    check-cast v2, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    .line 3416
    .end local v2    # "parentManager":Lcom/miui/systemui/support/v4/app/FragmentManager;
    const/4 v3, 0x1

    .line 3415
    invoke-virtual {v2, p1, p2, v3}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentPreCreated(Lcom/miui/systemui/support/v4/app/Fragment;Landroid/os/Bundle;Z)V

    .line 3419
    :cond_0
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v3, :cond_1

    .line 3420
    return-void

    .line 3422
    :cond_1
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "p$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/systemui/support/v4/util/Pair;

    .line 3423
    .local v0, "p":Lcom/miui/systemui/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    if-eqz p3, :cond_3

    iget-object v3, v0, Lcom/miui/systemui/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3424
    :cond_3
    iget-object v3, v0, Lcom/miui/systemui/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/miui/systemui/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v3, p0, p1, p2}, Lcom/miui/systemui/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentPreCreated(Lcom/miui/systemui/support/v4/app/FragmentManager;Lcom/miui/systemui/support/v4/app/Fragment;Landroid/os/Bundle;)V

    goto :goto_0

    .line 3411
    .end local v0    # "p":Lcom/miui/systemui/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    :cond_4
    return-void
.end method

.method dispatchOnFragmentResumed(Lcom/miui/systemui/support/v4/app/Fragment;Z)V
    .locals 4
    .param p1, "f"    # Lcom/miui/systemui/support/v4/app/Fragment;
    .param p2, "onlyRecursive"    # Z

    .prologue
    .line 3504
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mParent:Lcom/miui/systemui/support/v4/app/Fragment;

    if-eqz v3, :cond_0

    .line 3505
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mParent:Lcom/miui/systemui/support/v4/app/Fragment;

    invoke-virtual {v3}, Lcom/miui/systemui/support/v4/app/Fragment;->getFragmentManager()Lcom/miui/systemui/support/v4/app/FragmentManager;

    move-result-object v2

    .line 3506
    .local v2, "parentManager":Lcom/miui/systemui/support/v4/app/FragmentManager;
    instance-of v3, v2, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    if-eqz v3, :cond_0

    .line 3507
    check-cast v2, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    .line 3508
    .end local v2    # "parentManager":Lcom/miui/systemui/support/v4/app/FragmentManager;
    const/4 v3, 0x1

    .line 3507
    invoke-virtual {v2, p1, v3}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentResumed(Lcom/miui/systemui/support/v4/app/Fragment;Z)V

    .line 3511
    :cond_0
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v3, :cond_1

    .line 3512
    return-void

    .line 3514
    :cond_1
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "p$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/systemui/support/v4/util/Pair;

    .line 3515
    .local v0, "p":Lcom/miui/systemui/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    if-eqz p2, :cond_3

    iget-object v3, v0, Lcom/miui/systemui/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3516
    :cond_3
    iget-object v3, v0, Lcom/miui/systemui/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/miui/systemui/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v3, p0, p1}, Lcom/miui/systemui/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentResumed(Lcom/miui/systemui/support/v4/app/FragmentManager;Lcom/miui/systemui/support/v4/app/Fragment;)V

    goto :goto_0

    .line 3503
    .end local v0    # "p":Lcom/miui/systemui/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    :cond_4
    return-void
.end method

.method dispatchOnFragmentSaveInstanceState(Lcom/miui/systemui/support/v4/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 4
    .param p1, "f"    # Lcom/miui/systemui/support/v4/app/Fragment;
    .param p2, "outState"    # Landroid/os/Bundle;
    .param p3, "onlyRecursive"    # Z

    .prologue
    .line 3558
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mParent:Lcom/miui/systemui/support/v4/app/Fragment;

    if-eqz v3, :cond_0

    .line 3559
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mParent:Lcom/miui/systemui/support/v4/app/Fragment;

    invoke-virtual {v3}, Lcom/miui/systemui/support/v4/app/Fragment;->getFragmentManager()Lcom/miui/systemui/support/v4/app/FragmentManager;

    move-result-object v2

    .line 3560
    .local v2, "parentManager":Lcom/miui/systemui/support/v4/app/FragmentManager;
    instance-of v3, v2, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    if-eqz v3, :cond_0

    .line 3561
    check-cast v2, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    .line 3562
    .end local v2    # "parentManager":Lcom/miui/systemui/support/v4/app/FragmentManager;
    const/4 v3, 0x1

    .line 3561
    invoke-virtual {v2, p1, p2, v3}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentSaveInstanceState(Lcom/miui/systemui/support/v4/app/Fragment;Landroid/os/Bundle;Z)V

    .line 3565
    :cond_0
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v3, :cond_1

    .line 3566
    return-void

    .line 3568
    :cond_1
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "p$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/systemui/support/v4/util/Pair;

    .line 3569
    .local v0, "p":Lcom/miui/systemui/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    if-eqz p3, :cond_3

    iget-object v3, v0, Lcom/miui/systemui/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3570
    :cond_3
    iget-object v3, v0, Lcom/miui/systemui/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/miui/systemui/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v3, p0, p1, p2}, Lcom/miui/systemui/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentSaveInstanceState(Lcom/miui/systemui/support/v4/app/FragmentManager;Lcom/miui/systemui/support/v4/app/Fragment;Landroid/os/Bundle;)V

    goto :goto_0

    .line 3557
    .end local v0    # "p":Lcom/miui/systemui/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    :cond_4
    return-void
.end method

.method dispatchOnFragmentStarted(Lcom/miui/systemui/support/v4/app/Fragment;Z)V
    .locals 4
    .param p1, "f"    # Lcom/miui/systemui/support/v4/app/Fragment;
    .param p2, "onlyRecursive"    # Z

    .prologue
    .line 3486
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mParent:Lcom/miui/systemui/support/v4/app/Fragment;

    if-eqz v3, :cond_0

    .line 3487
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mParent:Lcom/miui/systemui/support/v4/app/Fragment;

    invoke-virtual {v3}, Lcom/miui/systemui/support/v4/app/Fragment;->getFragmentManager()Lcom/miui/systemui/support/v4/app/FragmentManager;

    move-result-object v2

    .line 3488
    .local v2, "parentManager":Lcom/miui/systemui/support/v4/app/FragmentManager;
    instance-of v3, v2, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    if-eqz v3, :cond_0

    .line 3489
    check-cast v2, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    .line 3490
    .end local v2    # "parentManager":Lcom/miui/systemui/support/v4/app/FragmentManager;
    const/4 v3, 0x1

    .line 3489
    invoke-virtual {v2, p1, v3}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentStarted(Lcom/miui/systemui/support/v4/app/Fragment;Z)V

    .line 3493
    :cond_0
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v3, :cond_1

    .line 3494
    return-void

    .line 3496
    :cond_1
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "p$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/systemui/support/v4/util/Pair;

    .line 3497
    .local v0, "p":Lcom/miui/systemui/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    if-eqz p2, :cond_3

    iget-object v3, v0, Lcom/miui/systemui/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3498
    :cond_3
    iget-object v3, v0, Lcom/miui/systemui/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/miui/systemui/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v3, p0, p1}, Lcom/miui/systemui/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentStarted(Lcom/miui/systemui/support/v4/app/FragmentManager;Lcom/miui/systemui/support/v4/app/Fragment;)V

    goto :goto_0

    .line 3485
    .end local v0    # "p":Lcom/miui/systemui/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    :cond_4
    return-void
.end method

.method dispatchOnFragmentStopped(Lcom/miui/systemui/support/v4/app/Fragment;Z)V
    .locals 4
    .param p1, "f"    # Lcom/miui/systemui/support/v4/app/Fragment;
    .param p2, "onlyRecursive"    # Z

    .prologue
    .line 3540
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mParent:Lcom/miui/systemui/support/v4/app/Fragment;

    if-eqz v3, :cond_0

    .line 3541
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mParent:Lcom/miui/systemui/support/v4/app/Fragment;

    invoke-virtual {v3}, Lcom/miui/systemui/support/v4/app/Fragment;->getFragmentManager()Lcom/miui/systemui/support/v4/app/FragmentManager;

    move-result-object v2

    .line 3542
    .local v2, "parentManager":Lcom/miui/systemui/support/v4/app/FragmentManager;
    instance-of v3, v2, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    if-eqz v3, :cond_0

    .line 3543
    check-cast v2, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    .line 3544
    .end local v2    # "parentManager":Lcom/miui/systemui/support/v4/app/FragmentManager;
    const/4 v3, 0x1

    .line 3543
    invoke-virtual {v2, p1, v3}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentStopped(Lcom/miui/systemui/support/v4/app/Fragment;Z)V

    .line 3547
    :cond_0
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v3, :cond_1

    .line 3548
    return-void

    .line 3550
    :cond_1
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "p$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/systemui/support/v4/util/Pair;

    .line 3551
    .local v0, "p":Lcom/miui/systemui/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    if-eqz p2, :cond_3

    iget-object v3, v0, Lcom/miui/systemui/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3552
    :cond_3
    iget-object v3, v0, Lcom/miui/systemui/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/miui/systemui/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v3, p0, p1}, Lcom/miui/systemui/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentStopped(Lcom/miui/systemui/support/v4/app/FragmentManager;Lcom/miui/systemui/support/v4/app/Fragment;)V

    goto :goto_0

    .line 3539
    .end local v0    # "p":Lcom/miui/systemui/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    :cond_4
    return-void
.end method

.method dispatchOnFragmentViewCreated(Lcom/miui/systemui/support/v4/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V
    .locals 4
    .param p1, "f"    # Lcom/miui/systemui/support/v4/app/Fragment;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .param p4, "onlyRecursive"    # Z

    .prologue
    .line 3468
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mParent:Lcom/miui/systemui/support/v4/app/Fragment;

    if-eqz v3, :cond_0

    .line 3469
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mParent:Lcom/miui/systemui/support/v4/app/Fragment;

    invoke-virtual {v3}, Lcom/miui/systemui/support/v4/app/Fragment;->getFragmentManager()Lcom/miui/systemui/support/v4/app/FragmentManager;

    move-result-object v2

    .line 3470
    .local v2, "parentManager":Lcom/miui/systemui/support/v4/app/FragmentManager;
    instance-of v3, v2, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    if-eqz v3, :cond_0

    .line 3471
    check-cast v2, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    .line 3472
    .end local v2    # "parentManager":Lcom/miui/systemui/support/v4/app/FragmentManager;
    const/4 v3, 0x1

    .line 3471
    invoke-virtual {v2, p1, p2, p3, v3}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentViewCreated(Lcom/miui/systemui/support/v4/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 3475
    :cond_0
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v3, :cond_1

    .line 3476
    return-void

    .line 3478
    :cond_1
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "p$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/systemui/support/v4/util/Pair;

    .line 3479
    .local v0, "p":Lcom/miui/systemui/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    if-eqz p4, :cond_3

    iget-object v3, v0, Lcom/miui/systemui/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3480
    :cond_3
    iget-object v3, v0, Lcom/miui/systemui/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/miui/systemui/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v3, p0, p1, p2, p3}, Lcom/miui/systemui/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentViewCreated(Lcom/miui/systemui/support/v4/app/FragmentManager;Lcom/miui/systemui/support/v4/app/Fragment;Landroid/view/View;Landroid/os/Bundle;)V

    goto :goto_0

    .line 3467
    .end local v0    # "p":Lcom/miui/systemui/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    :cond_4
    return-void
.end method

.method dispatchOnFragmentViewDestroyed(Lcom/miui/systemui/support/v4/app/Fragment;Z)V
    .locals 4
    .param p1, "f"    # Lcom/miui/systemui/support/v4/app/Fragment;
    .param p2, "onlyRecursive"    # Z

    .prologue
    .line 3576
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mParent:Lcom/miui/systemui/support/v4/app/Fragment;

    if-eqz v3, :cond_0

    .line 3577
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mParent:Lcom/miui/systemui/support/v4/app/Fragment;

    invoke-virtual {v3}, Lcom/miui/systemui/support/v4/app/Fragment;->getFragmentManager()Lcom/miui/systemui/support/v4/app/FragmentManager;

    move-result-object v2

    .line 3578
    .local v2, "parentManager":Lcom/miui/systemui/support/v4/app/FragmentManager;
    instance-of v3, v2, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    if-eqz v3, :cond_0

    .line 3579
    check-cast v2, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    .line 3580
    .end local v2    # "parentManager":Lcom/miui/systemui/support/v4/app/FragmentManager;
    const/4 v3, 0x1

    .line 3579
    invoke-virtual {v2, p1, v3}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentViewDestroyed(Lcom/miui/systemui/support/v4/app/Fragment;Z)V

    .line 3583
    :cond_0
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v3, :cond_1

    .line 3584
    return-void

    .line 3586
    :cond_1
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "p$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/systemui/support/v4/util/Pair;

    .line 3587
    .local v0, "p":Lcom/miui/systemui/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    if-eqz p2, :cond_3

    iget-object v3, v0, Lcom/miui/systemui/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3588
    :cond_3
    iget-object v3, v0, Lcom/miui/systemui/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/miui/systemui/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v3, p0, p1}, Lcom/miui/systemui/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentViewDestroyed(Lcom/miui/systemui/support/v4/app/FragmentManager;Lcom/miui/systemui/support/v4/app/Fragment;)V

    goto :goto_0

    .line 3575
    .end local v0    # "p":Lcom/miui/systemui/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    :cond_4
    return-void
.end method

.method public dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 3302
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3303
    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/systemui/support/v4/app/Fragment;

    .line 3304
    .local v0, "f":Lcom/miui/systemui/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 3305
    invoke-virtual {v0, p1}, Lcom/miui/systemui/support/v4/app/Fragment;->performOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3306
    const/4 v2, 0x1

    return v2

    .line 3302
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3310
    .end local v0    # "f":Lcom/miui/systemui/support/v4/app/Fragment;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public dispatchOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 3326
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3327
    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/systemui/support/v4/app/Fragment;

    .line 3328
    .local v0, "f":Lcom/miui/systemui/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 3329
    invoke-virtual {v0, p1}, Lcom/miui/systemui/support/v4/app/Fragment;->performOptionsMenuClosed(Landroid/view/Menu;)V

    .line 3326
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3325
    .end local v0    # "f":Lcom/miui/systemui/support/v4/app/Fragment;
    :cond_1
    return-void
.end method

.method public dispatchPause()V
    .locals 1

    .prologue
    .line 3183
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->dispatchStateChange(I)V

    .line 3182
    return-void
.end method

.method public dispatchPictureInPictureModeChanged(Z)V
    .locals 3
    .param p1, "isInPictureInPictureMode"    # Z

    .prologue
    .line 3232
    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 3233
    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/systemui/support/v4/app/Fragment;

    .line 3234
    .local v0, "f":Lcom/miui/systemui/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 3235
    invoke-virtual {v0, p1}, Lcom/miui/systemui/support/v4/app/Fragment;->performPictureInPictureModeChanged(Z)V

    .line 3232
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3231
    .end local v0    # "f":Lcom/miui/systemui/support/v4/app/Fragment;
    :cond_1
    return-void
.end method

.method public dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 3289
    const/4 v2, 0x0

    .line 3290
    .local v2, "show":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 3291
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/systemui/support/v4/app/Fragment;

    .line 3292
    .local v0, "f":Lcom/miui/systemui/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 3293
    invoke-virtual {v0, p1}, Lcom/miui/systemui/support/v4/app/Fragment;->performPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3294
    const/4 v2, 0x1

    .line 3290
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3298
    .end local v0    # "f":Lcom/miui/systemui/support/v4/app/Fragment;
    :cond_1
    return v2
.end method

.method public dispatchReallyStop()V
    .locals 1

    .prologue
    .line 3196
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->dispatchStateChange(I)V

    .line 3195
    return-void
.end method

.method public dispatchResume()V
    .locals 1

    .prologue
    .line 3178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    .line 3179
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->dispatchStateChange(I)V

    .line 3177
    return-void
.end method

.method public dispatchStart()V
    .locals 1

    .prologue
    .line 3173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    .line 3174
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->dispatchStateChange(I)V

    .line 3172
    return-void
.end method

.method public dispatchStop()V
    .locals 1

    .prologue
    .line 3190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    .line 3192
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->dispatchStateChange(I)V

    .line 3186
    return-void
.end method

.method doPendingDeferredStart()V
    .locals 4

    .prologue
    .line 2677
    iget-boolean v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    if-eqz v3, :cond_2

    .line 2678
    const/4 v2, 0x0

    .line 2679
    .local v2, "loadersRunning":Z
    const/4 v1, 0x0

    .end local v2    # "loadersRunning":Z
    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 2680
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/systemui/support/v4/app/Fragment;

    .line 2681
    .local v0, "f":Lcom/miui/systemui/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/miui/systemui/support/v4/app/Fragment;->mLoaderManager:Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;

    if-eqz v3, :cond_0

    .line 2682
    iget-object v3, v0, Lcom/miui/systemui/support/v4/app/Fragment;->mLoaderManager:Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v3}, Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;->hasRunningLoaders()Z

    move-result v3

    or-int/2addr v2, v3

    .line 2679
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2685
    .end local v0    # "f":Lcom/miui/systemui/support/v4/app/Fragment;
    :cond_1
    if-nez v2, :cond_2

    .line 2686
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    .line 2687
    invoke-virtual {p0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->startPendingDeferredFragments()V

    .line 2676
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 983
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 986
    .local v4, "innerPrefix":Ljava/lang/String;
    iget-object v6, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v6, :cond_1

    .line 987
    iget-object v6, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 988
    .local v0, "N":I
    if-lez v0, :cond_1

    .line 989
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "Active Fragments in "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 990
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 991
    const-string/jumbo v6, ":"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 992
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 993
    iget-object v6, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/systemui/support/v4/app/Fragment;

    .line 994
    .local v2, "f":Lcom/miui/systemui/support/v4/app/Fragment;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 995
    const-string/jumbo v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 996
    if-eqz v2, :cond_0

    .line 997
    invoke-virtual {v2, v4, p2, p3, p4}, Lcom/miui/systemui/support/v4/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 992
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1003
    .end local v0    # "N":I
    .end local v2    # "f":Lcom/miui/systemui/support/v4/app/Fragment;
    .end local v3    # "i":I
    :cond_1
    iget-object v6, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1004
    .restart local v0    # "N":I
    if-lez v0, :cond_2

    .line 1005
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "Added Fragments:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1006
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    if-ge v3, v0, :cond_2

    .line 1007
    iget-object v6, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/systemui/support/v4/app/Fragment;

    .line 1008
    .restart local v2    # "f":Lcom/miui/systemui/support/v4/app/Fragment;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1009
    const-string/jumbo v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1010
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1011
    const-string/jumbo v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1012
    invoke-virtual {v2}, Lcom/miui/systemui/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1006
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1016
    .end local v2    # "f":Lcom/miui/systemui/support/v4/app/Fragment;
    .end local v3    # "i":I
    :cond_2
    iget-object v6, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    if-eqz v6, :cond_3

    .line 1017
    iget-object v6, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1018
    if-lez v0, :cond_3

    .line 1019
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "Fragments Created Menus:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1020
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v0, :cond_3

    .line 1021
    iget-object v6, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/systemui/support/v4/app/Fragment;

    .line 1022
    .restart local v2    # "f":Lcom/miui/systemui/support/v4/app/Fragment;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1023
    const-string/jumbo v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/miui/systemui/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1020
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1028
    .end local v2    # "f":Lcom/miui/systemui/support/v4/app/Fragment;
    .end local v3    # "i":I
    :cond_3
    iget-object v6, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v6, :cond_4

    .line 1029
    iget-object v6, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1030
    if-lez v0, :cond_4

    .line 1031
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "Back Stack:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1032
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    if-ge v3, v0, :cond_4

    .line 1033
    iget-object v6, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/systemui/support/v4/app/BackStackRecord;

    .line 1034
    .local v1, "bs":Lcom/miui/systemui/support/v4/app/BackStackRecord;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1035
    const-string/jumbo v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/miui/systemui/support/v4/app/BackStackRecord;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1036
    invoke-virtual {v1, v4, p2, p3, p4}, Lcom/miui/systemui/support/v4/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1032
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1041
    .end local v1    # "bs":Lcom/miui/systemui/support/v4/app/BackStackRecord;
    .end local v3    # "i":I
    :cond_4
    monitor-enter p0

    .line 1042
    :try_start_0
    iget-object v6, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-eqz v6, :cond_5

    .line 1043
    iget-object v6, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1044
    if-lez v0, :cond_5

    .line 1045
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "Back Stack Indices:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1046
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_4
    if-ge v3, v0, :cond_5

    .line 1047
    iget-object v6, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/systemui/support/v4/app/BackStackRecord;

    .line 1048
    .restart local v1    # "bs":Lcom/miui/systemui/support/v4/app/BackStackRecord;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1049
    const-string/jumbo v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1046
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1054
    .end local v1    # "bs":Lcom/miui/systemui/support/v4/app/BackStackRecord;
    .end local v3    # "i":I
    :cond_5
    iget-object v6, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_6

    .line 1055
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "mAvailBackStackIndices: "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1056
    iget-object v6, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    monitor-exit p0

    .line 1060
    iget-object v6, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-eqz v6, :cond_7

    .line 1061
    iget-object v6, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1062
    if-lez v0, :cond_7

    .line 1063
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "Pending Actions:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1064
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_5
    if-ge v3, v0, :cond_7

    .line 1065
    iget-object v6, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$OpGenerator;

    .line 1066
    .local v5, "r":Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$OpGenerator;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1067
    const-string/jumbo v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1064
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1041
    .end local v3    # "i":I
    .end local v5    # "r":Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$OpGenerator;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 1072
    :cond_7
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "FragmentManager misc state:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1073
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  mHost="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mHost:Lcom/miui/systemui/support/v4/app/FragmentHostCallback;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1074
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  mContainer="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mContainer:Lcom/miui/systemui/support/v4/app/FragmentContainer;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1075
    iget-object v6, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mParent:Lcom/miui/systemui/support/v4/app/Fragment;

    if-eqz v6, :cond_8

    .line 1076
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  mParent="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mParent:Lcom/miui/systemui/support/v4/app/Fragment;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1078
    :cond_8
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  mCurState="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mCurState:I

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 1079
    const-string/jumbo v6, " mStateSaved="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 1080
    const-string/jumbo v6, " mDestroyed="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mDestroyed:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 1081
    iget-boolean v6, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    if-eqz v6, :cond_9

    .line 1082
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  mNeedMenuInvalidate="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1083
    iget-boolean v6, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 1085
    :cond_9
    iget-object v6, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    if-eqz v6, :cond_a

    .line 1086
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  mNoTransactionsBecause="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1087
    iget-object v6, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 982
    :cond_a
    return-void
.end method

.method public enqueueAction(Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$OpGenerator;Z)V
    .locals 2
    .param p1, "action"    # Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$OpGenerator;
    .param p2, "allowStateLoss"    # Z

    .prologue
    .line 2064
    if-nez p2, :cond_0

    .line 2065
    invoke-direct {p0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->checkStateLoss()V

    .line 2067
    :cond_0
    monitor-enter p0

    .line 2068
    :try_start_0
    iget-boolean v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mDestroyed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mHost:Lcom/miui/systemui/support/v4/app/FragmentHostCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_3

    .line 2069
    :cond_1
    if-eqz p2, :cond_2

    monitor-exit p0

    .line 2071
    return-void

    .line 2073
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Activity has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2067
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2075
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    .line 2076
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    .line 2078
    :cond_4
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2079
    invoke-direct {p0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->scheduleCommit()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 2063
    return-void
.end method

.method ensureInflatedFragmentView(Lcom/miui/systemui/support/v4/app/Fragment;)V
    .locals 4
    .param p1, "f"    # Lcom/miui/systemui/support/v4/app/Fragment;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1642
    iget-boolean v0, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mFromLayout:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mPerformedCreateView:Z

    if-eqz v0, :cond_1

    .line 1641
    :cond_0
    :goto_0
    return-void

    .line 1644
    :cond_1
    iget-object v0, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1643
    invoke-virtual {p1, v0}, Lcom/miui/systemui/support/v4/app/Fragment;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1644
    iget-object v1, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1643
    invoke-virtual {p1, v0, v2, v1}, Lcom/miui/systemui/support/v4/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 1645
    iget-object v0, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1646
    iget-object v0, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mView:Landroid/view/View;

    iput-object v0, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    .line 1647
    iget-object v0, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 1648
    iget-boolean v0, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1649
    :cond_2
    iget-object v0, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget-object v1, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Lcom/miui/systemui/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1650
    iget-object v0, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget-object v1, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p0, p1, v0, v1, v3}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentViewCreated(Lcom/miui/systemui/support/v4/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    goto :goto_0

    .line 1652
    :cond_3
    iput-object v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    goto :goto_0
.end method

.method public execPendingActions()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2221
    invoke-direct {p0, v3}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->ensureExecReady(Z)V

    .line 2223
    const/4 v0, 0x0

    .line 2224
    .local v0, "didSomething":Z
    :goto_0
    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->generateOpsForPendingActions(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2225
    iput-boolean v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 2227
    :try_start_0
    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->removeRedundantOperationsAndExecute(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2229
    invoke-direct {p0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->cleanupExec()V

    .line 2231
    const/4 v0, 0x1

    goto :goto_0

    .line 2228
    :catchall_0
    move-exception v1

    .line 2229
    invoke-direct {p0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->cleanupExec()V

    .line 2228
    throw v1

    .line 2234
    :cond_0
    invoke-virtual {p0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->doPendingDeferredStart()V

    .line 2235
    invoke-direct {p0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->burpActive()V

    .line 2237
    return v0
.end method

.method public executePendingTransactions()Z
    .locals 1

    .prologue
    .line 779
    invoke-virtual {p0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    move-result v0

    .line 780
    .local v0, "updates":Z
    invoke-direct {p0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->forcePostponedTransactions()V

    .line 781
    return v0
.end method

.method public findFragmentById(I)Lcom/miui/systemui/support/v4/app/Fragment;
    .locals 4
    .param p1, "id"    # I

    .prologue
    const/4 v3, 0x0

    .line 1987
    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1988
    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/systemui/support/v4/app/Fragment;

    .line 1989
    .local v0, "f":Lcom/miui/systemui/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    iget v2, v0, Lcom/miui/systemui/support/v4/app/Fragment;->mFragmentId:I

    if-ne v2, p1, :cond_0

    .line 1990
    return-object v0

    .line 1987
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1993
    .end local v0    # "f":Lcom/miui/systemui/support/v4/app/Fragment;
    :cond_1
    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v2, :cond_3

    .line 1995
    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_1
    if-ltz v1, :cond_3

    .line 1996
    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/systemui/support/v4/app/Fragment;

    .line 1997
    .restart local v0    # "f":Lcom/miui/systemui/support/v4/app/Fragment;
    if-eqz v0, :cond_2

    iget v2, v0, Lcom/miui/systemui/support/v4/app/Fragment;->mFragmentId:I

    if-ne v2, p1, :cond_2

    .line 1998
    return-object v0

    .line 1995
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 2002
    .end local v0    # "f":Lcom/miui/systemui/support/v4/app/Fragment;
    :cond_3
    return-object v3
.end method

.method public findFragmentByTag(Ljava/lang/String;)Lcom/miui/systemui/support/v4/app/Fragment;
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 2007
    if-eqz p1, :cond_1

    .line 2009
    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 2010
    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/systemui/support/v4/app/Fragment;

    .line 2011
    .local v0, "f":Lcom/miui/systemui/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/miui/systemui/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2012
    return-object v0

    .line 2009
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2016
    .end local v0    # "f":Lcom/miui/systemui/support/v4/app/Fragment;
    .end local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v2, :cond_3

    if-eqz p1, :cond_3

    .line 2018
    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .restart local v1    # "i":I
    :goto_1
    if-ltz v1, :cond_3

    .line 2019
    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/systemui/support/v4/app/Fragment;

    .line 2020
    .restart local v0    # "f":Lcom/miui/systemui/support/v4/app/Fragment;
    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/miui/systemui/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2021
    return-object v0

    .line 2018
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 2025
    .end local v0    # "f":Lcom/miui/systemui/support/v4/app/Fragment;
    .end local v1    # "i":I
    :cond_3
    return-object v3
.end method

.method public findFragmentByWho(Ljava/lang/String;)Lcom/miui/systemui/support/v4/app/Fragment;
    .locals 4
    .param p1, "who"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 2029
    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 2030
    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 2031
    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/systemui/support/v4/app/Fragment;

    .line 2032
    .local v0, "f":Lcom/miui/systemui/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/miui/systemui/support/v4/app/Fragment;->findFragmentByWho(Ljava/lang/String;)Lcom/miui/systemui/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2033
    return-object v0

    .line 2030
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2037
    .end local v0    # "f":Lcom/miui/systemui/support/v4/app/Fragment;
    .end local v1    # "i":I
    :cond_1
    return-object v3
.end method

.method public freeBackStackIndex(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 2147
    monitor-enter p0

    .line 2148
    :try_start_0
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2149
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    .line 2152
    :cond_0
    sget-boolean v0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Freeing back stack index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2153
    :cond_1
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 2146
    return-void

    .line 2147
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFragment(Landroid/os/Bundle;Ljava/lang/String;)Lcom/miui/systemui/support/v4/app/Fragment;
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 896
    invoke-virtual {p1, p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 897
    .local v1, "index":I
    if-ne v1, v2, :cond_0

    .line 898
    return-object v3

    .line 900
    :cond_0
    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/systemui/support/v4/app/Fragment;

    .line 901
    .local v0, "f":Lcom/miui/systemui/support/v4/app/Fragment;
    if-nez v0, :cond_1

    .line 902
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Fragment no longer exists for key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 903
    const-string/jumbo v4, ": index "

    .line 902
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 905
    :cond_1
    return-object v0
.end method

.method getLayoutInflaterFactory()Landroid/view/LayoutInflater$Factory2;
    .locals 0

    .prologue
    .line 3771
    return-object p0
.end method

.method public getPrimaryNavigationFragment()Lcom/miui/systemui/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 3346
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mPrimaryNav:Lcom/miui/systemui/support/v4/app/Fragment;

    return-object v0
.end method

.method public hideFragment(Lcom/miui/systemui/support/v4/app/Fragment;)V
    .locals 4
    .param p1, "fragment"    # Lcom/miui/systemui/support/v4/app/Fragment;

    .prologue
    const/4 v0, 0x1

    .line 1921
    sget-boolean v1, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "hide: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1922
    :cond_0
    iget-boolean v1, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mHidden:Z

    if-nez v1, :cond_2

    .line 1923
    iput-boolean v0, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mHidden:Z

    .line 1926
    iget-boolean v1, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mHiddenChanged:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    iput-boolean v0, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mHiddenChanged:Z

    .line 1920
    :cond_2
    return-void
.end method

.method isStateAtLeast(I)Z
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 1276
    iget v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mCurState:I

    if-lt v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStateSaved()Z
    .locals 1

    .prologue
    .line 2053
    iget-boolean v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    return v0
.end method

.method loadAnimation(Lcom/miui/systemui/support/v4/app/Fragment;IZI)Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;
    .locals 17
    .param p1, "fragment"    # Lcom/miui/systemui/support/v4/app/Fragment;
    .param p2, "transit"    # I
    .param p3, "enter"    # Z
    .param p4, "transitionStyle"    # I

    .prologue
    .line 1122
    invoke-virtual/range {p1 .. p1}, Lcom/miui/systemui/support/v4/app/Fragment;->getNextAnim()I

    move-result v9

    .line 1123
    .local v9, "nextAnim":I
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2, v9}, Lcom/miui/systemui/support/v4/app/Fragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    move-result-object v3

    .line 1124
    .local v3, "animation":Landroid/view/animation/Animation;
    if-eqz v3, :cond_0

    .line 1125
    new-instance v12, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;

    const/4 v13, 0x0

    invoke-direct {v12, v3, v13}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;)V

    return-object v12

    .line 1128
    :cond_0
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2, v9}, Lcom/miui/systemui/support/v4/app/Fragment;->onCreateAnimator(IZI)Landroid/animation/Animator;

    move-result-object v4

    .line 1129
    .local v4, "animator":Landroid/animation/Animator;
    if-eqz v4, :cond_1

    .line 1130
    new-instance v12, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;

    const/4 v13, 0x0

    invoke-direct {v12, v4, v13}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/animation/Animator;Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;)V

    return-object v12

    .line 1133
    :cond_1
    if-eqz v9, :cond_5

    .line 1134
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mHost:Lcom/miui/systemui/support/v4/app/FragmentHostCallback;

    invoke-virtual {v12}, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v9}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v5

    .line 1135
    .local v5, "dir":Ljava/lang/String;
    const-string/jumbo v12, "anim"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 1136
    .local v8, "isAnim":Z
    const/4 v11, 0x0

    .line 1137
    .local v11, "successfulLoad":Z
    if-eqz v8, :cond_3

    .line 1140
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mHost:Lcom/miui/systemui/support/v4/app/FragmentHostCallback;

    invoke-virtual {v12}, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 1141
    if-eqz v3, :cond_2

    .line 1142
    new-instance v12, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;

    const/4 v13, 0x0

    invoke-direct {v12, v3, v13}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    return-object v12

    .line 1145
    :cond_2
    const/4 v11, 0x1

    .line 1152
    :cond_3
    :goto_0
    if-nez v11, :cond_5

    .line 1155
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mHost:Lcom/miui/systemui/support/v4/app/FragmentHostCallback;

    invoke-virtual {v12}, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12, v9}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v4

    .line 1156
    if-eqz v4, :cond_5

    .line 1157
    new-instance v12, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;

    const/4 v13, 0x0

    invoke-direct {v12, v4, v13}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/animation/Animator;Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v12

    .line 1146
    :catch_0
    move-exception v6

    .line 1147
    .local v6, "e":Landroid/content/res/Resources$NotFoundException;
    throw v6

    .line 1159
    .end local v6    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v7

    .line 1160
    .local v7, "e":Ljava/lang/RuntimeException;
    if-eqz v8, :cond_4

    .line 1162
    throw v7

    .line 1165
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mHost:Lcom/miui/systemui/support/v4/app/FragmentHostCallback;

    invoke-virtual {v12}, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 1166
    if-eqz v3, :cond_5

    .line 1167
    new-instance v12, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;

    const/4 v13, 0x0

    invoke-direct {v12, v3, v13}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;)V

    return-object v12

    .line 1173
    .end local v5    # "dir":Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .end local v8    # "isAnim":Z
    .end local v11    # "successfulLoad":Z
    :cond_5
    if-nez p2, :cond_6

    .line 1174
    const/4 v12, 0x0

    return-object v12

    .line 1177
    :cond_6
    invoke-static/range {p2 .. p3}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->transitToStyleIndex(IZ)I

    move-result v10

    .line 1178
    .local v10, "styleIndex":I
    if-gez v10, :cond_7

    .line 1179
    const/4 v12, 0x0

    return-object v12

    .line 1182
    :cond_7
    packed-switch v10, :pswitch_data_0

    .line 1198
    if-nez p4, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mHost:Lcom/miui/systemui/support/v4/app/FragmentHostCallback;

    invoke-virtual {v12}, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->onHasWindowAnimations()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 1199
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mHost:Lcom/miui/systemui/support/v4/app/FragmentHostCallback;

    invoke-virtual {v12}, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->onGetWindowAnimations()I

    move-result p4

    .line 1201
    :cond_8
    if-nez p4, :cond_9

    .line 1202
    const/4 v12, 0x0

    return-object v12

    .line 1184
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mHost:Lcom/miui/systemui/support/v4/app/FragmentHostCallback;

    invoke-virtual {v12}, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v12

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f900000    # 1.125f

    const/high16 v16, 0x3f800000    # 1.0f

    move/from16 v0, v16

    invoke-static {v12, v15, v0, v13, v14}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;

    move-result-object v12

    return-object v12

    .line 1186
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mHost:Lcom/miui/systemui/support/v4/app/FragmentHostCallback;

    invoke-virtual {v12}, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v12

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const v16, 0x3f79999a    # 0.975f

    move/from16 v0, v16

    invoke-static {v12, v15, v0, v13, v14}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;

    move-result-object v12

    return-object v12

    .line 1188
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mHost:Lcom/miui/systemui/support/v4/app/FragmentHostCallback;

    invoke-virtual {v12}, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v12

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    const v15, 0x3f79999a    # 0.975f

    const/high16 v16, 0x3f800000    # 1.0f

    move/from16 v0, v16

    invoke-static {v12, v15, v0, v13, v14}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;

    move-result-object v12

    return-object v12

    .line 1190
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mHost:Lcom/miui/systemui/support/v4/app/FragmentHostCallback;

    invoke-virtual {v12}, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v12

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const v16, 0x3f89999a    # 1.075f

    move/from16 v0, v16

    invoke-static {v12, v15, v0, v13, v14}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;

    move-result-object v12

    return-object v12

    .line 1192
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mHost:Lcom/miui/systemui/support/v4/app/FragmentHostCallback;

    invoke-virtual {v12}, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v12

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v12, v13, v14}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->makeFadeAnimation(Landroid/content/Context;FF)Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;

    move-result-object v12

    return-object v12

    .line 1194
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mHost:Lcom/miui/systemui/support/v4/app/FragmentHostCallback;

    invoke-virtual {v12}, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v12

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->makeFadeAnimation(Landroid/content/Context;FF)Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;

    move-result-object v12

    return-object v12

    .line 1215
    :cond_9
    const/4 v12, 0x0

    return-object v12

    .line 1148
    .end local v10    # "styleIndex":I
    .restart local v5    # "dir":Ljava/lang/String;
    .restart local v8    # "isAnim":Z
    .restart local v11    # "successfulLoad":Z
    :catch_2
    move-exception v7

    .restart local v7    # "e":Ljava/lang/RuntimeException;
    goto/16 :goto_0

    .line 1182
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method makeActive(Lcom/miui/systemui/support/v4/app/Fragment;)V
    .locals 3
    .param p1, "f"    # Lcom/miui/systemui/support/v4/app/Fragment;

    .prologue
    .line 1849
    iget v0, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mIndex:I

    if-ltz v0, :cond_0

    .line 1850
    return-void

    .line 1853
    :cond_0
    iget v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mNextFragmentIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mNextFragmentIndex:I

    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mParent:Lcom/miui/systemui/support/v4/app/Fragment;

    invoke-virtual {p1, v0, v1}, Lcom/miui/systemui/support/v4/app/Fragment;->setIndex(ILcom/miui/systemui/support/v4/app/Fragment;)V

    .line 1854
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 1855
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    .line 1857
    :cond_1
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget v1, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1858
    sget-boolean v0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Allocated fragment index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    :cond_2
    return-void
.end method

.method makeInactive(Lcom/miui/systemui/support/v4/app/Fragment;)V
    .locals 3
    .param p1, "f"    # Lcom/miui/systemui/support/v4/app/Fragment;

    .prologue
    .line 1862
    iget v0, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mIndex:I

    if-gez v0, :cond_0

    .line 1863
    return-void

    .line 1866
    :cond_0
    sget-boolean v0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Freeing fragment index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    :cond_1
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget v1, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mIndex:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1871
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mHost:Lcom/miui/systemui/support/v4/app/FragmentHostCallback;

    iget-object v1, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->inactivateFragment(Ljava/lang/String;)V

    .line 1872
    invoke-virtual {p1}, Lcom/miui/systemui/support/v4/app/Fragment;->initState()V

    .line 1861
    return-void
.end method

.method moveFragmentToExpectedState(Lcom/miui/systemui/support/v4/app/Fragment;)V
    .locals 14
    .param p1, "f"    # Lcom/miui/systemui/support/v4/app/Fragment;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v5, 0x0

    .line 1727
    if-nez p1, :cond_0

    .line 1728
    return-void

    .line 1730
    :cond_0
    iget v2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mCurState:I

    .line 1731
    .local v2, "nextState":I
    iget-boolean v0, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mRemoving:Z

    if-eqz v0, :cond_1

    .line 1732
    invoke-virtual {p1}, Lcom/miui/systemui/support/v4/app/Fragment;->isInBackStack()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1733
    invoke-static {v2, v13}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1738
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/miui/systemui/support/v4/app/Fragment;->getNextTransition()I

    move-result v3

    invoke-virtual {p1}, Lcom/miui/systemui/support/v4/app/Fragment;->getNextTransitionStyle()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->moveToState(Lcom/miui/systemui/support/v4/app/Fragment;IIIZ)V

    .line 1740
    iget-object v0, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 1742
    invoke-direct {p0, p1}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->findFragmentUnder(Lcom/miui/systemui/support/v4/app/Fragment;)Lcom/miui/systemui/support/v4/app/Fragment;

    move-result-object v8

    .line 1743
    .local v8, "underFragment":Lcom/miui/systemui/support/v4/app/Fragment;
    if-eqz v8, :cond_2

    .line 1744
    iget-object v10, v8, Lcom/miui/systemui/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 1746
    .local v10, "underView":Landroid/view/View;
    iget-object v7, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1747
    .local v7, "container":Landroid/view/ViewGroup;
    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v9

    .line 1748
    .local v9, "underIndex":I
    iget-object v0, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v11

    .line 1749
    .local v11, "viewIndex":I
    if-ge v11, v9, :cond_2

    .line 1750
    invoke-virtual {v7, v11}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 1751
    iget-object v0, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v7, v0, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 1754
    .end local v7    # "container":Landroid/view/ViewGroup;
    .end local v9    # "underIndex":I
    .end local v10    # "underView":Landroid/view/View;
    .end local v11    # "viewIndex":I
    :cond_2
    iget-boolean v0, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mIsNewlyAdded:Z

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    .line 1756
    iget v0, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mPostponedAlpha:F

    cmpl-float v0, v0, v12

    if-lez v0, :cond_3

    .line 1757
    iget-object v0, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget v1, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mPostponedAlpha:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1759
    :cond_3
    iput v12, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mPostponedAlpha:F

    .line 1760
    iput-boolean v5, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mIsNewlyAdded:Z

    .line 1762
    invoke-virtual {p1}, Lcom/miui/systemui/support/v4/app/Fragment;->getNextTransition()I

    move-result v0

    .line 1763
    invoke-virtual {p1}, Lcom/miui/systemui/support/v4/app/Fragment;->getNextTransitionStyle()I

    move-result v1

    .line 1762
    invoke-virtual {p0, p1, v0, v13, v1}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->loadAnimation(Lcom/miui/systemui/support/v4/app/Fragment;IZI)Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;

    move-result-object v6

    .line 1764
    .local v6, "anim":Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;
    if-eqz v6, :cond_4

    .line 1765
    iget-object v0, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v0, v6}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;)V

    .line 1766
    iget-object v0, v6, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_7

    .line 1767
    iget-object v0, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget-object v1, v6, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1775
    .end local v6    # "anim":Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;
    .end local v8    # "underFragment":Lcom/miui/systemui/support/v4/app/Fragment;
    :cond_4
    :goto_1
    iget-boolean v0, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mHiddenChanged:Z

    if-eqz v0, :cond_5

    .line 1776
    invoke-virtual {p0, p1}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->completeShowHideFragment(Lcom/miui/systemui/support/v4/app/Fragment;)V

    .line 1726
    :cond_5
    return-void

    .line 1735
    :cond_6
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_0

    .line 1769
    .restart local v6    # "anim":Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;
    .restart local v8    # "underFragment":Lcom/miui/systemui/support/v4/app/Fragment;
    :cond_7
    iget-object v0, v6, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    iget-object v1, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1770
    iget-object v0, v6, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_1
.end method

.method moveToState(IZ)V
    .locals 8
    .param p1, "newState"    # I
    .param p2, "always"    # Z

    .prologue
    const/4 v7, 0x0

    .line 1790
    iget-object v5, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mHost:Lcom/miui/systemui/support/v4/app/FragmentHostCallback;

    if-nez v5, :cond_0

    if-eqz p1, :cond_0

    .line 1791
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "No activity"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1794
    :cond_0
    if-nez p2, :cond_1

    iget v5, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mCurState:I

    if-ne p1, v5, :cond_1

    .line 1795
    return-void

    .line 1798
    :cond_1
    iput p1, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mCurState:I

    .line 1800
    iget-object v5, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v5, :cond_9

    .line 1801
    const/4 v2, 0x0

    .line 1804
    .local v2, "loadersRunning":Z
    iget-object v5, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1805
    .local v4, "numAdded":I
    const/4 v1, 0x0

    .end local v2    # "loadersRunning":Z
    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_3

    .line 1806
    iget-object v5, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/systemui/support/v4/app/Fragment;

    .line 1807
    .local v0, "f":Lcom/miui/systemui/support/v4/app/Fragment;
    invoke-virtual {p0, v0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->moveFragmentToExpectedState(Lcom/miui/systemui/support/v4/app/Fragment;)V

    .line 1808
    iget-object v5, v0, Lcom/miui/systemui/support/v4/app/Fragment;->mLoaderManager:Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;

    if-eqz v5, :cond_2

    .line 1809
    iget-object v5, v0, Lcom/miui/systemui/support/v4/app/Fragment;->mLoaderManager:Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v5}, Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;->hasRunningLoaders()Z

    move-result v5

    or-int/2addr v2, v5

    .line 1805
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1815
    .end local v0    # "f":Lcom/miui/systemui/support/v4/app/Fragment;
    :cond_3
    iget-object v5, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 1816
    .local v3, "numActive":I
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_7

    .line 1817
    iget-object v5, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/systemui/support/v4/app/Fragment;

    .line 1818
    .restart local v0    # "f":Lcom/miui/systemui/support/v4/app/Fragment;
    if-eqz v0, :cond_5

    iget-boolean v5, v0, Lcom/miui/systemui/support/v4/app/Fragment;->mRemoving:Z

    if-nez v5, :cond_4

    iget-boolean v5, v0, Lcom/miui/systemui/support/v4/app/Fragment;->mDetached:Z

    if-eqz v5, :cond_5

    :cond_4
    iget-boolean v5, v0, Lcom/miui/systemui/support/v4/app/Fragment;->mIsNewlyAdded:Z

    if-eqz v5, :cond_6

    .line 1816
    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1819
    :cond_6
    invoke-virtual {p0, v0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->moveFragmentToExpectedState(Lcom/miui/systemui/support/v4/app/Fragment;)V

    .line 1820
    iget-object v5, v0, Lcom/miui/systemui/support/v4/app/Fragment;->mLoaderManager:Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;

    if-eqz v5, :cond_5

    .line 1821
    iget-object v5, v0, Lcom/miui/systemui/support/v4/app/Fragment;->mLoaderManager:Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v5}, Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;->hasRunningLoaders()Z

    move-result v5

    or-int/2addr v2, v5

    .local v2, "loadersRunning":Z
    goto :goto_2

    .line 1826
    .end local v0    # "f":Lcom/miui/systemui/support/v4/app/Fragment;
    .end local v2    # "loadersRunning":Z
    :cond_7
    if-nez v2, :cond_8

    .line 1827
    invoke-virtual {p0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->startPendingDeferredFragments()V

    .line 1830
    :cond_8
    iget-boolean v5, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mHost:Lcom/miui/systemui/support/v4/app/FragmentHostCallback;

    if-eqz v5, :cond_9

    iget v5, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mCurState:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_9

    .line 1831
    iget-object v5, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mHost:Lcom/miui/systemui/support/v4/app/FragmentHostCallback;

    invoke-virtual {v5}, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->onSupportInvalidateOptionsMenu()V

    .line 1832
    iput-boolean v7, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1789
    .end local v1    # "i":I
    .end local v3    # "numActive":I
    .end local v4    # "numAdded":I
    :cond_9
    return-void
.end method

.method moveToState(Lcom/miui/systemui/support/v4/app/Fragment;)V
    .locals 6
    .param p1, "f"    # Lcom/miui/systemui/support/v4/app/Fragment;

    .prologue
    const/4 v3, 0x0

    .line 1638
    iget v2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mCurState:I

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->moveToState(Lcom/miui/systemui/support/v4/app/Fragment;IIIZ)V

    .line 1637
    return-void
.end method

.method moveToState(Lcom/miui/systemui/support/v4/app/Fragment;IIIZ)V
    .locals 14
    .param p1, "f"    # Lcom/miui/systemui/support/v4/app/Fragment;
    .param p2, "newState"    # I
    .param p3, "transit"    # I
    .param p4, "transitionStyle"    # I
    .param p5, "keepActive"    # Z

    .prologue
    .line 1283
    iget-boolean v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mAdded:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mDetached:Z

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    move/from16 v0, p2

    if-le v0, v2, :cond_1

    .line 1284
    const/16 p2, 0x1

    .line 1286
    :cond_1
    iget-boolean v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mRemoving:Z

    if-eqz v2, :cond_2

    iget v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mState:I

    move/from16 v0, p2

    if-le v0, v2, :cond_2

    .line 1287
    iget v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mState:I

    if-nez v2, :cond_9

    invoke-virtual {p1}, Lcom/miui/systemui/support/v4/app/Fragment;->isInBackStack()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1289
    const/16 p2, 0x1

    .line 1297
    :cond_2
    :goto_0
    iget-boolean v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mDeferStart:Z

    if-eqz v2, :cond_3

    iget v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mState:I

    const/4 v3, 0x4

    if-ge v2, v3, :cond_3

    const/4 v2, 0x3

    move/from16 v0, p2

    if-le v0, v2, :cond_3

    .line 1298
    const/16 p2, 0x3

    .line 1300
    :cond_3
    iget v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mState:I

    move/from16 v0, p2

    if-gt v2, v0, :cond_25

    .line 1304
    iget-boolean v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mFromLayout:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mInLayout:Z

    if-eqz v2, :cond_a

    .line 1307
    :cond_4
    invoke-virtual {p1}, Lcom/miui/systemui/support/v4/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_5

    invoke-virtual {p1}, Lcom/miui/systemui/support/v4/app/Fragment;->getAnimator()Landroid/animation/Animator;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1312
    :cond_5
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/miui/systemui/support/v4/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    .line 1313
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/miui/systemui/support/v4/app/Fragment;->setAnimator(Landroid/animation/Animator;)V

    .line 1314
    invoke-virtual {p1}, Lcom/miui/systemui/support/v4/app/Fragment;->getStateAfterAnimating()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->moveToState(Lcom/miui/systemui/support/v4/app/Fragment;IIIZ)V

    .line 1316
    :cond_6
    iget v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mState:I

    packed-switch v2, :pswitch_data_0

    .line 1577
    :cond_7
    :goto_1
    iget v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mState:I

    move/from16 v0, p2

    if-eq v2, v0, :cond_8

    .line 1578
    const-string/jumbo v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "moveToState: Fragment state for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " not updated inline; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1579
    const-string/jumbo v4, "expected state "

    .line 1578
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1579
    const-string/jumbo v4, " found "

    .line 1578
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1579
    iget v4, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mState:I

    .line 1578
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1580
    move/from16 v0, p2

    iput v0, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mState:I

    .line 1281
    :cond_8
    return-void

    .line 1292
    :cond_9
    iget v0, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mState:I

    move/from16 p2, v0

    goto/16 :goto_0

    .line 1305
    :cond_a
    return-void

    .line 1318
    :pswitch_0
    if-lez p2, :cond_12

    .line 1319
    sget-boolean v2, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_b

    const-string/jumbo v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "moveto CREATED: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    :cond_b
    iget-object v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v2, :cond_d

    .line 1321
    iget-object v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mHost:Lcom/miui/systemui/support/v4/app/FragmentHostCallback;

    invoke-virtual {v3}, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1323
    iget-object v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1324
    const-string/jumbo v3, "android:view_state"

    .line 1323
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v2

    iput-object v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 1325
    iget-object v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1326
    const-string/jumbo v3, "android:target_state"

    .line 1325
    invoke-virtual {p0, v2, v3}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Lcom/miui/systemui/support/v4/app/Fragment;

    move-result-object v2

    iput-object v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mTarget:Lcom/miui/systemui/support/v4/app/Fragment;

    .line 1327
    iget-object v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mTarget:Lcom/miui/systemui/support/v4/app/Fragment;

    if-eqz v2, :cond_c

    .line 1328
    iget-object v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1329
    const-string/jumbo v3, "android:target_req_state"

    const/4 v4, 0x0

    .line 1328
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mTargetRequestCode:I

    .line 1331
    :cond_c
    iget-object v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1332
    const-string/jumbo v3, "android:user_visible_hint"

    const/4 v4, 0x1

    .line 1331
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mUserVisibleHint:Z

    .line 1333
    iget-boolean v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mUserVisibleHint:Z

    if-nez v2, :cond_d

    .line 1334
    const/4 v2, 0x1

    iput-boolean v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mDeferStart:Z

    .line 1335
    const/4 v2, 0x3

    move/from16 v0, p2

    if-le v0, v2, :cond_d

    .line 1336
    const/16 p2, 0x3

    .line 1341
    :cond_d
    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mHost:Lcom/miui/systemui/support/v4/app/FragmentHostCallback;

    iput-object v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mHost:Lcom/miui/systemui/support/v4/app/FragmentHostCallback;

    .line 1342
    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mParent:Lcom/miui/systemui/support/v4/app/Fragment;

    iput-object v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mParentFragment:Lcom/miui/systemui/support/v4/app/Fragment;

    .line 1343
    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mParent:Lcom/miui/systemui/support/v4/app/Fragment;

    if-eqz v2, :cond_e

    .line 1344
    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mParent:Lcom/miui/systemui/support/v4/app/Fragment;

    iget-object v2, v2, Lcom/miui/systemui/support/v4/app/Fragment;->mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    .line 1343
    :goto_2
    iput-object v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    .line 1348
    iget-object v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mTarget:Lcom/miui/systemui/support/v4/app/Fragment;

    if-eqz v2, :cond_10

    .line 1349
    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget-object v3, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mTarget:Lcom/miui/systemui/support/v4/app/Fragment;

    iget v3, v3, Lcom/miui/systemui/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mTarget:Lcom/miui/systemui/support/v4/app/Fragment;

    if-eq v2, v3, :cond_f

    .line 1350
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1351
    const-string/jumbo v4, " declared target fragment "

    .line 1350
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1351
    iget-object v4, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mTarget:Lcom/miui/systemui/support/v4/app/Fragment;

    .line 1350
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1352
    const-string/jumbo v4, " that does not belong to this FragmentManager!"

    .line 1350
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1344
    :cond_e
    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mHost:Lcom/miui/systemui/support/v4/app/FragmentHostCallback;

    invoke-virtual {v2}, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->getFragmentManagerImpl()Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    move-result-object v2

    goto :goto_2

    .line 1354
    :cond_f
    iget-object v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mTarget:Lcom/miui/systemui/support/v4/app/Fragment;

    iget v2, v2, Lcom/miui/systemui/support/v4/app/Fragment;->mState:I

    const/4 v3, 0x1

    if-ge v2, v3, :cond_10

    .line 1355
    iget-object v3, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mTarget:Lcom/miui/systemui/support/v4/app/Fragment;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->moveToState(Lcom/miui/systemui/support/v4/app/Fragment;IIIZ)V

    .line 1359
    :cond_10
    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mHost:Lcom/miui/systemui/support/v4/app/FragmentHostCallback;

    invoke-virtual {v2}, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v2, v3}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentPreAttached(Lcom/miui/systemui/support/v4/app/Fragment;Landroid/content/Context;Z)V

    .line 1360
    const/4 v2, 0x0

    iput-boolean v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mCalled:Z

    .line 1361
    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mHost:Lcom/miui/systemui/support/v4/app/FragmentHostCallback;

    invoke-virtual {v2}, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/miui/systemui/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 1362
    iget-boolean v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mCalled:Z

    if-nez v2, :cond_11

    .line 1363
    new-instance v2, Lcom/miui/systemui/support/v4/app/SuperNotCalledException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1364
    const-string/jumbo v4, " did not call through to super.onAttach()"

    .line 1363
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/miui/systemui/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1366
    :cond_11
    iget-object v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mParentFragment:Lcom/miui/systemui/support/v4/app/Fragment;

    if-nez v2, :cond_1f

    .line 1367
    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mHost:Lcom/miui/systemui/support/v4/app/FragmentHostCallback;

    invoke-virtual {v2, p1}, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->onAttachFragment(Lcom/miui/systemui/support/v4/app/Fragment;)V

    .line 1371
    :goto_3
    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mHost:Lcom/miui/systemui/support/v4/app/FragmentHostCallback;

    invoke-virtual {v2}, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v2, v3}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentAttached(Lcom/miui/systemui/support/v4/app/Fragment;Landroid/content/Context;Z)V

    .line 1373
    iget-boolean v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mRetaining:Z

    if-nez v2, :cond_20

    .line 1374
    iget-object v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v2, v3}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentPreCreated(Lcom/miui/systemui/support/v4/app/Fragment;Landroid/os/Bundle;Z)V

    .line 1375
    iget-object v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v2}, Lcom/miui/systemui/support/v4/app/Fragment;->performCreate(Landroid/os/Bundle;)V

    .line 1376
    iget-object v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v2, v3}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentCreated(Lcom/miui/systemui/support/v4/app/Fragment;Landroid/os/Bundle;Z)V

    .line 1381
    :goto_4
    const/4 v2, 0x0

    iput-boolean v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mRetaining:Z

    .line 1388
    :cond_12
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->ensureInflatedFragmentView(Lcom/miui/systemui/support/v4/app/Fragment;)V

    .line 1390
    const/4 v2, 0x1

    move/from16 v0, p2

    if-le v0, v2, :cond_1a

    .line 1391
    sget-boolean v2, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_13

    const-string/jumbo v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "moveto ACTIVITY_CREATED: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    :cond_13
    iget-boolean v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mFromLayout:Z

    if-nez v2, :cond_18

    .line 1393
    const/4 v10, 0x0

    .line 1394
    .local v10, "container":Landroid/view/ViewGroup;
    iget v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mContainerId:I

    if-eqz v2, :cond_15

    .line 1395
    iget v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mContainerId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_14

    .line 1396
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 1397
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Cannot create fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1399
    const-string/jumbo v4, " for a container view with no id"

    .line 1397
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1396
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 1401
    :cond_14
    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mContainer:Lcom/miui/systemui/support/v4/app/FragmentContainer;

    iget v3, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mContainerId:I

    invoke-virtual {v2, v3}, Lcom/miui/systemui/support/v4/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object v10

    .end local v10    # "container":Landroid/view/ViewGroup;
    check-cast v10, Landroid/view/ViewGroup;

    .line 1402
    .local v10, "container":Landroid/view/ViewGroup;
    if-nez v10, :cond_15

    iget-boolean v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mRestored:Z

    if-eqz v2, :cond_21

    .line 1416
    .end local v10    # "container":Landroid/view/ViewGroup;
    :cond_15
    :goto_5
    iput-object v10, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1418
    iget-object v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1417
    invoke-virtual {p1, v2}, Lcom/miui/systemui/support/v4/app/Fragment;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 1418
    iget-object v3, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1417
    invoke-virtual {p1, v2, v10, v3}, Lcom/miui/systemui/support/v4/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 1419
    iget-object v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v2, :cond_24

    .line 1420
    iget-object v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mView:Landroid/view/View;

    iput-object v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    .line 1421
    iget-object v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 1422
    if-eqz v10, :cond_16

    .line 1423
    iget-object v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v10, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1425
    :cond_16
    iget-boolean v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mHidden:Z

    if-eqz v2, :cond_17

    .line 1426
    iget-object v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1428
    :cond_17
    iget-object v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget-object v3, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v2, v3}, Lcom/miui/systemui/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1429
    iget-object v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget-object v3, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1430
    const/4 v4, 0x0

    .line 1429
    invoke-virtual {p0, p1, v2, v3, v4}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentViewCreated(Lcom/miui/systemui/support/v4/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 1433
    iget-object v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_23

    .line 1434
    iget-object v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_22

    const/4 v2, 0x1

    .line 1433
    :goto_6
    iput-boolean v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mIsNewlyAdded:Z

    .line 1440
    :cond_18
    :goto_7
    iget-object v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v2}, Lcom/miui/systemui/support/v4/app/Fragment;->performActivityCreated(Landroid/os/Bundle;)V

    .line 1441
    iget-object v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v2, v3}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentActivityCreated(Lcom/miui/systemui/support/v4/app/Fragment;Landroid/os/Bundle;Z)V

    .line 1442
    iget-object v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v2, :cond_19

    .line 1443
    iget-object v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v2}, Lcom/miui/systemui/support/v4/app/Fragment;->restoreViewState(Landroid/os/Bundle;)V

    .line 1445
    :cond_19
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1449
    :cond_1a
    :pswitch_2
    const/4 v2, 0x2

    move/from16 v0, p2

    if-le v0, v2, :cond_1b

    .line 1450
    const/4 v2, 0x3

    iput v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mState:I

    .line 1454
    :cond_1b
    :pswitch_3
    const/4 v2, 0x3

    move/from16 v0, p2

    if-le v0, v2, :cond_1d

    .line 1455
    sget-boolean v2, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_1c

    const-string/jumbo v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "moveto STARTED: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    :cond_1c
    invoke-virtual {p1}, Lcom/miui/systemui/support/v4/app/Fragment;->performStart()V

    .line 1457
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentStarted(Lcom/miui/systemui/support/v4/app/Fragment;Z)V

    .line 1461
    :cond_1d
    :pswitch_4
    const/4 v2, 0x4

    move/from16 v0, p2

    if-le v0, v2, :cond_7

    .line 1462
    sget-boolean v2, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_1e

    const-string/jumbo v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "moveto RESUMED: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    :cond_1e
    invoke-virtual {p1}, Lcom/miui/systemui/support/v4/app/Fragment;->performResume()V

    .line 1464
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentResumed(Lcom/miui/systemui/support/v4/app/Fragment;Z)V

    .line 1465
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1466
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    goto/16 :goto_1

    .line 1369
    :cond_1f
    iget-object v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mParentFragment:Lcom/miui/systemui/support/v4/app/Fragment;

    invoke-virtual {v2, p1}, Lcom/miui/systemui/support/v4/app/Fragment;->onAttachFragment(Lcom/miui/systemui/support/v4/app/Fragment;)V

    goto/16 :goto_3

    .line 1378
    :cond_20
    iget-object v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v2}, Lcom/miui/systemui/support/v4/app/Fragment;->restoreChildFragmentState(Landroid/os/Bundle;)V

    .line 1379
    const/4 v2, 0x1

    iput v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mState:I

    goto/16 :goto_4

    .line 1405
    .restart local v10    # "container":Landroid/view/ViewGroup;
    :cond_21
    :try_start_0
    invoke-virtual {p1}, Lcom/miui/systemui/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mContainerId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 1409
    .local v12, "resName":Ljava/lang/String;
    :goto_8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 1410
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No view found for id 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1411
    iget v4, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mContainerId:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 1410
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1411
    const-string/jumbo v4, " ("

    .line 1410
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1413
    const-string/jumbo v4, ") for fragment "

    .line 1410
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1409
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    goto/16 :goto_5

    .line 1406
    .end local v12    # "resName":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 1407
    .local v11, "e":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v12, "unknown"

    .restart local v12    # "resName":Ljava/lang/String;
    goto :goto_8

    .line 1434
    .end local v10    # "container":Landroid/view/ViewGroup;
    .end local v11    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v12    # "resName":Ljava/lang/String;
    :cond_22
    const/4 v2, 0x0

    goto/16 :goto_6

    .line 1433
    :cond_23
    const/4 v2, 0x0

    goto/16 :goto_6

    .line 1436
    :cond_24
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    goto/16 :goto_7

    .line 1469
    :cond_25
    iget v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mState:I

    move/from16 v0, p2

    if-le v2, v0, :cond_7

    .line 1470
    iget v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mState:I

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_1

    .line 1527
    :cond_26
    :goto_9
    :pswitch_5
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ge v0, v2, :cond_7

    .line 1528
    iget-boolean v2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mDestroyed:Z

    if-eqz v2, :cond_27

    .line 1535
    invoke-virtual {p1}, Lcom/miui/systemui/support/v4/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_35

    .line 1536
    invoke-virtual {p1}, Lcom/miui/systemui/support/v4/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v13

    .line 1537
    .local v13, "v":Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/miui/systemui/support/v4/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    .line 1538
    invoke-virtual {v13}, Landroid/view/View;->clearAnimation()V

    .line 1545
    .end local v13    # "v":Landroid/view/View;
    :cond_27
    :goto_a
    invoke-virtual {p1}, Lcom/miui/systemui/support/v4/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_28

    invoke-virtual {p1}, Lcom/miui/systemui/support/v4/app/Fragment;->getAnimator()Landroid/animation/Animator;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 1550
    :cond_28
    invoke-virtual/range {p1 .. p2}, Lcom/miui/systemui/support/v4/app/Fragment;->setStateAfterAnimating(I)V

    .line 1551
    const/16 p2, 0x1

    .line 1545
    goto/16 :goto_1

    .line 1472
    :pswitch_6
    const/4 v2, 0x5

    move/from16 v0, p2

    if-ge v0, v2, :cond_2a

    .line 1473
    sget-boolean v2, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_29

    const-string/jumbo v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "movefrom RESUMED: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    :cond_29
    invoke-virtual {p1}, Lcom/miui/systemui/support/v4/app/Fragment;->performPause()V

    .line 1475
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentPaused(Lcom/miui/systemui/support/v4/app/Fragment;Z)V

    .line 1479
    :cond_2a
    :pswitch_7
    const/4 v2, 0x4

    move/from16 v0, p2

    if-ge v0, v2, :cond_2c

    .line 1480
    sget-boolean v2, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_2b

    const-string/jumbo v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "movefrom STARTED: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    :cond_2b
    invoke-virtual {p1}, Lcom/miui/systemui/support/v4/app/Fragment;->performStop()V

    .line 1482
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentStopped(Lcom/miui/systemui/support/v4/app/Fragment;Z)V

    .line 1486
    :cond_2c
    :pswitch_8
    const/4 v2, 0x3

    move/from16 v0, p2

    if-ge v0, v2, :cond_2e

    .line 1487
    sget-boolean v2, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_2d

    const-string/jumbo v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "movefrom STOPPED: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    :cond_2d
    invoke-virtual {p1}, Lcom/miui/systemui/support/v4/app/Fragment;->performReallyStop()V

    .line 1492
    :cond_2e
    :pswitch_9
    const/4 v2, 0x2

    move/from16 v0, p2

    if-ge v0, v2, :cond_26

    .line 1493
    sget-boolean v2, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_2f

    const-string/jumbo v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "movefrom ACTIVITY_CREATED: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    :cond_2f
    iget-object v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v2, :cond_30

    .line 1497
    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mHost:Lcom/miui/systemui/support/v4/app/FragmentHostCallback;

    invoke-virtual {v2, p1}, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->onShouldSaveFragmentState(Lcom/miui/systemui/support/v4/app/Fragment;)Z

    move-result v2

    if-eqz v2, :cond_30

    iget-object v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-nez v2, :cond_30

    .line 1498
    invoke-virtual {p0, p1}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->saveFragmentViewState(Lcom/miui/systemui/support/v4/app/Fragment;)V

    .line 1501
    :cond_30
    invoke-virtual {p1}, Lcom/miui/systemui/support/v4/app/Fragment;->performDestroyView()V

    .line 1502
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentViewDestroyed(Lcom/miui/systemui/support/v4/app/Fragment;Z)V

    .line 1503
    iget-object v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v2, :cond_33

    iget-object v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_33

    .line 1505
    iget-object v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 1506
    iget-object v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v3, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 1507
    const/4 v8, 0x0

    .line 1508
    .local v8, "anim":Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;
    iget v2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mCurState:I

    if-lez v2, :cond_31

    iget-boolean v2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mDestroyed:Z

    if-eqz v2, :cond_34

    .line 1514
    .end local v8    # "anim":Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;
    :cond_31
    :goto_b
    const/4 v2, 0x0

    iput v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mPostponedAlpha:F

    .line 1515
    if-eqz v8, :cond_32

    .line 1516
    move/from16 v0, p2

    invoke-direct {p0, p1, v8, v0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->animateRemoveFragment(Lcom/miui/systemui/support/v4/app/Fragment;Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;I)V

    .line 1518
    :cond_32
    iget-object v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v3, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1520
    :cond_33
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1521
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 1522
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    .line 1523
    const/4 v2, 0x0

    iput-boolean v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mInLayout:Z

    goto/16 :goto_9

    .line 1509
    .restart local v8    # "anim":Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;
    :cond_34
    iget-object v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_31

    .line 1510
    iget v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mPostponedAlpha:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_31

    .line 1511
    const/4 v2, 0x0

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->loadAnimation(Lcom/miui/systemui/support/v4/app/Fragment;IZI)Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;

    move-result-object v8

    .local v8, "anim":Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;
    goto :goto_b

    .line 1539
    .end local v8    # "anim":Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;
    :cond_35
    invoke-virtual {p1}, Lcom/miui/systemui/support/v4/app/Fragment;->getAnimator()Landroid/animation/Animator;

    move-result-object v2

    if-eqz v2, :cond_27

    .line 1540
    invoke-virtual {p1}, Lcom/miui/systemui/support/v4/app/Fragment;->getAnimator()Landroid/animation/Animator;

    move-result-object v9

    .line 1541
    .local v9, "animator":Landroid/animation/Animator;
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/miui/systemui/support/v4/app/Fragment;->setAnimator(Landroid/animation/Animator;)V

    .line 1542
    invoke-virtual {v9}, Landroid/animation/Animator;->cancel()V

    goto/16 :goto_a

    .line 1553
    .end local v9    # "animator":Landroid/animation/Animator;
    :cond_36
    sget-boolean v2, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_37

    const-string/jumbo v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "movefrom CREATED: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    :cond_37
    iget-boolean v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mRetaining:Z

    if-nez v2, :cond_38

    .line 1555
    invoke-virtual {p1}, Lcom/miui/systemui/support/v4/app/Fragment;->performDestroy()V

    .line 1556
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentDestroyed(Lcom/miui/systemui/support/v4/app/Fragment;Z)V

    .line 1561
    :goto_c
    invoke-virtual {p1}, Lcom/miui/systemui/support/v4/app/Fragment;->performDetach()V

    .line 1562
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentDetached(Lcom/miui/systemui/support/v4/app/Fragment;Z)V

    .line 1563
    if-nez p5, :cond_7

    .line 1564
    iget-boolean v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mRetaining:Z

    if-nez v2, :cond_39

    .line 1565
    invoke-virtual {p0, p1}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->makeInactive(Lcom/miui/systemui/support/v4/app/Fragment;)V

    goto/16 :goto_1

    .line 1558
    :cond_38
    const/4 v2, 0x0

    iput v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mState:I

    goto :goto_c

    .line 1567
    :cond_39
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mHost:Lcom/miui/systemui/support/v4/app/FragmentHostCallback;

    .line 1568
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mParentFragment:Lcom/miui/systemui/support/v4/app/Fragment;

    .line 1569
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    goto/16 :goto_1

    .line 1316
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 1470
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public noteStateNotSaved()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3151
    iput-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mSavedNonConfig:Lcom/miui/systemui/support/v4/app/FragmentManagerNonConfig;

    .line 3152
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    .line 3153
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3154
    .local v0, "addedCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 3155
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/systemui/support/v4/app/Fragment;

    .line 3156
    .local v1, "fragment":Lcom/miui/systemui/support/v4/app/Fragment;
    if-eqz v1, :cond_0

    .line 3157
    invoke-virtual {v1}, Lcom/miui/systemui/support/v4/app/Fragment;->noteStateNotSaved()V

    .line 3154
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3150
    .end local v1    # "fragment":Lcom/miui/systemui/support/v4/app/Fragment;
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 11
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 3671
    const-string/jumbo v0, "fragment"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3672
    const/4 v0, 0x0

    return-object v0

    .line 3675
    :cond_0
    const-string/jumbo v0, "class"

    const/4 v2, 0x0

    invoke-interface {p4, v2, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3676
    .local v8, "fname":Ljava/lang/String;
    sget-object v0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$FragmentTag;->Fragment:[I

    invoke-virtual {p3, p4, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 3677
    .local v6, "a":Landroid/content/res/TypedArray;
    if-nez v8, :cond_1

    .line 3678
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 3680
    :cond_1
    const/4 v0, 0x1

    const/4 v2, -0x1

    invoke-virtual {v6, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 3681
    .local v9, "id":I
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 3682
    .local v10, "tag":Ljava/lang/String;
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 3684
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mHost:Lcom/miui/systemui/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v8}, Lcom/miui/systemui/support/v4/app/Fragment;->isSupportFragmentClass(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3687
    const/4 v0, 0x0

    return-object v0

    .line 3690
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    .line 3691
    .local v7, "containerId":I
    :goto_0
    const/4 v0, -0x1

    if-ne v7, v0, :cond_4

    const/4 v0, -0x1

    if-ne v9, v0, :cond_4

    if-nez v10, :cond_4

    .line 3692
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3693
    const-string/jumbo v3, ": Must specify unique android:id, android:tag, or have a parent with an id for "

    .line 3692
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3690
    .end local v7    # "containerId":I
    :cond_3
    const/4 v7, 0x0

    goto :goto_0

    .line 3699
    .restart local v7    # "containerId":I
    :cond_4
    const/4 v0, -0x1

    if-eq v9, v0, :cond_9

    invoke-virtual {p0, v9}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->findFragmentById(I)Lcom/miui/systemui/support/v4/app/Fragment;

    move-result-object v1

    .line 3700
    .local v1, "fragment":Lcom/miui/systemui/support/v4/app/Fragment;
    :goto_1
    if-nez v1, :cond_5

    if-eqz v10, :cond_5

    .line 3701
    invoke-virtual {p0, v10}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->findFragmentByTag(Ljava/lang/String;)Lcom/miui/systemui/support/v4/app/Fragment;

    move-result-object v1

    .line 3703
    :cond_5
    if-nez v1, :cond_6

    const/4 v0, -0x1

    if-eq v7, v0, :cond_6

    .line 3704
    invoke-virtual {p0, v7}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->findFragmentById(I)Lcom/miui/systemui/support/v4/app/Fragment;

    move-result-object v1

    .line 3707
    :cond_6
    sget-boolean v0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_7

    const-string/jumbo v0, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCreateView: id=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3708
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 3707
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3708
    const-string/jumbo v3, " fname="

    .line 3707
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3709
    const-string/jumbo v3, " existing="

    .line 3707
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3710
    :cond_7
    if-nez v1, :cond_b

    .line 3711
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mContainer:Lcom/miui/systemui/support/v4/app/FragmentContainer;

    const/4 v2, 0x0

    invoke-virtual {v0, p3, v8, v2}, Lcom/miui/systemui/support/v4/app/FragmentContainer;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lcom/miui/systemui/support/v4/app/Fragment;

    move-result-object v1

    .line 3712
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/miui/systemui/support/v4/app/Fragment;->mFromLayout:Z

    .line 3713
    if-eqz v9, :cond_a

    move v0, v9

    :goto_2
    iput v0, v1, Lcom/miui/systemui/support/v4/app/Fragment;->mFragmentId:I

    .line 3714
    iput v7, v1, Lcom/miui/systemui/support/v4/app/Fragment;->mContainerId:I

    .line 3715
    iput-object v10, v1, Lcom/miui/systemui/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    .line 3716
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/miui/systemui/support/v4/app/Fragment;->mInLayout:Z

    .line 3717
    iput-object p0, v1, Lcom/miui/systemui/support/v4/app/Fragment;->mFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    .line 3718
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mHost:Lcom/miui/systemui/support/v4/app/FragmentHostCallback;

    iput-object v0, v1, Lcom/miui/systemui/support/v4/app/Fragment;->mHost:Lcom/miui/systemui/support/v4/app/FragmentHostCallback;

    .line 3719
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mHost:Lcom/miui/systemui/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, v1, Lcom/miui/systemui/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v1, v0, p4, v2}, Lcom/miui/systemui/support/v4/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 3720
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->addFragment(Lcom/miui/systemui/support/v4/app/Fragment;Z)V

    .line 3746
    :cond_8
    :goto_3
    iget v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mCurState:I

    const/4 v2, 0x1

    if-ge v0, v2, :cond_d

    iget-boolean v0, v1, Lcom/miui/systemui/support/v4/app/Fragment;->mFromLayout:Z

    if-eqz v0, :cond_d

    .line 3747
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->moveToState(Lcom/miui/systemui/support/v4/app/Fragment;IIIZ)V

    .line 3752
    :goto_4
    iget-object v0, v1, Lcom/miui/systemui/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-nez v0, :cond_e

    .line 3753
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3754
    const-string/jumbo v3, " did not create a view."

    .line 3753
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3699
    .end local v1    # "fragment":Lcom/miui/systemui/support/v4/app/Fragment;
    :cond_9
    const/4 v1, 0x0

    goto/16 :goto_1

    .restart local v1    # "fragment":Lcom/miui/systemui/support/v4/app/Fragment;
    :cond_a
    move v0, v7

    .line 3713
    goto :goto_2

    .line 3722
    :cond_b
    iget-boolean v0, v1, Lcom/miui/systemui/support/v4/app/Fragment;->mInLayout:Z

    if-eqz v0, :cond_c

    .line 3725
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3726
    const-string/jumbo v3, ": Duplicate id 0x"

    .line 3725
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3726
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 3725
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3727
    const-string/jumbo v3, ", tag "

    .line 3725
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3727
    const-string/jumbo v3, ", or parent id 0x"

    .line 3725
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3727
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 3725
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3728
    const-string/jumbo v3, " with another fragment for "

    .line 3725
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3732
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/miui/systemui/support/v4/app/Fragment;->mInLayout:Z

    .line 3733
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mHost:Lcom/miui/systemui/support/v4/app/FragmentHostCallback;

    iput-object v0, v1, Lcom/miui/systemui/support/v4/app/Fragment;->mHost:Lcom/miui/systemui/support/v4/app/FragmentHostCallback;

    .line 3737
    iget-boolean v0, v1, Lcom/miui/systemui/support/v4/app/Fragment;->mRetaining:Z

    if-nez v0, :cond_8

    .line 3738
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mHost:Lcom/miui/systemui/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, v1, Lcom/miui/systemui/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v1, v0, p4, v2}, Lcom/miui/systemui/support/v4/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    goto/16 :goto_3

    .line 3749
    :cond_d
    invoke-virtual {p0, v1}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->moveToState(Lcom/miui/systemui/support/v4/app/Fragment;)V

    goto/16 :goto_4

    .line 3756
    :cond_e
    if-eqz v9, :cond_f

    .line 3757
    iget-object v0, v1, Lcom/miui/systemui/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setId(I)V

    .line 3759
    :cond_f
    iget-object v0, v1, Lcom/miui/systemui/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_10

    .line 3760
    iget-object v0, v1, Lcom/miui/systemui/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3762
    :cond_10
    iget-object v0, v1, Lcom/miui/systemui/support/v4/app/Fragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 3767
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public performPendingDeferredStart(Lcom/miui/systemui/support/v4/app/Fragment;)V
    .locals 6
    .param p1, "f"    # Lcom/miui/systemui/support/v4/app/Fragment;

    .prologue
    const/4 v3, 0x0

    .line 1219
    iget-boolean v0, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mDeferStart:Z

    if-eqz v0, :cond_1

    .line 1220
    iget-boolean v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    if-eqz v0, :cond_0

    .line 1222
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    .line 1223
    return-void

    .line 1225
    :cond_0
    iput-boolean v3, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mDeferStart:Z

    .line 1226
    iget v2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mCurState:I

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->moveToState(Lcom/miui/systemui/support/v4/app/Fragment;IIIZ)V

    .line 1218
    :cond_1
    return-void
.end method

.method public popBackStackImmediate()Z
    .locals 3

    .prologue
    .line 791
    invoke-direct {p0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->checkStateLoss()V

    .line 792
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->popBackStackImmediate(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method popBackStackState(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z
    .locals 7
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "id"    # I
    .param p5, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/systemui/support/v4/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "II)Z"
        }
    .end annotation

    .prologue
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/BackStackRecord;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2710
    iget-object v4, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-nez v4, :cond_0

    .line 2711
    return v5

    .line 2713
    :cond_0
    if-nez p3, :cond_3

    if-gez p4, :cond_3

    and-int/lit8 v4, p5, 0x1

    if-nez v4, :cond_3

    .line 2714
    iget-object v4, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .line 2715
    .local v3, "last":I
    if-gez v3, :cond_1

    .line 2716
    return v5

    .line 2718
    :cond_1
    iget-object v4, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/systemui/support/v4/app/BackStackRecord;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2719
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2761
    .end local v3    # "last":I
    :cond_2
    return v6

    .line 2721
    :cond_3
    const/4 v2, -0x1

    .line 2722
    .local v2, "index":I
    if-nez p3, :cond_4

    if-ltz p4, :cond_b

    .line 2725
    :cond_4
    iget-object v4, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .line 2726
    :goto_0
    if-ltz v2, :cond_5

    .line 2727
    iget-object v4, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/systemui/support/v4/app/BackStackRecord;

    .line 2728
    .local v0, "bss":Lcom/miui/systemui/support/v4/app/BackStackRecord;
    if-eqz p3, :cond_6

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/BackStackRecord;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2736
    .end local v0    # "bss":Lcom/miui/systemui/support/v4/app/BackStackRecord;
    :cond_5
    if-gez v2, :cond_8

    .line 2737
    return v5

    .line 2731
    .restart local v0    # "bss":Lcom/miui/systemui/support/v4/app/BackStackRecord;
    :cond_6
    if-ltz p4, :cond_7

    iget v4, v0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mIndex:I

    if-eq p4, v4, :cond_5

    .line 2734
    :cond_7
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2739
    .end local v0    # "bss":Lcom/miui/systemui/support/v4/app/BackStackRecord;
    :cond_8
    and-int/lit8 v4, p5, 0x1

    if-eqz v4, :cond_b

    .line 2740
    add-int/lit8 v2, v2, -0x1

    .line 2742
    :goto_1
    if-ltz v2, :cond_b

    .line 2743
    iget-object v4, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/systemui/support/v4/app/BackStackRecord;

    .line 2744
    .restart local v0    # "bss":Lcom/miui/systemui/support/v4/app/BackStackRecord;
    if-eqz p3, :cond_9

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/BackStackRecord;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 2745
    :cond_9
    if-ltz p4, :cond_b

    iget v4, v0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mIndex:I

    if-ne p4, v4, :cond_b

    .line 2746
    :cond_a
    add-int/lit8 v2, v2, -0x1

    .line 2747
    goto :goto_1

    .line 2753
    .end local v0    # "bss":Lcom/miui/systemui/support/v4/app/BackStackRecord;
    :cond_b
    iget-object v4, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v2, v4, :cond_c

    .line 2754
    return v5

    .line 2756
    :cond_c
    iget-object v4, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_2
    if-le v1, v2, :cond_2

    .line 2757
    iget-object v4, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/systemui/support/v4/app/BackStackRecord;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2758
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2756
    add-int/lit8 v1, v1, -0x1

    goto :goto_2
.end method

.method public putFragment(Landroid/os/Bundle;Ljava/lang/String;Lcom/miui/systemui/support/v4/app/Fragment;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "fragment"    # Lcom/miui/systemui/support/v4/app/Fragment;

    .prologue
    .line 887
    iget v0, p3, Lcom/miui/systemui/support/v4/app/Fragment;->mIndex:I

    if-gez v0, :cond_0

    .line 888
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 889
    const-string/jumbo v2, " is not currently in the FragmentManager"

    .line 888
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 891
    :cond_0
    iget v0, p3, Lcom/miui/systemui/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 886
    return-void
.end method

.method public registerFragmentLifecycleCallbacks(Lcom/miui/systemui/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Z)V
    .locals 3
    .param p1, "cb"    # Lcom/miui/systemui/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;
    .param p2, "recursive"    # Z

    .prologue
    .line 3352
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    .line 3353
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3355
    :cond_0
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/miui/systemui/support/v4/util/Pair;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/miui/systemui/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 3351
    return-void
.end method

.method public removeFragment(Lcom/miui/systemui/support/v4/app/Fragment;)V
    .locals 5
    .param p1, "fragment"    # Lcom/miui/systemui/support/v4/app/Fragment;

    .prologue
    const/4 v4, 0x1

    .line 1900
    sget-boolean v1, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "remove: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " nesting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1901
    :cond_0
    invoke-virtual {p1}, Lcom/miui/systemui/support/v4/app/Fragment;->isInBackStack()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    .line 1902
    .local v0, "inactive":Z
    :goto_0
    iget-boolean v1, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mDetached:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_3

    .line 1903
    :cond_1
    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1904
    :try_start_0
    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 1906
    iget-boolean v1, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v1, :cond_2

    .line 1907
    iput-boolean v4, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1909
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mAdded:Z

    .line 1910
    iput-boolean v4, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mRemoving:Z

    .line 1899
    :cond_3
    return-void

    .line 1901
    .end local v0    # "inactive":Z
    :cond_4
    const/4 v0, 0x1

    .restart local v0    # "inactive":Z
    goto :goto_0

    .line 1903
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method reportBackStackChanged()V
    .locals 2

    .prologue
    .line 2693
    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 2694
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2695
    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/systemui/support/v4/app/FragmentManager$OnBackStackChangedListener;

    invoke-interface {v1}, Lcom/miui/systemui/support/v4/app/FragmentManager$OnBackStackChangedListener;->onBackStackChanged()V

    .line 2694
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2692
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method restoreAllState(Landroid/os/Parcelable;Lcom/miui/systemui/support/v4/app/FragmentManagerNonConfig;)V
    .locals 15
    .param p1, "state"    # Landroid/os/Parcelable;
    .param p2, "nonConfig"    # Lcom/miui/systemui/support/v4/app/FragmentManagerNonConfig;

    .prologue
    .line 3004
    if-nez p1, :cond_0

    return-void

    :cond_0
    move-object/from16 v5, p1

    .line 3005
    check-cast v5, Lcom/miui/systemui/support/v4/app/FragmentManagerState;

    .line 3006
    .local v5, "fms":Lcom/miui/systemui/support/v4/app/FragmentManagerState;
    iget-object v12, v5, Lcom/miui/systemui/support/v4/app/FragmentManagerState;->mActive:[Lcom/miui/systemui/support/v4/app/FragmentState;

    if-nez v12, :cond_1

    return-void

    .line 3008
    :cond_1
    const/4 v2, 0x0

    .line 3012
    .local v2, "childNonConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/FragmentManagerNonConfig;>;"
    if-eqz p2, :cond_7

    .line 3013
    invoke-virtual/range {p2 .. p2}, Lcom/miui/systemui/support/v4/app/FragmentManagerNonConfig;->getFragments()Ljava/util/List;

    move-result-object v10

    .line 3014
    .local v10, "nonConfigFragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/miui/systemui/support/v4/app/FragmentManagerNonConfig;->getChildNonConfigs()Ljava/util/List;

    move-result-object v2

    .line 3015
    .local v2, "childNonConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/FragmentManagerNonConfig;>;"
    if-eqz v10, :cond_3

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    .line 3016
    .local v3, "count":I
    :goto_0
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v3, :cond_7

    .line 3017
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/systemui/support/v4/app/Fragment;

    .line 3018
    .local v4, "f":Lcom/miui/systemui/support/v4/app/Fragment;
    sget-boolean v12, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v12, :cond_2

    const-string/jumbo v12, "FragmentManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "restoreAllState: re-attaching retained "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3019
    :cond_2
    const/4 v8, 0x0

    .line 3020
    .local v8, "index":I
    :goto_2
    iget-object v12, v5, Lcom/miui/systemui/support/v4/app/FragmentManagerState;->mActive:[Lcom/miui/systemui/support/v4/app/FragmentState;

    array-length v12, v12

    if-ge v8, v12, :cond_4

    iget-object v12, v5, Lcom/miui/systemui/support/v4/app/FragmentManagerState;->mActive:[Lcom/miui/systemui/support/v4/app/FragmentState;

    aget-object v12, v12, v8

    iget v12, v12, Lcom/miui/systemui/support/v4/app/FragmentState;->mIndex:I

    iget v13, v4, Lcom/miui/systemui/support/v4/app/Fragment;->mIndex:I

    if-eq v12, v13, :cond_4

    .line 3021
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 3015
    .end local v3    # "count":I
    .end local v4    # "f":Lcom/miui/systemui/support/v4/app/Fragment;
    .end local v7    # "i":I
    .end local v8    # "index":I
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "count":I
    goto :goto_0

    .line 3023
    .restart local v4    # "f":Lcom/miui/systemui/support/v4/app/Fragment;
    .restart local v7    # "i":I
    .restart local v8    # "index":I
    :cond_4
    iget-object v12, v5, Lcom/miui/systemui/support/v4/app/FragmentManagerState;->mActive:[Lcom/miui/systemui/support/v4/app/FragmentState;

    array-length v12, v12

    if-ne v8, v12, :cond_5

    .line 3024
    new-instance v12, Ljava/lang/IllegalStateException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Could not find active fragment with index "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 3025
    iget v14, v4, Lcom/miui/systemui/support/v4/app/Fragment;->mIndex:I

    .line 3024
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v12}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 3027
    :cond_5
    iget-object v12, v5, Lcom/miui/systemui/support/v4/app/FragmentManagerState;->mActive:[Lcom/miui/systemui/support/v4/app/FragmentState;

    aget-object v6, v12, v8

    .line 3028
    .local v6, "fs":Lcom/miui/systemui/support/v4/app/FragmentState;
    iput-object v4, v6, Lcom/miui/systemui/support/v4/app/FragmentState;->mInstance:Lcom/miui/systemui/support/v4/app/Fragment;

    .line 3029
    const/4 v12, 0x0

    iput-object v12, v4, Lcom/miui/systemui/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 3030
    const/4 v12, 0x0

    iput v12, v4, Lcom/miui/systemui/support/v4/app/Fragment;->mBackStackNesting:I

    .line 3031
    const/4 v12, 0x0

    iput-boolean v12, v4, Lcom/miui/systemui/support/v4/app/Fragment;->mInLayout:Z

    .line 3032
    const/4 v12, 0x0

    iput-boolean v12, v4, Lcom/miui/systemui/support/v4/app/Fragment;->mAdded:Z

    .line 3033
    const/4 v12, 0x0

    iput-object v12, v4, Lcom/miui/systemui/support/v4/app/Fragment;->mTarget:Lcom/miui/systemui/support/v4/app/Fragment;

    .line 3034
    iget-object v12, v6, Lcom/miui/systemui/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v12, :cond_6

    .line 3035
    iget-object v12, v6, Lcom/miui/systemui/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    iget-object v13, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mHost:Lcom/miui/systemui/support/v4/app/FragmentHostCallback;

    invoke-virtual {v13}, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 3036
    iget-object v12, v6, Lcom/miui/systemui/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 3037
    const-string/jumbo v13, "android:view_state"

    .line 3036
    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v12

    iput-object v12, v4, Lcom/miui/systemui/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 3038
    iget-object v12, v6, Lcom/miui/systemui/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v12, v4, Lcom/miui/systemui/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 3016
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 3045
    .end local v2    # "childNonConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/FragmentManagerNonConfig;>;"
    .end local v3    # "count":I
    .end local v4    # "f":Lcom/miui/systemui/support/v4/app/Fragment;
    .end local v6    # "fs":Lcom/miui/systemui/support/v4/app/FragmentState;
    .end local v7    # "i":I
    .end local v8    # "index":I
    .end local v10    # "nonConfigFragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    :cond_7
    new-instance v12, Landroid/util/SparseArray;

    iget-object v13, v5, Lcom/miui/systemui/support/v4/app/FragmentManagerState;->mActive:[Lcom/miui/systemui/support/v4/app/FragmentState;

    array-length v13, v13

    invoke-direct {v12, v13}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v12, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    .line 3046
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_3
    iget-object v12, v5, Lcom/miui/systemui/support/v4/app/FragmentManagerState;->mActive:[Lcom/miui/systemui/support/v4/app/FragmentState;

    array-length v12, v12

    if-ge v7, v12, :cond_b

    .line 3047
    iget-object v12, v5, Lcom/miui/systemui/support/v4/app/FragmentManagerState;->mActive:[Lcom/miui/systemui/support/v4/app/FragmentState;

    aget-object v6, v12, v7

    .line 3048
    .restart local v6    # "fs":Lcom/miui/systemui/support/v4/app/FragmentState;
    if-eqz v6, :cond_a

    .line 3049
    const/4 v1, 0x0

    .line 3050
    .local v1, "childNonConfig":Lcom/miui/systemui/support/v4/app/FragmentManagerNonConfig;
    if-eqz v2, :cond_8

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    if-ge v7, v12, :cond_8

    .line 3051
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "childNonConfig":Lcom/miui/systemui/support/v4/app/FragmentManagerNonConfig;
    check-cast v1, Lcom/miui/systemui/support/v4/app/FragmentManagerNonConfig;

    .line 3053
    :cond_8
    iget-object v12, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mHost:Lcom/miui/systemui/support/v4/app/FragmentHostCallback;

    iget-object v13, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mContainer:Lcom/miui/systemui/support/v4/app/FragmentContainer;

    iget-object v14, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mParent:Lcom/miui/systemui/support/v4/app/Fragment;

    invoke-virtual {v6, v12, v13, v14, v1}, Lcom/miui/systemui/support/v4/app/FragmentState;->instantiate(Lcom/miui/systemui/support/v4/app/FragmentHostCallback;Lcom/miui/systemui/support/v4/app/FragmentContainer;Lcom/miui/systemui/support/v4/app/Fragment;Lcom/miui/systemui/support/v4/app/FragmentManagerNonConfig;)Lcom/miui/systemui/support/v4/app/Fragment;

    move-result-object v4

    .line 3054
    .restart local v4    # "f":Lcom/miui/systemui/support/v4/app/Fragment;
    sget-boolean v12, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v12, :cond_9

    const-string/jumbo v12, "FragmentManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "restoreAllState: active #"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ": "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3055
    :cond_9
    iget-object v12, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget v13, v4, Lcom/miui/systemui/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {v12, v13, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3059
    const/4 v12, 0x0

    iput-object v12, v6, Lcom/miui/systemui/support/v4/app/FragmentState;->mInstance:Lcom/miui/systemui/support/v4/app/Fragment;

    .line 3046
    .end local v4    # "f":Lcom/miui/systemui/support/v4/app/Fragment;
    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 3064
    .end local v6    # "fs":Lcom/miui/systemui/support/v4/app/FragmentState;
    :cond_b
    if-eqz p2, :cond_e

    .line 3065
    invoke-virtual/range {p2 .. p2}, Lcom/miui/systemui/support/v4/app/FragmentManagerNonConfig;->getFragments()Ljava/util/List;

    move-result-object v10

    .line 3066
    .restart local v10    # "nonConfigFragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    if-eqz v10, :cond_d

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    .line 3067
    .restart local v3    # "count":I
    :goto_4
    const/4 v7, 0x0

    :goto_5
    if-ge v7, v3, :cond_e

    .line 3068
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/systemui/support/v4/app/Fragment;

    .line 3069
    .restart local v4    # "f":Lcom/miui/systemui/support/v4/app/Fragment;
    iget v12, v4, Lcom/miui/systemui/support/v4/app/Fragment;->mTargetIndex:I

    if-ltz v12, :cond_c

    .line 3070
    iget-object v12, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget v13, v4, Lcom/miui/systemui/support/v4/app/Fragment;->mTargetIndex:I

    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/miui/systemui/support/v4/app/Fragment;

    iput-object v12, v4, Lcom/miui/systemui/support/v4/app/Fragment;->mTarget:Lcom/miui/systemui/support/v4/app/Fragment;

    .line 3071
    iget-object v12, v4, Lcom/miui/systemui/support/v4/app/Fragment;->mTarget:Lcom/miui/systemui/support/v4/app/Fragment;

    if-nez v12, :cond_c

    .line 3072
    const-string/jumbo v12, "FragmentManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Re-attaching retained fragment "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 3073
    const-string/jumbo v14, " target no longer exists: "

    .line 3072
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 3073
    iget v14, v4, Lcom/miui/systemui/support/v4/app/Fragment;->mTargetIndex:I

    .line 3072
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3067
    :cond_c
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 3066
    .end local v3    # "count":I
    .end local v4    # "f":Lcom/miui/systemui/support/v4/app/Fragment;
    :cond_d
    const/4 v3, 0x0

    .restart local v3    # "count":I
    goto :goto_4

    .line 3080
    .end local v3    # "count":I
    .end local v10    # "nonConfigFragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    :cond_e
    iget-object v12, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 3081
    iget-object v12, v5, Lcom/miui/systemui/support/v4/app/FragmentManagerState;->mAdded:[I

    if-eqz v12, :cond_12

    .line 3082
    const/4 v7, 0x0

    :goto_6
    iget-object v12, v5, Lcom/miui/systemui/support/v4/app/FragmentManagerState;->mAdded:[I

    array-length v12, v12

    if-ge v7, v12, :cond_12

    .line 3083
    iget-object v12, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget-object v13, v5, Lcom/miui/systemui/support/v4/app/FragmentManagerState;->mAdded:[I

    aget v13, v13, v7

    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/systemui/support/v4/app/Fragment;

    .line 3084
    .restart local v4    # "f":Lcom/miui/systemui/support/v4/app/Fragment;
    if-nez v4, :cond_f

    .line 3085
    new-instance v12, Ljava/lang/IllegalStateException;

    .line 3086
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "No instantiated fragment for index #"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v5, Lcom/miui/systemui/support/v4/app/FragmentManagerState;->mAdded:[I

    aget v14, v14, v7

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 3085
    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v12}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 3088
    :cond_f
    const/4 v12, 0x1

    iput-boolean v12, v4, Lcom/miui/systemui/support/v4/app/Fragment;->mAdded:Z

    .line 3089
    sget-boolean v12, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v12, :cond_10

    const-string/jumbo v12, "FragmentManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "restoreAllState: added #"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ": "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3090
    :cond_10
    iget-object v12, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 3091
    new-instance v12, Ljava/lang/IllegalStateException;

    const-string/jumbo v13, "Already added!"

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 3093
    :cond_11
    iget-object v13, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    monitor-enter v13

    .line 3094
    :try_start_0
    iget-object v12, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v13

    .line 3082
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 3093
    :catchall_0
    move-exception v12

    monitor-exit v13

    throw v12

    .line 3100
    .end local v4    # "f":Lcom/miui/systemui/support/v4/app/Fragment;
    :cond_12
    iget-object v12, v5, Lcom/miui/systemui/support/v4/app/FragmentManagerState;->mBackStack:[Lcom/miui/systemui/support/v4/app/BackStackState;

    if-eqz v12, :cond_15

    .line 3101
    new-instance v12, Ljava/util/ArrayList;

    iget-object v13, v5, Lcom/miui/systemui/support/v4/app/FragmentManagerState;->mBackStack:[Lcom/miui/systemui/support/v4/app/BackStackState;

    array-length v13, v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v12, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    .line 3102
    const/4 v7, 0x0

    :goto_7
    iget-object v12, v5, Lcom/miui/systemui/support/v4/app/FragmentManagerState;->mBackStack:[Lcom/miui/systemui/support/v4/app/BackStackState;

    array-length v12, v12

    if-ge v7, v12, :cond_16

    .line 3103
    iget-object v12, v5, Lcom/miui/systemui/support/v4/app/FragmentManagerState;->mBackStack:[Lcom/miui/systemui/support/v4/app/BackStackState;

    aget-object v12, v12, v7

    invoke-virtual {v12, p0}, Lcom/miui/systemui/support/v4/app/BackStackState;->instantiate(Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;)Lcom/miui/systemui/support/v4/app/BackStackRecord;

    move-result-object v0

    .line 3104
    .local v0, "bse":Lcom/miui/systemui/support/v4/app/BackStackRecord;
    sget-boolean v12, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v12, :cond_13

    .line 3105
    const-string/jumbo v12, "FragmentManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "restoreAllState: back stack #"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 3106
    const-string/jumbo v14, " (index "

    .line 3105
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 3106
    iget v14, v0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mIndex:I

    .line 3105
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 3106
    const-string/jumbo v14, "): "

    .line 3105
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3107
    new-instance v9, Lcom/miui/systemui/support/v4/util/LogWriter;

    const-string/jumbo v12, "FragmentManager"

    invoke-direct {v9, v12}, Lcom/miui/systemui/support/v4/util/LogWriter;-><init>(Ljava/lang/String;)V

    .line 3108
    .local v9, "logw":Lcom/miui/systemui/support/v4/util/LogWriter;
    new-instance v11, Ljava/io/PrintWriter;

    invoke-direct {v11, v9}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 3109
    .local v11, "pw":Ljava/io/PrintWriter;
    const-string/jumbo v12, "  "

    const/4 v13, 0x0

    invoke-virtual {v0, v12, v11, v13}, Lcom/miui/systemui/support/v4/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 3110
    invoke-virtual {v11}, Ljava/io/PrintWriter;->close()V

    .line 3112
    .end local v9    # "logw":Lcom/miui/systemui/support/v4/util/LogWriter;
    .end local v11    # "pw":Ljava/io/PrintWriter;
    :cond_13
    iget-object v12, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3113
    iget v12, v0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mIndex:I

    if-ltz v12, :cond_14

    .line 3114
    iget v12, v0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mIndex:I

    invoke-virtual {p0, v12, v0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->setBackStackIndex(ILcom/miui/systemui/support/v4/app/BackStackRecord;)V

    .line 3102
    :cond_14
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 3118
    .end local v0    # "bse":Lcom/miui/systemui/support/v4/app/BackStackRecord;
    :cond_15
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    .line 3121
    :cond_16
    iget v12, v5, Lcom/miui/systemui/support/v4/app/FragmentManagerState;->mPrimaryNavActiveIndex:I

    if-ltz v12, :cond_17

    .line 3122
    iget-object v12, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget v13, v5, Lcom/miui/systemui/support/v4/app/FragmentManagerState;->mPrimaryNavActiveIndex:I

    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/miui/systemui/support/v4/app/Fragment;

    iput-object v12, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mPrimaryNav:Lcom/miui/systemui/support/v4/app/Fragment;

    .line 3124
    :cond_17
    iget v12, v5, Lcom/miui/systemui/support/v4/app/FragmentManagerState;->mNextFragmentIndex:I

    iput v12, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mNextFragmentIndex:I

    .line 3001
    return-void
.end method

.method retainNonConfig()Lcom/miui/systemui/support/v4/app/FragmentManagerNonConfig;
    .locals 1

    .prologue
    .line 2765
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mSavedNonConfig:Lcom/miui/systemui/support/v4/app/FragmentManagerNonConfig;

    invoke-static {v0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->setRetaining(Lcom/miui/systemui/support/v4/app/FragmentManagerNonConfig;)V

    .line 2766
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mSavedNonConfig:Lcom/miui/systemui/support/v4/app/FragmentManagerNonConfig;

    return-object v0
.end method

.method saveAllState()Landroid/os/Parcelable;
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 2891
    invoke-direct {p0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->forcePostponedTransactions()V

    .line 2892
    invoke-direct {p0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->endAnimatingAwayFragments()V

    .line 2893
    invoke-virtual {p0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    .line 2895
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    .line 2896
    iput-object v12, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mSavedNonConfig:Lcom/miui/systemui/support/v4/app/FragmentManagerNonConfig;

    .line 2898
    iget-object v9, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-gtz v9, :cond_1

    .line 2899
    :cond_0
    return-object v12

    .line 2903
    :cond_1
    iget-object v9, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 2904
    .local v0, "N":I
    new-array v1, v0, [Lcom/miui/systemui/support/v4/app/FragmentState;

    .line 2905
    .local v1, "active":[Lcom/miui/systemui/support/v4/app/FragmentState;
    const/4 v7, 0x0

    .line 2906
    .local v7, "haveFragments":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v0, :cond_8

    .line 2907
    iget-object v9, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/systemui/support/v4/app/Fragment;

    .line 2908
    .local v4, "f":Lcom/miui/systemui/support/v4/app/Fragment;
    if-eqz v4, :cond_6

    .line 2909
    iget v9, v4, Lcom/miui/systemui/support/v4/app/Fragment;->mIndex:I

    if-gez v9, :cond_2

    .line 2910
    new-instance v9, Ljava/lang/IllegalStateException;

    .line 2911
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Failure saving state: active "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2912
    const-string/jumbo v11, " has cleared index: "

    .line 2911
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2912
    iget v11, v4, Lcom/miui/systemui/support/v4/app/Fragment;->mIndex:I

    .line 2911
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2910
    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v9}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 2915
    :cond_2
    const/4 v7, 0x1

    .line 2917
    new-instance v6, Lcom/miui/systemui/support/v4/app/FragmentState;

    invoke-direct {v6, v4}, Lcom/miui/systemui/support/v4/app/FragmentState;-><init>(Lcom/miui/systemui/support/v4/app/Fragment;)V

    .line 2918
    .local v6, "fs":Lcom/miui/systemui/support/v4/app/FragmentState;
    aput-object v6, v1, v8

    .line 2920
    iget v9, v4, Lcom/miui/systemui/support/v4/app/Fragment;->mState:I

    if-lez v9, :cond_7

    iget-object v9, v6, Lcom/miui/systemui/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-nez v9, :cond_7

    .line 2921
    invoke-virtual {p0, v4}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->saveFragmentBasicState(Lcom/miui/systemui/support/v4/app/Fragment;)Landroid/os/Bundle;

    move-result-object v9

    iput-object v9, v6, Lcom/miui/systemui/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 2923
    iget-object v9, v4, Lcom/miui/systemui/support/v4/app/Fragment;->mTarget:Lcom/miui/systemui/support/v4/app/Fragment;

    if-eqz v9, :cond_5

    .line 2924
    iget-object v9, v4, Lcom/miui/systemui/support/v4/app/Fragment;->mTarget:Lcom/miui/systemui/support/v4/app/Fragment;

    iget v9, v9, Lcom/miui/systemui/support/v4/app/Fragment;->mIndex:I

    if-gez v9, :cond_3

    .line 2925
    new-instance v9, Ljava/lang/IllegalStateException;

    .line 2926
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Failure saving state: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2927
    const-string/jumbo v11, " has target not in fragment manager: "

    .line 2926
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2927
    iget-object v11, v4, Lcom/miui/systemui/support/v4/app/Fragment;->mTarget:Lcom/miui/systemui/support/v4/app/Fragment;

    .line 2926
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2925
    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v9}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 2929
    :cond_3
    iget-object v9, v6, Lcom/miui/systemui/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-nez v9, :cond_4

    .line 2930
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    iput-object v9, v6, Lcom/miui/systemui/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 2932
    :cond_4
    iget-object v9, v6, Lcom/miui/systemui/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 2933
    const-string/jumbo v10, "android:target_state"

    iget-object v11, v4, Lcom/miui/systemui/support/v4/app/Fragment;->mTarget:Lcom/miui/systemui/support/v4/app/Fragment;

    .line 2932
    invoke-virtual {p0, v9, v10, v11}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Lcom/miui/systemui/support/v4/app/Fragment;)V

    .line 2934
    iget v9, v4, Lcom/miui/systemui/support/v4/app/Fragment;->mTargetRequestCode:I

    if-eqz v9, :cond_5

    .line 2935
    iget-object v9, v6, Lcom/miui/systemui/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 2936
    const-string/jumbo v10, "android:target_req_state"

    .line 2937
    iget v11, v4, Lcom/miui/systemui/support/v4/app/Fragment;->mTargetRequestCode:I

    .line 2935
    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2945
    :cond_5
    :goto_1
    sget-boolean v9, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v9, :cond_6

    const-string/jumbo v9, "FragmentManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Saved state of "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2946
    iget-object v11, v6, Lcom/miui/systemui/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 2945
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2906
    .end local v6    # "fs":Lcom/miui/systemui/support/v4/app/FragmentState;
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 2942
    .restart local v6    # "fs":Lcom/miui/systemui/support/v4/app/FragmentState;
    :cond_7
    iget-object v9, v4, Lcom/miui/systemui/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v9, v6, Lcom/miui/systemui/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    goto :goto_1

    .line 2950
    .end local v4    # "f":Lcom/miui/systemui/support/v4/app/Fragment;
    .end local v6    # "fs":Lcom/miui/systemui/support/v4/app/FragmentState;
    :cond_8
    if-nez v7, :cond_a

    .line 2951
    sget-boolean v9, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v9, :cond_9

    const-string/jumbo v9, "FragmentManager"

    const-string/jumbo v10, "saveAllState: no fragments!"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2952
    :cond_9
    return-object v12

    .line 2955
    :cond_a
    const/4 v2, 0x0

    .line 2956
    .local v2, "added":[I
    const/4 v3, 0x0

    .line 2959
    .local v3, "backStack":[Lcom/miui/systemui/support/v4/app/BackStackState;
    iget-object v9, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2960
    if-lez v0, :cond_d

    .line 2961
    new-array v2, v0, [I

    .line 2962
    .local v2, "added":[I
    const/4 v8, 0x0

    :goto_2
    if-ge v8, v0, :cond_d

    .line 2963
    iget-object v9, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/systemui/support/v4/app/Fragment;

    iget v9, v9, Lcom/miui/systemui/support/v4/app/Fragment;->mIndex:I

    aput v9, v2, v8

    .line 2964
    aget v9, v2, v8

    if-gez v9, :cond_b

    .line 2965
    new-instance v9, Ljava/lang/IllegalStateException;

    .line 2966
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Failure saving state: active "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2967
    const-string/jumbo v11, " has cleared index: "

    .line 2966
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2967
    aget v11, v2, v8

    .line 2966
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2965
    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v9}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 2969
    :cond_b
    sget-boolean v9, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v9, :cond_c

    .line 2970
    const-string/jumbo v9, "FragmentManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "saveAllState: adding fragment #"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2971
    const-string/jumbo v11, ": "

    .line 2970
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2971
    iget-object v11, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 2970
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2962
    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 2977
    .end local v2    # "added":[I
    :cond_d
    iget-object v9, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v9, :cond_f

    .line 2978
    iget-object v9, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2979
    if-lez v0, :cond_f

    .line 2980
    new-array v3, v0, [Lcom/miui/systemui/support/v4/app/BackStackState;

    .line 2981
    .local v3, "backStack":[Lcom/miui/systemui/support/v4/app/BackStackState;
    const/4 v8, 0x0

    :goto_3
    if-ge v8, v0, :cond_f

    .line 2982
    new-instance v10, Lcom/miui/systemui/support/v4/app/BackStackState;

    iget-object v9, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/systemui/support/v4/app/BackStackRecord;

    invoke-direct {v10, v9}, Lcom/miui/systemui/support/v4/app/BackStackState;-><init>(Lcom/miui/systemui/support/v4/app/BackStackRecord;)V

    aput-object v10, v3, v8

    .line 2983
    sget-boolean v9, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v9, :cond_e

    const-string/jumbo v9, "FragmentManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "saveAllState: adding back stack #"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2984
    const-string/jumbo v11, ": "

    .line 2983
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2984
    iget-object v11, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 2983
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2981
    :cond_e
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 2989
    .end local v3    # "backStack":[Lcom/miui/systemui/support/v4/app/BackStackState;
    :cond_f
    new-instance v5, Lcom/miui/systemui/support/v4/app/FragmentManagerState;

    invoke-direct {v5}, Lcom/miui/systemui/support/v4/app/FragmentManagerState;-><init>()V

    .line 2990
    .local v5, "fms":Lcom/miui/systemui/support/v4/app/FragmentManagerState;
    iput-object v1, v5, Lcom/miui/systemui/support/v4/app/FragmentManagerState;->mActive:[Lcom/miui/systemui/support/v4/app/FragmentState;

    .line 2991
    iput-object v2, v5, Lcom/miui/systemui/support/v4/app/FragmentManagerState;->mAdded:[I

    .line 2992
    iput-object v3, v5, Lcom/miui/systemui/support/v4/app/FragmentManagerState;->mBackStack:[Lcom/miui/systemui/support/v4/app/BackStackState;

    .line 2993
    iget-object v9, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mPrimaryNav:Lcom/miui/systemui/support/v4/app/Fragment;

    if-eqz v9, :cond_10

    .line 2994
    iget-object v9, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mPrimaryNav:Lcom/miui/systemui/support/v4/app/Fragment;

    iget v9, v9, Lcom/miui/systemui/support/v4/app/Fragment;->mIndex:I

    iput v9, v5, Lcom/miui/systemui/support/v4/app/FragmentManagerState;->mPrimaryNavActiveIndex:I

    .line 2996
    :cond_10
    iget v9, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mNextFragmentIndex:I

    iput v9, v5, Lcom/miui/systemui/support/v4/app/FragmentManagerState;->mNextFragmentIndex:I

    .line 2997
    invoke-virtual {p0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->saveNonConfig()V

    .line 2998
    return-object v5
.end method

.method saveFragmentBasicState(Lcom/miui/systemui/support/v4/app/Fragment;)Landroid/os/Bundle;
    .locals 4
    .param p1, "f"    # Lcom/miui/systemui/support/v4/app/Fragment;

    .prologue
    const/4 v3, 0x0

    .line 2855
    const/4 v0, 0x0

    .line 2857
    .local v0, "result":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    if-nez v1, :cond_0

    .line 2858
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 2860
    :cond_0
    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Lcom/miui/systemui/support/v4/app/Fragment;->performSaveInstanceState(Landroid/os/Bundle;)V

    .line 2861
    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentSaveInstanceState(Lcom/miui/systemui/support/v4/app/Fragment;Landroid/os/Bundle;Z)V

    .line 2862
    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2863
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 2864
    .local v0, "result":Landroid/os/Bundle;
    iput-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 2867
    .end local v0    # "result":Landroid/os/Bundle;
    :cond_1
    iget-object v1, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 2868
    invoke-virtual {p0, p1}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->saveFragmentViewState(Lcom/miui/systemui/support/v4/app/Fragment;)V

    .line 2870
    :cond_2
    iget-object v1, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v1, :cond_4

    .line 2871
    if-nez v0, :cond_3

    .line 2872
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2875
    :cond_3
    const-string/jumbo v1, "android:view_state"

    iget-object v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 2874
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 2877
    :cond_4
    iget-boolean v1, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mUserVisibleHint:Z

    if-nez v1, :cond_6

    .line 2878
    if-nez v0, :cond_5

    .line 2879
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2882
    :cond_5
    const-string/jumbo v1, "android:user_visible_hint"

    iget-boolean v2, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mUserVisibleHint:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2885
    :cond_6
    return-object v0
.end method

.method saveFragmentViewState(Lcom/miui/systemui/support/v4/app/Fragment;)V
    .locals 3
    .param p1, "f"    # Lcom/miui/systemui/support/v4/app/Fragment;

    .prologue
    const/4 v2, 0x0

    .line 2839
    iget-object v0, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 2840
    return-void

    .line 2842
    :cond_0
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    if-nez v0, :cond_2

    .line 2843
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    .line 2847
    :goto_0
    iget-object v0, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 2848
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2849
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    iput-object v0, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 2850
    iput-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    .line 2838
    :cond_1
    return-void

    .line 2845
    :cond_2
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    goto :goto_0
.end method

.method saveNonConfig()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 2794
    const/4 v3, 0x0

    .line 2795
    .local v3, "fragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    const/4 v1, 0x0

    .line 2796
    .local v1, "childFragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/FragmentManagerNonConfig;>;"
    iget-object v6, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v6, :cond_6

    .line 2797
    const/4 v4, 0x0

    .end local v1    # "childFragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/FragmentManagerNonConfig;>;"
    .end local v3    # "fragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    .local v4, "i":I
    :goto_0
    iget-object v6, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v4, v6, :cond_6

    .line 2798
    iget-object v6, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/systemui/support/v4/app/Fragment;

    .line 2799
    .local v2, "f":Lcom/miui/systemui/support/v4/app/Fragment;
    if-eqz v2, :cond_5

    .line 2800
    iget-boolean v6, v2, Lcom/miui/systemui/support/v4/app/Fragment;->mRetainInstance:Z

    if-eqz v6, :cond_1

    .line 2801
    if-nez v3, :cond_0

    .line 2802
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2804
    :cond_0
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2805
    iget-object v6, v2, Lcom/miui/systemui/support/v4/app/Fragment;->mTarget:Lcom/miui/systemui/support/v4/app/Fragment;

    if-eqz v6, :cond_2

    iget-object v6, v2, Lcom/miui/systemui/support/v4/app/Fragment;->mTarget:Lcom/miui/systemui/support/v4/app/Fragment;

    iget v6, v6, Lcom/miui/systemui/support/v4/app/Fragment;->mIndex:I

    :goto_1
    iput v6, v2, Lcom/miui/systemui/support/v4/app/Fragment;->mTargetIndex:I

    .line 2806
    sget-boolean v6, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v6, :cond_1

    const-string/jumbo v6, "FragmentManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "retainNonConfig: keeping retained "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2809
    :cond_1
    iget-object v6, v2, Lcom/miui/systemui/support/v4/app/Fragment;->mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    if-eqz v6, :cond_3

    .line 2810
    iget-object v6, v2, Lcom/miui/systemui/support/v4/app/Fragment;->mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v6}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->saveNonConfig()V

    .line 2811
    iget-object v6, v2, Lcom/miui/systemui/support/v4/app/Fragment;->mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    iget-object v0, v6, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mSavedNonConfig:Lcom/miui/systemui/support/v4/app/FragmentManagerNonConfig;

    .line 2818
    .local v0, "child":Lcom/miui/systemui/support/v4/app/FragmentManagerNonConfig;
    :goto_2
    if-nez v1, :cond_4

    if-eqz v0, :cond_4

    .line 2819
    new-instance v1, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 2820
    .local v1, "childFragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/FragmentManagerNonConfig;>;"
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_3
    if-ge v5, v4, :cond_4

    .line 2821
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2820
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 2805
    .end local v0    # "child":Lcom/miui/systemui/support/v4/app/FragmentManagerNonConfig;
    .end local v1    # "childFragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/FragmentManagerNonConfig;>;"
    .end local v5    # "j":I
    :cond_2
    const/4 v6, -0x1

    goto :goto_1

    .line 2815
    :cond_3
    iget-object v0, v2, Lcom/miui/systemui/support/v4/app/Fragment;->mChildNonConfig:Lcom/miui/systemui/support/v4/app/FragmentManagerNonConfig;

    .restart local v0    # "child":Lcom/miui/systemui/support/v4/app/FragmentManagerNonConfig;
    goto :goto_2

    .line 2825
    :cond_4
    if-eqz v1, :cond_5

    .line 2826
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2797
    .end local v0    # "child":Lcom/miui/systemui/support/v4/app/FragmentManagerNonConfig;
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2831
    .end local v2    # "f":Lcom/miui/systemui/support/v4/app/Fragment;
    .end local v4    # "i":I
    :cond_6
    if-nez v3, :cond_7

    if-nez v1, :cond_7

    .line 2832
    iput-object v9, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mSavedNonConfig:Lcom/miui/systemui/support/v4/app/FragmentManagerNonConfig;

    .line 2793
    :goto_4
    return-void

    .line 2834
    :cond_7
    new-instance v6, Lcom/miui/systemui/support/v4/app/FragmentManagerNonConfig;

    invoke-direct {v6, v3, v1}, Lcom/miui/systemui/support/v4/app/FragmentManagerNonConfig;-><init>(Ljava/util/List;Ljava/util/List;)V

    iput-object v6, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mSavedNonConfig:Lcom/miui/systemui/support/v4/app/FragmentManagerNonConfig;

    goto :goto_4
.end method

.method public setBackStackIndex(ILcom/miui/systemui/support/v4/app/BackStackRecord;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "bse"    # Lcom/miui/systemui/support/v4/app/BackStackRecord;

    .prologue
    .line 2122
    monitor-enter p0

    .line 2123
    :try_start_0
    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 2124
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    .line 2126
    :cond_0
    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2127
    .local v0, "N":I
    if-ge p1, v0, :cond_2

    .line 2128
    sget-boolean v1, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Setting back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2129
    :cond_1
    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 2121
    return-void

    .line 2131
    :cond_2
    :goto_1
    if-ge v0, p1, :cond_5

    .line 2132
    :try_start_1
    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2133
    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    .line 2134
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    .line 2136
    :cond_3
    sget-boolean v1, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Adding available back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2137
    :cond_4
    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2138
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2140
    :cond_5
    sget-boolean v1, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_6

    const-string/jumbo v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Adding back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2141
    :cond_6
    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2122
    .end local v0    # "N":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setPrimaryNavigationFragment(Lcom/miui/systemui/support/v4/app/Fragment;)V
    .locals 3
    .param p1, "f"    # Lcom/miui/systemui/support/v4/app/Fragment;

    .prologue
    .line 3336
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget v1, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 3337
    iget-object v0, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mHost:Lcom/miui/systemui/support/v4/app/FragmentHostCallback;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/miui/systemui/support/v4/app/Fragment;->getFragmentManager()Lcom/miui/systemui/support/v4/app/FragmentManager;

    move-result-object v0

    if-eq v0, p0, :cond_1

    .line 3338
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3339
    const-string/jumbo v2, " is not an active fragment of FragmentManager "

    .line 3338
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3341
    :cond_1
    iput-object p1, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mPrimaryNav:Lcom/miui/systemui/support/v4/app/Fragment;

    .line 3335
    return-void
.end method

.method public showFragment(Lcom/miui/systemui/support/v4/app/Fragment;)V
    .locals 4
    .param p1, "fragment"    # Lcom/miui/systemui/support/v4/app/Fragment;

    .prologue
    const/4 v0, 0x0

    .line 1937
    sget-boolean v1, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "show: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1938
    :cond_0
    iget-boolean v1, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mHidden:Z

    if-eqz v1, :cond_1

    .line 1939
    iput-boolean v0, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mHidden:Z

    .line 1942
    iget-boolean v1, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mHiddenChanged:Z

    if-eqz v1, :cond_2

    :goto_0
    iput-boolean v0, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mHiddenChanged:Z

    .line 1936
    :cond_1
    return-void

    .line 1942
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method startPendingDeferredFragments()V
    .locals 3

    .prologue
    .line 1838
    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-nez v2, :cond_0

    return-void

    .line 1840
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1841
    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/systemui/support/v4/app/Fragment;

    .line 1842
    .local v0, "f":Lcom/miui/systemui/support/v4/app/Fragment;
    if-eqz v0, :cond_1

    .line 1843
    invoke-virtual {p0, v0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->performPendingDeferredStart(Lcom/miui/systemui/support/v4/app/Fragment;)V

    .line 1840
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1837
    .end local v0    # "f":Lcom/miui/systemui/support/v4/app/Fragment;
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 968
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 969
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "FragmentManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 970
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 971
    const-string/jumbo v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 972
    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mParent:Lcom/miui/systemui/support/v4/app/Fragment;

    if-eqz v1, :cond_0

    .line 973
    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mParent:Lcom/miui/systemui/support/v4/app/Fragment;

    invoke-static {v1, v0}, Lcom/miui/systemui/support/v4/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 977
    :goto_0
    const-string/jumbo v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 978
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 975
    :cond_0
    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mHost:Lcom/miui/systemui/support/v4/app/FragmentHostCallback;

    invoke-static {v1, v0}, Lcom/miui/systemui/support/v4/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    goto :goto_0
.end method

.method public unregisterFragmentLifecycleCallbacks(Lcom/miui/systemui/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;)V
    .locals 4
    .param p1, "cb"    # Lcom/miui/systemui/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    .prologue
    .line 3360
    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v2, :cond_0

    .line 3361
    return-void

    .line 3364
    :cond_0
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v3

    .line 3365
    const/4 v1, 0x0

    .local v1, "i":I
    :try_start_0
    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    .local v0, "N":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 3366
    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/systemui/support/v4/util/Pair;

    iget-object v2, v2, Lcom/miui/systemui/support/v4/util/Pair;->first:Ljava/lang/Object;

    if-ne v2, p1, :cond_2

    .line 3367
    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v3

    .line 3359
    return-void

    .line 3365
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3364
    .end local v0    # "N":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
