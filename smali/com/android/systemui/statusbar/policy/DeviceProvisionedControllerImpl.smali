.class public Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;
.super Lcom/android/systemui/settings/CurrentUserTracker;
.source "DeviceProvisionedControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl$1;
    }
.end annotation


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mDeviceProvisionedUri:Landroid/net/Uri;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;",
            ">;"
        }
    .end annotation
.end field

.field protected final mSettingsObserver:Landroid/database/ContentObserver;

.field private final mUserSetupUri:Landroid/net/Uri;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->mUserSetupUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->notifyProvisionedChanged()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->notifySetupChanged()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/systemui/settings/CurrentUserTracker;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->mListeners:Ljava/util/ArrayList;

    .line 127
    new-instance v1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl$1;

    .line 128
    sget-object v0, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 127
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 41
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->mContext:Landroid/content/Context;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 43
    const-string/jumbo v0, "device_provisioned"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->mDeviceProvisionedUri:Landroid/net/Uri;

    .line 44
    const-string/jumbo v0, "user_setup_complete"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->mUserSetupUri:Landroid/net/Uri;

    .line 39
    return-void
.end method

.method private notifyProvisionedChanged()V
    .locals 3

    .prologue
    .line 122
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "deviceProvisionedListener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

    .line 123
    .local v0, "deviceProvisionedListener":Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;->onDeviceProvisionedChanged()V

    goto :goto_0

    .line 121
    .end local v0    # "deviceProvisionedListener":Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;
    :cond_0
    return-void
.end method

.method private notifySetupChanged()V
    .locals 3

    .prologue
    .line 116
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "deviceProvisionedListener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

    .line 117
    .local v0, "deviceProvisionedListener":Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;->onUserSetupChanged()V

    goto :goto_0

    .line 115
    .end local v0    # "deviceProvisionedListener":Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;
    :cond_0
    return-void
.end method

.method private notifyUserChanged()V
    .locals 3

    .prologue
    .line 110
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "deviceProvisionedListener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

    .line 111
    .local v0, "deviceProvisionedListener":Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;->onUserSwitched()V

    goto :goto_0

    .line 109
    .end local v0    # "deviceProvisionedListener":Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;
    :cond_0
    return-void
.end method

.method private startListening(I)V
    .locals 5
    .param p1, "user"    # I

    .prologue
    const/4 v4, 0x1

    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->mDeviceProvisionedUri:Landroid/net/Uri;

    .line 88
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    .line 87
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 89
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->mUserSetupUri:Landroid/net/Uri;

    .line 90
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 89
    invoke-virtual {v0, v1, v4, v2, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 91
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->startTracking()V

    .line 86
    return-void
.end method

.method private stopListening()V
    .locals 2

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->stopTracking()V

    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 94
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->getCurrentUser()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->startListening(I)V

    .line 74
    :cond_0
    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;->onUserSetupChanged()V

    .line 75
    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;->onDeviceProvisionedChanged()V

    .line 69
    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0
    .param p1, "listener"    # Ljava/lang/Object;

    .prologue
    .line 69
    check-cast p1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

    .end local p1    # "listener":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->addCallback(Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;)V

    return-void
.end method

.method public getCurrentUser()I
    .locals 1

    .prologue
    .line 60
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    return v0
.end method

.method public isCurrentUserSetup()Z
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->isUserSetup(I)Z

    move-result v0

    return v0
.end method

.method public isDeviceProvisioned()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 49
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isUserSetup(I)Z
    .locals 3
    .param p1, "currentUser"    # I

    .prologue
    const/4 v0, 0x0

    .line 54
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "user_setup_complete"

    invoke-static {v1, v2, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onUserSwitched(I)V
    .locals 5
    .param p1, "newUserId"    # I

    .prologue
    const/4 v4, 0x1

    .line 101
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 102
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->mDeviceProvisionedUri:Landroid/net/Uri;

    .line 103
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    .line 102
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 104
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->mUserSetupUri:Landroid/net/Uri;

    .line 105
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 104
    invoke-virtual {v0, v1, v4, v2, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 106
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->notifyUserChanged()V

    .line 100
    return-void
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 81
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->stopListening()V

    .line 79
    :cond_0
    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0
    .param p1, "listener"    # Ljava/lang/Object;

    .prologue
    .line 79
    check-cast p1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

    .end local p1    # "listener":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->removeCallback(Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;)V

    return-void
.end method
