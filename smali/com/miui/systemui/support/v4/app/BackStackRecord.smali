.class final Lcom/miui/systemui/support/v4/app/BackStackRecord;
.super Lcom/miui/systemui/support/v4/app/FragmentTransaction;
.source "BackStackRecord.java"

# interfaces
.implements Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$OpGenerator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;
    }
.end annotation


# static fields
.field static final SUPPORTS_TRANSITIONS:Z


# instance fields
.field mAddToBackStack:Z

.field mAllowAddToBackStack:Z

.field mBreadCrumbShortTitleRes:I

.field mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

.field mBreadCrumbTitleRes:I

.field mBreadCrumbTitleText:Ljava/lang/CharSequence;

.field mCommitRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field mCommitted:Z

.field mEnterAnim:I

.field mExitAnim:I

.field mIndex:I

.field final mManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

.field mName:Ljava/lang/String;

.field mOps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;",
            ">;"
        }
    .end annotation
.end field

.field mPopEnterAnim:I

.field mPopExitAnim:I

.field mReorderingAllowed:Z

.field mSharedElementSourceNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSharedElementTargetNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mTransition:I

.field mTransitionStyle:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 176
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->SUPPORTS_TRANSITIONS:Z

    .line 173
    return-void

    .line 176
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;)V
    .locals 1
    .param p1, "manager"    # Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    .prologue
    .line 331
    invoke-direct {p0}, Lcom/miui/systemui/support/v4/app/FragmentTransaction;-><init>()V

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mAllowAddToBackStack:Z

    .line 219
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mIndex:I

    .line 228
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mReorderingAllowed:Z

    .line 332
    iput-object p1, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    .line 331
    return-void
.end method

