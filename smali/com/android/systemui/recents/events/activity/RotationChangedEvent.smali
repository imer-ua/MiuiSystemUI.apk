.class public Lcom/android/systemui/recents/events/activity/RotationChangedEvent;
.super Lcom/android/systemui/recents/events/RecentsEventBus$Event;
.source "RotationChangedEvent.java"


# instance fields
.field public final rotation:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "rotation"    # I

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/systemui/recents/events/RecentsEventBus$Event;-><init>()V

    .line 28
    iput p1, p0, Lcom/android/systemui/recents/events/activity/RotationChangedEvent;->rotation:I

    .line 27
    return-void
.end method
