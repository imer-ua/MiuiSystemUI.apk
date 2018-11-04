.class public interface abstract Lcom/android/internal/policy/IKeyguardDismissCallback;
.super Ljava/lang/Object;
.source "IKeyguardDismissCallback.java"


# virtual methods
.method public abstract onDismissCancelled()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onDismissError()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onDismissSucceeded()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