.method private doAddOp(ILcom/miui/systemui/support/v4/app/Fragment;Ljava/lang/String;I)V
    .locals 5
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Lcom/miui/systemui/support/v4/app/Fragment;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "opcmd"    # I

    .prologue
    .line 393
    invoke-virtual {p2}, Lcom/miui/systemui/support/v4/app/Fragment;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 394
    .local v0, "fragmentClass":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    .line 395
    .local v1, "modifiers":I
    invoke-virtual {v0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 396
    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 402
    :cond_0
    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    iput-object v2, p2, Lcom/miui/systemui/support/v4/app/Fragment;->mFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    .line 404
    if-eqz p3, :cond_2

    .line 405
    iget-object v2, p2, Lcom/miui/systemui/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p2, Lcom/miui/systemui/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 410
    :cond_1
    iput-object p3, p2, Lcom/miui/systemui/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    .line 413
    :cond_2
    if-eqz p1, :cond_7

    .line 414
    const/4 v2, -0x1

    if-ne p1, v2, :cond_5

    .line 415
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Can\'t add fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 416
    const-string/jumbo v4, " with tag "

    .line 415
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 416
    const-string/jumbo v4, " to container view with no id"

    .line 415
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 397
    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 398
    const-string/jumbo v4, " must be a public static class to be  properly recreated from"

    .line 397
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 399
    const-string/jumbo v4, " instance state."

    .line 397
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 406
    :cond_4
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Can\'t change tag of fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 407
    const-string/jumbo v4, ": was "

    .line 406
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 407
    iget-object v4, p2, Lcom/miui/systemui/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    .line 406
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 408
    const-string/jumbo v4, " now "

    .line 406
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 418
    :cond_5
    iget v2, p2, Lcom/miui/systemui/support/v4/app/Fragment;->mFragmentId:I

    if-eqz v2, :cond_6

    iget v2, p2, Lcom/miui/systemui/support/v4/app/Fragment;->mFragmentId:I

    if-eq v2, p1, :cond_6

    .line 419
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Can\'t change container ID of fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 420
    const-string/jumbo v4, ": was "

    .line 419
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 420
    iget v4, p2, Lcom/miui/systemui/support/v4/app/Fragment;->mFragmentId:I

    .line 419
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 421
    const-string/jumbo v4, " now "

    .line 419
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 423
    :cond_6
    iput p1, p2, Lcom/miui/systemui/support/v4/app/Fragment;->mFragmentId:I

    iput p1, p2, Lcom/miui/systemui/support/v4/app/Fragment;->mContainerId:I

    .line 426
    :cond_7
    new-instance v2, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;

    invoke-direct {v2, p4, p2}, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;-><init>(ILcom/miui/systemui/support/v4/app/Fragment;)V

    invoke-virtual {p0, v2}, Lcom/miui/systemui/support/v4/app/BackStackRecord;->addOp(Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;)V

    .line 392
    return-void
.end method

.method private static isFragmentPostponed(Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;)Z
    .locals 2
    .param p0, "op"    # Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;->fragment:Lcom/miui/systemui/support/v4/app/Fragment;

    .line 1006
    .local v0, "fragment":Lcom/miui/systemui/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/miui/systemui/support/v4/app/Fragment;->mAdded:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/miui/systemui/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/miui/systemui/support/v4/app/Fragment;->mDetached:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 1007
    :cond_1
    iget-boolean v1, v0, Lcom/miui/systemui/support/v4/app/Fragment;->mHidden:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/Fragment;->isPostponed()Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public add(ILcom/miui/systemui/support/v4/app/Fragment;Ljava/lang/String;)Lcom/miui/systemui/support/v4/app/FragmentTransaction;
    .locals 1
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Lcom/miui/systemui/support/v4/app/Fragment;
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 388
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/systemui/support/v4/app/BackStackRecord;->doAddOp(ILcom/miui/systemui/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 389
    return-object p0
.end method

.method addOp(Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;)V
    .locals 1
    .param p1, "op"    # Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;

    .prologue
    .line 367
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    iget v0, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mEnterAnim:I

    iput v0, p1, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;->enterAnim:I

    .line 369
    iget v0, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mExitAnim:I

    iput v0, p1, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;->exitAnim:I

    .line 370
    iget v0, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mPopEnterAnim:I

    iput v0, p1, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    .line 371
    iget v0, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mPopExitAnim:I

    iput v0, p1, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    .line 366
    return-void
.end method

.method public attach(Lcom/miui/systemui/support/v4/app/Fragment;)Lcom/miui/systemui/support/v4/app/FragmentTransaction;
    .locals 2
    .param p1, "fragment"    # Lcom/miui/systemui/support/v4/app/Fragment;

    .prologue
    .line 474
    new-instance v0, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p1}, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;-><init>(ILcom/miui/systemui/support/v4/app/Fragment;)V

    invoke-virtual {p0, v0}, Lcom/miui/systemui/support/v4/app/BackStackRecord;->addOp(Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;)V

    .line 476
    return-object p0
.end method

.method bumpBackStackNesting(I)V
    .locals 6
    .param p1, "amt"    # I

    .prologue
    .line 593
    iget-boolean v3, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    if-nez v3, :cond_0

    .line 594
    return-void

    .line 596
    :cond_0
    sget-boolean v3, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Bump nesting in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 597
    const-string/jumbo v5, " by "

    .line 596
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    :cond_1
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 599
    .local v0, "numOps":I
    const/4 v2, 0x0

    .local v2, "opNum":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 600
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;

    .line 601
    .local v1, "op":Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;
    iget-object v3, v1, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;->fragment:Lcom/miui/systemui/support/v4/app/Fragment;

    if-eqz v3, :cond_2

    .line 602
    iget-object v3, v1, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;->fragment:Lcom/miui/systemui/support/v4/app/Fragment;

    iget v4, v3, Lcom/miui/systemui/support/v4/app/Fragment;->mBackStackNesting:I

    add-int/2addr v4, p1

    iput v4, v3, Lcom/miui/systemui/support/v4/app/Fragment;->mBackStackNesting:I

    .line 603
    sget-boolean v3, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string/jumbo v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Bump nesting of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 604
    iget-object v5, v1, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;->fragment:Lcom/miui/systemui/support/v4/app/Fragment;

    .line 603
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 604
    const-string/jumbo v5, " to "

    .line 603
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 604
    iget-object v5, v1, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;->fragment:Lcom/miui/systemui/support/v4/app/Fragment;

    iget v5, v5, Lcom/miui/systemui/support/v4/app/Fragment;->mBackStackNesting:I

    .line 603
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 592
    .end local v1    # "op":Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;
    :cond_3
    return-void
.end method

.method public commit()I
    .locals 1

    .prologue
    .line 633
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/systemui/support/v4/app/BackStackRecord;->commitInternal(Z)I

    move-result v0

    return v0
.end method

.method commitInternal(Z)I
    .locals 6
    .param p1, "allowStateLoss"    # Z

    .prologue
    const/4 v5, 0x0

    .line 665
    iget-boolean v2, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mCommitted:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "commit already called"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 666
    :cond_0
    sget-boolean v2, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 667
    const-string/jumbo v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Commit: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    new-instance v0, Lcom/miui/systemui/support/v4/util/LogWriter;

    const-string/jumbo v2, "FragmentManager"

    invoke-direct {v0, v2}, Lcom/miui/systemui/support/v4/util/LogWriter;-><init>(Ljava/lang/String;)V

    .line 669
    .local v0, "logw":Lcom/miui/systemui/support/v4/util/LogWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 670
    .local v1, "pw":Ljava/io/PrintWriter;
    const-string/jumbo v2, "  "

    invoke-virtual {p0, v2, v5, v1, v5}, Lcom/miui/systemui/support/v4/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 671
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 673
    .end local v0    # "logw":Lcom/miui/systemui/support/v4/util/LogWriter;
    .end local v1    # "pw":Ljava/io/PrintWriter;
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mCommitted:Z

    .line 674
    iget-boolean v2, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v2, :cond_2

    .line 675
    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v2, p0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->allocBackStackIndex(Lcom/miui/systemui/support/v4/app/BackStackRecord;)I

    move-result v2

    iput v2, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mIndex:I

    .line 679
    :goto_0
    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v2, p0, p1}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->enqueueAction(Lcom/miui/systemui/support/v4/app/FragmentManagerImpl$OpGenerator;Z)V

    .line 680
    iget v2, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mIndex:I

    return v2

    .line 677
    :cond_2
    const/4 v2, -0x1

    iput v2, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mIndex:I

    goto :goto_0
