.class Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->animateRemoveFragment(Lcom/miui/systemui/support/v4/app/Fragment;Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

.field final synthetic val$container:Landroid/view/ViewGroup;

.field final synthetic val$fragment:Lcom/miui/systemui/support/v4/app/Fragment;

.field final synthetic val$viewToAnimate:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;Landroid/view/ViewGroup;Landroid/view/View;Lcom/miui/systemui/support/v4/app/Fragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;
    .param p2, "val$container"    # Landroid/view/ViewGroup;
    .param p3, "val$viewToAnimate"    # Landroid/view/View;
    .param p4, "val$fragment"    # Lcom/miui/systemui/support/v4/app/Fragment;

    .prologue
    .line 1619
    iput-object p1, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$3;->this$0:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    iput-object p2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$3;->val$container:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$3;->val$viewToAnimate:Landroid/view/View;

    iput-object p4, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$3;->val$fragment:Lcom/miui/systemui/support/v4/app/Fragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6
    .param p1, "anim"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1622
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$3;->val$container:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1623
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$3;->val$container:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$3;->val$viewToAnimate:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 1625
    :cond_0
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$3;->val$fragment:Lcom/miui/systemui/support/v4/app/Fragment;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/Fragment;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1626
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$3;->val$fragment:Lcom/miui/systemui/support/v4/app/Fragment;

    invoke-virtual {v0, v2}, Lcom/miui/systemui/support/v4/app/Fragment;->setAnimator(Landroid/animation/Animator;)V

    .line 1627
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$3;->this$0:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$3;->val$fragment:Lcom/miui/systemui/support/v4/app/Fragment;

    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$3;->val$fragment:Lcom/miui/systemui/support/v4/app/Fragment;

    invoke-virtual {v2}, Lcom/miui/systemui/support/v4/app/Fragment;->getStateAfterAnimating()I

    move-result v2

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->moveToState(Lcom/miui/systemui/support/v4/app/Fragment;IIIZ)V

    .line 1621
    :cond_1
    return-void
.end method
