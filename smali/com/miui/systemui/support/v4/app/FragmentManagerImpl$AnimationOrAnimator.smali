.class Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;
.super Ljava/lang/Object;
.source "FragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationOrAnimator"
.end annotation


# instance fields
.field public final animation:Landroid/view/animation/Animation;

.field public final animator:Landroid/animation/Animator;


# direct methods
.method private constructor <init>(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    const/4 v0, 0x0

    .line 3925
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3926
    iput-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    .line 3927
    iput-object p1, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    .line 3928
    if-nez p1, :cond_0

    .line 3929
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Animator cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3925
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/animation/Animator;Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    invoke-direct {p0, p1}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/animation/Animator;)V

    return-void
.end method

.method private constructor <init>(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v0, 0x0

    .line 3917
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3918
    iput-object p1, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    .line 3919
    iput-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    .line 3920
    if-nez p1, :cond_0

    .line 3921
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Animation cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3917
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/animation/Animation;Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    invoke-direct {p0, p1}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;)V

    return-void
.end method