.end method

.method public detach(Lcom/miui/systemui/support/v4/app/Fragment;)Lcom/miui/systemui/support/v4/app/FragmentTransaction;
    .locals 2
    .param p1, "fragment"    # Lcom/miui/systemui/support/v4/app/Fragment;

    .prologue
    .line 467
    new-instance v0, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p1}, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;-><init>(ILcom/miui/systemui/support/v4/app/Fragment;)V

    invoke-virtual {p0, v0}, Lcom/miui/systemui/support/v4/app/BackStackRecord;->addOp(Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;)V

    .line 469
    return-object p0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 250
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p3, v0}, Lcom/miui/systemui/support/v4/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 249
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
    .locals 7
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "full"    # Z

    .prologue
    .line 254
    if-eqz p3, :cond_8

    .line 255
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "mName="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 256
    const-string/jumbo v5, " mIndex="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mIndex:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 257
    const-string/jumbo v5, " mCommitted="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mCommitted:Z

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 258
    iget v5, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mTransition:I

    if-eqz v5, :cond_0

    .line 259
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "mTransition=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 260
    iget v5, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mTransition:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 261
    const-string/jumbo v5, " mTransitionStyle=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 262
    iget v5, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mTransitionStyle:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 264
    :cond_0
    iget v5, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mEnterAnim:I

    if-nez v5, :cond_1

    iget v5, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mExitAnim:I

    if-eqz v5, :cond_2

    .line 265
    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "mEnterAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 266
    iget v5, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mEnterAnim:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 267
    const-string/jumbo v5, " mExitAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 268
    iget v5, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mExitAnim:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 270
    :cond_2
    iget v5, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mPopEnterAnim:I

    if-nez v5, :cond_3

    iget v5, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mPopExitAnim:I

    if-eqz v5, :cond_4

    .line 271
    :cond_3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "mPopEnterAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 272
    iget v5, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mPopEnterAnim:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 273
    const-string/jumbo v5, " mPopExitAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 274
    iget v5, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mPopExitAnim:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 276
    :cond_4
    iget v5, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    if-eqz v5, :cond_6

    .line 277
    :cond_5
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "mBreadCrumbTitleRes=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 278
    iget v5, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 279
    const-string/jumbo v5, " mBreadCrumbTitleText="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 280
    iget-object v5, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 282
    :cond_6
    iget v5, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    if-eqz v5, :cond_8

    .line 283
    :cond_7
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "mBreadCrumbShortTitleRes=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 284
    iget v5, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 285
    const-string/jumbo v5, " mBreadCrumbShortTitleText="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 286
    iget-object v5, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 290
    :cond_8
    iget-object v5, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_d

    .line 291
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "Operations:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 292
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 293
    .local v1, "innerPrefix":Ljava/lang/String;
    iget-object v5, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 294
    .local v2, "numOps":I
    const/4 v4, 0x0

    .local v4, "opNum":I
    :goto_0
    if-ge v4, v2, :cond_d

    .line 295
    iget-object v5, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;

    .line 297
    .local v3, "op":Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;
    iget v5, v3, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;->cmd:I

    packed-switch v5, :pswitch_data_0

    .line 308
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "cmd="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;->cmd:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, "cmdStr":Ljava/lang/String;
    :goto_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "  Op #"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 311
    const-string/jumbo v5, ": "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 312
    const-string/jumbo v5, " "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;->fragment:Lcom/miui/systemui/support/v4/app/Fragment;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 313
    if-eqz p3, :cond_c

    .line 314
    iget v5, v3, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;->enterAnim:I

    if-nez v5, :cond_9

    iget v5, v3, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;->exitAnim:I

    if-eqz v5, :cond_a

    .line 315
    :cond_9
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "enterAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 316
    iget v5, v3, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;->enterAnim:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 317
    const-string/jumbo v5, " exitAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 318
    iget v5, v3, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;->exitAnim:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 320
    :cond_a
    iget v5, v3, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    if-nez v5, :cond_b

    iget v5, v3, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    if-eqz v5, :cond_c

    .line 321
    :cond_b
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "popEnterAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 322
    iget v5, v3, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 323
    const-string/jumbo v5, " popExitAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 324
    iget v5, v3, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 294
    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 298
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v0, "NULL"

    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto :goto_1

    .line 299
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v0, "ADD"

    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto :goto_1

    .line 300
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v0, "REPLACE"

    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 301
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v0, "REMOVE"

    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 302
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_4
    const-string/jumbo v0, "HIDE"

    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 303
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_5
    const-string/jumbo v0, "SHOW"

    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 304
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_6
    const-string/jumbo v0, "DETACH"

    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 305
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_7
    const-string/jumbo v0, "ATTACH"

    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 306
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_8
    const-string/jumbo v0, "SET_PRIMARY_NAV"

    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 307
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_9
    const-string/jumbo v0, "UNSET_PRIMARY_NAV"

    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 253
    .end local v0    # "cmdStr":Ljava/lang/String;
    .end local v1    # "innerPrefix":Ljava/lang/String;
    .end local v2    # "numOps":I
    .end local v3    # "op":Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;
    .end local v4    # "opNum":I
    :cond_d
    return-void

    .line 297
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method executeOps()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 751
    iget-object v4, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 752
    .local v1, "numOps":I
    const/4 v3, 0x0

    .local v3, "opNum":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 753
    iget-object v4, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;

    .line 754
    .local v2, "op":Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;
    iget-object v0, v2, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;->fragment:Lcom/miui/systemui/support/v4/app/Fragment;

    .line 755
    .local v0, "f":Lcom/miui/systemui/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 756
    iget v4, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mTransition:I

    iget v5, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v0, v4, v5}, Lcom/miui/systemui/support/v4/app/Fragment;->setNextTransition(II)V

    .line 758
    :cond_0
    iget v4, v2, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;->cmd:I

    packed-switch v4, :pswitch_data_0

    .line 790
    :pswitch_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown cmd: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;->cmd:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 760
    :pswitch_1
    iget v4, v2, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;->enterAnim:I

    invoke-virtual {v0, v4}, Lcom/miui/systemui/support/v4/app/Fragment;->setNextAnim(I)V

    .line 761
    iget-object v4, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->addFragment(Lcom/miui/systemui/support/v4/app/Fragment;Z)V

    .line 792
    :goto_1
    iget-boolean v4, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mReorderingAllowed:Z

    if-nez v4, :cond_1

    iget v4, v2, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;->cmd:I

    if-eq v4, v7, :cond_1

    if-eqz v0, :cond_1

    .line 793
    iget-object v4, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v4, v0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->moveFragmentToExpectedState(Lcom/miui/systemui/support/v4/app/Fragment;)V

    .line 752
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 764
    :pswitch_2
    iget v4, v2, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;->exitAnim:I

    invoke-virtual {v0, v4}, Lcom/miui/systemui/support/v4/app/Fragment;->setNextAnim(I)V

    .line 765
    iget-object v4, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v4, v0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->removeFragment(Lcom/miui/systemui/support/v4/app/Fragment;)V

    goto :goto_1

    .line 768
    :pswitch_3
    iget v4, v2, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;->exitAnim:I

    invoke-virtual {v0, v4}, Lcom/miui/systemui/support/v4/app/Fragment;->setNextAnim(I)V

    .line 769
    iget-object v4, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v4, v0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->hideFragment(Lcom/miui/systemui/support/v4/app/Fragment;)V

    goto :goto_1

    .line 772
    :pswitch_4
    iget v4, v2, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;->enterAnim:I

    invoke-virtual {v0, v4}, Lcom/miui/systemui/support/v4/app/Fragment;->setNextAnim(I)V

    .line 773
    iget-object v4, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v4, v0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->showFragment(Lcom/miui/systemui/support/v4/app/Fragment;)V

    goto :goto_1

    .line 776
    :pswitch_5
    iget v4, v2, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;->exitAnim:I

    invoke-virtual {v0, v4}, Lcom/miui/systemui/support/v4/app/Fragment;->setNextAnim(I)V

    .line 777
    iget-object v4, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v4, v0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->detachFragment(Lcom/miui/systemui/support/v4/app/Fragment;)V

    goto :goto_1

    .line 780
    :pswitch_6
    iget v4, v2, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;->enterAnim:I

    invoke-virtual {v0, v4}, Lcom/miui/systemui/support/v4/app/Fragment;->setNextAnim(I)V

    .line 781
    iget-object v4, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v4, v0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->attachFragment(Lcom/miui/systemui/support/v4/app/Fragment;)V

    goto :goto_1

    .line 784
    :pswitch_7
    iget-object v4, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v4, v0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->setPrimaryNavigationFragment(Lcom/miui/systemui/support/v4/app/Fragment;)V

    goto :goto_1

    .line 787
    :pswitch_8
    iget-object v4, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v4, v6}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->setPrimaryNavigationFragment(Lcom/miui/systemui/support/v4/app/Fragment;)V

    goto :goto_1

    .line 796
    .end local v0    # "f":Lcom/miui/systemui/support/v4/app/Fragment;
    .end local v2    # "op":Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;
    :cond_2
    iget-boolean v4, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mReorderingAllowed:Z

    if-nez v4, :cond_3

    .line 798
    iget-object v4, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    iget-object v5, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    iget v5, v5, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mCurState:I

    invoke-virtual {v4, v5, v7}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 750
    :cond_3
    return-void

    .line 758
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method executePopOps(Z)V
    .locals 7
    .param p1, "moveToState"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 810
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "opNum":I
    :goto_0
    if-ltz v2, :cond_2

    .line 811
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;

    .line 812
    .local v1, "op":Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;
    iget-object v0, v1, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;->fragment:Lcom/miui/systemui/support/v4/app/Fragment;

    .line 813
    .local v0, "f":Lcom/miui/systemui/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 814
    iget v3, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mTransition:I

    invoke-static {v3}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v3

    .line 815
    iget v4, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mTransitionStyle:I

    .line 814
    invoke-virtual {v0, v3, v4}, Lcom/miui/systemui/support/v4/app/Fragment;->setNextTransition(II)V

    .line 817
    :cond_0
    iget v3, v1, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;->cmd:I

    packed-switch v3, :pswitch_data_0

    .line 849
    :pswitch_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown cmd: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;->cmd:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 819
    :pswitch_1
    iget v3, v1, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    invoke-virtual {v0, v3}, Lcom/miui/systemui/support/v4/app/Fragment;->setNextAnim(I)V

    .line 820
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v3, v0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->removeFragment(Lcom/miui/systemui/support/v4/app/Fragment;)V

    .line 851
    :goto_1
    iget-boolean v3, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mReorderingAllowed:Z

    if-nez v3, :cond_1

    iget v3, v1, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;->cmd:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    if-eqz v0, :cond_1

    .line 852
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v3, v0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->moveFragmentToExpectedState(Lcom/miui/systemui/support/v4/app/Fragment;)V

    .line 810
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 823
    :pswitch_2
    iget v3, v1, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    invoke-virtual {v0, v3}, Lcom/miui/systemui/support/v4/app/Fragment;->setNextAnim(I)V

    .line 824
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v3, v0, v6}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->addFragment(Lcom/miui/systemui/support/v4/app/Fragment;Z)V

    goto :goto_1

    .line 827
    :pswitch_3
    iget v3, v1, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    invoke-virtual {v0, v3}, Lcom/miui/systemui/support/v4/app/Fragment;->setNextAnim(I)V

    .line 828
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v3, v0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->showFragment(Lcom/miui/systemui/support/v4/app/Fragment;)V

    goto :goto_1

    .line 831
    :pswitch_4
    iget v3, v1, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    invoke-virtual {v0, v3}, Lcom/miui/systemui/support/v4/app/Fragment;->setNextAnim(I)V

    .line 832
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v3, v0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->hideFragment(Lcom/miui/systemui/support/v4/app/Fragment;)V

    goto :goto_1

    .line 835
    :pswitch_5
    iget v3, v1, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    invoke-virtual {v0, v3}, Lcom/miui/systemui/support/v4/app/Fragment;->setNextAnim(I)V

    .line 836
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v3, v0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->attachFragment(Lcom/miui/systemui/support/v4/app/Fragment;)V

    goto :goto_1

    .line 839
    :pswitch_6
    iget v3, v1, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    invoke-virtual {v0, v3}, Lcom/miui/systemui/support/v4/app/Fragment;->setNextAnim(I)V

    .line 840
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v3, v0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->detachFragment(Lcom/miui/systemui/support/v4/app/Fragment;)V

    goto :goto_1

    .line 843
    :pswitch_7
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v3, v5}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->setPrimaryNavigationFragment(Lcom/miui/systemui/support/v4/app/Fragment;)V

    goto :goto_1

    .line 846
    :pswitch_8
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v3, v0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->setPrimaryNavigationFragment(Lcom/miui/systemui/support/v4/app/Fragment;)V

    goto :goto_1

    .line 855
    .end local v0    # "f":Lcom/miui/systemui/support/v4/app/Fragment;
    .end local v1    # "op":Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;
    :cond_2
    iget-boolean v3, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mReorderingAllowed:Z

    if-nez v3, :cond_3

    if-eqz p1, :cond_3

    .line 856
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    iget-object v4, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    iget v4, v4, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mCurState:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 809
    :cond_3
    return-void

    .line 817
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method expandOps(Ljava/util/ArrayList;Lcom/miui/systemui/support/v4/app/Fragment;)Lcom/miui/systemui/support/v4/app/Fragment;
    .locals 12
    .param p2, "oldPrimaryNav"    # Lcom/miui/systemui/support/v4/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/systemui/support/v4/app/Fragment;",
            ">;",
            "Lcom/miui/systemui/support/v4/app/Fragment;",
            ")",
            "Lcom/miui/systemui/support/v4/app/Fragment;"
        }
    .end annotation

    .prologue
    .local p1, "added":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    const/16 v11, 0x9

    .line 884
    const/4 v6, 0x0

    .end local p2    # "oldPrimaryNav":Lcom/miui/systemui/support/v4/app/Fragment;
    .local v6, "opNum":I
    :goto_0
    iget-object v8, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_6

    .line 885
    iget-object v8, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;

    .line 886
    .local v5, "op":Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;
    iget v8, v5, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;->cmd:I

    packed-switch v8, :pswitch_data_0

    .line 884
    :cond_0
    :goto_1
    :pswitch_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 889
    :pswitch_1
    iget-object v8, v5, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;->fragment:Lcom/miui/systemui/support/v4/app/Fragment;

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 893
    :pswitch_2
    iget-object v8, v5, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;->fragment:Lcom/miui/systemui/support/v4/app/Fragment;

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 894
    iget-object v8, v5, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;->fragment:Lcom/miui/systemui/support/v4/app/Fragment;

    if-ne v8, p2, :cond_0

    .line 895
    iget-object v8, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    new-instance v9, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;

    iget-object v10, v5, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;->fragment:Lcom/miui/systemui/support/v4/app/Fragment;

    invoke-direct {v9, v11, v10}, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;-><init>(ILcom/miui/systemui/support/v4/app/Fragment;)V

    invoke-virtual {v8, v6, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 896
    add-int/lit8 v6, v6, 0x1

    .line 897
    const/4 p2, 0x0

    .local p2, "oldPrimaryNav":Lcom/miui/systemui/support/v4/app/Fragment;
    goto :goto_1

    .line 902
    .end local p2    # "oldPrimaryNav":Lcom/miui/systemui/support/v4/app/Fragment;
    :pswitch_3
    iget-object v2, v5, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;->fragment:Lcom/miui/systemui/support/v4/app/Fragment;

    .line 903
    .local v2, "f":Lcom/miui/systemui/support/v4/app/Fragment;
    iget v1, v2, Lcom/miui/systemui/support/v4/app/Fragment;->mContainerId:I

    .line 904
    .local v1, "containerId":I
    const/4 v0, 0x0

    .line 905
    .local v0, "alreadyAdded":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .local v3, "i":I
    :goto_2
    if-ltz v3, :cond_4

    .line 906
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/systemui/support/v4/app/Fragment;

    .line 907
    .local v4, "old":Lcom/miui/systemui/support/v4/app/Fragment;
    iget v8, v4, Lcom/miui/systemui/support/v4/app/Fragment;->mContainerId:I

    if-ne v8, v1, :cond_1

    .line 908
    if-ne v4, v2, :cond_2

    .line 909
    const/4 v0, 0x1

    .line 905
    :cond_1
    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 913
    :cond_2
    if-ne v4, p2, :cond_3

    .line 914
    iget-object v8, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    new-instance v9, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;

    invoke-direct {v9, v11, v4}, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;-><init>(ILcom/miui/systemui/support/v4/app/Fragment;)V

    invoke-virtual {v8, v6, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 915
    add-int/lit8 v6, v6, 0x1

    .line 916
    const/4 p2, 0x0

    .line 918
    :cond_3
    new-instance v7, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;

    const/4 v8, 0x3

    invoke-direct {v7, v8, v4}, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;-><init>(ILcom/miui/systemui/support/v4/app/Fragment;)V

    .line 919
    .local v7, "removeOp":Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;
    iget v8, v5, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;->enterAnim:I

    iput v8, v7, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;->enterAnim:I

    .line 920
    iget v8, v5, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    iput v8, v7, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    .line 921
    iget v8, v5, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;->exitAnim:I

    iput v8, v7, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;->exitAnim:I

    .line 922
    iget v8, v5, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    iput v8, v7, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    .line 923
    iget-object v8, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v8, v6, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 924
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 925
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 929
    .end local v4    # "old":Lcom/miui/systemui/support/v4/app/Fragment;
    .end local v7    # "removeOp":Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;
    :cond_4
    if-eqz v0, :cond_5

    .line 930
    iget-object v8, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 931
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 933
    :cond_5
    const/4 v8, 0x1

    iput v8, v5, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;->cmd:I

    .line 934
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 941
    .end local v0    # "alreadyAdded":Z
    .end local v1    # "containerId":I
    .end local v2    # "f":Lcom/miui/systemui/support/v4/app/Fragment;
    .end local v3    # "i":I
    :pswitch_4
    iget-object v8, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    new-instance v9, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;

    invoke-direct {v9, v11, p2}, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;-><init>(ILcom/miui/systemui/support/v4/app/Fragment;)V

    invoke-virtual {v8, v6, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 942
    add-int/lit8 v6, v6, 0x1

    .line 944
    iget-object p2, v5, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;->fragment:Lcom/miui/systemui/support/v4/app/Fragment;

    .local p2, "oldPrimaryNav":Lcom/miui/systemui/support/v4/app/Fragment;
    goto/16 :goto_1

    .line 949
    .end local v5    # "op":Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;
    .end local p2    # "oldPrimaryNav":Lcom/miui/systemui/support/v4/app/Fragment;
    :cond_6
    return-object p2

    .line 886
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public generateOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 3
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
    .line 694
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/BackStackRecord;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    sget-boolean v0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 695
    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Run: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    :cond_0
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 699
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 700
    iget-boolean v0, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v0, :cond_1

    .line 701
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->addBackStackState(Lcom/miui/systemui/support/v4/app/BackStackRecord;)V

    .line 703
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;

    return-object v0
.end method

.method interactsWith(I)Z
    .locals 6
    .param p1, "containerId"    # I

    .prologue
    const/4 v4, 0x0

    .line 707
    iget-object v5, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 708
    .local v1, "numOps":I
    const/4 v3, 0x0

    .local v3, "opNum":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 709
    iget-object v5, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;

    .line 710
    .local v2, "op":Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;
    iget-object v5, v2, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;->fragment:Lcom/miui/systemui/support/v4/app/Fragment;

    if-eqz v5, :cond_0

    iget-object v5, v2, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;->fragment:Lcom/miui/systemui/support/v4/app/Fragment;

    iget v0, v5, Lcom/miui/systemui/support/v4/app/Fragment;->mContainerId:I

    .line 711
    .local v0, "fragContainer":I
    :goto_1
    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_1

    .line 712
    const/4 v4, 0x1

    return v4

    .end local v0    # "fragContainer":I
    :cond_0
    move v0, v4

    .line 710
    goto :goto_1

    .line 708
    .restart local v0    # "fragContainer":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 715
    .end local v0    # "fragContainer":I
    .end local v2    # "op":Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;
    :cond_2
    return v4
.end method

.method interactsWith(Ljava/util/ArrayList;II)Z
    .locals 12
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/systemui/support/v4/app/BackStackRecord;",
            ">;II)Z"
        }
    .end annotation

    .prologue
    .line 719
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/BackStackRecord;>;"
    if-ne p3, p2, :cond_0

    .line 720
    const/4 v11, 0x0

    return v11

    .line 722
    :cond_0
    iget-object v11, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 723
    .local v3, "numOps":I
    const/4 v2, -0x1

    .line 724
    .local v2, "lastContainer":I
    const/4 v6, 0x0

    .local v6, "opNum":I
    :goto_0
    if-ge v6, v3, :cond_6

    .line 725
    iget-object v11, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;

    .line 726
    .local v5, "op":Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;
    iget-object v11, v5, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;->fragment:Lcom/miui/systemui/support/v4/app/Fragment;

    if-eqz v11, :cond_1

    iget-object v11, v5, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;->fragment:Lcom/miui/systemui/support/v4/app/Fragment;

    iget v0, v11, Lcom/miui/systemui/support/v4/app/Fragment;->mContainerId:I

    .line 727
    .local v0, "container":I
    :goto_1
    if-eqz v0, :cond_5

    if-eq v0, v2, :cond_5

    .line 728
    move v2, v0

    .line 729
    move v1, p2

    .local v1, "i":I
    :goto_2
    if-ge v1, p3, :cond_5

    .line 730
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/systemui/support/v4/app/BackStackRecord;

    .line 731
    .local v7, "record":Lcom/miui/systemui/support/v4/app/BackStackRecord;
    iget-object v11, v7, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 732
    .local v4, "numThoseOps":I
    const/4 v10, 0x0

    .local v10, "thoseOpIndex":I
    :goto_3
    if-ge v10, v4, :cond_4

    .line 733
    iget-object v11, v7, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;

    .line 734
    .local v9, "thatOp":Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;
    iget-object v11, v9, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;->fragment:Lcom/miui/systemui/support/v4/app/Fragment;

    if-eqz v11, :cond_2

    .line 735
    iget-object v11, v9, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;->fragment:Lcom/miui/systemui/support/v4/app/Fragment;

    iget v8, v11, Lcom/miui/systemui/support/v4/app/Fragment;->mContainerId:I

    .line 736
    .local v8, "thatContainer":I
    :goto_4
    if-ne v8, v0, :cond_3

    .line 737
    const/4 v11, 0x1

    return v11

    .line 726
    .end local v0    # "container":I
    .end local v1    # "i":I
    .end local v4    # "numThoseOps":I
    .end local v7    # "record":Lcom/miui/systemui/support/v4/app/BackStackRecord;
    .end local v8    # "thatContainer":I
    .end local v9    # "thatOp":Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;
    .end local v10    # "thoseOpIndex":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 735
    .restart local v0    # "container":I
    .restart local v1    # "i":I
    .restart local v4    # "numThoseOps":I
    .restart local v7    # "record":Lcom/miui/systemui/support/v4/app/BackStackRecord;
    .restart local v9    # "thatOp":Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;
    .restart local v10    # "thoseOpIndex":I
    :cond_2
    const/4 v8, 0x0

    goto :goto_4

    .line 732
    .restart local v8    # "thatContainer":I
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 729
    .end local v8    # "thatContainer":I
    .end local v9    # "thatOp":Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 724
    .end local v1    # "i":I
    .end local v4    # "numThoseOps":I
    .end local v7    # "record":Lcom/miui/systemui/support/v4/app/BackStackRecord;
    .end local v10    # "thoseOpIndex":I
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 743
    .end local v0    # "container":I
    .end local v5    # "op":Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;
    :cond_6
    const/4 v11, 0x0

    return v11
.end method

.method isPostponed()Z
    .locals 3

    .prologue
    .line 986
    const/4 v1, 0x0

    .local v1, "opNum":I
    :goto_0
    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 987
    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;

    .line 988
    .local v0, "op":Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;
    invoke-static {v0}, Lcom/miui/systemui/support/v4/app/BackStackRecord;->isFragmentPostponed(Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 989
    const/4 v2, 0x1

    return v2

    .line 986
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 992
    .end local v0    # "op":Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public replace(ILcom/miui/systemui/support/v4/app/Fragment;Ljava/lang/String;)Lcom/miui/systemui/support/v4/app/FragmentTransaction;
    .locals 2
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Lcom/miui/systemui/support/v4/app/Fragment;
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 436
    if-nez p1, :cond_0

    .line 437
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Must use non-zero containerViewId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 440
    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/systemui/support/v4/app/BackStackRecord;->doAddOp(ILcom/miui/systemui/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 441
    return-object p0
.end method

.method public runOnCommitRunnables()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 623
    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mCommitRunnables:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 624
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mCommitRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "N":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 625
    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mCommitRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 624
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 627
    :cond_0
    iput-object v3, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mCommitRunnables:Ljava/util/ArrayList;

    .line 622
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method setOnStartPostponedListener(Lcom/miui/systemui/support/v4/app/Fragment$OnStartEnterTransitionListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/miui/systemui/support/v4/app/Fragment$OnStartEnterTransitionListener;

    .prologue
    .line 996
    const/4 v1, 0x0

    .local v1, "opNum":I
    :goto_0
    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 997
    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;

    .line 998
    .local v0, "op":Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;
    invoke-static {v0}, Lcom/miui/systemui/support/v4/app/BackStackRecord;->isFragmentPostponed(Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 999
    iget-object v2, v0, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;->fragment:Lcom/miui/systemui/support/v4/app/Fragment;

    invoke-virtual {v2, p1}, Lcom/miui/systemui/support/v4/app/Fragment;->setOnStartEnterTransitionListener(Lcom/miui/systemui/support/v4/app/Fragment$OnStartEnterTransitionListener;)V

    .line 996
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 995
    .end local v0    # "op":Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 235
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "BackStackEntry{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    iget v1, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mIndex:I

    if-ltz v1, :cond_0

    .line 238
    const-string/jumbo v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    iget v1, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 241
    :cond_0
    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 242
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    :cond_1
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method trackAddedFragmentsInPop(Ljava/util/ArrayList;Lcom/miui/systemui/support/v4/app/Fragment;)Lcom/miui/systemui/support/v4/app/Fragment;
    .locals 3
    .param p2, "oldPrimaryNav"    # Lcom/miui/systemui/support/v4/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/systemui/support/v4/app/Fragment;",
            ">;",
            "Lcom/miui/systemui/support/v4/app/Fragment;",
            ")",
            "Lcom/miui/systemui/support/v4/app/Fragment;"
        }
    .end annotation

    .prologue
    .line 963
    .local p1, "added":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    const/4 v1, 0x0

    .end local p2    # "oldPrimaryNav":Lcom/miui/systemui/support/v4/app/Fragment;
    .local v1, "opNum":I
    :goto_0
    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 964
    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;

    .line 965
    .local v0, "op":Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;
    iget v2, v0, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;->cmd:I

    packed-switch v2, :pswitch_data_0

    .line 963
    :goto_1
    :pswitch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 968
    :pswitch_1
    iget-object v2, v0, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;->fragment:Lcom/miui/systemui/support/v4/app/Fragment;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 972
    :pswitch_2
    iget-object v2, v0, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;->fragment:Lcom/miui/systemui/support/v4/app/Fragment;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 975
    :pswitch_3
    iget-object p2, v0, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;->fragment:Lcom/miui/systemui/support/v4/app/Fragment;

    .restart local p2    # "oldPrimaryNav":Lcom/miui/systemui/support/v4/app/Fragment;
    goto :goto_1

    .line 978
    .end local p2    # "oldPrimaryNav":Lcom/miui/systemui/support/v4/app/Fragment;
    :pswitch_4
    const/4 p2, 0x0

    .line 979
    .local p2, "oldPrimaryNav":Lcom/miui/systemui/support/v4/app/Fragment;
    goto :goto_1

    .line 982
    .end local v0    # "op":Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;
    .end local p2    # "oldPrimaryNav":Lcom/miui/systemui/support/v4/app/Fragment;
    :cond_0
    return-object p2

    .line 965
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
