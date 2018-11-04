.class public Lcom/android/internal/policy/IKeyguardStateCallbackCompat;
.super Ljava/lang/Object;
.source "IKeyguardStateCallbackCompat.java"


# instance fields
.field private mCallback:Lcom/android/internal/policy/IKeyguardStateCallback;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/IKeyguardStateCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardStateCallback;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/android/internal/policy/IKeyguardStateCallbackCompat;->mCallback:Lcom/android/internal/policy/IKeyguardStateCallback;

    .line 9
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/internal/policy/IKeyguardStateCallbackCompat;->mCallback:Lcom/android/internal/policy/IKeyguardStateCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/IKeyguardStateCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onHasLockscreenWallpaperChanged(Z)V
    .locals 1
    .param p1, "hasLockscreenWallpaper"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/internal/policy/IKeyguardStateCallbackCompat;->mCallback:Lcom/android/internal/policy/IKeyguardStateCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/IKeyguardStateCallback;->onHasLockscreenWallpaperChanged(Z)V

    .line 29
    return-void
.end method

.method public onInputRestrictedStateChanged(Z)V
    .locals 1
    .param p1, "inputRestricted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/internal/policy/IKeyguardStateCallbackCompat;->mCallback:Lcom/android/internal/policy/IKeyguardStateCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/IKeyguardStateCallback;->onInputRestrictedStateChanged(Z)V

    .line 21
    return-void
.end method

.method public onShowingStateChanged(Z)V
    .locals 1
    .param p1, "showing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/internal/policy/IKeyguardStateCallbackCompat;->mCallback:Lcom/android/internal/policy/IKeyguardStateCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/IKeyguardStateCallback;->onShowingStateChanged(Z)V

    .line 13
    return-void
.end method

.method public onSimSecureStateChanged(Z)V
    .locals 1
    .param p1, "simSecure"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/internal/policy/IKeyguardStateCallbackCompat;->mCallback:Lcom/android/internal/policy/IKeyguardStateCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/IKeyguardStateCallback;->onSimSecureStateChanged(Z)V

    .line 17
    return-void
.end method

.method public onTrustedChanged(Z)V
    .locals 1
    .param p1, "trusted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/internal/policy/IKeyguardStateCallbackCompat;->mCallback:Lcom/android/internal/policy/IKeyguardStateCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/IKeyguardStateCallback;->onTrustedChanged(Z)V

    .line 25
    return-void
.end method
