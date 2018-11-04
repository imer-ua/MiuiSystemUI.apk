.class public Lcom/android/systemui/recents/events/activity/ActivitySetDummyTranslucentEvent;
.super Lcom/android/systemui/recents/events/RecentsEventBus$Event;
.source "ActivitySetDummyTranslucentEvent.java"


# instance fields
.field public final mIsTranslucent:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "translucent"    # Z

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/android/systemui/recents/events/RecentsEventBus$Event;-><init>()V

    .line 13
    iput-boolean p1, p0, Lcom/android/systemui/recents/events/activity/ActivitySetDummyTranslucentEvent;->mIsTranslucent:Z

    .line 12
    return-void
.end method
