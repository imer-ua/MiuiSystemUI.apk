.class public Lcom/android/systemui/DockedStackExistsListener;
.super Landroid/view/IDockedStackListener$Stub;
.source "DockedStackExistsListener.java"


# instance fields
.field private final mCallback:Lcom/android/systemui/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/util/function/Consumer",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/systemui/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/util/function/Consumer",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "callback":Lcom/android/systemui/util/function/Consumer;, "Lcom/android/systemui/util/function/Consumer<Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Landroid/view/IDockedStackListener$Stub;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/systemui/DockedStackExistsListener;->mCallback:Lcom/android/systemui/util/function/Consumer;

    .line 34
    return-void
.end method

.method public static register(Lcom/android/systemui/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/util/function/Consumer",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "callback":Lcom/android/systemui/util/function/Consumer;, "Lcom/android/systemui/util/function/Consumer<Ljava/lang/Boolean;>;"
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    .line 67
    new-instance v2, Lcom/android/systemui/DockedStackExistsListener;

    invoke-direct {v2, p0}, Lcom/android/systemui/DockedStackExistsListener;-><init>(Lcom/android/systemui/util/function/Consumer;)V

    .line 66
    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->registerDockedStackListener(Landroid/view/IDockedStackListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "DockedStackExistsListener"

    const-string/jumbo v2, "Failed registering docked stack exists listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public onAdjustedForImeChanged(ZJ)V
    .locals 0
    .param p1, "adjustedForIme"    # Z
    .param p2, "animDuration"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 57
    return-void
.end method

.method public onDividerVisibilityChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 39
    return-void
.end method

.method public onDockSideChanged(I)V
    .locals 0
    .param p1, "newDockSide"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 61
    return-void
.end method

.method public onDockedStackExistsChanged(Z)V
    .locals 2
    .param p1, "exists"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/systemui/DockedStackExistsListener;->mCallback:Lcom/android/systemui/util/function/Consumer;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 43
    return-void
.end method

.method public onDockedStackMinimizedChanged(ZJ)V
    .locals 0
    .param p1, "minimized"    # Z
    .param p2, "animDuration"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 48
    return-void
.end method
