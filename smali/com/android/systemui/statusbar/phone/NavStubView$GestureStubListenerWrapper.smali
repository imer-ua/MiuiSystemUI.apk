.class Lcom/android/systemui/statusbar/phone/NavStubView$GestureStubListenerWrapper;
.super Ljava/lang/Object;
.source "NavStubView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavStubView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureStubListenerWrapper"
.end annotation


# instance fields
.field private getGestureStubListenerMethod:Ljava/lang/reflect/Method;

.field mListener:Landroid/view/IGestureStubListener;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavStubView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NavStubView;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/NavStubView;

    .prologue
    .line 1457
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavStubView$GestureStubListenerWrapper;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1458
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavStubView$GestureStubListenerWrapper;->getGestureStubListener()Landroid/view/IGestureStubListener;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView$GestureStubListenerWrapper;->mListener:Landroid/view/IGestureStubListener;

    .line 1457
    return-void
.end method

.method private getGestureStubListener()Landroid/view/IGestureStubListener;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1503
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView$GestureStubListenerWrapper;->getGestureStubListenerMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 1504
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 1505
    const-string/jumbo v2, "getGestureStubListener"

    .line 1504
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView$GestureStubListenerWrapper;->getGestureStubListenerMethod:Ljava/lang/reflect/Method;

    .line 1507
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView$GestureStubListenerWrapper;->getGestureStubListenerMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    .line 1508
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView$GestureStubListenerWrapper;->getGestureStubListenerMethod:Ljava/lang/reflect/Method;

    .line 1509
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    .line 1508
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/IGestureStubListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1511
    :catch_0
    move-exception v0

    .line 1512
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1514
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-object v4
.end method


# virtual methods
.method public onGestureFinish(Z)V
    .locals 2
    .param p1, "immediate"    # Z

    .prologue
    .line 1483
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView$GestureStubListenerWrapper;->mListener:Landroid/view/IGestureStubListener;

    if-eqz v1, :cond_0

    .line 1484
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView$GestureStubListenerWrapper;->mListener:Landroid/view/IGestureStubListener;

    invoke-interface {v1, p1}, Landroid/view/IGestureStubListener;->onGestureFinish(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1481
    :cond_0
    :goto_0
    return-void

    .line 1486
    :catch_0
    move-exception v0

    .line 1487
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onGestureReady()V
    .locals 2

    .prologue
    .line 1463
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView$GestureStubListenerWrapper;->mListener:Landroid/view/IGestureStubListener;

    if-eqz v1, :cond_0

    .line 1464
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView$GestureStubListenerWrapper;->mListener:Landroid/view/IGestureStubListener;

    invoke-interface {v1}, Landroid/view/IGestureStubListener;->onGestureReady()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1461
    :cond_0
    :goto_0
    return-void

    .line 1466
    :catch_0
    move-exception v0

    .line 1467
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onGestureStart()V
    .locals 2

    .prologue
    .line 1473
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView$GestureStubListenerWrapper;->mListener:Landroid/view/IGestureStubListener;

    if-eqz v1, :cond_0

    .line 1474
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView$GestureStubListenerWrapper;->mListener:Landroid/view/IGestureStubListener;

    invoke-interface {v1}, Landroid/view/IGestureStubListener;->onGestureStart()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1471
    :cond_0
    :goto_0
    return-void

    .line 1476
    :catch_0
    move-exception v0

    .line 1477
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public skipAppTransition()V
    .locals 2

    .prologue
    .line 1493
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView$GestureStubListenerWrapper;->mListener:Landroid/view/IGestureStubListener;

    if-eqz v1, :cond_0

    .line 1494
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView$GestureStubListenerWrapper;->mListener:Landroid/view/IGestureStubListener;

    invoke-interface {v1}, Landroid/view/IGestureStubListener;->skipAppTransition()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1491
    :cond_0
    :goto_0
    return-void

    .line 1496
    :catch_0
    move-exception v0

    .line 1497
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
