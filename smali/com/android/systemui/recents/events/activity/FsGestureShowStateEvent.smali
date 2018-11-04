.class public Lcom/android/systemui/recents/events/activity/FsGestureShowStateEvent;
.super Lcom/android/systemui/recents/events/RecentsEventBus$Event;
.source "FsGestureShowStateEvent.java"


# instance fields
.field public isEnter:Z

.field public typeFrom:Ljava/lang/String;


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "isEnter"    # Z

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/systemui/recents/events/RecentsEventBus$Event;-><init>()V

    .line 28
    iput-boolean p1, p0, Lcom/android/systemui/recents/events/activity/FsGestureShowStateEvent;->isEnter:Z

    .line 29
    const-string/jumbo v0, "typefrom_demo"

    iput-object v0, p0, Lcom/android/systemui/recents/events/activity/FsGestureShowStateEvent;->typeFrom:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0
    .param p1, "isEnter"    # Z
    .param p2, "typeFrom"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/systemui/recents/events/RecentsEventBus$Event;-><init>()V

    .line 33
    iput-boolean p1, p0, Lcom/android/systemui/recents/events/activity/FsGestureShowStateEvent;->isEnter:Z

    .line 34
    iput-object p2, p0, Lcom/android/systemui/recents/events/activity/FsGestureShowStateEvent;->typeFrom:Ljava/lang/String;

    .line 32
    return-void
.end method
