.class public Lcom/android/systemui/recents/events/ui/DraggingInRecentsEndedEvent;
.super Lcom/android/systemui/recents/events/RecentsEventBus$Event;
.source "DraggingInRecentsEndedEvent.java"


# instance fields
.field public final velocity:F


# direct methods
.method public constructor <init>(F)V
    .locals 0
    .param p1, "velocity"    # F

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/android/systemui/recents/events/RecentsEventBus$Event;-><init>()V

    .line 13
    iput p1, p0, Lcom/android/systemui/recents/events/ui/DraggingInRecentsEndedEvent;->velocity:F

    .line 12
    return-void
.end method
