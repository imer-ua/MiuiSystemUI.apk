.class public Lcom/android/systemui/recents/model/TaskKeyLruCache;
.super Ljava/lang/Object;
.source "TaskKeyLruCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/model/TaskKeyLruCache$EvictionCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/Integer;",
            "TV;>;"
        }
    .end annotation
.end field

.field private final mEvictionCallback:Lcom/android/systemui/recents/model/TaskKeyLruCache$EvictionCallback;

.field private final mKeys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/recents/model/Task$TaskKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/model/TaskKeyLruCache;)Lcom/android/systemui/recents/model/TaskKeyLruCache$EvictionCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskKeyLruCache;->mEvictionCallback:Lcom/android/systemui/recents/model/TaskKeyLruCache$EvictionCallback;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/recents/model/TaskKeyLruCache;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskKeyLruCache;->mKeys:Ljava/util/Map;

    return-object v0
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "cacheSize"    # I

    .prologue
    .line 50
    .local p0, "this":Lcom/android/systemui/recents/model/TaskKeyLruCache;, "Lcom/android/systemui/recents/model/TaskKeyLruCache<TV;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/model/TaskKeyLruCache;-><init>(ILcom/android/systemui/recents/model/TaskKeyLruCache$EvictionCallback;)V

    .line 49
    return-void
.end method

.method public constructor <init>(ILcom/android/systemui/recents/model/TaskKeyLruCache$EvictionCallback;)V
    .locals 1
    .param p1, "cacheSize"    # I
    .param p2, "evictionCallback"    # Lcom/android/systemui/recents/model/TaskKeyLruCache$EvictionCallback;

    .prologue
    .line 53
    .local p0, "this":Lcom/android/systemui/recents/model/TaskKeyLruCache;, "Lcom/android/systemui/recents/model/TaskKeyLruCache<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/TaskKeyLruCache;->mKeys:Ljava/util/Map;

    .line 54
    iput-object p2, p0, Lcom/android/systemui/recents/model/TaskKeyLruCache;->mEvictionCallback:Lcom/android/systemui/recents/model/TaskKeyLruCache$EvictionCallback;

    .line 55
    new-instance v0, Lcom/android/systemui/recents/model/TaskKeyLruCache$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/recents/model/TaskKeyLruCache$1;-><init>(Lcom/android/systemui/recents/model/TaskKeyLruCache;I)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/TaskKeyLruCache;->mCache:Landroid/util/LruCache;

    .line 53
    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .prologue
    .line 124
    .local p0, "this":Lcom/android/systemui/recents/model/TaskKeyLruCache;, "Lcom/android/systemui/recents/model/TaskKeyLruCache<TV;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "TaskKeyLruCache"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 127
    const-string/jumbo v2, " numEntries="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/recents/model/TaskKeyLruCache;->mKeys:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 128
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 129
    iget-object v2, p0, Lcom/android/systemui/recents/model/TaskKeyLruCache;->mKeys:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 130
    .local v1, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/recents/model/TaskKeyLruCache;->mKeys:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_0

    .line 123
    :cond_0
    return-void
.end method

.method final evictAll()V
    .locals 1

    .prologue
    .line 114
    .local p0, "this":Lcom/android/systemui/recents/model/TaskKeyLruCache;, "Lcom/android/systemui/recents/model/TaskKeyLruCache<TV;>;"
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskKeyLruCache;->mCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 115
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskKeyLruCache;->mKeys:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 113
    return-void
.end method

.method final get(Lcom/android/systemui/recents/model/Task$TaskKey;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Lcom/android/systemui/recents/model/Task$TaskKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/recents/model/Task$TaskKey;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lcom/android/systemui/recents/model/TaskKeyLruCache;, "Lcom/android/systemui/recents/model/TaskKeyLruCache<TV;>;"
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskKeyLruCache;->mCache:Landroid/util/LruCache;

    iget v1, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final getAndInvalidateIfModified(Lcom/android/systemui/recents/model/Task$TaskKey;)Ljava/lang/Object;
    .locals 7
    .param p1, "key"    # Lcom/android/systemui/recents/model/Task$TaskKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/recents/model/Task$TaskKey;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/systemui/recents/model/TaskKeyLruCache;, "Lcom/android/systemui/recents/model/TaskKeyLruCache<TV;>;"
    const/4 v6, 0x0

    .line 80
    iget-object v1, p0, Lcom/android/systemui/recents/model/TaskKeyLruCache;->mKeys:Ljava/util/Map;

    iget v2, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/model/Task$TaskKey;

    .line 81
    .local v0, "lastKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    if-eqz v0, :cond_1

    .line 82
    iget v1, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->stackId:I

    iget v2, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->stackId:I

    if-ne v1, v2, :cond_0

    .line 83
    iget-wide v2, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->lastActiveTime:J

    iget-wide v4, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->lastActiveTime:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 86
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->remove(Lcom/android/systemui/recents/model/Task$TaskKey;)V

    .line 87
    return-object v6

    .line 92
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recents/model/TaskKeyLruCache;->mCache:Landroid/util/LruCache;

    iget v2, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method final put(Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/Object;)V
    .locals 3
    .param p1, "key"    # Lcom/android/systemui/recents/model/Task$TaskKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/recents/model/Task$TaskKey;",
            "TV;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "this":Lcom/android/systemui/recents/model/TaskKeyLruCache;, "Lcom/android/systemui/recents/model/TaskKeyLruCache<TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 98
    :cond_0
    const-string/jumbo v0, "TaskKeyLruCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected null key or value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return-void

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskKeyLruCache;->mKeys:Ljava/util/Map;

    iget v1, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskKeyLruCache;->mCache:Landroid/util/LruCache;

    iget v1, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    return-void
.end method

.method final remove(Lcom/android/systemui/recents/model/Task$TaskKey;)V
    .locals 2
    .param p1, "key"    # Lcom/android/systemui/recents/model/Task$TaskKey;

    .prologue
    .line 108
    .local p0, "this":Lcom/android/systemui/recents/model/TaskKeyLruCache;, "Lcom/android/systemui/recents/model/TaskKeyLruCache<TV;>;"
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskKeyLruCache;->mCache:Landroid/util/LruCache;

    iget v1, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskKeyLruCache;->mKeys:Ljava/util/Map;

    iget v1, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    return-void
.end method

.method final trimToSize(I)V
    .locals 1
    .param p1, "cacheSize"    # I

    .prologue
    .line 120
    .local p0, "this":Lcom/android/systemui/recents/model/TaskKeyLruCache;, "Lcom/android/systemui/recents/model/TaskKeyLruCache<TV;>;"
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskKeyLruCache;->mCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->trimToSize(I)V

    .line 119
    return-void
.end method
