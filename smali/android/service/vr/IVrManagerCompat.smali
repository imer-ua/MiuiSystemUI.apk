.class public Landroid/service/vr/IVrManagerCompat;
.super Ljava/lang/Object;
.source "IVrManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/vr/IVrManagerCompat$IVrManagerCompatCallbacks;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerListener(Landroid/service/vr/IVrManagerCompat$IVrManagerCompatCallbacks;)V
    .locals 5
    .param p0, "callbacks"    # Landroid/service/vr/IVrManagerCompat$IVrManagerCompatCallbacks;

    .prologue
    .line 14
    const-string/jumbo v2, "vrmanager"

    .line 13
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/vr/IVrManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;

    move-result-object v1

    .line 16
    .local v1, "vrManager":Landroid/service/vr/IVrManager;
    :try_start_0
    new-instance v2, Landroid/service/vr/IVrManagerCompat$1;

    invoke-direct {v2, p0}, Landroid/service/vr/IVrManagerCompat$1;-><init>(Landroid/service/vr/IVrManagerCompat$IVrManagerCompatCallbacks;)V

    invoke-interface {v1, v2}, Landroid/service/vr/IVrManager;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    :goto_0
    return-void

    .line 22
    :catch_0
    move-exception v0

    .line 23
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "StatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to register VR mode state listener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
