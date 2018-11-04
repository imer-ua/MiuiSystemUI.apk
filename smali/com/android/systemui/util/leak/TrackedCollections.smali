.class public Lcom/android/systemui/util/leak/TrackedCollections;
.super Ljava/lang/Object;
.source "TrackedCollections.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;
    }
.end annotation


# instance fields
.field private final mCollections:Lcom/android/systemui/util/leak/WeakIdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/util/leak/WeakIdentityHashMap",
            "<",
            "Ljava/util/Collection",
            "<*>;",
            "Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/android/systemui/util/leak/WeakIdentityHashMap;

    invoke-direct {v0}, Lcom/android/systemui/util/leak/WeakIdentityHashMap;-><init>()V

    .line 35
    iput-object v0, p0, Lcom/android/systemui/util/leak/TrackedCollections;->mCollections:Lcom/android/systemui/util/leak/WeakIdentityHashMap;

    .line 31
    return-void
.end method


# virtual methods
.method public declared-synchronized dump(Ljava/io/PrintWriter;Lcom/android/systemui/util/function/Predicate;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Lcom/android/systemui/util/function/Predicate",
            "<",
            "Ljava/util/Collection",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .local p2, "filter":Lcom/android/systemui/util/function/Predicate;, "Lcom/android/systemui/util/function/Predicate<Ljava/util/Collection<*>;>;"
    monitor-enter p0

    .line 97
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/util/leak/TrackedCollections;->mCollections:Lcom/android/systemui/util/leak/WeakIdentityHashMap;

    invoke-virtual {v3}, Lcom/android/systemui/util/leak/WeakIdentityHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 96
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 98
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/ref/WeakReference<Ljava/util/Collection<*>;>;Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 99
    .local v2, "key":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-eqz p2, :cond_1

    if-eqz v2, :cond_0

    invoke-interface {p2, v2}, Lcom/android/systemui/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 100
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;

    invoke-virtual {v3, p1}, Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;->dump(Ljava/io/PrintWriter;)V

    .line 101
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/ref/WeakReference<Ljava/util/Collection<*>;>;Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;>;"
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    .end local v2    # "key":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v1    # "entry$iterator":Ljava/util/Iterator;
    :cond_2
    monitor-exit p0

    .line 95
    return-void
.end method

.method public declared-synchronized track(Ljava/util/Collection;Ljava/lang/String;)V
    .locals 6
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    monitor-enter p0

    .line 42
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/util/leak/TrackedCollections;->mCollections:Lcom/android/systemui/util/leak/WeakIdentityHashMap;

    invoke-virtual {v1, p1}, Lcom/android/systemui/util/leak/WeakIdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;

    .line 43
    .local v0, "collectionState":Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;
    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;

    .end local v0    # "collectionState":Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;-><init>(Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;)V

    .line 45
    .restart local v0    # "collectionState":Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;
    iput-object p2, v0, Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;->tag:Ljava/lang/String;

    .line 46
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;->startUptime:J

    .line 47
    iget-object v1, p0, Lcom/android/systemui/util/leak/TrackedCollections;->mCollections:Lcom/android/systemui/util/leak/WeakIdentityHashMap;

    invoke-virtual {v1, p1, v0}, Lcom/android/systemui/util/leak/WeakIdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 49
    :cond_0
    iget v1, v0, Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;->halfwayCount:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 50
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;->startUptime:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x1b7740

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 51
    iget v1, v0, Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;->lastCount:I

    iput v1, v0, Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;->halfwayCount:I

    .line 53
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;->lastCount:I

    .line 54
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;->lastUptime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 41
    return-void

    .end local v0    # "collectionState":Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
