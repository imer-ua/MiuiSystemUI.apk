.class Lcom/android/systemui/recents/events/RecentsEventBus$2;
.super Ljava/lang/Object;
.source "RecentsEventBus.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/events/RecentsEventBus;->dumpInternal(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Class",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/events/RecentsEventBus;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/events/RecentsEventBus;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/events/RecentsEventBus;

    .prologue
    .line 675
    iput-object p1, p0, Lcom/android/systemui/recents/events/RecentsEventBus$2;->this$0:Lcom/android/systemui/recents/events/RecentsEventBus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Class;Ljava/lang/Class;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 678
    .local p1, "o1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "o2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .prologue
    .line 677
    check-cast p1, Ljava/lang/Class;

    .end local p1    # "o1":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Class;

    .end local p2    # "o2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/events/RecentsEventBus$2;->compare(Ljava/lang/Class;Ljava/lang/Class;)I

    move-result v0

    return v0
.end method