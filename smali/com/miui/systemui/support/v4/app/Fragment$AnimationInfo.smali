.class Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;
.super Ljava/lang/Object;
.source "Fragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/systemui/support/v4/app/Fragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AnimationInfo"
.end annotation


# instance fields
.field private mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

.field private mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

.field mAnimatingAway:Landroid/view/View;

.field mAnimator:Landroid/animation/Animator;

.field private mEnterTransition:Ljava/lang/Object;

.field mEnterTransitionCallback:Lcom/miui/systemui/support/v4/app/SharedElementCallback;

.field mEnterTransitionPostponed:Z

.field private mExitTransition:Ljava/lang/Object;

.field mExitTransitionCallback:Lcom/miui/systemui/support/v4/app/SharedElementCallback;

.field mIsHideReplaced:Z

.field mNextAnim:I

.field mNextTransition:I

.field mNextTransitionStyle:I

.field private mReenterTransition:Ljava/lang/Object;

.field private mReturnTransition:Ljava/lang/Object;

.field private mSharedElementEnterTransition:Ljava/lang/Object;

.field private mSharedElementReturnTransition:Ljava/lang/Object;

.field mStartEnterTransitionListener:Lcom/miui/systemui/support/v4/app/Fragment$OnStartEnterTransitionListener;

.field mStateAfterAnimating:I


# direct methods
.method static synthetic -get0(Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic -get1(Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic -get2(Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;->mEnterTransition:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get3(Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;->mExitTransition:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get4(Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;->mReenterTransition:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get5(Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;->mReturnTransition:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get6(Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;->mSharedElementEnterTransition:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get7(Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;->mSharedElementReturnTransition:Ljava/lang/Object;

    return-object v0
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2756
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2779
    iput-object v1, p0, Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;->mEnterTransition:Ljava/lang/Object;

    .line 2780
    sget-object v0, Lcom/miui/systemui/support/v4/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    iput-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;->mReturnTransition:Ljava/lang/Object;

    .line 2781
    iput-object v1, p0, Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;->mExitTransition:Ljava/lang/Object;

    .line 2782
    sget-object v0, Lcom/miui/systemui/support/v4/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    iput-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;->mReenterTransition:Ljava/lang/Object;

    .line 2783
    iput-object v1, p0, Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;->mSharedElementEnterTransition:Ljava/lang/Object;

    .line 2784
    sget-object v0, Lcom/miui/systemui/support/v4/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    iput-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;->mSharedElementReturnTransition:Ljava/lang/Object;

    .line 2788
    iput-object v1, p0, Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;->mEnterTransitionCallback:Lcom/miui/systemui/support/v4/app/SharedElementCallback;

    .line 2789
    iput-object v1, p0, Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;->mExitTransitionCallback:Lcom/miui/systemui/support/v4/app/SharedElementCallback;

    .line 2756
    return-void
.end method
