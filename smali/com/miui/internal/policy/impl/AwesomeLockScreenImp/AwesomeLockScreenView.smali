.class public Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;
.super Lmiui/maml/component/MamlView;
.source "AwesomeLockScreenView.java"


# instance fields
.field private mHasNavigationBar:Z

.field private mIsPsensorDisabled:Z

.field private mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field private mPaused:Z

.field private mProximitySensorWrapper:Lmiui/util/ProximitySensorWrapper;

.field private final mWakeupForNotification:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "root"    # Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0, p1, p2}, Lmiui/maml/component/MamlView;-><init>(Landroid/content/Context;Lmiui/maml/ScreenElementRoot;)V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->mProximitySensorWrapper:Lmiui/util/ProximitySensorWrapper;

    .line 37
    iput-boolean v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->mIsPsensorDisabled:Z

    .line 39
    iput-boolean v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->mPaused:Z

    .line 43
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 44
    const-string/jumbo v1, "wakeup_for_keyguard_notification"

    .line 46
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    .line 45
    const/4 v3, 0x1

    .line 43
    invoke-static {v0, v1, v3, v2}, Landroid/provider/MiuiSettings$System;->getBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->mWakeupForNotification:Z

    .line 47
    invoke-direct {p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->initInner()V

    .line 48
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/MiuiKeyguardUtils;->isPsensorDisabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->mIsPsensorDisabled:Z

    .line 41
    return-void
.end method

.method private initInner()V
    .locals 3

    .prologue
    .line 63
    const-string/jumbo v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 62
    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 65
    .local v1, "mWindowManager":Landroid/view/IWindowManager;
    :try_start_0
    invoke-interface {v1}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v2

    iput-boolean v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->mHasNavigationBar:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 101
    invoke-super {p0}, Lmiui/maml/component/MamlView;->onAttachedToWindow()V

    .line 102
    iget-boolean v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->mPaused:Z

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->onPause()V

    .line 100
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 109
    invoke-super {p0}, Lmiui/maml/component/MamlView;->onDetachedFromWindow()V

    .line 108
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 77
    iget-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isInSettings()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    const/4 v1, 0x0

    return v1

    .line 81
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-le v1, v2, :cond_2

    .line 82
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 83
    const-string/jumbo v1, "AwesomeLockScreenView"

    const-string/jumbo v2, "touch point count > 1, set to ACTION_CANCEL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lmiui/maml/component/MamlView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 84
    :cond_2
    iget-boolean v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->mHasNavigationBar:Z

    if-eqz v1, :cond_1

    .line 85
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 86
    .local v0, "actionMasked":I
    if-eq v0, v3, :cond_3

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 87
    :cond_3
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->mPaused:Z

    .line 53
    invoke-virtual {p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->onPause()V

    .line 51
    return-void
.end method

.method public rebindRoot()V
    .locals 0

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->init()V

    .line 113
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->mPaused:Z

    .line 58
    invoke-virtual {p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->onResume()V

    .line 56
    return-void
.end method

.method public setPanelView(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 0
    .param p1, "panelView"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 71
    return-void
.end method
