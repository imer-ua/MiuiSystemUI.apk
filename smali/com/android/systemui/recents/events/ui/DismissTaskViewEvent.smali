.class public Lcom/android/systemui/recents/events/ui/DismissTaskViewEvent;
.super Lcom/android/systemui/recents/events/RecentsEventBus$AnimatedEvent;
.source "DismissTaskViewEvent.java"


# instance fields
.field public final taskView:Lcom/android/systemui/recents/views/TaskView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/views/TaskView;)V
    .locals 0
    .param p1, "taskView"    # Lcom/android/systemui/recents/views/TaskView;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/systemui/recents/events/RecentsEventBus$AnimatedEvent;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/systemui/recents/events/ui/DismissTaskViewEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    .line 29
    return-void
.end method
