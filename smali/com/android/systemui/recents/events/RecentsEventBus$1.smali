.class final Lcom/android/systemui/recents/events/RecentsEventBus$1;
.super Ljava/lang/Object;
.source "RecentsEventBus.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/events/RecentsEventBus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/systemui/recents/events/EventHandler;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/systemui/recents/events/EventHandler;Lcom/android/systemui/recents/events/EventHandler;)I
    .locals 4
    .param p1, "h1"    # Lcom/android/systemui/recents/events/EventHandler;
    .param p2, "h2"    # Lcom/android/systemui/recents/events/EventHandler;

    .prologue
    .line 378
    iget v0, p1, Lcom/android/systemui/recents/events/EventHandler;->priority:I

    iget v1, p2, Lcom/android/systemui/recents/events/EventHandler;->priority:I

    if-eq v0, v1, :cond_0

    .line 379
    iget v0, p2, Lcom/android/systemui/recents/events/EventHandler;->priority:I

    iget v1, p1, Lcom/android/systemui/recents/events/EventHandler;->priority:I

    sub-int/2addr v0, v1

    return v0

    .line 381
    :cond_0
    iget-object v0, p2, Lcom/android/systemui/recents/events/EventHandler;->subscriber:Lcom/android/systemui/recents/events/Subscriber;

    iget-wide v0, v0, Lcom/android/systemui/recents/events/Subscriber;->registrationTime:J

    iget-object v2, p1, Lcom/android/systemui/recents/events/EventHandler;->subscriber:Lcom/android/systemui/recents/events/Subscriber;

    iget-wide v2, v2, Lcom/android/systemui/recents/events/Subscriber;->registrationTime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "h1"    # Ljava/lang/Object;
    .param p2, "h2"    # Ljava/lang/Object;

    .prologue
    .line 375
    check-cast p1, Lcom/android/systemui/recents/events/EventHandler;

    .end local p1    # "h1":Ljava/lang/Object;
    check-cast p2, Lcom/android/systemui/recents/events/EventHandler;

    .end local p2    # "h2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/events/RecentsEventBus$1;->compare(Lcom/android/systemui/recents/events/EventHandler;Lcom/android/systemui/recents/events/EventHandler;)I

    move-result v0

    return v0
.end method
