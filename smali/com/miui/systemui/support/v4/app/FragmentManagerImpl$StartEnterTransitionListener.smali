.class Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Lcom/miui/systemui/support/v4/app/Fragment$OnStartEnterTransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StartEnterTransitionListener"
.end annotation


# instance fields
.field private final mIsBack:Z

.field private mNumPostponed:I

.field private final mRecord:Lcom/miui/systemui/support/v4/app/BackStackRecord;


# direct methods
.method static synthetic -get0(Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mIsBack:Z

    return v0
.end method

.method static synthetic -get1(Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;)Lcom/miui/systemui/support/v4/app/BackStackRecord;
    .locals 1

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Lcom/miui/systemui/support/v4/app/BackStackRecord;

    return-object v0
.end method

.method constructor <init>(Lcom/miui/systemui/support/v4/app/BackStackRecord;Z)V
    .locals 0
    .param p1, "record"    # Lcom/miui/systemui/support/v4/app/BackStackRecord;
    .param p2, "isBack"    # Z

    .prologue
    .line 3845
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3846
    iput-boolean p2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mIsBack:Z

    .line 3847
    iput-object p1, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Lcom/miui/systemui/support/v4/app/BackStackRecord;

    .line 3845
    return-void
.end method


# virtual methods
.method public cancelTransaction()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3906
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Lcom/miui/systemui/support/v4/app/BackStackRecord;

    iget-object v0, v0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Lcom/miui/systemui/support/v4/app/BackStackRecord;

    iget-boolean v2, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mIsBack:Z

    invoke-static {v0, v1, v2, v3, v3}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->-wrap0(Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;Lcom/miui/systemui/support/v4/app/BackStackRecord;ZZZ)V

    .line 3905
    return-void
.end method

.method public completeTransaction()V
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3888
    iget v7, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    if-lez v7, :cond_1

    const/4 v0, 0x1

    .line 3889
    .local v0, "canceled":Z
    :goto_0
    iget-object v7, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Lcom/miui/systemui/support/v4/app/BackStackRecord;

    iget-object v3, v7, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    .line 3890
    .local v3, "manager":Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;
    iget-object v7, v3, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 3891
    .local v4, "numAdded":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_2

    .line 3892
    iget-object v7, v3, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/systemui/support/v4/app/Fragment;

    .line 3893
    .local v1, "fragment":Lcom/miui/systemui/support/v4/app/Fragment;
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lcom/miui/systemui/support/v4/app/Fragment;->setOnStartEnterTransitionListener(Lcom/miui/systemui/support/v4/app/Fragment$OnStartEnterTransitionListener;)V

    .line 3894
    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/miui/systemui/support/v4/app/Fragment;->isPostponed()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3895
    invoke-virtual {v1}, Lcom/miui/systemui/support/v4/app/Fragment;->startPostponedEnterTransition()V

    .line 3891
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3888
    .end local v0    # "canceled":Z
    .end local v1    # "fragment":Lcom/miui/systemui/support/v4/app/Fragment;
    .end local v2    # "i":I
    .end local v3    # "manager":Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;
    .end local v4    # "numAdded":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "canceled":Z
    goto :goto_0

    .line 3898
    .restart local v2    # "i":I
    .restart local v3    # "manager":Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;
    .restart local v4    # "numAdded":I
    :cond_2
    iget-object v7, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Lcom/miui/systemui/support/v4/app/BackStackRecord;

    iget-object v7, v7, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    iget-object v8, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Lcom/miui/systemui/support/v4/app/BackStackRecord;

    iget-boolean v9, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mIsBack:Z

    if-eqz v0, :cond_3

    :goto_2
    invoke-static {v7, v8, v9, v5, v6}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->-wrap0(Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;Lcom/miui/systemui/support/v4/app/BackStackRecord;ZZZ)V

    .line 3886
    return-void

    :cond_3
    move v5, v6

    .line 3898
    goto :goto_2
.end method

.method public isReady()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3878
    iget v1, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onStartEnterTransition()V
    .locals 1

    .prologue
    .line 3857
    iget v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    .line 3858
    iget v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    if-eqz v0, :cond_0

    .line 3859
    return-void

    .line 3861
    :cond_0
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Lcom/miui/systemui/support/v4/app/BackStackRecord;

    iget-object v0, v0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    invoke-static {v0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->-wrap1(Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;)V

    .line 3856
    return-void
.end method

.method public startListening()V
    .locals 1

    .prologue
    .line 3871
    iget v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    .line 3870
    return-void
.end method
