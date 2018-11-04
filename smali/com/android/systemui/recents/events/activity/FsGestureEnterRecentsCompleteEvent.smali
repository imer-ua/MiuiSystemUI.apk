.class public Lcom/android/systemui/recents/events/activity/FsGestureEnterRecentsCompleteEvent;
.super Lcom/android/systemui/recents/events/RecentsEventBus$Event;
.source "FsGestureEnterRecentsCompleteEvent.java"


# instance fields
.field public final mMoveRecentsToFront:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/android/systemui/recents/events/RecentsEventBus$Event;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/events/activity/FsGestureEnterRecentsCompleteEvent;->mMoveRecentsToFront:Z

    .line 7
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "moveToFront"    # Z

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/android/systemui/recents/events/RecentsEventBus$Event;-><init>()V

    .line 12
    iput-boolean p1, p0, Lcom/android/systemui/recents/events/activity/FsGestureEnterRecentsCompleteEvent;->mMoveRecentsToFront:Z

    .line 11
    return-void
.end method
