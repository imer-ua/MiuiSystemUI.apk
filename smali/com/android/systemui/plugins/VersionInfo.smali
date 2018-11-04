.class public Lcom/android/systemui/plugins/VersionInfo;
.super Ljava/lang/Object;
.source "VersionInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/plugins/VersionInfo$InvalidVersionException;,
        Lcom/android/systemui/plugins/VersionInfo$Version;
    }
.end annotation


# instance fields
.field private mDefault:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final mVersions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/android/systemui/plugins/VersionInfo$Version;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/plugins/VersionInfo;->mVersions:Landroid/util/ArrayMap;

    .line 28
    return-void
.end method

.method private addClass(Ljava/lang/Class;Z)V
    .locals 15
    .param p2, "required"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v8, p0, Lcom/android/systemui/plugins/VersionInfo;->mVersions:Landroid/util/ArrayMap;

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    return-void

    .line 52
    :cond_0
    const-class v8, Lcom/android/systemui/plugins/annotations/ProvidesInterface;

    move-object/from16 v0, p1

    invoke-static {v0, v8}, Lcom/android/systemui/SystemUICompat;->getDeclaredAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/plugins/annotations/ProvidesInterface;

    .line 53
    .local v4, "provider":Lcom/android/systemui/plugins/annotations/ProvidesInterface;
    if-eqz v4, :cond_1

    .line 54
    iget-object v8, p0, Lcom/android/systemui/plugins/VersionInfo;->mVersions:Landroid/util/ArrayMap;

    new-instance v9, Lcom/android/systemui/plugins/VersionInfo$Version;

    invoke-interface {v4}, Lcom/android/systemui/plugins/annotations/ProvidesInterface;->version()I

    move-result v10

    const/4 v11, 0x1

    invoke-direct {v9, v10, v11}, Lcom/android/systemui/plugins/VersionInfo$Version;-><init>(IZ)V

    move-object/from16 v0, p1

    invoke-virtual {v8, v0, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :cond_1
    const-class v8, Lcom/android/systemui/plugins/annotations/Requires;

    move-object/from16 v0, p1

    invoke-static {v0, v8}, Lcom/android/systemui/SystemUICompat;->getDeclaredAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/plugins/annotations/Requires;

    .line 57
    .local v7, "requires":Lcom/android/systemui/plugins/annotations/Requires;
    if-eqz v7, :cond_2

    .line 58
    iget-object v8, p0, Lcom/android/systemui/plugins/VersionInfo;->mVersions:Landroid/util/ArrayMap;

    invoke-interface {v7}, Lcom/android/systemui/plugins/annotations/Requires;->target()Ljava/lang/Class;

    move-result-object v9

    new-instance v10, Lcom/android/systemui/plugins/VersionInfo$Version;

    invoke-interface {v7}, Lcom/android/systemui/plugins/annotations/Requires;->version()I

    move-result v11

    move/from16 v0, p2

    invoke-direct {v10, v11, v0}, Lcom/android/systemui/plugins/VersionInfo$Version;-><init>(IZ)V

    invoke-virtual {v8, v9, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :cond_2
    const-class v8, Lcom/android/systemui/plugins/annotations/Requirements;

    move-object/from16 v0, p1

    invoke-static {v0, v8}, Lcom/android/systemui/SystemUICompat;->getDeclaredAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/plugins/annotations/Requirements;

    .line 61
    .local v6, "requirements":Lcom/android/systemui/plugins/annotations/Requirements;
    if-eqz v6, :cond_3

    .line 62
    invoke-interface {v6}, Lcom/android/systemui/plugins/annotations/Requirements;->value()[Lcom/android/systemui/plugins/annotations/Requires;

    move-result-object v9

    const/4 v8, 0x0

    array-length v10, v9

    :goto_0
    if-ge v8, v10, :cond_3

    aget-object v5, v9, v8

    .line 63
    .local v5, "r":Lcom/android/systemui/plugins/annotations/Requires;
    iget-object v11, p0, Lcom/android/systemui/plugins/VersionInfo;->mVersions:Landroid/util/ArrayMap;

    invoke-interface {v5}, Lcom/android/systemui/plugins/annotations/Requires;->target()Ljava/lang/Class;

    move-result-object v12

    new-instance v13, Lcom/android/systemui/plugins/VersionInfo$Version;

    invoke-interface {v5}, Lcom/android/systemui/plugins/annotations/Requires;->version()I

    move-result v14

    move/from16 v0, p2

    invoke-direct {v13, v14, v0}, Lcom/android/systemui/plugins/VersionInfo$Version;-><init>(IZ)V

    invoke-virtual {v11, v12, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 66
    .end local v5    # "r":Lcom/android/systemui/plugins/annotations/Requires;
    :cond_3
    const-class v8, Lcom/android/systemui/plugins/annotations/DependsOn;

    move-object/from16 v0, p1

    invoke-static {v0, v8}, Lcom/android/systemui/SystemUICompat;->getDeclaredAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/plugins/annotations/DependsOn;

    .line 67
    .local v3, "depends":Lcom/android/systemui/plugins/annotations/DependsOn;
    if-eqz v3, :cond_4

    .line 68
    invoke-interface {v3}, Lcom/android/systemui/plugins/annotations/DependsOn;->target()Ljava/lang/Class;

    move-result-object v8

    const/4 v9, 0x1

    invoke-direct {p0, v8, v9}, Lcom/android/systemui/plugins/VersionInfo;->addClass(Ljava/lang/Class;Z)V

    .line 70
    :cond_4
    const-class v8, Lcom/android/systemui/plugins/annotations/Dependencies;

    move-object/from16 v0, p1

    invoke-static {v0, v8}, Lcom/android/systemui/SystemUICompat;->getDeclaredAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/annotations/Dependencies;

    .line 71
    .local v2, "dependencies":Lcom/android/systemui/plugins/annotations/Dependencies;
    if-eqz v2, :cond_5

    .line 72
    invoke-interface {v2}, Lcom/android/systemui/plugins/annotations/Dependencies;->value()[Lcom/android/systemui/plugins/annotations/DependsOn;

    move-result-object v9

    const/4 v8, 0x0

    array-length v10, v9

    :goto_1
    if-ge v8, v10, :cond_5

    aget-object v1, v9, v8

    .line 73
    .local v1, "d":Lcom/android/systemui/plugins/annotations/DependsOn;
    invoke-interface {v1}, Lcom/android/systemui/plugins/annotations/DependsOn;->target()Ljava/lang/Class;

    move-result-object v11

    const/4 v12, 0x1

    invoke-direct {p0, v11, v12}, Lcom/android/systemui/plugins/VersionInfo;->addClass(Ljava/lang/Class;Z)V

    .line 72
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 50
    .end local v1    # "d":Lcom/android/systemui/plugins/annotations/DependsOn;
    :cond_5
    return-void
.end method

.method private createVersion(Ljava/lang/Class;)Lcom/android/systemui/plugins/VersionInfo$Version;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/android/systemui/plugins/VersionInfo$Version;"
        }
    .end annotation

    .prologue
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 115
    const-class v1, Lcom/android/systemui/plugins/annotations/ProvidesInterface;

    invoke-static {p1, v1}, Lcom/android/systemui/SystemUICompat;->getDeclaredAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/annotations/ProvidesInterface;

    .line 116
    .local v0, "provider":Lcom/android/systemui/plugins/annotations/ProvidesInterface;
    if-eqz v0, :cond_0

    .line 117
    new-instance v1, Lcom/android/systemui/plugins/VersionInfo$Version;

    invoke-interface {v0}, Lcom/android/systemui/plugins/annotations/ProvidesInterface;->version()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/plugins/VersionInfo$Version;-><init>(IZ)V

    return-object v1

    .line 119
    :cond_0
    return-object v2
.end method


# virtual methods
.method public addClass(Ljava/lang/Class;)Lcom/android/systemui/plugins/VersionInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/android/systemui/plugins/VersionInfo;"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/android/systemui/plugins/VersionInfo;->mDefault:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 44
    iput-object p1, p0, Lcom/android/systemui/plugins/VersionInfo;->mDefault:Ljava/lang/Class;

    .line 46
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/plugins/VersionInfo;->addClass(Ljava/lang/Class;Z)V

    .line 47
    return-object p0
.end method

.method public checkVersion(Lcom/android/systemui/plugins/VersionInfo;)V
    .locals 12
    .param p1, "plugin"    # Lcom/android/systemui/plugins/VersionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/systemui/plugins/VersionInfo$InvalidVersionException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 79
    new-instance v6, Landroid/util/ArrayMap;

    iget-object v7, p0, Lcom/android/systemui/plugins/VersionInfo;->mVersions:Landroid/util/ArrayMap;

    invoke-direct {v6, v7}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 80
    .local v6, "versions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Class<*>;Lcom/android/systemui/plugins/VersionInfo$Version;>;"
    invoke-virtual {v6}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 82
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Lcom/android/systemui/plugins/VersionInfo$Version;>;"
    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 83
    .local v0, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/plugins/VersionInfo$Version;

    .line 85
    .local v5, "version":Lcom/android/systemui/plugins/VersionInfo$Version;
    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/plugins/VersionInfo$Version;

    .line 86
    .local v4, "v":Lcom/android/systemui/plugins/VersionInfo$Version;
    if-nez v4, :cond_1

    .line 87
    invoke-direct {p0, v0}, Lcom/android/systemui/plugins/VersionInfo;->createVersion(Ljava/lang/Class;)Lcom/android/systemui/plugins/VersionInfo$Version;

    move-result-object v4

    .line 89
    :cond_1
    if-nez v4, :cond_2

    .line 90
    new-instance v7, Lcom/android/systemui/plugins/VersionInfo$InvalidVersionException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 91
    const-string/jumbo v10, " does not provide an interface"

    .line 90
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 91
    const/4 v10, 0x0

    .line 90
    invoke-direct {v7, v9, v10}, Lcom/android/systemui/plugins/VersionInfo$InvalidVersionException;-><init>(Ljava/lang/String;Z)V

    throw v7

    .line 97
    .end local v0    # "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "v":Lcom/android/systemui/plugins/VersionInfo$Version;
    .end local v5    # "version":Lcom/android/systemui/plugins/VersionInfo$Version;
    :catch_0
    move-exception v3

    .local v3, "ise":Ljava/lang/IllegalStateException;
    goto :goto_0

    .line 93
    .end local v3    # "ise":Ljava/lang/IllegalStateException;
    .restart local v0    # "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "v":Lcom/android/systemui/plugins/VersionInfo$Version;
    .restart local v5    # "version":Lcom/android/systemui/plugins/VersionInfo$Version;
    :cond_2
    invoke-static {v4}, Lcom/android/systemui/plugins/VersionInfo$Version;->-get1(Lcom/android/systemui/plugins/VersionInfo$Version;)I

    move-result v7

    invoke-static {v5}, Lcom/android/systemui/plugins/VersionInfo$Version;->-get1(Lcom/android/systemui/plugins/VersionInfo$Version;)I

    move-result v9

    if-eq v7, v9, :cond_0

    .line 94
    new-instance v9, Lcom/android/systemui/plugins/VersionInfo$InvalidVersionException;

    invoke-static {v4}, Lcom/android/systemui/plugins/VersionInfo$Version;->-get1(Lcom/android/systemui/plugins/VersionInfo$Version;)I

    move-result v7

    invoke-static {v5}, Lcom/android/systemui/plugins/VersionInfo$Version;->-get1(Lcom/android/systemui/plugins/VersionInfo$Version;)I

    move-result v10

    if-ge v7, v10, :cond_3

    const/4 v7, 0x1

    :goto_1
    invoke-static {v4}, Lcom/android/systemui/plugins/VersionInfo$Version;->-get1(Lcom/android/systemui/plugins/VersionInfo$Version;)I

    move-result v10

    .line 95
    invoke-static {v5}, Lcom/android/systemui/plugins/VersionInfo$Version;->-get1(Lcom/android/systemui/plugins/VersionInfo$Version;)I

    move-result v11

    .line 94
    invoke-direct {v9, v0, v7, v10, v11}, Lcom/android/systemui/plugins/VersionInfo$InvalidVersionException;-><init>(Ljava/lang/Class;ZII)V

    throw v9
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    move v7, v8

    goto :goto_1

    .line 100
    .end local v0    # "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Lcom/android/systemui/plugins/VersionInfo$Version;>;"
    .end local v4    # "v":Lcom/android/systemui/plugins/VersionInfo$Version;
    .end local v5    # "version":Lcom/android/systemui/plugins/VersionInfo$Version;
    :cond_4
    invoke-virtual {v6}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 102
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Lcom/android/systemui/plugins/VersionInfo$Version;>;"
    :try_start_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 103
    .restart local v0    # "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/plugins/VersionInfo$Version;

    .line 105
    .restart local v5    # "version":Lcom/android/systemui/plugins/VersionInfo$Version;
    invoke-static {v5}, Lcom/android/systemui/plugins/VersionInfo$Version;->-get0(Lcom/android/systemui/plugins/VersionInfo$Version;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 106
    new-instance v7, Lcom/android/systemui/plugins/VersionInfo$InvalidVersionException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Missing required dependency "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 107
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    .line 106
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 107
    const/4 v9, 0x0

    .line 106
    invoke-direct {v7, v8, v9}, Lcom/android/systemui/plugins/VersionInfo$InvalidVersionException;-><init>(Ljava/lang/String;Z)V

    throw v7
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 109
    .end local v0    # "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "version":Lcom/android/systemui/plugins/VersionInfo$Version;
    :catch_1
    move-exception v3

    .restart local v3    # "ise":Ljava/lang/IllegalStateException;
    goto :goto_2

    .line 78
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Lcom/android/systemui/plugins/VersionInfo$Version;>;"
    .end local v3    # "ise":Ljava/lang/IllegalStateException;
    :cond_6
    return-void
.end method

.method public getDefaultVersion()I
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/systemui/plugins/VersionInfo;->mVersions:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/systemui/plugins/VersionInfo;->mDefault:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/VersionInfo$Version;

    invoke-static {v0}, Lcom/android/systemui/plugins/VersionInfo$Version;->-get1(Lcom/android/systemui/plugins/VersionInfo$Version;)I

    move-result v0

    return v0
.end method

.method public hasClass(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/android/systemui/plugins/VersionInfo;->mVersions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasVersionInfo()Z
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/systemui/plugins/VersionInfo;->mVersions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
