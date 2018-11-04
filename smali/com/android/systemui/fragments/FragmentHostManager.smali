.class public Lcom/android/systemui/fragments/FragmentHostManager;
.super Ljava/lang/Object;
.source "FragmentHostManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;,
        Lcom/android/systemui/fragments/FragmentHostManager$HostCallbacks;,
        Lcom/android/systemui/fragments/FragmentHostManager$PluginFragmentManager;
    }
.end annotation


# instance fields
.field private final mConfigChanges:Lcom/android/systemui/util/InterestingConfigChanges;

.field private final mContext:Landroid/content/Context;

.field private mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

.field private final mHandler:Landroid/os/Handler;

.field private mLifecycleCallbacks:Lcom/miui/systemui/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

.field private final mListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mManager:Lcom/android/systemui/fragments/FragmentService;

.field private final mPlugins:Lcom/android/systemui/fragments/FragmentHostManager$PluginFragmentManager;

.field private final mRootView:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/fragments/FragmentHostManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/fragments/FragmentHostManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/fragments/FragmentHostManager;)Lcom/android/systemui/fragments/FragmentHostManager$PluginFragmentManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mPlugins:Lcom/android/systemui/fragments/FragmentHostManager$PluginFragmentManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/fragments/FragmentHostManager;)Landroid/os/Parcelable;
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/fragments/FragmentHostManager;->destroyFragmentHost()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/fragments/FragmentHostManager;I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/fragments/FragmentHostManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/systemui/fragments/FragmentHostManager;Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "savedState"    # Landroid/os/Parcelable;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/fragments/FragmentHostManager;->createFragmentHost(Landroid/os/Parcelable;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/fragments/FragmentHostManager;Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/fragments/FragmentHostManager;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/fragments/FragmentHostManager;Lcom/miui/systemui/support/v4/app/Fragment;)V
    .locals 0
    .param p1, "fragment"    # Lcom/miui/systemui/support/v4/app/Fragment;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/fragments/FragmentHostManager;->onFragmentViewCreated(Lcom/miui/systemui/support/v4/app/Fragment;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/fragments/FragmentHostManager;Lcom/miui/systemui/support/v4/app/Fragment;)V
    .locals 0
    .param p1, "fragment"    # Lcom/miui/systemui/support/v4/app/Fragment;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/fragments/FragmentHostManager;->onFragmentViewDestroyed(Lcom/miui/systemui/support/v4/app/Fragment;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/fragments/FragmentService;Landroid/view/View;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Lcom/android/systemui/fragments/FragmentService;
    .param p3, "rootView"    # Landroid/view/View;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mHandler:Landroid/os/Handler;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mListeners:Ljava/util/HashMap;

    .line 52
    new-instance v0, Lcom/android/systemui/util/InterestingConfigChanges;

    .line 53
    const v1, -0x3ffffefc    # -2.000062f

    .line 52
    invoke-direct {v0, v1}, Lcom/android/systemui/util/InterestingConfigChanges;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mConfigChanges:Lcom/android/systemui/util/InterestingConfigChanges;

    .line 56
    new-instance v0, Lcom/android/systemui/fragments/FragmentHostManager$PluginFragmentManager;

    invoke-direct {v0, p0}, Lcom/android/systemui/fragments/FragmentHostManager$PluginFragmentManager;-><init>(Lcom/android/systemui/fragments/FragmentHostManager;)V

    iput-object v0, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mPlugins:Lcom/android/systemui/fragments/FragmentHostManager$PluginFragmentManager;

    .line 62
    iput-object p1, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mContext:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mManager:Lcom/android/systemui/fragments/FragmentService;

    .line 64
    iput-object p3, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mRootView:Landroid/view/View;

    .line 65
    iget-object v0, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mConfigChanges:Lcom/android/systemui/util/InterestingConfigChanges;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/fragments/FragmentHostManager;->createFragmentHost(Landroid/os/Parcelable;)V

    .line 61
    return-void
