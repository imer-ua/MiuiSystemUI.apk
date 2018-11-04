.class public Lcom/android/systemui/recents/events/activity/HideRecentsEvent;
.super Lcom/android/systemui/recents/events/RecentsEventBus$Event;
.source "HideRecentsEvent.java"


# instance fields
.field public final triggeredFromAltTab:Z

.field public final triggeredFromFsGesture:Z

.field public final triggeredFromHomeKey:Z

.field public final triggeredFromScroll:Z


# direct methods
.method public constructor <init>(ZZZ)V
    .locals 1
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHomeKey"    # Z
    .param p3, "triggeredFromFsGesture"    # Z

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/systemui/recents/events/RecentsEventBus$Event;-><init>()V

    .line 33
    iput-boolean p1, p0, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;->triggeredFromAltTab:Z

    .line 34
    iput-boolean p2, p0, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;->triggeredFromHomeKey:Z

    .line 35
    iput-boolean p3, p0, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;->triggeredFromFsGesture:Z

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;->triggeredFromScroll:Z

    .line 32
    return-void
.end method

.method public constructor <init>(ZZZZ)V
    .locals 0
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHomeKey"    # Z
    .param p3, "triggeredFromFsGesture"    # Z
    .param p4, "triggeredFromScroll"    # Z

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/systemui/recents/events/RecentsEventBus$Event;-><init>()V

    .line 40
    iput-boolean p1, p0, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;->triggeredFromAltTab:Z

    .line 41
    iput-boolean p2, p0, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;->triggeredFromHomeKey:Z

    .line 42
    iput-boolean p3, p0, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;->triggeredFromFsGesture:Z

    .line 43
    iput-boolean p4, p0, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;->triggeredFromScroll:Z

    .line 39
    return-void
.end method
