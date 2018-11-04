.class Lcom/android/systemui/fsgesture/FsGestureService$1;
.super Lcom/android/systemui/fsgesture/IFsGestureService$Stub;
.source "FsGestureService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/fsgesture/FsGestureService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fsgesture/FsGestureService;


# direct methods
.method constructor <init>(Lcom/android/systemui/fsgesture/FsGestureService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/fsgesture/FsGestureService;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureService$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureService;

    invoke-direct {p0}, Lcom/android/systemui/fsgesture/IFsGestureService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyHomeStatus(Z)V
    .locals 3
    .param p1, "isHomeEnter"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/FsGestureShowStateEvent;

    const-string/jumbo v2, "typefrom_home"

    invoke-direct {v1, p1, v2}, Lcom/android/systemui/recents/events/activity/FsGestureShowStateEvent;-><init>(ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/RecentsEventBus;->post(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    .line 43
    return-void
.end method

.method public registerCallback(Ljava/lang/String;Lcom/android/systemui/fsgesture/IFsGestureCallback;)V
    .locals 2
    .param p1, "callbackKey"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/systemui/fsgesture/IFsGestureCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/systemui/fsgesture/FsGestureService$1$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/fsgesture/FsGestureService$1$1;-><init>(Lcom/android/systemui/fsgesture/FsGestureService$1;Ljava/lang/String;Lcom/android/systemui/fsgesture/IFsGestureCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23
    return-void
.end method

.method public unregisterCallback(Ljava/lang/String;Lcom/android/systemui/fsgesture/IFsGestureCallback;)V
    .locals 2
    .param p1, "callbackKey"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/systemui/fsgesture/IFsGestureCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/systemui/fsgesture/FsGestureService$1$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/fsgesture/FsGestureService$1$2;-><init>(Lcom/android/systemui/fsgesture/FsGestureService$1;Ljava/lang/String;Lcom/android/systemui/fsgesture/IFsGestureCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 33
    return-void
.end method
