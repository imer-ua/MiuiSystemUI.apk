.class public final Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;
.super Ljava/lang/Object;
.source "RotationLockControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/RotationLockController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl$1;
    }
.end annotation


# instance fields
.field private final mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;Landroid/view/IWindowManager;)I
    .locals 1
    .param p1, "wm"    # Landroid/view/IWindowManager;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->getRotation(Landroid/view/IWindowManager;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->notifyChanged()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;II)V
    .locals 0
    .param p1, "resId"    # I
    .param p2, "length"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->showToast(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mHandler:Landroid/os/Handler;

    .line 45
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 48
    new-instance v0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;)V

    .line 47
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    .line 56
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mContext:Landroid/content/Context;

    .line 57
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->setListening(Z)V

    .line 55
    return-void
.end method

.method private getRotation(Landroid/view/IWindowManager;)I
    .locals 4
    .param p1, "wm"    # Landroid/view/IWindowManager;

    .prologue
    const/4 v3, 0x0

    .line 161
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_0

    .line 162
    const-string/jumbo v1, "getRotation"

    const-class v2, Ljava/lang/Integer;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, v1, v2, v3}, Lmiui/util/ReflectionUtils;->tryCallMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;

    move-result-object v0

    .line 166
    .local v0, "reference":Lmiui/util/ObjectReference;, "Lmiui/util/ObjectReference<Ljava/lang/Integer;>;"
    :goto_0
    invoke-virtual {v0}, Lmiui/util/ObjectReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 164
    .end local v0    # "reference":Lmiui/util/ObjectReference;, "Lmiui/util/ObjectReference<Ljava/lang/Integer;>;"
    :cond_0
    const-string/jumbo v1, "getDefaultDisplayRotation"

    const-class v2, Ljava/lang/Integer;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, v1, v2, v3}, Lmiui/util/ReflectionUtils;->tryCallMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;

    move-result-object v0

    .restart local v0    # "reference":Lmiui/util/ObjectReference;, "Lmiui/util/ObjectReference<Ljava/lang/Integer;>;"
    goto :goto_0
.end method

.method private notifyChanged()V
    .locals 3

    .prologue
    .line 97
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;

    .line 98
    .local v0, "callback":Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->notifyChanged(Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;)V

    goto :goto_0

    .line 96
    .end local v0    # "callback":Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;
    :cond_0
    return-void
.end method

.method private notifyChanged(Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v0

    .line 104
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/view/RotationPolicy;->isRotationLockToggleVisible(Landroid/content/Context;)Z

    move-result v1

    .line 103
    invoke-interface {p1, v0, v1}, Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;->onRotationLockStateChanged(ZZ)V

    .line 102
    return-void
.end method

.method private setRotationLock(ZI)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "rotation"    # I

    .prologue
    .line 122
    new-instance v0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl$2;-><init>(Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;ZI)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 121
    return-void
.end method

.method private showToast(II)V
    .locals 1
    .param p1, "resId"    # I
    .param p2, "length"    # I

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->showToast(Ljava/lang/CharSequence;I)V

    .line 147
    return-void
.end method

.method private showToast(Ljava/lang/CharSequence;I)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/CharSequence;
    .param p2, "length"    # I

    .prologue
    .line 152
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 153
    .local v0, "toast":Landroid/widget/Toast;
    const/16 v1, 0x7d6

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setType(I)V

    .line 154
    invoke-virtual {v0}, Landroid/widget/Toast;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 156
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 151
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->notifyChanged(Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;)V

    .line 60
    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0
    .param p1, "callback"    # Ljava/lang/Object;

    .prologue
    .line 60
    check-cast p1, Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;

    .end local p1    # "callback":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->addCallback(Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;)V

    return-void
.end method

.method public getRotationLockOrientation()I
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public isRotationLocked()Z
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 65
    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0
    .param p1, "callback"    # Ljava/lang/Object;

    .prologue
    .line 65
    check-cast p1, Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;

    .end local p1    # "callback":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->removeCallback(Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;)V

    return-void
.end method

.method public setListening(Z)V
    .locals 3
    .param p1, "listening"    # Z

    .prologue
    .line 88
    if-eqz p1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    .line 90
    const/4 v2, -0x1

    .line 89
    invoke-static {v0, v1, v2}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;I)V

    .line 87
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    goto :goto_0
.end method

.method public setRotationLock(Landroid/content/Context;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z

    .prologue
    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 113
    const-string/jumbo v1, "hide_rotation_lock_toggle_for_accessibility"

    .line 114
    const/4 v2, 0x0

    .line 115
    const/4 v3, -0x2

    .line 111
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 118
    const/4 v0, -0x1

    invoke-direct {p0, p2, v0}, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->setRotationLock(ZI)V

    .line 110
    return-void
.end method

.method public setRotationLocked(Z)V
    .locals 1
    .param p1, "locked"    # Z

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->setRotationLock(Landroid/content/Context;Z)V

    .line 78
    return-void
.end method
