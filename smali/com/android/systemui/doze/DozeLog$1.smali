.class final Lcom/android/systemui/doze/DozeLog$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "DozeLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/DozeLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 249
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onEmergencyCallAction()V
    .locals 0

    .prologue
    .line 252
    invoke-static {}, Lcom/android/systemui/doze/DozeLog;->traceEmergencyCall()V

    .line 251
    return-void
.end method

.method public onFinishedGoingToSleep(I)V
    .locals 0
    .param p1, "why"    # I

    .prologue
    .line 267
    invoke-static {p1}, Lcom/android/systemui/doze/DozeLog;->traceScreenOff(I)V

    .line 266
    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 0
    .param p1, "bouncer"    # Z

    .prologue
    .line 257
    invoke-static {p1}, Lcom/android/systemui/doze/DozeLog;->traceKeyguardBouncerChanged(Z)V

    .line 256
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 0
    .param p1, "showing"    # Z

    .prologue
    .line 272
    invoke-static {p1}, Lcom/android/systemui/doze/DozeLog;->traceKeyguard(Z)V

    .line 271
    return-void
.end method

.method public onStartedWakingUp()V
    .locals 0

    .prologue
    .line 262
    invoke-static {}, Lcom/android/systemui/doze/DozeLog;->traceScreenOn()V

    .line 261
    return-void
.end method