.end method

.method private createFragmentHost(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "savedState"    # Landroid/os/Parcelable;

    .prologue
    const/4 v0, 0x0

    .line 70
    new-instance v1, Lcom/android/systemui/fragments/FragmentHostManager$HostCallbacks;

    invoke-direct {v1, p0}, Lcom/android/systemui/fragments/FragmentHostManager$HostCallbacks;-><init>(Lcom/android/systemui/fragments/FragmentHostManager;)V

    invoke-static {v1}, Lcom/miui/systemui/support/v4/app/FragmentController;->createController(Lcom/miui/systemui/support/v4/app/FragmentHostCallback;)Lcom/miui/systemui/support/v4/app/FragmentController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    .line 71
    iget-object v1, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v1, v0}, Lcom/miui/systemui/support/v4/app/FragmentController;->attachHost(Lcom/miui/systemui/support/v4/app/Fragment;)V

    .line 72
    new-instance v1, Lcom/android/systemui/fragments/FragmentHostManager$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/fragments/FragmentHostManager$1;-><init>(Lcom/android/systemui/fragments/FragmentHostManager;)V

    iput-object v1, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mLifecycleCallbacks:Lcom/miui/systemui/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    .line 89
    invoke-virtual {p0}, Lcom/android/systemui/fragments/FragmentHostManager;->getFragmentManager()Lcom/miui/systemui/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mLifecycleCallbacks:Lcom/miui/systemui/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    .line 90
    const/4 v3, 0x1

    .line 89
    invoke-virtual {v1, v2, v3}, Lcom/miui/systemui/support/v4/app/FragmentManager;->registerFragmentLifecycleCallbacks(Lcom/miui/systemui/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Z)V

    .line 91
    if-eqz p1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    check-cast v0, Lcom/miui/systemui/support/v4/app/FragmentManagerNonConfig;

    invoke-virtual {v1, p1, v0}, Lcom/miui/systemui/support/v4/app/FragmentController;->restoreAllState(Landroid/os/Parcelable;Lcom/miui/systemui/support/v4/app/FragmentManagerNonConfig;)V

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentController;->dispatchCreate()V

    .line 96
    iget-object v0, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentController;->dispatchStart()V

    .line 97
    iget-object v0, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentController;->dispatchResume()V

    .line 69
    return-void
.end method

.method private destroyFragmentHost()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 101
    iget-object v1, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v1}, Lcom/miui/systemui/support/v4/app/FragmentController;->dispatchPause()V

    .line 102
    iget-object v1, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v1}, Lcom/miui/systemui/support/v4/app/FragmentController;->saveAllState()Landroid/os/Parcelable;

    move-result-object v0

    .line 103
    .local v0, "p":Landroid/os/Parcelable;
    iget-object v1, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v1}, Lcom/miui/systemui/support/v4/app/FragmentController;->dispatchStop()V

    .line 104
    iget-object v1, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v1}, Lcom/miui/systemui/support/v4/app/FragmentController;->dispatchDestroy()V

    .line 105
    invoke-virtual {p0}, Lcom/android/systemui/fragments/FragmentHostManager;->getFragmentManager()Lcom/miui/systemui/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mLifecycleCallbacks:Lcom/miui/systemui/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v1, v2}, Lcom/miui/systemui/support/v4/app/FragmentManager;->unregisterFragmentLifecycleCallbacks(Lcom/miui/systemui/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;)V

    .line 106
    return-object v0
.end method

.method private dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 168
    return-void
.end method

