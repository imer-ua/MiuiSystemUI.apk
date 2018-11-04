.class public Lcom/android/systemui/statusbar/policy/SilentModeObserverControllerImpl;
.super Ljava/lang/Object;
.source "SilentModeObserverControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/SilentModeObserverController;


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/systemui/statusbar/policy/SilentModeObserverController$SilentModeListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mQuietModeObserver:Lmiui/provider/ExtraTelephony$QuietModeEnableListener;

.field private mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/policy/SilentModeObserverControllerImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SilentModeObserverControllerImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/policy/SilentModeObserverControllerImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/SilentModeObserverControllerImpl;->mEnabled:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/policy/SilentModeObserverControllerImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/SilentModeObserverControllerImpl;->mEnabled:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/policy/SilentModeObserverControllerImpl;Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/SilentModeObserverControllerImpl;->dispatchListeners(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    const-string/jumbo v0, "SilentModeController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/SilentModeObserverControllerImpl;->DEBUG:Z

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SilentModeObserverControllerImpl;->mListeners:Ljava/util/ArrayList;

    .line 61
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SilentModeObserverControllerImpl;->mContext:Landroid/content/Context;

    .line 62
    new-instance v0, Lcom/android/systemui/statusbar/policy/SilentModeObserverControllerImpl$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/SilentModeObserverControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/SilentModeObserverControllerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SilentModeObserverControllerImpl;->mQuietModeObserver:Lmiui/provider/ExtraTelephony$QuietModeEnableListener;

    .line 69
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SilentModeObserverControllerImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SilentModeObserverControllerImpl;->mQuietModeObserver:Lmiui/provider/ExtraTelephony$QuietModeEnableListener;

    invoke-static {v0, v1}, Lmiui/provider/ExtraTelephony;->registerQuietModeEnableListener(Landroid/content/Context;Lmiui/provider/ExtraTelephony$QuietModeEnableListener;)V

    .line 70
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SilentModeObserverControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/provider/MiuiSettings$SilenceMode;->isSilenceModeEnable(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/SilentModeObserverControllerImpl;->mEnabled:Z

    .line 72
    new-instance v0, Lcom/android/systemui/statusbar/policy/SilentModeObserverControllerImpl$2;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SilentModeObserverControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/SilentModeObserverControllerImpl$2;-><init>(Lcom/android/systemui/statusbar/policy/SilentModeObserverControllerImpl;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SilentModeObserverControllerImpl;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    .line 79
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SilentModeObserverControllerImpl;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserTracker;->startTracking()V

    .line 60
    return-void
.end method

.method private cleanUpListenersLocked(Lcom/android/systemui/statusbar/policy/SilentModeObserverController$SilentModeListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/systemui/statusbar/policy/SilentModeObserverController$SilentModeListener;

    .prologue
    .line 115
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SilentModeObserverControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 116
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SilentModeObserverControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/SilentModeObserverController$SilentModeListener;

    .line 117
    .local v0, "found":Lcom/android/systemui/statusbar/policy/SilentModeObserverController$SilentModeListener;
    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_1

    .line 118
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SilentModeObserverControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 115
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 114
    .end local v0    # "found":Lcom/android/systemui/statusbar/policy/SilentModeObserverController$SilentModeListener;
    :cond_2
    return-void
.end method

.method private dispatchListeners(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    .line 97
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/SilentModeObserverControllerImpl;->mListeners:Ljava/util/ArrayList;

    monitor-enter v5

    .line 98
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/SilentModeObserverControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 99
    .local v0, "N":I
    const/4 v1, 0x0

    .line 100
    .local v1, "cleanup":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 101
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/SilentModeObserverControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/SilentModeObserverController$SilentModeListener;

    .line 102
    .local v3, "l":Lcom/android/systemui/statusbar/policy/SilentModeObserverController$SilentModeListener;
    if-eqz v3, :cond_0

    .line 103
    invoke-interface {v3, p1}, Lcom/android/systemui/statusbar/policy/SilentModeObserverController$SilentModeListener;->onSilentModeChanged(Z)V

    .line 100
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 105
    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    .line 108
    .end local v3    # "l":Lcom/android/systemui/statusbar/policy/SilentModeObserverController$SilentModeListener;
    :cond_1
    if-eqz v1, :cond_2

    .line 109
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/policy/SilentModeObserverControllerImpl;->cleanUpListenersLocked(Lcom/android/systemui/statusbar/policy/SilentModeObserverController$SilentModeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v5

    .line 96
    return-void

    .line 97
    .end local v0    # "N":I
    .end local v1    # "cleanup":Z
    .end local v2    # "i":I
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/SilentModeObserverController$SilentModeListener;)V
    .locals 3
    .param p1, "l"    # Lcom/android/systemui/statusbar/policy/SilentModeObserverController$SilentModeListener;

    .prologue
    .line 83
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SilentModeObserverControllerImpl;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 84
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/SilentModeObserverControllerImpl;->cleanUpListenersLocked(Lcom/android/systemui/statusbar/policy/SilentModeObserverController$SilentModeListener;)V

    .line 85
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SilentModeObserverControllerImpl;->mListeners:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/SilentModeObserverControllerImpl;->mEnabled:Z

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/SilentModeObserverController$SilentModeListener;->onSilentModeChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 82
    return-void

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0
    .param p1, "l"    # Ljava/lang/Object;

    .prologue
    .line 82
    check-cast p1, Lcom/android/systemui/statusbar/policy/SilentModeObserverController$SilentModeListener;

    .end local p1    # "l":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/SilentModeObserverControllerImpl;->addCallback(Lcom/android/systemui/statusbar/policy/SilentModeObserverController$SilentModeListener;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 124
    const-string/jumbo v0, "SilentModeObserverController state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/SilentModeObserverController$SilentModeListener;)V
    .locals 2
    .param p1, "l"    # Lcom/android/systemui/statusbar/policy/SilentModeObserverController$SilentModeListener;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SilentModeObserverControllerImpl;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 92
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/SilentModeObserverControllerImpl;->cleanUpListenersLocked(Lcom/android/systemui/statusbar/policy/SilentModeObserverController$SilentModeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 90
    return-void

    .line 91
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0
    .param p1, "l"    # Ljava/lang/Object;

    .prologue
    .line 90
    check-cast p1, Lcom/android/systemui/statusbar/policy/SilentModeObserverController$SilentModeListener;

    .end local p1    # "l":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/SilentModeObserverControllerImpl;->removeCallback(Lcom/android/systemui/statusbar/policy/SilentModeObserverController$SilentModeListener;)V

    return-void
.end method
