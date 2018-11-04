.class public Lcom/miui/systemui/support/v4/app/FragmentActivity;
.super Lcom/miui/systemui/support/v4/app/BaseFragmentActivityApi16;
.source "FragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/systemui/support/v4/app/FragmentActivity$1;,
        Lcom/miui/systemui/support/v4/app/FragmentActivity$HostCallbacks;,
        Lcom/miui/systemui/support/v4/app/FragmentActivity$NonConfigurationInstances;
    }
.end annotation


# instance fields
.field mCreated:Z

.field final mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

.field final mHandler:Landroid/os/Handler;

.field mNextCandidateRequestIndex:I

.field mPendingFragmentActivityResults:Lcom/miui/systemui/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/systemui/support/v4/util/SparseArrayCompat",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mReallyStopped:Z

.field mResumed:Z

.field mRetaining:Z

.field mStopped:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 65
    invoke-direct {p0}, Lcom/miui/systemui/support/v4/app/BaseFragmentActivityApi16;-><init>()V

    .line 79
    new-instance v0, Lcom/miui/systemui/support/v4/app/FragmentActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/systemui/support/v4/app/FragmentActivity$1;-><init>(Lcom/miui/systemui/support/v4/app/FragmentActivity;)V

    iput-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    .line 98
    new-instance v0, Lcom/miui/systemui/support/v4/app/FragmentActivity$HostCallbacks;

    invoke-direct {v0, p0}, Lcom/miui/systemui/support/v4/app/FragmentActivity$HostCallbacks;-><init>(Lcom/miui/systemui/support/v4/app/FragmentActivity;)V

    invoke-static {v0}, Lcom/miui/systemui/support/v4/app/FragmentController;->createController(Lcom/miui/systemui/support/v4/app/FragmentHostCallback;)Lcom/miui/systemui/support/v4/app/FragmentController;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    .line 102
    iput-boolean v1, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mStopped:Z

    .line 103
    iput-boolean v1, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mReallyStopped:Z

    .line 65
    return-void
.end method


# virtual methods
.method final dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 329
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/systemui/support/v4/app/FragmentController;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method doReallyStop(Z)V
    .locals 2
    .param p1, "retaining"    # Z

    .prologue
    const/4 v1, 0x1

    .line 641
    iget-boolean v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mReallyStopped:Z

    if-nez v0, :cond_1

    .line 642
    iput-boolean v1, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mReallyStopped:Z

    .line 643
    iput-boolean p1, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mRetaining:Z

    .line 644
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 645
    invoke-virtual {p0}, Lcom/miui/systemui/support/v4/app/FragmentActivity;->onReallyStop()V

    .line 640
    :cond_0
    :goto_0
    return-void

    .line 646
    :cond_1
    if-eqz p1, :cond_0

    .line 651
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentController;->doLoaderStart()V

    .line 652
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v0, v1}, Lcom/miui/systemui/support/v4/app/FragmentController;->doLoaderStop(Z)V

    goto :goto_0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 626
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/systemui/support/v4/app/BaseFragmentActivityApi16;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 627
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "Local FragmentActivity "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 628
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 629
    const-string/jumbo v1, " State:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 630
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 631
    .local v0, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mCreated="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 632
    iget-boolean v1, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mCreated:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v1, "mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 633
    iget-boolean v1, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mResumed:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 634
    iget-boolean v1, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mStopped:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v1, " mReallyStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 635
    iget-boolean v1, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mReallyStopped:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 636
    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v1, v0, p2, p3, p4}, Lcom/miui/systemui/support/v4/app/FragmentController;->dumpLoaders(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 637
    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v1}, Lcom/miui/systemui/support/v4/app/FragmentController;->getSupportFragmentManager()Lcom/miui/systemui/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/miui/systemui/support/v4/app/FragmentManager;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 625
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 134
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v3}, Lcom/miui/systemui/support/v4/app/FragmentController;->noteStateNotSaved()V

    .line 135
    shr-int/lit8 v0, p1, 0x10

    .line 136
    .local v0, "requestIndex":I
    if-eqz v0, :cond_2

    .line 137
    add-int/lit8 v0, v0, -0x1

    .line 139
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Lcom/miui/systemui/support/v4/util/SparseArrayCompat;

    invoke-virtual {v3, v0}, Lcom/miui/systemui/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 140
    .local v2, "who":Ljava/lang/String;
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Lcom/miui/systemui/support/v4/util/SparseArrayCompat;

    invoke-virtual {v3, v0}, Lcom/miui/systemui/support/v4/util/SparseArrayCompat;->remove(I)V

    .line 141
    if-nez v2, :cond_0

    .line 142
    const-string/jumbo v3, "FragmentActivity"

    const-string/jumbo v4, "Activity result delivered for unknown Fragment."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return-void

    .line 145
    :cond_0
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v3, v2}, Lcom/miui/systemui/support/v4/app/FragmentController;->findFragmentByWho(Ljava/lang/String;)Lcom/miui/systemui/support/v4/app/Fragment;

    move-result-object v1

    .line 146
    .local v1, "targetFragment":Lcom/miui/systemui/support/v4/app/Fragment;
    if-nez v1, :cond_1

    .line 147
    const-string/jumbo v3, "FragmentActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Activity result no fragment exists for who: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :goto_0
    return-void

    .line 149
    :cond_1
    const v3, 0xffff

    and-int/2addr v3, p1

    invoke-virtual {v1, v3, p2, p3}, Lcom/miui/systemui/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 154
    .end local v1    # "targetFragment":Lcom/miui/systemui/support/v4/app/Fragment;
    .end local v2    # "who":Ljava/lang/String;
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/miui/systemui/support/v4/app/BaseFragmentActivityApi16;->onActivityResult(IILandroid/content/Intent;)V

    .line 133
    return-void