.method private findViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mRootView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 201
    :try_start_0
    const-class v1, Lcom/android/systemui/fragments/FragmentService;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/fragments/FragmentService;

    invoke-virtual {v1, p0}, Lcom/android/systemui/fragments/FragmentService;->getFragmentHostManager(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 202
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/ClassCastException;
    throw v0
.end method

.method private onFragmentViewCreated(Lcom/miui/systemui/support/v4/app/Fragment;)V
    .locals 5
    .param p1, "fragment"    # Lcom/miui/systemui/support/v4/app/Fragment;

    .prologue
    .line 132
    invoke-virtual {p1}, Lcom/miui/systemui/support/v4/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v3

    .line 134
    .local v3, "tag":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 135
    .local v2, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;>;"
    if-eqz v2, :cond_0

    .line 136
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;

    .line 137
    .local v0, "listener":Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;
    invoke-interface {v0, v3, p1}, Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;->onFragmentViewCreated(Ljava/lang/String;Lcom/miui/systemui/support/v4/app/Fragment;)V

    goto :goto_0

    .line 131
    .end local v0    # "listener":Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;
    .end local v1    # "listener$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private onFragmentViewDestroyed(Lcom/miui/systemui/support/v4/app/Fragment;)V
    .locals 5
    .param p1, "fragment"    # Lcom/miui/systemui/support/v4/app/Fragment;

    .prologue
    .line 143
    invoke-virtual {p1}, Lcom/miui/systemui/support/v4/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v3

    .line 145
    .local v3, "tag":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 146
    .local v2, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;>;"
    if-eqz v2, :cond_0

    .line 147
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;

    .line 148
    .local v0, "listener":Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;
    invoke-interface {v0, v3, p1}, Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;->onFragmentViewDestroyed(Ljava/lang/String;Lcom/miui/systemui/support/v4/app/Fragment;)V

    goto :goto_0

    .line 142
    .end local v0    # "listener":Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;
    .end local v1    # "listener$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method


# virtual methods
.method public addTagListener(Ljava/lang/String;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)Lcom/android/systemui/fragments/FragmentHostManager;
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;

    .prologue
    .line 110
    iget-object v2, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 111
    .local v1, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;>;"
    if-nez v1, :cond_0

    .line 112
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .restart local v1    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;>;"
    iget-object v2, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    :cond_0
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    invoke-virtual {p0}, Lcom/android/systemui/fragments/FragmentHostManager;->getFragmentManager()Lcom/miui/systemui/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/miui/systemui/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Lcom/miui/systemui/support/v4/app/Fragment;

    move-result-object v0

    .line 117
    .local v0, "current":Lcom/miui/systemui/support/v4/app/Fragment;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 118
    invoke-interface {p2, p1, v0}, Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;->onFragmentViewCreated(Ljava/lang/String;Lcom/miui/systemui/support/v4/app/Fragment;)V

    .line 120
    :cond_1
    return-object p0
.end method

.method public getFragmentManager()Lcom/miui/systemui/support/v4/app/FragmentManager;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentController;->getSupportFragmentManager()Lcom/miui/systemui/support/v4/app/FragmentManager;

    move-result-object v0

    return-object v0
.end method

.method getPluginManager()Lcom/android/systemui/fragments/FragmentHostManager$PluginFragmentManager;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mPlugins:Lcom/android/systemui/fragments/FragmentHostManager$PluginFragmentManager;

    return-object v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 158
    iget-object v1, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mConfigChanges:Lcom/android/systemui/util/InterestingConfigChanges;

    iget-object v2, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/util/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    invoke-direct {p0}, Lcom/android/systemui/fragments/FragmentHostManager;->destroyFragmentHost()Landroid/os/Parcelable;

    move-result-object v0

    .line 162
    .local v0, "p":Landroid/os/Parcelable;
    invoke-direct {p0, v0}, Lcom/android/systemui/fragments/FragmentHostManager;->createFragmentHost(Landroid/os/Parcelable;)V

    .line 157
    .end local v0    # "p":Landroid/os/Parcelable;
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v1, p1}, Lcom/miui/systemui/support/v4/app/FragmentController;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0
.end method

.method public removeTagListener(Ljava/lang/String;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;

    .prologue
    .line 125
    iget-object v1, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 126
    .local v0, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :cond_0
    return-void
.end method
