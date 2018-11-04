.class Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl$2;
.super Ljava/lang/Object;
.source "RotationLockControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->setRotationLock(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;

.field final synthetic val$enabled:Z

.field final synthetic val$rotation:I


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;ZI)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;
    .param p2, "val$enabled"    # Z
    .param p3, "val$rotation"    # I

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl$2;->val$enabled:Z

    iput p3, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl$2;->val$rotation:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 126
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    .line 127
    .local v2, "wm":Landroid/view/IWindowManager;
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl$2;->val$enabled:Z

    if-eqz v3, :cond_1

    .line 128
    iget v3, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl$2;->val$rotation:I

    invoke-interface {v2, v3}, Landroid/view/IWindowManager;->freezeRotation(I)V

    .line 129
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;

    invoke-static {v3, v2}, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->-wrap0(Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;Landroid/view/IWindowManager;)I

    move-result v0

    .line 130
    .local v0, "curRotation":I
    if-eqz v0, :cond_0

    const/4 v3, 0x2

    if-eq v3, v0, :cond_0

    .line 131
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->-get0(Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl$2$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl$2$1;-><init>(Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl$2;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 124
    .end local v0    # "curRotation":I
    .end local v2    # "wm":Landroid/view/IWindowManager;
    :cond_0
    :goto_0
    return-void

    .line 139
    .restart local v2    # "wm":Landroid/view/IWindowManager;
    :cond_1
    invoke-interface {v2}, Landroid/view/IWindowManager;->thawRotation()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 141
    .end local v2    # "wm":Landroid/view/IWindowManager;
    :catch_0
    move-exception v1

    .local v1, "exc":Landroid/os/RemoteException;
    goto :goto_0
.end method