.end method

.method public onAttachFragment(Lcom/miui/systemui/support/v4/app/Fragment;)V
    .locals 0
    .param p1, "fragment"    # Lcom/miui/systemui/support/v4/app/Fragment;

    .prologue
    .line 681
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 163
    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v2}, Lcom/miui/systemui/support/v4/app/FragmentController;->getSupportFragmentManager()Lcom/miui/systemui/support/v4/app/FragmentManager;

    move-result-object v0

    .line 164
    .local v0, "fragmentManager":Lcom/miui/systemui/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentManager;->isStateSaved()Z

    move-result v1

    .line 165
    .local v1, "isStateSaved":Z
    if-eqz v1, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x19

    if-gt v2, v3, :cond_0

    .line 170
    return-void

    .line 172
    :cond_0
    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentManager;->popBackStackImmediate()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 162
    :goto_0
    return-void

    .line 173
    :cond_1
    invoke-super {p0}, Lcom/miui/systemui/support/v4/app/BaseFragmentActivityApi16;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 264
    invoke-super {p0, p1}, Lcom/miui/systemui/support/v4/app/BaseFragmentActivityApi16;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 265
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v0, p1}, Lcom/miui/systemui/support/v4/app/FragmentController;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 263
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x0

    .line 274
    iget-object v6, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v6, v5}, Lcom/miui/systemui/support/v4/app/FragmentController;->attachHost(Lcom/miui/systemui/support/v4/app/Fragment;)V

    .line 276
    invoke-super {p0, p1}, Lcom/miui/systemui/support/v4/app/BaseFragmentActivityApi16;->onCreate(Landroid/os/Bundle;)V

    .line 279
    invoke-virtual {p0}, Lcom/miui/systemui/support/v4/app/FragmentActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/systemui/support/v4/app/FragmentActivity$NonConfigurationInstances;

    .line 280
    .local v2, "nc":Lcom/miui/systemui/support/v4/app/FragmentActivity$NonConfigurationInstances;
    if-eqz v2, :cond_0

    .line 281
    iget-object v6, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    iget-object v7, v2, Lcom/miui/systemui/support/v4/app/FragmentActivity$NonConfigurationInstances;->loaders:Lcom/miui/systemui/support/v4/util/SimpleArrayMap;

    invoke-virtual {v6, v7}, Lcom/miui/systemui/support/v4/app/FragmentController;->restoreLoaderNonConfig(Lcom/miui/systemui/support/v4/util/SimpleArrayMap;)V

    .line 283
    :cond_0
    if-eqz p1, :cond_3

    .line 284
    const-string/jumbo v6, "android:support:fragments"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .line 285
    .local v3, "p":Landroid/os/Parcelable;
    iget-object v6, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    if-eqz v2, :cond_1

    iget-object v5, v2, Lcom/miui/systemui/support/v4/app/FragmentActivity$NonConfigurationInstances;->fragments:Lcom/miui/systemui/support/v4/app/FragmentManagerNonConfig;

    :cond_1
    invoke-virtual {v6, v3, v5}, Lcom/miui/systemui/support/v4/app/FragmentController;->restoreAllState(Landroid/os/Parcelable;Lcom/miui/systemui/support/v4/app/FragmentManagerNonConfig;)V

    .line 288
    const-string/jumbo v5, "android:support:next_request_index"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 290
    const-string/jumbo v5, "android:support:next_request_index"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 289
    iput v5, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mNextCandidateRequestIndex:I

    .line 291
    const-string/jumbo v5, "android:support:request_indicies"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    .line 292
    .local v4, "requestCodes":[I
    const-string/jumbo v5, "android:support:request_fragment_who"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 293
    .local v0, "fragmentWhos":[Ljava/lang/String;
    if-eqz v4, :cond_2

    if-nez v0, :cond_5

    .line 295
    :cond_2
    const-string/jumbo v5, "FragmentActivity"

    const-string/jumbo v6, "Invalid requestCode mapping in savedInstanceState."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    .end local v0    # "fragmentWhos":[Ljava/lang/String;
    .end local v3    # "p":Landroid/os/Parcelable;
    .end local v4    # "requestCodes":[I
    :cond_3
    iget-object v5, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Lcom/miui/systemui/support/v4/util/SparseArrayCompat;

    if-nez v5, :cond_4

    .line 306
    new-instance v5, Lcom/miui/systemui/support/v4/util/SparseArrayCompat;

    invoke-direct {v5}, Lcom/miui/systemui/support/v4/util/SparseArrayCompat;-><init>()V

    iput-object v5, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Lcom/miui/systemui/support/v4/util/SparseArrayCompat;

    .line 307
    const/4 v5, 0x0

    iput v5, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mNextCandidateRequestIndex:I

    .line 310
    :cond_4
    iget-object v5, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v5}, Lcom/miui/systemui/support/v4/app/FragmentController;->dispatchCreate()V

    .line 273
    return-void

    .line 294
    .restart local v0    # "fragmentWhos":[Ljava/lang/String;
    .restart local v3    # "p":Landroid/os/Parcelable;
    .restart local v4    # "requestCodes":[I
    :cond_5
    array-length v5, v4

    array-length v6, v0

    if-ne v5, v6, :cond_2

    .line 297
    new-instance v5, Lcom/miui/systemui/support/v4/util/SparseArrayCompat;

    array-length v6, v4

    invoke-direct {v5, v6}, Lcom/miui/systemui/support/v4/util/SparseArrayCompat;-><init>(I)V

    iput-object v5, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Lcom/miui/systemui/support/v4/util/SparseArrayCompat;

    .line 298
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_3

    .line 299
    iget-object v5, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Lcom/miui/systemui/support/v4/util/SparseArrayCompat;

    aget v6, v4, v1

    aget-object v7, v0, v1

    invoke-virtual {v5, v6, v7}, Lcom/miui/systemui/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 298
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 318
    if-nez p1, :cond_0

    .line 319
    invoke-super {p0, p1, p2}, Lcom/miui/systemui/support/v4/app/BaseFragmentActivityApi16;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    .line 320
    .local v0, "show":Z
    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {p0}, Lcom/miui/systemui/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lcom/miui/systemui/support/v4/app/FragmentController;->dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 321
    return v0

    .line 323
    .end local v0    # "show":Z
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/miui/systemui/support/v4/app/BaseFragmentActivityApi16;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public bridge synthetic onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/systemui/support/v4/app/BaseFragmentActivityApi16;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    invoke-super {p0, p1, p2, p3}, Lcom/miui/systemui/support/v4/app/BaseFragmentActivityApi16;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 337
    invoke-super {p0}, Lcom/miui/systemui/support/v4/app/BaseFragmentActivityApi16;->onDestroy()V

    .line 339
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/systemui/support/v4/app/FragmentActivity;->doReallyStop(Z)V

    .line 341
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentController;->dispatchDestroy()V

    .line 342
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentController;->doLoaderDestroy()V

    .line 336
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 350
    invoke-super {p0}, Lcom/miui/systemui/support/v4/app/BaseFragmentActivityApi16;->onLowMemory()V

    .line 351
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentController;->dispatchLowMemory()V

    .line 349
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 359
    invoke-super {p0, p1, p2}, Lcom/miui/systemui/support/v4/app/BaseFragmentActivityApi16;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    const/4 v0, 0x1

    return v0

    .line 363
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 371
    const/4 v0, 0x0

    return v0

    .line 365
    :sswitch_0
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v0, p2}, Lcom/miui/systemui/support/v4/app/FragmentController;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 368
    :sswitch_1
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v0, p2}, Lcom/miui/systemui/support/v4/app/FragmentController;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 363
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 1
    .param p1, "isInMultiWindowMode"    # Z
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 242
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v0, p1}, Lcom/miui/systemui/support/v4/app/FragmentController;->dispatchMultiWindowModeChanged(Z)V

    .line 241
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 414
    invoke-super {p0, p1}, Lcom/miui/systemui/support/v4/app/BaseFragmentActivityApi16;->onNewIntent(Landroid/content/Intent;)V

    .line 415
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentController;->noteStateNotSaved()V

    .line 413
    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 380
    packed-switch p1, :pswitch_data_0

    .line 385
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/miui/systemui/support/v4/app/BaseFragmentActivityApi16;->onPanelClosed(ILandroid/view/Menu;)V

    .line 379
    return-void

    .line 382
    :pswitch_0
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v0, p2}, Lcom/miui/systemui/support/v4/app/FragmentController;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V

    goto :goto_0

    .line 380
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 393
    invoke-super {p0}, Lcom/miui/systemui/support/v4/app/BaseFragmentActivityApi16;->onPause()V

    .line 394
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mResumed:Z

    .line 395
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 397
    invoke-virtual {p0}, Lcom/miui/systemui/support/v4/app/FragmentActivity;->onResumeFragments()V

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentController;->dispatchPause()V

    .line 392
    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 1
    .param p1, "isInPictureInPictureMode"    # Z
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 256
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v0, p1}, Lcom/miui/systemui/support/v4/app/FragmentController;->dispatchPictureInPictureModeChanged(Z)V

    .line 255
    return-void
