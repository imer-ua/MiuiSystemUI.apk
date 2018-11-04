.class public Lcom/android/systemui/util/leak/LeakDetector;
.super Ljava/lang/Object;
.source "LeakDetector.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# static fields
.field public static final ENABLED:Z


# instance fields
.field private final mTrackedCollections:Lcom/android/systemui/util/leak/TrackedCollections;

.field private final mTrackedGarbage:Lcom/android/systemui/util/leak/TrackedGarbage;

.field private final mTrackedObjects:Lcom/android/systemui/util/leak/TrackedObjects;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/systemui/util/leak/LeakDetector;->ENABLED:Z

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/util/leak/TrackedCollections;Lcom/android/systemui/util/leak/TrackedGarbage;Lcom/android/systemui/util/leak/TrackedObjects;)V
    .locals 0
    .param p1, "trackedCollections"    # Lcom/android/systemui/util/leak/TrackedCollections;
    .param p2, "trackedGarbage"    # Lcom/android/systemui/util/leak/TrackedGarbage;
    .param p3, "trackedObjects"    # Lcom/android/systemui/util/leak/TrackedObjects;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/systemui/util/leak/LeakDetector;->mTrackedCollections:Lcom/android/systemui/util/leak/TrackedCollections;

    .line 47
    iput-object p2, p0, Lcom/android/systemui/util/leak/LeakDetector;->mTrackedGarbage:Lcom/android/systemui/util/leak/TrackedGarbage;

    .line 48
    iput-object p3, p0, Lcom/android/systemui/util/leak/LeakDetector;->mTrackedObjects:Lcom/android/systemui/util/leak/TrackedObjects;

    .line 45
    return-void
.end method

