.class public Landroid/view/IWindowManagerCompat;
.super Ljava/lang/Object;
.source "IWindowManagerCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addWindowToken(Landroid/view/IWindowManager;Landroid/os/IBinder;II)V
    .locals 0
    .param p0, "windowManager"    # Landroid/view/IWindowManager;
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "type"    # I
    .param p3, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 13
    invoke-interface {p0, p1, p2}, Landroid/view/IWindowManager;->addWindowToken(Landroid/os/IBinder;I)V

    .line 12
    return-void
.end method

.method public static removeWindowToken(Landroid/view/IWindowManager;Landroid/os/IBinder;I)V
    .locals 0
    .param p0, "windowManager"    # Landroid/view/IWindowManager;
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-interface {p0, p1}, Landroid/view/IWindowManager;->removeWindowToken(Landroid/os/IBinder;)V

    .line 17
    return-void
.end method
