.class public Lcom/android/systemui/recents/events/activity/FsGestureLaunchTargetTaskViewRectEvent;
.super Lcom/android/systemui/recents/events/RecentsEventBus$Event;
.source "FsGestureLaunchTargetTaskViewRectEvent.java"


# instance fields
.field public final mLaunchTargetTask:Lcom/android/systemui/recents/model/Task;

.field public final mRectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/graphics/RectF;Lcom/android/systemui/recents/model/Task;)V
    .locals 0
    .param p1, "rectF"    # Landroid/graphics/RectF;
    .param p2, "launchTargetTask"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/android/systemui/recents/events/RecentsEventBus$Event;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/android/systemui/recents/events/activity/FsGestureLaunchTargetTaskViewRectEvent;->mRectF:Landroid/graphics/RectF;

    .line 14
    iput-object p2, p0, Lcom/android/systemui/recents/events/activity/FsGestureLaunchTargetTaskViewRectEvent;->mLaunchTargetTask:Lcom/android/systemui/recents/model/Task;

    .line 12
    return-void
.end method
