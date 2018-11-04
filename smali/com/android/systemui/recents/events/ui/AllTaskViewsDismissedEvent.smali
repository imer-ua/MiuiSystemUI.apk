.class public Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;
.super Lcom/android/systemui/recents/events/RecentsEventBus$Event;
.source "AllTaskViewsDismissedEvent.java"


# instance fields
.field public final mEmpty:Z

.field public final mFromDockGesture:Z

.field public final msgResId:I


# direct methods
.method public constructor <init>(IZ)V
    .locals 1
    .param p1, "msgResId"    # I
    .param p2, "empty"    # Z

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/systemui/recents/events/RecentsEventBus$Event;-><init>()V

    .line 37
    iput p1, p0, Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;->msgResId:I

    .line 38
    iput-boolean p2, p0, Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;->mEmpty:Z

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;->mFromDockGesture:Z

    .line 36
    return-void
.end method

.method public constructor <init>(IZZ)V
    .locals 0
    .param p1, "msgResId"    # I
    .param p2, "empty"    # Z
    .param p3, "fromDockGesture"    # Z

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/systemui/recents/events/RecentsEventBus$Event;-><init>()V

    .line 31
    iput p1, p0, Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;->msgResId:I

    .line 32
    iput-boolean p2, p0, Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;->mEmpty:Z

    .line 33
    iput-boolean p3, p0, Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;->mFromDockGesture:Z

    .line 30
    return-void
.end method
