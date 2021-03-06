.class public abstract Lcom/miui/systemui/support/v4/app/FragmentHostCallback;
.super Lcom/miui/systemui/support/v4/app/FragmentContainer;
.source "FragmentHostCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/miui/systemui/support/v4/app/FragmentContainer;"
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mAllLoaderManagers:Lcom/miui/systemui/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/systemui/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/systemui/support/v4/app/LoaderManager;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedForLoaderManager:Z

.field final mContext:Landroid/content/Context;

.field final mFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

.field private final mHandler:Landroid/os/Handler;

.field private mLoaderManager:Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;

.field private mLoadersStarted:Z

.field private mRetainLoaders:Z

.field final mWindowAnimations:I


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "windowAnimations"    # I

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/miui/systemui/support/v4/app/FragmentContainer;-><init>()V

    .line 46
    new-instance v0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    invoke-direct {v0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;-><init>()V

    iput-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->mFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    .line 68
    iput-object p1, p0, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->mActivity:Landroid/app/Activity;

    .line 69
    iput-object p2, p0, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    .line 70
    iput-object p3, p0, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->mHandler:Landroid/os/Handler;

    .line 71
    iput p4, p0, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->mWindowAnimations:I

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "windowAnimations"    # I

    .prologue
    .line 58
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    :goto_0
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    .line 57
    return-void

    .line 58
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/miui/systemui/support/v4/app/FragmentActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/miui/systemui/support/v4/app/FragmentActivity;

    .prologue
    .line 63
    iget-object v0, p1, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p1, v0, v1}, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    .line 62
    return-void
.end method


# virtual methods
.method doLoaderDestroy()V
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->mLoaderManager:Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;

    if-nez v0, :cond_0

    .line 283
    return-void

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->mLoaderManager:Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;->doDestroy()V

    .line 281
    return-void
.end method

.method doLoaderStart()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 237
    iget-boolean v0, p0, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->mLoadersStarted:Z

    if-eqz v0, :cond_0

    .line 238
    return-void

    .line 240
    :cond_0
    iput-boolean v3, p0, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->mLoadersStarted:Z

    .line 242
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->mLoaderManager:Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;

    if-eqz v0, :cond_2

    .line 243
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->mLoaderManager:Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;->doStart()V

    .line 251
    :cond_1
    :goto_0
    iput-boolean v3, p0, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->mCheckedForLoaderManager:Z

    .line 236
    return-void

    .line 244
    :cond_2
    iget-boolean v0, p0, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->mCheckedForLoaderManager:Z

    if-nez v0, :cond_1

    .line 245
    const-string/jumbo v0, "(root)"

    iget-boolean v1, p0, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->mLoadersStarted:Z

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->mLoaderManager:Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;

    .line 247
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->mLoaderManager:Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->mLoaderManager:Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;

    iget-boolean v0, v0, Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;->mStarted:Z

    if-nez v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->mLoaderManager:Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;->doStart()V

    goto :goto_0
.end method

.method doLoaderStop(Z)V
    .locals 1
    .param p1, "retain"    # Z

    .prologue
    .line 256
    iput-boolean p1, p0, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->mRetainLoaders:Z

    .line 258
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->mLoaderManager:Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;

    if-nez v0, :cond_0

    .line 259
    return-void

    .line 262
    :cond_0
    iget-boolean v0, p0, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->mLoadersStarted:Z

    if-nez v0, :cond_1

    .line 263
    return-void

    .line 265
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->mLoadersStarted:Z

    .line 267
    if-eqz p1, :cond_2

    .line 268
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->mLoaderManager:Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;->doRetain()V

    .line 255
    :goto_0
    return-void

    .line 270
    :cond_2
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->mLoaderManager:Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;->doStop()V

    goto :goto_0
.end method

