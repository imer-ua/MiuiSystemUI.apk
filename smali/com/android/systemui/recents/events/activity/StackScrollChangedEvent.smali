.class public Lcom/android/systemui/recents/events/activity/StackScrollChangedEvent;
.super Lcom/android/systemui/recents/events/RecentsEventBus$Event;
.source "StackScrollChangedEvent.java"


# instance fields
.field public mTranslationY:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "mTranslationY"    # I

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/android/systemui/recents/events/RecentsEventBus$Event;-><init>()V

    .line 10
    iput p1, p0, Lcom/android/systemui/recents/events/activity/StackScrollChangedEvent;->mTranslationY:I

    .line 9
    return-void
.end method
