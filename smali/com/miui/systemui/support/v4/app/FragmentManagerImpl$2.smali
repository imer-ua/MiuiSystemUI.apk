.class Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$2;
.super Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationListenerWrapper;
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

.field final synthetic val$fragment:Lcom/miui/systemui/support/v4/app/Fragment;


# direct methods
.method constructor <init>(Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;Landroid/view/animation/Animation$AnimationListener;Lcom/miui/systemui/support/v4/app/Fragment;)V
    .locals 1
    .param p1, "this$0"    # Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;
    .param p2, "$anonymous0"    # Landroid/view/animation/Animation$AnimationListener;
    .param p3, "val$fragment"    # Lcom/miui/systemui/support/v4/app/Fragment;

    .prologue
    .line 1600
    iput-object p1, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$2;->this$0:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    iput-object p3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$2;->val$fragment:Lcom/miui/systemui/support/v4/app/Fragment;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationListenerWrapper;-><init>(Landroid/view/animation/Animation$AnimationListener;Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationListenerWrapper;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 6
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 1603
    invoke-super {p0, p1}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$AnimationListenerWrapper;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 1604
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$2;->val$fragment:Lcom/miui/systemui/support/v4/app/Fragment;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1605
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$2;->val$fragment:Lcom/miui/systemui/support/v4/app/Fragment;

    invoke-virtual {v0, v1}, Lcom/miui/systemui/support/v4/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    .line 1606
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$2;->this$0:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$2;->val$fragment:Lcom/miui/systemui/support/v4/app/Fragment;

    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$2;->val$fragment:Lcom/miui/systemui/support/v4/app/Fragment;

    invoke-virtual {v2}, Lcom/miui/systemui/support/v4/app/Fragment;->getStateAfterAnimating()I

    move-result v2

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->moveToState(Lcom/miui/systemui/support/v4/app/Fragment;IIIZ)V

    .line 1602
    :cond_0
    return-void
.end method