.end method

.method protected onPostResume()V
    .locals 2

    .prologue
    .line 448
    invoke-super {p0}, Lcom/miui/systemui/support/v4/app/BaseFragmentActivityApi16;->onPostResume()V

    .line 449
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 450
    invoke-virtual {p0}, Lcom/miui/systemui/support/v4/app/FragmentActivity;->onResumeFragments()V

    .line 451
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentController;->execPendingActions()Z

    .line 447
    return-void
.end method

.method protected onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "menu"    # Landroid/view/Menu;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 482
    const/4 v0, 0x0

    invoke-super {p0, v0, p1, p2}, Lcom/miui/systemui/support/v4/app/BaseFragmentActivityApi16;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    .line 469
    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    .line 470
    invoke-virtual {p0, p2, p3}, Lcom/miui/systemui/support/v4/app/FragmentActivity;->onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    .line 471
    .local v0, "goforit":Z
    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v1, p3}, Lcom/miui/systemui/support/v4/app/FragmentController;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 472
    return v0

    .line 474
    .end local v0    # "goforit":Z
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/miui/systemui/support/v4/app/BaseFragmentActivityApi16;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method onReallyStop()V
    .locals 2

    .prologue
    .line 664
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    iget-boolean v1, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mRetaining:Z

    invoke-virtual {v0, v1}, Lcom/miui/systemui/support/v4/app/FragmentController;->doLoaderStop(Z)V

    .line 666
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentController;->dispatchReallyStop()V

    .line 663
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const v4, 0xffff

    .line 747
    shr-int/lit8 v3, p1, 0x10

    and-int v1, v3, v4

    .line 748
    .local v1, "index":I
    if-eqz v1, :cond_1

    .line 749
    add-int/lit8 v1, v1, -0x1

    .line 751
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Lcom/miui/systemui/support/v4/util/SparseArrayCompat;

    invoke-virtual {v3, v1}, Lcom/miui/systemui/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 752
    .local v2, "who":Ljava/lang/String;
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Lcom/miui/systemui/support/v4/util/SparseArrayCompat;

    invoke-virtual {v3, v1}, Lcom/miui/systemui/support/v4/util/SparseArrayCompat;->remove(I)V

    .line 753
    if-nez v2, :cond_0

    .line 754
    const-string/jumbo v3, "FragmentActivity"

    const-string/jumbo v4, "Activity result delivered for unknown Fragment."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    return-void

    .line 757
    :cond_0
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v3, v2}, Lcom/miui/systemui/support/v4/app/FragmentController;->findFragmentByWho(Ljava/lang/String;)Lcom/miui/systemui/support/v4/app/Fragment;

    move-result-object v0

    .line 758
    .local v0, "frag":Lcom/miui/systemui/support/v4/app/Fragment;
    if-nez v0, :cond_2

    .line 759
    const-string/jumbo v3, "FragmentActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Activity result no fragment exists for who: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    .end local v0    # "frag":Lcom/miui/systemui/support/v4/app/Fragment;
    .end local v2    # "who":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 761
    .restart local v0    # "frag":Lcom/miui/systemui/support/v4/app/Fragment;
    .restart local v2    # "who":Ljava/lang/String;
    :cond_2
    and-int v3, p1, v4

    invoke-virtual {v0, v3, p2, p3}, Lcom/miui/systemui/support/v4/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 437
    invoke-super {p0}, Lcom/miui/systemui/support/v4/app/BaseFragmentActivityApi16;->onResume()V

    .line 438
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 439
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mResumed:Z

    .line 440
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentController;->execPendingActions()Z

    .line 436
    return-void