.method public static create()Lcom/android/systemui/util/leak/LeakDetector;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 146
    sget-boolean v1, Lcom/android/systemui/util/leak/LeakDetector;->ENABLED:Z

    if-eqz v1, :cond_0

    .line 147
    new-instance v0, Lcom/android/systemui/util/leak/TrackedCollections;

    invoke-direct {v0}, Lcom/android/systemui/util/leak/TrackedCollections;-><init>()V

    .line 148
    .local v0, "collections":Lcom/android/systemui/util/leak/TrackedCollections;
    new-instance v1, Lcom/android/systemui/util/leak/LeakDetector;

    new-instance v2, Lcom/android/systemui/util/leak/TrackedGarbage;

    invoke-direct {v2, v0}, Lcom/android/systemui/util/leak/TrackedGarbage;-><init>(Lcom/android/systemui/util/leak/TrackedCollections;)V

    .line 149
    new-instance v3, Lcom/android/systemui/util/leak/TrackedObjects;

    invoke-direct {v3, v0}, Lcom/android/systemui/util/leak/TrackedObjects;-><init>(Lcom/android/systemui/util/leak/TrackedCollections;)V

    .line 148
    invoke-direct {v1, v0, v2, v3}, Lcom/android/systemui/util/leak/LeakDetector;-><init>(Lcom/android/systemui/util/leak/TrackedCollections;Lcom/android/systemui/util/leak/TrackedGarbage;Lcom/android/systemui/util/leak/TrackedObjects;)V

    return-object v1

    .line 151
    .end local v0    # "collections":Lcom/android/systemui/util/leak/TrackedCollections;
    :cond_0
    new-instance v1, Lcom/android/systemui/util/leak/LeakDetector;

    invoke-direct {v1, v2, v2, v2}, Lcom/android/systemui/util/leak/LeakDetector;-><init>(Lcom/android/systemui/util/leak/TrackedCollections;Lcom/android/systemui/util/leak/TrackedGarbage;Lcom/android/systemui/util/leak/TrackedObjects;)V

    return-object v1
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "df"    # Ljava/io/FileDescriptor;
    .param p2, "w"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 106
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 108
    .local v0, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    const-string/jumbo v1, "SYSUI LEAK DETECTOR"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 111
    iget-object v1, p0, Lcom/android/systemui/util/leak/LeakDetector;->mTrackedCollections:Lcom/android/systemui/util/leak/TrackedCollections;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/util/leak/LeakDetector;->mTrackedGarbage:Lcom/android/systemui/util/leak/TrackedGarbage;

    if-eqz v1, :cond_0

    .line 112
    const-string/jumbo v1, "TrackedCollections:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 114
    iget-object v1, p0, Lcom/android/systemui/util/leak/LeakDetector;->mTrackedCollections:Lcom/android/systemui/util/leak/TrackedCollections;

    new-instance v2, Lcom/android/systemui/util/leak/LeakDetector$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/util/leak/LeakDetector$1;-><init>(Lcom/android/systemui/util/leak/LeakDetector;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/util/leak/TrackedCollections;->dump(Ljava/io/PrintWriter;Lcom/android/systemui/util/function/Predicate;)V

    .line 120
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 121
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 123
    const-string/jumbo v1, "TrackedObjects:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 125
    iget-object v1, p0, Lcom/android/systemui/util/leak/LeakDetector;->mTrackedCollections:Lcom/android/systemui/util/leak/TrackedCollections;

    new-instance v2, Lcom/android/systemui/util/leak/LeakDetector$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/util/leak/LeakDetector$2;-><init>(Lcom/android/systemui/util/leak/LeakDetector;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/util/leak/TrackedCollections;->dump(Ljava/io/PrintWriter;Lcom/android/systemui/util/function/Predicate;)V

    .line 131
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 132
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 134
    const-string/jumbo v1, "TrackedGarbage:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 136
    iget-object v1, p0, Lcom/android/systemui/util/leak/LeakDetector;->mTrackedGarbage:Lcom/android/systemui/util/leak/TrackedGarbage;

    invoke-virtual {v1, v0}, Lcom/android/systemui/util/leak/TrackedGarbage;->dump(Ljava/io/PrintWriter;)V

    .line 137
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 141
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 142
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 105
    return-void

    .line 139
    :cond_0
    const-string/jumbo v1, "disabled"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method getTrackedGarbage()Lcom/android/systemui/util/leak/TrackedGarbage;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/systemui/util/leak/LeakDetector;->mTrackedGarbage:Lcom/android/systemui/util/leak/TrackedGarbage;

    return-object v0
.end method

.method public trackCollection(Ljava/util/Collection;Ljava/lang/String;)V
    .locals 1
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    iget-object v0, p0, Lcom/android/systemui/util/leak/LeakDetector;->mTrackedCollections:Lcom/android/systemui/util/leak/TrackedCollections;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/systemui/util/leak/LeakDetector;->mTrackedCollections:Lcom/android/systemui/util/leak/TrackedCollections;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/util/leak/TrackedCollections;->track(Ljava/util/Collection;Ljava/lang/String;)V

    .line 79
    :cond_0
    return-void
.end method

.method public trackGarbage(Ljava/lang/Object;)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/systemui/util/leak/LeakDetector;->mTrackedGarbage:Lcom/android/systemui/util/leak/TrackedGarbage;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/systemui/util/leak/LeakDetector;->mTrackedGarbage:Lcom/android/systemui/util/leak/TrackedGarbage;

    invoke-virtual {v0, p1}, Lcom/android/systemui/util/leak/TrackedGarbage;->track(Ljava/lang/Object;)V

    .line 94
    :cond_0
    return-void
.end method

.method public trackInstance(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "object":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/android/systemui/util/leak/LeakDetector;->mTrackedObjects:Lcom/android/systemui/util/leak/TrackedObjects;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/android/systemui/util/leak/LeakDetector;->mTrackedObjects:Lcom/android/systemui/util/leak/TrackedObjects;

    invoke-virtual {v0, p1}, Lcom/android/systemui/util/leak/TrackedObjects;->track(Ljava/lang/Object;)V

    .line 61
    :cond_0
    return-void
.end method
