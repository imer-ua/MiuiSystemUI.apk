.class Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->completeShowHideFragment(Lcom/miui/systemui/support/v4/app/Fragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

.field final synthetic val$animatingView:Landroid/view/View;

.field final synthetic val$container:Landroid/view/ViewGroup;

.field final synthetic val$fragment:Lcom/miui/systemui/support/v4/app/Fragment;


# direct methods
.method constructor <init>(Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;Landroid/view/ViewGroup;Landroid/view/View;Lcom/miui/systemui/support/v4/app/Fragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;
    .param p2, "val$container"    # Landroid/view/ViewGroup;
    .param p3, "val$animatingView"    # Landroid/view/View;
    .param p4, "val$fragment"    # Lcom/miui/systemui/support/v4/app/Fragment;

    .prologue
    .line 1682
    iput-object p1, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$4;->this$0:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    iput-object p2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$4;->val$container:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$4;->val$animatingView:Landroid/view/View;

    iput-object p4, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$4;->val$fragment:Lcom/miui/systemui/support/v4/app/Fragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1685
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$4;->val$container:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$4;->val$animatingView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 1686
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1687
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$4;->val$fragment:Lcom/miui/systemui/support/v4/app/Fragment;

    iget-object v0, v0, Lcom/miui/systemui/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1688
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$4;->val$fragment:Lcom/miui/systemui/support/v4/app/Fragment;

    iget-object v0, v0, Lcom/miui/systemui/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1684
    :cond_0
    return-void
.end method
