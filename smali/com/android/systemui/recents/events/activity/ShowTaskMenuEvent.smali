.class public Lcom/android/systemui/recents/events/activity/ShowTaskMenuEvent;
.super Lcom/android/systemui/recents/events/RecentsEventBus$Event;
.source "ShowTaskMenuEvent.java"


# instance fields
.field public final taskView:Lcom/android/systemui/recents/views/TaskView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/views/TaskView;)V
    .locals 0
    .param p1, "taskView"    # Lcom/android/systemui/recents/views/TaskView;

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/android/systemui/recents/events/RecentsEventBus$Event;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/systemui/recents/events/activity/ShowTaskMenuEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    .line 10
    return-void
.end method
