.class final Lcom/miui/systemui/support/v4/app/FragmentTransition$2;
.super Ljava/lang/Object;
.source "FragmentTransition.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/systemui/support/v4/app/FragmentTransition;->scheduleTargetChange(Landroid/view/ViewGroup;Lcom/miui/systemui/support/v4/app/Fragment;Landroid/view/View;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$enterTransition:Ljava/lang/Object;

.field final synthetic val$enteringViews:Ljava/util/ArrayList;

.field final synthetic val$exitTransition:Ljava/lang/Object;

.field final synthetic val$exitingViews:Ljava/util/ArrayList;

.field final synthetic val$inFragment:Lcom/miui/systemui/support/v4/app/Fragment;

.field final synthetic val$nonExistentView:Landroid/view/View;

.field final synthetic val$sharedElementsIn:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/lang/Object;Landroid/view/View;Lcom/miui/systemui/support/v4/app/Fragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;)V
    .locals 0
    .param p1, "val$enterTransition"    # Ljava/lang/Object;
    .param p2, "val$nonExistentView"    # Landroid/view/View;
    .param p3, "val$inFragment"    # Lcom/miui/systemui/support/v4/app/Fragment;
    .param p7, "val$exitTransition"    # Ljava/lang/Object;

    .prologue
    .line 370
    .local p4, "val$sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p5, "val$enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p6, "val$exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iput-object p1, p0, Lcom/miui/systemui/support/v4/app/FragmentTransition$2;->val$enterTransition:Ljava/lang/Object;

    iput-object p2, p0, Lcom/miui/systemui/support/v4/app/FragmentTransition$2;->val$nonExistentView:Landroid/view/View;

    iput-object p3, p0, Lcom/miui/systemui/support/v4/app/FragmentTransition$2;->val$inFragment:Lcom/miui/systemui/support/v4/app/Fragment;

    iput-object p4, p0, Lcom/miui/systemui/support/v4/app/FragmentTransition$2;->val$sharedElementsIn:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/miui/systemui/support/v4/app/FragmentTransition$2;->val$enteringViews:Ljava/util/ArrayList;

    iput-object p6, p0, Lcom/miui/systemui/support/v4/app/FragmentTransition$2;->val$exitingViews:Ljava/util/ArrayList;

    iput-object p7, p0, Lcom/miui/systemui/support/v4/app/FragmentTransition$2;->val$exitTransition:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 373
    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentTransition$2;->val$enterTransition:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 374
    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentTransition$2;->val$enterTransition:Ljava/lang/Object;

    .line 375
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentTransition$2;->val$nonExistentView:Landroid/view/View;

    .line 374
    invoke-static {v2, v3}, Lcom/miui/systemui/support/v4/app/FragmentTransitionCompat21;->removeTarget(Ljava/lang/Object;Landroid/view/View;)V

    .line 377
    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentTransition$2;->val$enterTransition:Ljava/lang/Object;

    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentTransition$2;->val$inFragment:Lcom/miui/systemui/support/v4/app/Fragment;

    iget-object v4, p0, Lcom/miui/systemui/support/v4/app/FragmentTransition$2;->val$sharedElementsIn:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/miui/systemui/support/v4/app/FragmentTransition$2;->val$nonExistentView:Landroid/view/View;

    .line 376
    invoke-static {v2, v3, v4, v5}, Lcom/miui/systemui/support/v4/app/FragmentTransition;->-wrap2(Ljava/lang/Object;Lcom/miui/systemui/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v1

    .line 378
    .local v1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentTransition$2;->val$enteringViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 381
    .end local v1    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_0
    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentTransition$2;->val$exitingViews:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 382
    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentTransition$2;->val$exitTransition:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 383
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 384
    .local v0, "tempExiting":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentTransition$2;->val$nonExistentView:Landroid/view/View;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentTransition$2;->val$exitTransition:Ljava/lang/Object;

    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentTransition$2;->val$exitingViews:Ljava/util/ArrayList;

    invoke-static {v2, v3, v0}, Lcom/miui/systemui/support/v4/app/FragmentTransitionCompat21;->replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 388
    .end local v0    # "tempExiting":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_1
    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentTransition$2;->val$exitingViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 389
    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentTransition$2;->val$exitingViews:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentTransition$2;->val$nonExistentView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    :cond_2
    return-void
.end method
