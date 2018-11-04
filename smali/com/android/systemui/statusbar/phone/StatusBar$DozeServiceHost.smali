.class final Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Lcom/android/systemui/doze/DozeHost;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DozeServiceHost"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost$1;
    }
.end annotation


# instance fields
.field private mAODView:Lcom/android/keyguard/AODView;

.field private mAnimateWakeup:Z

.field private mAodScrim:Landroid/view/View;

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/doze/DozeHost$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mContainer:Landroid/view/ViewGroup;

.field private mSkipFaceUnlockWhenStopDoze:Z

.field private mStopAodRunnable:Ljava/lang/Runnable;

.field private mViewManager:Landroid/view/WindowManager;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->shouldAnimateWakeup()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->onStopDoze()V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/StatusBar;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 6776
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6736
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mCallbacks:Ljava/util/ArrayList;

    .line 6892
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mStopAodRunnable:Ljava/lang/Runnable;

    .line 6777
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    .line 6778
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->showSecurityIdentityViewAt()Lcom/android/keyguard/AODView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mAODView:Lcom/android/keyguard/AODView;

    .line 6779
    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/MiuiKeyguardUtils;->skipFaceUnlockWhenStopDoze(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mSkipFaceUnlockWhenStopDoze:Z

    .line 6776
    return-void
.end method

.method private onStopDoze()V
    .locals 2

    .prologue
    .line 6871
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get11(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6872
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-set3(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z

    .line 6873
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mAODView:Lcom/android/keyguard/AODView;

    invoke-virtual {v0}, Lcom/android/keyguard/AODView;->onStopDoze()V

    .line 6874
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get10(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/doze/DozeLog;->traceDozing(Landroid/content/Context;Z)V

    .line 6875
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap31(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 6877
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mSkipFaceUnlockWhenStopDoze:Z

    if-nez v0, :cond_0

    .line 6878
    const-string/jumbo v0, "face_unlock"

    const-string/jumbo v1, "screen turn on aod"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6879
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sScreenTurnedOnTime:J

    .line 6880
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->startFaceUnlock()V

    .line 6883
    :cond_0
    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardUtils;->isGxzwSensor()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6884
    invoke-static {}, Lcom/android/keyguard/fod/MiuiGxzwManager;->getInstance()Lcom/android/keyguard/fod/MiuiGxzwManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/fod/MiuiGxzwManager;->stopDozing()V

    .line 6885
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateGxzwState()V

    .line 6888
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->removeAODView()V

    .line 6870
    :cond_2
    return-void
.end method

.method private shouldAnimateWakeup()Z
    .locals 1

    .prologue
    .line 6974
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mAnimateWakeup:Z

    return v0
.end method

.method private showSecurityIdentityViewAt()Lcom/android/keyguard/AODView;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v1, -0x1

    .line 6745
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mViewManager:Landroid/view/WindowManager;

    .line 6747
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 6748
    .local v7, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x904001d

    const/4 v3, 0x0

    invoke-virtual {v7, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/keyguard/AODView;

    .line 6749
    .local v6, "frame":Lcom/android/keyguard/AODView;
    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost$2;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;)V

    invoke-virtual {v6, v2}, Lcom/android/keyguard/AODView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 6755
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 6762
    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardUtils;->isGxzwSensor()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v5, -0x2

    .line 6758
    :goto_0
    const/16 v3, 0x7df

    .line 6759
    const/16 v4, 0x500

    move v2, v1

    .line 6755
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 6763
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-static {v0, v8}, Landroid/view/WindowManagerCompat;->setLayoutInDisplayCutoutMode(Landroid/view/WindowManager$LayoutParams;I)V

    .line 6765
    invoke-static {v0}, Lcom/android/keyguard/KeyguardCompatibilityHelperForO;->setFlag(Landroid/view/WindowManager$LayoutParams;)V

    .line 6766
    const-string/jumbo v1, "AOD"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 6767
    iput v8, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 6768
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mViewManager:Landroid/view/WindowManager;

    invoke-interface {v1, v6, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 6769
    const v1, 0x91200a7

    invoke-virtual {v6, v1}, Lcom/android/keyguard/AODView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mContainer:Landroid/view/ViewGroup;

    .line 6770
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 6771
    const v1, 0x91200ad

    invoke-virtual {v6, v1}, Lcom/android/keyguard/AODView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mAodScrim:Landroid/view/View;

    .line 6772
    const/16 v1, 0x8

    invoke-virtual {v6, v1}, Lcom/android/keyguard/AODView;->setVisibility(I)V

    .line 6773
    return-object v6

    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    move v5, v1

    .line 6762
    goto :goto_0
.end method


# virtual methods
.method public fireAodState(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 6798
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mCallbacks:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/doze/DozeHost$Callback;

    .line 6799
    .local v0, "callback":Lcom/android/systemui/doze/DozeHost$Callback;
    invoke-interface {v0, p1}, Lcom/android/systemui/doze/DozeHost$Callback;->onFodInAodStateChanged(Z)V

    goto :goto_0

    .line 6797
    .end local v0    # "callback":Lcom/android/systemui/doze/DozeHost$Callback;
    :cond_0
    return-void
.end method

.method public firePowerSaveChanged(Z)V
    .locals 3
    .param p1, "active"    # Z

    .prologue
    .line 6804
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mCallbacks:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/doze/DozeHost$Callback;

    .line 6805
    .local v0, "callback":Lcom/android/systemui/doze/DozeHost$Callback;
    invoke-interface {v0, p1}, Lcom/android/systemui/doze/DozeHost$Callback;->onPowerSaveChanged(Z)V

    goto :goto_0

    .line 6803
    .end local v0    # "callback":Lcom/android/systemui/doze/DozeHost$Callback;
    :cond_0
    return-void
.end method

.method public isDozing()Z
    .locals 1

    .prologue
    .line 6784
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get11(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v0

    return v0
.end method

.method public removeAODView()V
    .locals 2

    .prologue
    .line 6900
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 6901
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mAODView:Lcom/android/keyguard/AODView;

    invoke-virtual {v0}, Lcom/android/keyguard/AODView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6902
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mAODView:Lcom/android/keyguard/AODView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/keyguard/AODView;->setVisibility(I)V

    .line 6899
    :cond_0
    return-void
.end method

.method public stopDozing()V
    .locals 2

    .prologue
    .line 6863
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 6864
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->onStopDoze()V

    .line 6862
    :goto_0
    return-void

    .line 6866
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mStopAodRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 6794
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PSB.DozeServiceHost[mCallbacks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
