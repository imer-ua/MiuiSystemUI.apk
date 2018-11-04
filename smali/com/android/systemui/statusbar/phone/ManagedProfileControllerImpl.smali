.class public Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;
.super Ljava/lang/Object;
.source "ManagedProfileControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/ManagedProfileController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl$1;
    }
.end annotation


# instance fields
.field private final mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentUser:I

.field private mListening:Z

.field private final mProfiles:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->reloadManagedProfiles()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mCallbacks:Ljava/util/List;

    .line 124
    new-instance v0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 46
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mContext:Landroid/content/Context;

    .line 47
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mUserManager:Landroid/os/UserManager;

    .line 48
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mProfiles:Ljava/util/LinkedList;

    .line 45
    return-void
.end method

.method private reloadManagedProfiles()V
    .locals 8

    .prologue
    .line 69
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mProfiles:Ljava/util/LinkedList;

    monitor-enter v7

    .line 70
    :try_start_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mProfiles:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-lez v6, :cond_1

    const/4 v2, 0x1

    .line 71
    .local v2, "hadProfile":Z
    :goto_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    .line 72
    .local v5, "user":I
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mProfiles:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->clear()V

    .line 74
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6, v5}, Landroid/os/UserManager;->getEnabledProfiles(I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "ui$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 75
    .local v3, "ui":Landroid/content/pm/UserInfo;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 76
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mProfiles:Ljava/util/LinkedList;

    invoke-virtual {v6, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 69
    .end local v2    # "hadProfile":Z
    .end local v3    # "ui":Landroid/content/pm/UserInfo;
    .end local v4    # "ui$iterator":Ljava/util/Iterator;
    .end local v5    # "user":I
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 70
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "hadProfile":Z
    goto :goto_0

    .line 79
    .restart local v4    # "ui$iterator":Ljava/util/Iterator;
    .restart local v5    # "user":I
    :cond_2
    :try_start_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mProfiles:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-nez v6, :cond_3

    if-eqz v2, :cond_3

    iget v6, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mCurrentUser:I

    if-ne v5, v6, :cond_3

    .line 80
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mCallbacks:Ljava/util/List;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;

    .line 81
    .local v0, "callback":Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;
    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;->onManagedProfileRemoved()V

    goto :goto_2

    .line 84
    .end local v0    # "callback":Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;
    .end local v1    # "callback$iterator":Ljava/util/Iterator;
    :cond_3
    iput v5, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mCurrentUser:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v7

    .line 68
    return-void
.end method

.method private setListening(Z)V
    .locals 6
    .param p1, "listening"    # Z

    .prologue
    const/4 v4, 0x0

    .line 108
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mListening:Z

    .line 109
    if-eqz p1, :cond_0

    .line 110
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->reloadManagedProfiles()V

    .line 112
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 113
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    const-string/jumbo v0, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    const-string/jumbo v0, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    const-string/jumbo v0, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    const-string/jumbo v0, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 107
    .end local v3    # "filter":Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;

    .prologue
    const/4 v1, 0x1

    .line 52
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 54
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->setListening(Z)V

    .line 56
    :cond_0
    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;->onManagedProfileChanged()V

    .line 51
    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0
    .param p1, "callback"    # Ljava/lang/Object;

    .prologue
    .line 51
    check-cast p1, Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;

    .end local p1    # "callback":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->addCallback(Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;)V

    return-void
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;

    .prologue
    const/4 v1, 0x0

    .line 60
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 61
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->setListening(Z)V

    .line 59
    :cond_0
    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0
    .param p1, "callback"    # Ljava/lang/Object;

    .prologue
    .line 59
    check-cast p1, Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;

    .end local p1    # "callback":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->removeCallback(Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;)V

    return-void
.end method
