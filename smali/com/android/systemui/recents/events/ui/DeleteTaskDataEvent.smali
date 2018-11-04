.class public Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;
.super Lcom/android/systemui/recents/events/RecentsEventBus$Event;
.source "DeleteTaskDataEvent.java"


# instance fields
.field public remainProcess:Z

.field public final task:Lcom/android/systemui/recents/model/Task;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/model/Task;)V
    .locals 1
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/systemui/recents/events/RecentsEventBus$Event;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;->remainProcess:Z

    .line 32
    iput-object p1, p0, Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;->task:Lcom/android/systemui/recents/model/Task;

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/recents/model/Task;Z)V
    .locals 1
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "remainProcess"    # Z

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/systemui/recents/events/RecentsEventBus$Event;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;->remainProcess:Z

    .line 36
    iput-object p1, p0, Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;->task:Lcom/android/systemui/recents/model/Task;

    .line 37
    iput-boolean p2, p0, Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;->remainProcess:Z

    .line 35
    return-void
.end method
