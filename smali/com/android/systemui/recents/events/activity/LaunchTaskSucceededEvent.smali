.class public Lcom/android/systemui/recents/events/activity/LaunchTaskSucceededEvent;
.super Lcom/android/systemui/recents/events/RecentsEventBus$Event;
.source "LaunchTaskSucceededEvent.java"


# instance fields
.field public final taskIndexFromStackFront:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "taskIndexFromStackFront"    # I

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/systemui/recents/events/RecentsEventBus$Event;-><init>()V

    .line 29
    iput p1, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskSucceededEvent;->taskIndexFromStackFront:I

    .line 28
    return-void
.end method