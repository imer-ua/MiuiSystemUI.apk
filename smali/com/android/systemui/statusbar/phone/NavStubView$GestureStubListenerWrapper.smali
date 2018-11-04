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
    .line 1496
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavStubView$GestureStubListenerWrapper;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1497
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavStubView$GestureStubListenerWrapper;->getGestureStubListener()Landroid/view/IGestureStubListener;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView$GestureStubListenerWrapper;->mListener:Landroid/view/IGestureStubListener;

    .line 1496
    return-void
.end method

.method private getGestureStubListener()Landroid/view/IGestureStubListener;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1542
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView$GestureStubListenerWrapper;->getGestureStubListenerMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 1543
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 1544
    const-string/jumbo v2, "getGestureStubListener"

    .line 1543
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView$GestureStubListenerWrapper;->getGestureStubListenerMethod:Ljava/lang/reflect/Method;

    .line 1546
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView$GestureStubListenerWrapper;->getGestureStubListenerMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    .line 1547
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView$GestureStubListenerWrapper;->getGestureStubListenerMethod:Ljava/lang/reflect/Method;

    .line 1548
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    .line 1547
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/IGestureStubListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1550
    :catch_0
    move-exception v0

    .line 1551
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1553
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-object v4
.end method


# virtual methods
.method public onGestureFinish(Z)V
    .locals 2
    .param p1, "immediate"    # Z

    .prologue
    .line 1522
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView$GestureStubListenerWrapper;->mListener:Landroid/view/IGestureStubListener;

    if-eqz v1, :cond_0

    .line 1523
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView$GestureStubListenerWrapper;->mListener:Landroid/view/IGestureStubListener;

    invoke-interface {v1, p1}, Landroid/view/IGestureStubListener;->onGestureFinish(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1520
    :cond_0
    :goto_0
    return-void

    .line 1525
    :catch_0
    move-exception v0

    .line 1526
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onGestureReady()V
    .locals 2

    .prologue
    .line 1502
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView$GestureStubListenerWrapper;->mListener:Landroid/view/IGestureStubListener;

    if-eqz v1, :cond_0

    .line 1503
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView$GestureStubListenerWrapper;->mListener:Landroid/view/IGestureStubListener;

    invoke-interface {v1}, Landroid/view/IGestureStubListener;->onGestureReady()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1500
    :cond_0
    :goto_0
    return-void

    .line 1505
    :catch_0
    move-exception v0

    .line 1506
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onGestureStart()V
    .locals 2

    .prologue
    .line 1512
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView$GestureStubListenerWrapper;->mListener:Landroid/view/IGestureStubListener;

    if-eqz v1, :cond_0

    .line 1513
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView$GestureStubListenerWrapper;->mListener:Landroid/view/IGestureStubListener;

    invoke-interface {v1}, Landroid/view/IGestureStubListener;->onGestureStart()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1510
    :cond_0
    :goto_0
    return-void

    .line 1515
    :catch_0
    move-exception v0

    .line 1516
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public skipAppTransition()V
    .locals 2

    .prologue
    .line 1532
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView$GestureStubListenerWrapper;->mListener:Landroid/view/IGestureStubListener;

    if-eqz v1, :cond_0

    .line 1533
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView$GestureStubListenerWrapper;->mListener:Landroid/view/IGestureStubListener;

    invoke-interface {v1}, Landroid/view/IGestureStubListener;->skipAppTransition()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1530
    :cond_0
    :goto_0
    return-void

    .line 1535
    :catch_0
    move-exception v0

    .line 1536
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