.method dumpLoaders(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 361
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLoadersStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 362
    iget-boolean v0, p0, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->mLoadersStarted:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 363
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->mLoaderManager:Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;

    if-eqz v0, :cond_0

    .line 364
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Loader Manager "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->mLoaderManager:Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 366
    const-string/jumbo v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->mLoaderManager:Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 360
    :cond_0
    return-void
.end method

.method getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getFragmentManagerImpl()Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->mFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    return-object v0
.end method

.method getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method getLoaderManager(Ljava/lang/String;ZZ)Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;
    .locals 2
    .param p1, "who"    # Ljava/lang/String;
    .param p2, "started"    # Z
    .param p3, "create"    # Z

    .prologue
    .line 304
    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Lcom/miui/systemui/support/v4/util/SimpleArrayMap;

    if-nez v1, :cond_0

    .line 305
    new-instance v1, Lcom/miui/systemui/support/v4/util/SimpleArrayMap;

    invoke-direct {v1}, Lcom/miui/systemui/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Lcom/miui/systemui/support/v4/util/SimpleArrayMap;

    .line 307
    :cond_0
    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Lcom/miui/systemui/support/v4/util/SimpleArrayMap;

    invoke-virtual {v1, p1}, Lcom/miui/systemui/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;

    .line 308
    .local v0, "lm":Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;
    if-nez v0, :cond_2

    if-eqz p3, :cond_2

    .line 309
    new-instance v0, Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;

    .end local v0    # "lm":Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;
    invoke-direct {v0, p1, p0, p2}, Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;-><init>(Ljava/lang/String;Lcom/miui/systemui/support/v4/app/FragmentHostCallback;Z)V

    .line 310
    .restart local v0    # "lm":Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;
    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Lcom/miui/systemui/support/v4/util/SimpleArrayMap;

    invoke-virtual {v1, p1, v0}, Lcom/miui/systemui/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    :cond_1
    :goto_0
    return-object v0

    .line 311
    :cond_2
    if-eqz p2, :cond_1

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;->mStarted:Z

    if-nez v1, :cond_1

    .line 312
    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;->doStart()V

    goto :goto_0
.end method

.method getRetainLoaders()Z
    .locals 1

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->mRetainLoaders:Z

    return v0
.end method

.method inactivateFragment(Ljava/lang/String;)V
    .locals 2
    .param p1, "who"    # Ljava/lang/String;

    .prologue
    .line 220
    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Lcom/miui/systemui/support/v4/util/SimpleArrayMap;

    if-eqz v1, :cond_0

    .line 221
    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Lcom/miui/systemui/support/v4/util/SimpleArrayMap;

    invoke-virtual {v1, p1}, Lcom/miui/systemui/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;

    .line 222
    .local v0, "lm":Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;->mRetaining:Z

    if-eqz v1, :cond_1

    .line 218
    .end local v0    # "lm":Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;
    :cond_0
    :goto_0
    return-void

    .line 223
    .restart local v0    # "lm":Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;
    :cond_1
    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;->doDestroy()V

    .line 224
    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Lcom/miui/systemui/support/v4/util/SimpleArrayMap;

    invoke-virtual {v1, p1}, Lcom/miui/systemui/support/v4/util/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method onAttachFragment(Lcom/miui/systemui/support/v4/app/Fragment;)V
    .locals 0
    .param p1, "fragment"    # Lcom/miui/systemui/support/v4/app/Fragment;

    .prologue
    .line 229
    return-void
.end method

.method public onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 83
    return-void
.end method

.method public onFindViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 185
    const/4 v0, 0x0

    return-object v0
.end method

.method public onGetLayoutInflater()Landroid/view/LayoutInflater;
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public onGetWindowAnimations()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->mWindowAnimations:I

    return v0
.end method

.method public onHasView()Z
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x1

    return v0
.end method

.method public onHasWindowAnimations()Z
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x1

    return v0
.end method

.method public onShouldSaveFragmentState(Lcom/miui/systemui/support/v4/app/Fragment;)Z
    .locals 1
    .param p1, "fragment"    # Lcom/miui/systemui/support/v4/app/Fragment;

    .prologue
    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method public onSupportInvalidateOptionsMenu()V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method reportLoaderStart()V
    .locals 5

    .prologue
    .line 289
    iget-object v4, p0, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Lcom/miui/systemui/support/v4/util/SimpleArrayMap;

    if-eqz v4, :cond_1

    .line 290
    iget-object v4, p0, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Lcom/miui/systemui/support/v4/util/SimpleArrayMap;

    invoke-virtual {v4}, Lcom/miui/systemui/support/v4/util/SimpleArrayMap;->size()I

    move-result v0

    .line 291
    .local v0, "N":I
    new-array v3, v0, [Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;

    .line 292
    .local v3, "loaders":[Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 293
    iget-object v4, p0, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Lcom/miui/systemui/support/v4/util/SimpleArrayMap;

    invoke-virtual {v4, v1}, Lcom/miui/systemui/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;

    aput-object v4, v3, v1

    .line 292
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 295
    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 296
    aget-object v2, v3, v1

    .line 297
    .local v2, "lm":Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;
    invoke-virtual {v2}, Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;->finishRetain()V

    .line 298
    invoke-virtual {v2}, Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;->doReportStart()V

    .line 295
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 288
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "lm":Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;
    .end local v3    # "loaders":[Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;
    :cond_1
    return-void
.end method

.method restoreLoaderNonConfig(Lcom/miui/systemui/support/v4/util/SimpleArrayMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/systemui/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/systemui/support/v4/app/LoaderManager;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 352
    .local p1, "loaderManagers":Lcom/miui/systemui/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<Ljava/lang/String;Landroid/support/v4/app/LoaderManager;>;"
    if-eqz p1, :cond_0

    .line 353
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p1}, Lcom/miui/systemui/support/v4/util/SimpleArrayMap;->size()I

    move-result v0

    .local v0, "N":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 354
    invoke-virtual {p1, v1}, Lcom/miui/systemui/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v2, p0}, Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;->updateHostController(Lcom/miui/systemui/support/v4/app/FragmentHostCallback;)V

    .line 353
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 357
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    iput-object p1, p0, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Lcom/miui/systemui/support/v4/util/SimpleArrayMap;

    .line 351
    return-void
.end method

.method retainLoaderNonConfig()Lcom/miui/systemui/support/v4/util/SimpleArrayMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/miui/systemui/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/systemui/support/v4/app/LoaderManager;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 318
    const/4 v5, 0x0

    .line 319
    .local v5, "retainLoaders":Z
    iget-object v6, p0, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Lcom/miui/systemui/support/v4/util/SimpleArrayMap;

    if-eqz v6, :cond_4

    .line 322
    iget-object v6, p0, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Lcom/miui/systemui/support/v4/util/SimpleArrayMap;

    invoke-virtual {v6}, Lcom/miui/systemui/support/v4/util/SimpleArrayMap;->size()I

    move-result v0

    .line 323
    .local v0, "N":I
    new-array v4, v0, [Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;

    .line 324
    .local v4, "loaders":[Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 325
    iget-object v6, p0, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Lcom/miui/systemui/support/v4/util/SimpleArrayMap;

    invoke-virtual {v6, v2}, Lcom/miui/systemui/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;

    aput-object v6, v4, v2

    .line 324
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 327
    :cond_0
    invoke-virtual {p0}, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->getRetainLoaders()Z

    move-result v1

    .line 328
    .local v1, "doRetainLoaders":Z
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_4

    .line 329
    aget-object v3, v4, v2

    .line 330
    .local v3, "lm":Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;
    iget-boolean v6, v3, Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;->mRetaining:Z

    if-nez v6, :cond_2

    if-eqz v1, :cond_2

    .line 331
    iget-boolean v6, v3, Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;->mStarted:Z

    if-nez v6, :cond_1

    .line 332
    invoke-virtual {v3}, Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;->doStart()V

    .line 334
    :cond_1
    invoke-virtual {v3}, Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;->doRetain()V

    .line 336
    :cond_2
    iget-boolean v6, v3, Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;->mRetaining:Z

    if-eqz v6, :cond_3

    .line 337
    const/4 v5, 0x1

    .line 328
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 339
    :cond_3
    invoke-virtual {v3}, Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;->doDestroy()V

    .line 340
    iget-object v6, p0, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Lcom/miui/systemui/support/v4/util/SimpleArrayMap;

    iget-object v7, v3, Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;->mWho:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/miui/systemui/support/v4/util/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 345
    .end local v0    # "N":I
    .end local v1    # "doRetainLoaders":Z
    .end local v2    # "i":I
    .end local v3    # "lm":Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;
    .end local v4    # "loaders":[Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;
    :cond_4
    if-eqz v5, :cond_5

    .line 346
    iget-object v6, p0, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Lcom/miui/systemui/support/v4/util/SimpleArrayMap;

    return-object v6

    .line 348
    :cond_5
    return-object v8
.end method
