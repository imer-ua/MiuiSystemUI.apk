.class public abstract Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;
.super Ljava/lang/Object;
.source "SystemServicesProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/misc/SystemServicesProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TaskStackListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityDismissingDockedStack()V
    .locals 0

    .prologue
    .line 226
    return-void
.end method

.method public onActivityForcedResizable(Ljava/lang/String;II)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "taskId"    # I
    .param p3, "reason"    # I

    .prologue
    .line 225
    return-void
.end method

.method public onActivityLaunchOnSecondaryDisplayFailed()V
    .locals 0

    .prologue
    .line 227
    return-void
.end method

.method public onActivityPinned(Ljava/lang/String;II)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "taskId"    # I

    .prologue
    .line 220
    return-void
.end method

.method public onActivityUnpinned()V
    .locals 0

    .prologue
    .line 221
    return-void
.end method

.method public onPinnedActivityRestartAttempt(Z)V
    .locals 0
    .param p1, "clearedTask"    # Z

    .prologue
    .line 222
    return-void
.end method

.method public onPinnedStackAnimationEnded()V
    .locals 0

    .prologue
    .line 224
    return-void
.end method

.method public onPinnedStackAnimationStarted()V
    .locals 0

    .prologue
    .line 223
    return-void
.end method

.method public onTaskProfileLocked(II)V
    .locals 0
    .param p1, "taskId"    # I
    .param p2, "userId"    # I

    .prologue
    .line 228
    return-void
.end method

.method public onTaskStackChanged()V
    .locals 0

    .prologue
    .line 217
    return-void
.end method

.method public onTaskStackChangedBackground()V
    .locals 0

    .prologue
    .line 216
    return-void
.end method
