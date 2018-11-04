.class public abstract Landroid/app/SynchronousUserSwitchObserverCompat;
.super Landroid/app/UserSwitchObserverCompat;
.source "SynchronousUserSwitchObserverCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/UserSwitchObserverCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onUserSwitching(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public final onUserSwitching(ILandroid/os/IRemoteCallback;)V
    .locals 2
    .param p1, "newUserId"    # I
    .param p2, "reply"    # Landroid/os/IRemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 19
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/SynchronousUserSwitchObserverCompat;->onUserSwitching(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    if-eqz p2, :cond_0

    .line 22
    invoke-interface {p2, v1}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 17
    :cond_0
    return-void

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    if-eqz p2, :cond_1

    .line 22
    invoke-interface {p2, v1}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 20
    :cond_1
    throw v0
.end method