.end method

.method protected onResumeFragments()V
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentController;->dispatchResume()V

    .line 460
    return-void
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 586
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 492
    iget-boolean v4, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mStopped:Z

    if-eqz v4, :cond_0

    .line 493
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/miui/systemui/support/v4/app/FragmentActivity;->doReallyStop(Z)V

    .line 496
    :cond_0
    invoke-virtual {p0}, Lcom/miui/systemui/support/v4/app/FragmentActivity;->onRetainCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    .line 498
    .local v0, "custom":Ljava/lang/Object;
    iget-object v4, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v4}, Lcom/miui/systemui/support/v4/app/FragmentController;->retainNestedNonConfig()Lcom/miui/systemui/support/v4/app/FragmentManagerNonConfig;

    move-result-object v1

    .line 499
    .local v1, "fragments":Lcom/miui/systemui/support/v4/app/FragmentManagerNonConfig;
    iget-object v4, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v4}, Lcom/miui/systemui/support/v4/app/FragmentController;->retainLoaderNonConfig()Lcom/miui/systemui/support/v4/util/SimpleArrayMap;

    move-result-object v2

    .line 501
    .local v2, "loaders":Lcom/miui/systemui/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<Ljava/lang/String;Landroid/support/v4/app/LoaderManager;>;"
    if-nez v1, :cond_1

    if-nez v2, :cond_1

    if-nez v0, :cond_1

    .line 502
    return-object v5

    .line 505
    :cond_1
    new-instance v3, Lcom/miui/systemui/support/v4/app/FragmentActivity$NonConfigurationInstances;

    invoke-direct {v3}, Lcom/miui/systemui/support/v4/app/FragmentActivity$NonConfigurationInstances;-><init>()V

    .line 506
    .local v3, "nci":Lcom/miui/systemui/support/v4/app/FragmentActivity$NonConfigurationInstances;
    iput-object v0, v3, Lcom/miui/systemui/support/v4/app/FragmentActivity$NonConfigurationInstances;->custom:Ljava/lang/Object;

    .line 507
    iput-object v1, v3, Lcom/miui/systemui/support/v4/app/FragmentActivity$NonConfigurationInstances;->fragments:Lcom/miui/systemui/support/v4/app/FragmentManagerNonConfig;

    .line 508
    iput-object v2, v3, Lcom/miui/systemui/support/v4/app/FragmentActivity$NonConfigurationInstances;->loaders:Lcom/miui/systemui/support/v4/util/SimpleArrayMap;

    .line 509
    return-object v3
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 517
    invoke-super {p0, p1}, Lcom/miui/systemui/support/v4/app/BaseFragmentActivityApi16;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 518
    iget-object v4, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v4}, Lcom/miui/systemui/support/v4/app/FragmentController;->saveAllState()Landroid/os/Parcelable;

    move-result-object v2

    .line 519
    .local v2, "p":Landroid/os/Parcelable;
    if-eqz v2, :cond_0

    .line 520
    const-string/jumbo v4, "android:support:fragments"

    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 522
    :cond_0
    iget-object v4, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Lcom/miui/systemui/support/v4/util/SparseArrayCompat;

    invoke-virtual {v4}, Lcom/miui/systemui/support/v4/util/SparseArrayCompat;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 523
    const-string/jumbo v4, "android:support:next_request_index"

    iget v5, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mNextCandidateRequestIndex:I

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 525
    iget-object v4, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Lcom/miui/systemui/support/v4/util/SparseArrayCompat;

    invoke-virtual {v4}, Lcom/miui/systemui/support/v4/util/SparseArrayCompat;->size()I

    move-result v4

    new-array v3, v4, [I

    .line 526
    .local v3, "requestCodes":[I
    iget-object v4, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Lcom/miui/systemui/support/v4/util/SparseArrayCompat;

    invoke-virtual {v4}, Lcom/miui/systemui/support/v4/util/SparseArrayCompat;->size()I

    move-result v4

    new-array v0, v4, [Ljava/lang/String;

    .line 527
    .local v0, "fragmentWhos":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Lcom/miui/systemui/support/v4/util/SparseArrayCompat;

    invoke-virtual {v4}, Lcom/miui/systemui/support/v4/util/SparseArrayCompat;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 528
    iget-object v4, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Lcom/miui/systemui/support/v4/util/SparseArrayCompat;

    invoke-virtual {v4, v1}, Lcom/miui/systemui/support/v4/util/SparseArrayCompat;->keyAt(I)I

    move-result v4

    aput v4, v3, v1

    .line 529
    iget-object v4, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Lcom/miui/systemui/support/v4/util/SparseArrayCompat;

    invoke-virtual {v4, v1}, Lcom/miui/systemui/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v0, v1

    .line 527
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 531
    :cond_1
    const-string/jumbo v4, "android:support:request_indicies"

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 532
    const-string/jumbo v4, "android:support:request_fragment_who"

    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 516
    .end local v0    # "fragmentWhos":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v3    # "requestCodes":[I
    :cond_2
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 542
    invoke-super {p0}, Lcom/miui/systemui/support/v4/app/BaseFragmentActivityApi16;->onStart()V

    .line 544
    iput-boolean v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mStopped:Z

    .line 545
    iput-boolean v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mReallyStopped:Z

    .line 546
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 548
    iget-boolean v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mCreated:Z

    if-nez v0, :cond_0

    .line 549
    iput-boolean v1, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mCreated:Z

    .line 550
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentController;->dispatchActivityCreated()V

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentController;->noteStateNotSaved()V

    .line 554
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentController;->execPendingActions()Z

    .line 556
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentController;->doLoaderStart()V

    .line 560
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentController;->dispatchStart()V

    .line 561
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentController;->reportLoaderStart()V

    .line 541
    return-void
.end method

.method public onStateNotSaved()V
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentController;->noteStateNotSaved()V

    .line 422
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 569
    invoke-super {p0}, Lcom/miui/systemui/support/v4/app/BaseFragmentActivityApi16;->onStop()V

    .line 571
    iput-boolean v1, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mStopped:Z

    .line 572
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 574
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentController;->dispatchStop()V

    .line 568
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 704
    iget-boolean v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mStartedActivityFromFragment:Z

    if-nez v0, :cond_0

    .line 705
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 706
    invoke-static {p2}, Lcom/miui/systemui/support/v4/app/FragmentActivity;->checkForValidRequestCode(I)V

    .line 709
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/miui/systemui/support/v4/app/BaseFragmentActivityApi16;->startActivityForResult(Landroid/content/Intent;I)V

    .line 701
    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    .prologue
    invoke-super {p0, p1, p2, p3}, Lcom/miui/systemui/support/v4/app/BaseFragmentActivityApi16;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .locals 0
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "requestCode"    # I
    .param p3, "fillInIntent"    # Landroid/content/Intent;
    .param p4, "flagsMask"    # I
    .param p5, "flagsValues"    # I
    .param p6, "extraFlags"    # I

    .prologue
    invoke-super/range {p0 .. p6}, Lcom/miui/systemui/support/v4/app/BaseFragmentActivityApi16;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    return-void
.end method

.method public bridge synthetic startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "requestCode"    # I
    .param p3, "fillInIntent"    # Landroid/content/Intent;
    .param p4, "flagsMask"    # I
    .param p5, "flagsValues"    # I
    .param p6, "extraFlags"    # I
    .param p7, "options"    # Landroid/os/Bundle;

    .prologue
    invoke-super/range {p0 .. p7}, Lcom/miui/systemui/support/v4/app/BaseFragmentActivityApi16;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 611
    invoke-virtual {p0}, Lcom/miui/systemui/support/v4/app/FragmentActivity;->invalidateOptionsMenu()V

    .line 610
    return-void
.end method
