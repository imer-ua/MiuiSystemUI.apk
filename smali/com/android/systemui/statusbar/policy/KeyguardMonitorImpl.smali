.class public Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardMonitorImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardMonitor;


# instance fields
.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mCanSkipBouncer:Z

.field private final mContext:Landroid/content/Context;

.field private mCurrentUser:I

.field private mKeyguardFadingAway:Z

.field private mKeyguardFadingAwayDelay:J

.field private mKeyguardFadingAwayDuration:J

.field private mKeyguardGoingAway:Z

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mListening:Z

.field private mOccluded:Z

.field private mSecure:Z

.field private mShowing:Z

.field private mSkipVolumeDialog:Z

.field private final mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;


# direct methods
.method static synthetic -set0(Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mCurrentUser:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->updateCanSkipBouncerState()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mSkipVolumeDialog:Z

    .line 50
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mContext:Landroid/content/Context;

    .line 51
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 52
    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl$1;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    .line 49
    return-void
.end method

.method private notifyKeyguardChanged()V
    .locals 4

    .prologue
    .line 130
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 131
    .local v2, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    .line 132
    .local v0, "callback":Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;->onKeyguardShowingChanged()V

    goto :goto_0

    .line 128
    .end local v0    # "callback":Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;
    :cond_0
    return-void
.end method

.method private updateCanSkipBouncerState()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mCurrentUser:I

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mCanSkipBouncer:Z

    .line 124
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mListening:Z

    if-eqz v0, :cond_1

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mListening:Z

    .line 65
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mCurrentUser:I

    .line 66
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->updateCanSkipBouncerState()V

    .line 67
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 68
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserTracker;->startTracking()V

    goto :goto_0
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0
    .param p1, "callback"    # Ljava/lang/Object;

    .prologue
    .line 61
    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    .end local p1    # "callback":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->addCallback(Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;)V

    return-void
.end method

.method public canSkipBouncer()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mCanSkipBouncer:Z

    return v0
.end method

.method public getKeyguardFadingAwayDelay()J
    .locals 2

    .prologue
    .line 159
    iget-wide v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mKeyguardFadingAwayDelay:J

    return-wide v0
.end method

.method public getKeyguardFadingAwayDuration()J
    .locals 2

    .prologue
    .line 164
    iget-wide v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mKeyguardFadingAwayDuration:J

    return-wide v0
.end method

.method public isDeviceInteractive()Z
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    return v0
.end method

.method public isKeyguardFadingAway()Z
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mKeyguardFadingAway:Z

    return v0
.end method

.method public isKeyguardGoingAway()Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mKeyguardGoingAway:Z

    return v0
.end method

.method public isOccluded()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mOccluded:Z

    return v0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mSecure:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mShowing:Z

    return v0
.end method

.method public needSkipVolumeDialog()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mSkipVolumeDialog:Z

    return v0
.end method

.method public notifyKeyguardDoneFading()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 143
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mKeyguardFadingAway:Z

    .line 144
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mKeyguardGoingAway:Z

    .line 142
    return-void
.end method

.method public notifyKeyguardFadingAway(JJ)V
    .locals 1
    .param p1, "delay"    # J
    .param p3, "fadeoutDuration"    # J

    .prologue
    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mKeyguardFadingAway:Z

    .line 138
    iput-wide p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mKeyguardFadingAwayDelay:J

    .line 139
    iput-wide p3, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mKeyguardFadingAwayDuration:J

    .line 136
    return-void
.end method

.method public notifyKeyguardGoingAway(Z)V
    .locals 0
    .param p1, "keyguardGoingAway"    # Z

    .prologue
    .line 168
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mKeyguardGoingAway:Z

    .line 167
    return-void
.end method

.method public notifyKeyguardState(ZZZ)V
    .locals 1
    .param p1, "showing"    # Z
    .param p2, "secure"    # Z
    .param p3, "occluded"    # Z

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mShowing:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mSecure:Z

    if-ne v0, p2, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mOccluded:Z

    if-ne v0, p3, :cond_0

    return-void

    .line 98
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mShowing:Z

    .line 99
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mSecure:Z

    .line 100
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mOccluded:Z

    .line 101
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->notifyKeyguardChanged()V

    .line 96
    return-void
.end method

.method public notifySkipVolumeDialog(Z)V
    .locals 0
    .param p1, "skip"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mSkipVolumeDialog:Z

    .line 105
    return-void
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    .prologue
    const/4 v1, 0x0

    .line 73
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mListening:Z

    if-eqz v0, :cond_0

    .line 74
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mListening:Z

    .line 75
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 76
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserTracker;->stopTracking()V

    .line 72
    :cond_0
    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0
    .param p1, "callback"    # Ljava/lang/Object;

    .prologue
    .line 72
    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    .end local p1    # "callback":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->removeCallback(Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;)V

    return-void
.end method
