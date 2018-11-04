.class public Lcom/android/systemui/recents/events/activity/AnimFirstTaskViewAlphaEvent;
.super Lcom/android/systemui/recents/events/RecentsEventBus$Event;
.source "AnimFirstTaskViewAlphaEvent.java"


# instance fields
.field public final mAlpha:F

.field public final mKeepAlphaWhenRelayout:Z

.field public final mWithAnim:Z


# direct methods
.method public constructor <init>(FZ)V
    .locals 1
    .param p1, "alpha"    # F
    .param p2, "withAnim"    # Z

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/systemui/recents/events/RecentsEventBus$Event;-><init>()V

    .line 30
    iput p1, p0, Lcom/android/systemui/recents/events/activity/AnimFirstTaskViewAlphaEvent;->mAlpha:F

    .line 31
    iput-boolean p2, p0, Lcom/android/systemui/recents/events/activity/AnimFirstTaskViewAlphaEvent;->mWithAnim:Z

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/events/activity/AnimFirstTaskViewAlphaEvent;->mKeepAlphaWhenRelayout:Z

    .line 29
    return-void
.end method

.method public constructor <init>(FZZ)V
    .locals 0
    .param p1, "alpha"    # F
    .param p2, "withAnim"    # Z
    .param p3, "keepAlphaWhenRelayout"    # Z

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/systemui/recents/events/RecentsEventBus$Event;-><init>()V

    .line 36
    iput p1, p0, Lcom/android/systemui/recents/events/activity/AnimFirstTaskViewAlphaEvent;->mAlpha:F

    .line 37
    iput-boolean p2, p0, Lcom/android/systemui/recents/events/activity/AnimFirstTaskViewAlphaEvent;->mWithAnim:Z

    .line 38
    iput-boolean p3, p0, Lcom/android/systemui/recents/events/activity/AnimFirstTaskViewAlphaEvent;->mKeepAlphaWhenRelayout:Z

    .line 35
    return-void
.end method


# virtual methods
.method public description()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAlpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/recents/events/activity/AnimFirstTaskViewAlphaEvent;->mAlpha:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mWithAnim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/recents/events/activity/AnimFirstTaskViewAlphaEvent;->mWithAnim:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 44
    const-string/jumbo v1, " mKeepAlphaWhenRelayout="

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 44
    iget-boolean v1, p0, Lcom/android/systemui/recents/events/activity/AnimFirstTaskViewAlphaEvent;->mKeepAlphaWhenRelayout:Z

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
