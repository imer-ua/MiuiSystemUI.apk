.class public Lcom/android/systemui/recents/events/ui/ShowApplicationInfoEvent;
.super Lcom/android/systemui/recents/events/RecentsEventBus$Event;
.source "ShowApplicationInfoEvent.java"


# instance fields
.field public final task:Lcom/android/systemui/recents/model/Task;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/model/Task;)V
    .locals 0
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/systemui/recents/events/RecentsEventBus$Event;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/systemui/recents/events/ui/ShowApplicationInfoEvent;->task:Lcom/android/systemui/recents/model/Task;

    .line 29
    return-void
.end method