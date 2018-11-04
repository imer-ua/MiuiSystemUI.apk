.class abstract Lcom/miui/systemui/support/v4/util/MapCollections;
.super Ljava/lang/Object;
.source "MapCollections.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/systemui/support/v4/util/MapCollections$ArrayIterator;,
        Lcom/miui/systemui/support/v4/util/MapCollections$EntrySet;,
        Lcom/miui/systemui/support/v4/util/MapCollections$KeySet;,
        Lcom/miui/systemui/support/v4/util/MapCollections$MapIterator;,
        Lcom/miui/systemui/support/v4/util/MapCollections$ValuesCollection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mEntrySet:Lcom/miui/systemui/support/v4/util/MapCollections$EntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/systemui/support/v4/util/MapCollections",
            "<TK;TV;>.EntrySet;"
        }
    .end annotation
.end field

.field mKeySet:Lcom/miui/systemui/support/v4/util/MapCollections$KeySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/systemui/support/v4/util/MapCollections",
            "<TK;TV;>.KeySet;"
        }
    .end annotation
.end field

.field mValues:Lcom/miui/systemui/support/v4/util/MapCollections$ValuesCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/systemui/support/v4/util/MapCollections",
            "<TK;TV;>.ValuesCollection;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static containsAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 457
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 458
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 459
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 460
    const/4 v1, 0x0

    return v1

    .line 463
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public static equalsSetHelper(Ljava/util/Set;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TT;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "set":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    const/4 v3, 0x0

    .line 513
    if-ne p0, p1, :cond_0

    .line 514
    const/4 v3, 0x1

    return v3

    .line 516
    :cond_0
    instance-of v4, p1, Ljava/util/Set;

    if-eqz v4, :cond_2

    move-object v2, p1

    .line 517
    check-cast v2, Ljava/util/Set;

    .line 520
    .local v2, "s":Ljava/util/Set;, "Ljava/util/Set<*>;"
    :try_start_0
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v4

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v5

    if-ne v4, v5, :cond_1

    invoke-interface {p0, v2}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :cond_1
    return v3

    .line 523
    :catch_0
    move-exception v0

    .line 524
    .local v0, "ignored":Ljava/lang/ClassCastException;
    return v3

    .line 521
    .end local v0    # "ignored":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v1

    .line 522
    .local v1, "ignored":Ljava/lang/NullPointerException;
    return v3

    .line 527
    .end local v1    # "ignored":Ljava/lang/NullPointerException;
    .end local v2    # "s":Ljava/util/Set;, "Ljava/util/Set<*>;"
    :cond_2
    return v3
.end method

.method public static removeAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 467
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    .line 468
    .local v1, "oldSize":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 469
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 470
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 472
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static retainAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 476
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    .line 477
    .local v1, "oldSize":I
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 478
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TK;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 479
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 480
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 483
    :cond_1
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected abstract colClear()V
.end method

.method protected abstract colGetEntry(II)Ljava/lang/Object;
.end method

.method protected abstract colGetMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method protected abstract colGetSize()I
.end method

.method protected abstract colIndexOfKey(Ljava/lang/Object;)I
.end method

.method protected abstract colIndexOfValue(Ljava/lang/Object;)I
.end method

.method protected abstract colPut(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation
.end method

.method protected abstract colRemoveAt(I)V
.end method

.method protected abstract colSetValue(ILjava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation
.end method

.method public getEntrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 531
    iget-object v0, p0, Lcom/miui/systemui/support/v4/util/MapCollections;->mEntrySet:Lcom/miui/systemui/support/v4/util/MapCollections$EntrySet;

    if-nez v0, :cond_0

    .line 532
    new-instance v0, Lcom/miui/systemui/support/v4/util/MapCollections$EntrySet;

    invoke-direct {v0, p0}, Lcom/miui/systemui/support/v4/util/MapCollections$EntrySet;-><init>(Lcom/miui/systemui/support/v4/util/MapCollections;)V

    iput-object v0, p0, Lcom/miui/systemui/support/v4/util/MapCollections;->mEntrySet:Lcom/miui/systemui/support/v4/util/MapCollections$EntrySet;

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/miui/systemui/support/v4/util/MapCollections;->mEntrySet:Lcom/miui/systemui/support/v4/util/MapCollections$EntrySet;

    return-object v0
.end method

.method public getKeySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 538
    iget-object v0, p0, Lcom/miui/systemui/support/v4/util/MapCollections;->mKeySet:Lcom/miui/systemui/support/v4/util/MapCollections$KeySet;

    if-nez v0, :cond_0

    .line 539
    new-instance v0, Lcom/miui/systemui/support/v4/util/MapCollections$KeySet;

    invoke-direct {v0, p0}, Lcom/miui/systemui/support/v4/util/MapCollections$KeySet;-><init>(Lcom/miui/systemui/support/v4/util/MapCollections;)V

    iput-object v0, p0, Lcom/miui/systemui/support/v4/util/MapCollections;->mKeySet:Lcom/miui/systemui/support/v4/util/MapCollections$KeySet;

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/miui/systemui/support/v4/util/MapCollections;->mKeySet:Lcom/miui/systemui/support/v4/util/MapCollections$KeySet;

    return-object v0
.end method

.method public getValues()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 545
    iget-object v0, p0, Lcom/miui/systemui/support/v4/util/MapCollections;->mValues:Lcom/miui/systemui/support/v4/util/MapCollections$ValuesCollection;

    if-nez v0, :cond_0

    .line 546
    new-instance v0, Lcom/miui/systemui/support/v4/util/MapCollections$ValuesCollection;

    invoke-direct {v0, p0}, Lcom/miui/systemui/support/v4/util/MapCollections$ValuesCollection;-><init>(Lcom/miui/systemui/support/v4/util/MapCollections;)V

    iput-object v0, p0, Lcom/miui/systemui/support/v4/util/MapCollections;->mValues:Lcom/miui/systemui/support/v4/util/MapCollections$ValuesCollection;

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/miui/systemui/support/v4/util/MapCollections;->mValues:Lcom/miui/systemui/support/v4/util/MapCollections$ValuesCollection;

    return-object v0
.end method

.method public toArrayHelper(I)[Ljava/lang/Object;
    .locals 4
    .param p1, "offset"    # I

    .prologue
    .line 488
    invoke-virtual {p0}, Lcom/miui/systemui/support/v4/util/MapCollections;->colGetSize()I

    move-result v0

    .line 489
    .local v0, "N":I
    new-array v2, v0, [Ljava/lang/Object;

    .line 490
    .local v2, "result":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 491
    invoke-virtual {p0, v1, p1}, Lcom/miui/systemui/support/v4/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v1

    .line 490
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 493
    :cond_0
    return-object v2
.end method

.method public toArrayHelper([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 4
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .prologue
    .line 497
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Lcom/miui/systemui/support/v4/util/MapCollections;->colGetSize()I

    move-result v0

    .line 498
    .local v0, "N":I
    array-length v3, p1

    if-ge v3, v0, :cond_0

    .line 500
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 501
    .local v2, "newArray":[Ljava/lang/Object;, "[TT;"
    move-object p1, v2

    .line 503
    .end local v2    # "newArray":[Ljava/lang/Object;, "[TT;"
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 504
    invoke-virtual {p0, v1, p2}, Lcom/miui/systemui/support/v4/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p1, v1

    .line 503
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 506
    :cond_1
    array-length v3, p1

    if-le v3, v0, :cond_2

    .line 507
    const/4 v3, 0x0

    aput-object v3, p1, v0

    .line 509
    :cond_2
    return-object p1
.end method
