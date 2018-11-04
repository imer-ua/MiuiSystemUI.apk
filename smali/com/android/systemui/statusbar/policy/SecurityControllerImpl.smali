.class public Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;
.super Lcom/android/systemui/settings/CurrentUserTracker;
.source "SecurityControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/SecurityController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$1;,
        Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$2;,
        Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$CACertLoader;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final REQUEST:Landroid/net/NetworkRequest;


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mCallbacks"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mConnectivityManagerService:Landroid/net/IConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mCurrentVpns:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/internal/net/VpnConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mHasCACerts:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mUserManager:Landroid/os/UserManager;

.field private mVpnUserId:I


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;)Landroid/util/ArrayMap;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mHasCACerts:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->fireCallbacks()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->refreshCACerts()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->updateState()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 65
    const-string/jumbo v0, "SecurityController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->DEBUG:Z

    .line 70
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 71
    const/16 v1, 0xf

    .line 70
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 72
    const/16 v1, 0xd

    .line 70
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 73
    const/16 v1, 0xe

    .line 70
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->REQUEST:Landroid/net/NetworkRequest;

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/systemui/settings/CurrentUserTracker;-><init>(Landroid/content/Context;)V

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 91
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentVpns:Landroid/util/SparseArray;

    .line 97
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mHasCACerts:Landroid/util/ArrayMap;

    .line 362
    new-instance v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 380
    new-instance v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$2;-><init>(Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 101
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mContext:Landroid/content/Context;

    .line 103
    const-string/jumbo v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 102
    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 105
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 104
    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 107
    const-string/jumbo v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 106
    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mConnectivityManagerService:Landroid/net/IConnectivityManager;

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 110
    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 109
    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mUserManager:Landroid/os/UserManager;

    .line 112
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 113
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.security.action.TRUST_STORE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 115
    new-instance v5, Landroid/os/Handler;

    sget-object v0, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    invoke-direct {v5, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 114
    const/4 v4, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 118
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    sget-object v1, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->REQUEST:Landroid/net/NetworkRequest;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 119
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->onUserSwitched(I)V

    .line 120
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->startTracking()V

    .line 99
    return-void
.end method

.method private fireCallbacks()V
    .locals 4

    .prologue
    .line 307
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v3

    .line 308
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;

    .line 309
    .local v0, "callback":Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;->onStateChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 307
    .end local v0    # "callback":Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;
    .end local v1    # "callback$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v1    # "callback$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v3

    .line 306
    return-void
.end method

.method private getNameForVpnConfig(Lcom/android/internal/net/VpnConfig;Landroid/os/UserHandle;)Ljava/lang/String;
    .locals 6
    .param p1, "cfg"    # Lcom/android/internal/net/VpnConfig;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 291
    iget-boolean v3, p1, Lcom/android/internal/net/VpnConfig;->legacy:Z

    if-eqz v3, :cond_0

    .line 292
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mContext:Landroid/content/Context;

    const v4, 0x91001ff

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 295
    :cond_0
    iget-object v2, p1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 297
    .local v2, "vpnPackage":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 298
    const/4 v5, 0x0

    .line 297
    invoke-virtual {v3, v4, v5, p2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1

    .line 299
    .local v1, "userContext":Landroid/content/Context;
    invoke-static {v1, v2}, Lcom/android/internal/net/VpnConfig;->getVpnLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 300
    .end local v1    # "userContext":Landroid/content/Context;
    :catch_0
    move-exception v0

    .line 301
    .local v0, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v3, "SecurityController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is not present"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 302
    const/4 v3, 0x0

    return-object v3
.end method

.method private getPackageNameForVpnConfig(Lcom/android/internal/net/VpnConfig;)Ljava/lang/String;
    .locals 1
    .param p1, "cfg"    # Lcom/android/internal/net/VpnConfig;

    .prologue
    .line 341
    iget-boolean v0, p1, Lcom/android/internal/net/VpnConfig;->legacy:Z

    if-eqz v0, :cond_0

    .line 342
    const/4 v0, 0x0

    return-object v0

    .line 344
    :cond_0
    iget-object v0, p1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    return-object v0
.end method

.method private getWorkProfileUserId(I)I
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 179
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "userInfo$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 180
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 181
    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    return v2

    .line 184
    .end local v0    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_1
    const/16 v2, -0x2710

    return v2
.end method

.method private isVpnPackageBranded(Ljava/lang/String;)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 350
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 351
    const/16 v4, 0x80

    .line 350
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 352
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_0

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v3, :cond_1

    .line 353
    :cond_0
    return v6

    .line 352
    :cond_1
    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 355
    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v4, "com.android.systemui.IS_BRANDED"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 359
    .local v2, "isBranded":Z
    return v2

    .line 356
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "isBranded":Z
    :catch_0
    move-exception v0

    .line 357
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v6
.end method

.method private refreshCACerts()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 284
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_0

    return-void

    .line 285
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$CACertLoader;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$CACertLoader;-><init>(Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;)V

    new-array v2, v5, [Ljava/lang/Integer;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentUserId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$CACertLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 286
    iget v1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentUserId:I

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->getWorkProfileUserId(I)I

    move-result v0

    .line 287
    .local v0, "workProfileId":I
    const/16 v1, -0x2710

    if-eq v0, v1, :cond_1

    new-instance v1, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$CACertLoader;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$CACertLoader;-><init>(Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;)V

    new-array v2, v5, [Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$CACertLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 283
    :cond_1
    return-void
.end method

.method private updateState()V
    .locals 8

    .prologue
    .line 316
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 318
    .local v5, "vpns":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/net/VpnConfig;>;"
    :try_start_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "user$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 319
    .local v3, "user":Landroid/content/pm/UserInfo;
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mConnectivityManagerService:Landroid/net/IConnectivityManager;

    iget v7, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v6, v7}, Landroid/net/IConnectivityManager;->getVpnConfig(I)Lcom/android/internal/net/VpnConfig;

    move-result-object v0

    .line 320
    .local v0, "cfg":Lcom/android/internal/net/VpnConfig;
    if-eqz v0, :cond_0

    .line 322
    iget-boolean v6, v0, Lcom/android/internal/net/VpnConfig;->legacy:Z

    if-eqz v6, :cond_1

    .line 325
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mConnectivityManagerService:Landroid/net/IConnectivityManager;

    iget v7, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v6, v7}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v1

    .line 326
    .local v1, "legacyVpn":Lcom/android/internal/net/LegacyVpnInfo;
    if-eqz v1, :cond_0

    iget v6, v1, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_0

    .line 330
    .end local v1    # "legacyVpn":Lcom/android/internal/net/LegacyVpnInfo;
    :cond_1
    iget v6, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 332
    .end local v0    # "cfg":Lcom/android/internal/net/VpnConfig;
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    .end local v4    # "user$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .line 334
    .local v2, "rme":Landroid/os/RemoteException;
    const-string/jumbo v6, "SecurityController"

    const-string/jumbo v7, "Unable to list active VPNs"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 335
    return-void

    .line 337
    .end local v2    # "rme":Landroid/os/RemoteException;
    .restart local v4    # "user$iterator":Ljava/util/Iterator;
    :cond_2
    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentVpns:Landroid/util/SparseArray;

    .line 314
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;

    .prologue
    .line 255
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 256
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    monitor-exit v1

    return-void

    .line 257
    :cond_1
    :try_start_1
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "SecurityController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "addCallback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 254
    return-void

    .line 255
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0
    .param p1, "callback"    # Ljava/lang/Object;

    .prologue
    .line 254
    check-cast p1, Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;

    .end local p1    # "callback":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->addCallback(Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 124
    const-string/jumbo v1, "SecurityController state:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 125
    const-string/jumbo v1, "  mCurrentVpns={"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 126
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentVpns:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 127
    if-lez v0, :cond_0

    .line 128
    const-string/jumbo v1, ", "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 130
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 131
    const/16 v1, 0x3d

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 132
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 134
    :cond_1
    const-string/jumbo v1, "}"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public getDeviceOwnerOrganizationName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-static {v0}, Landroid/app/admin/DevicePolicyManagerCompat;->getDeviceOwnerOrganizationName(Landroid/app/admin/DevicePolicyManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryVpnName()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 170
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentVpns:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mVpnUserId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/VpnConfig;

    .line 171
    .local v0, "cfg":Lcom/android/internal/net/VpnConfig;
    if-eqz v0, :cond_0

    .line 172
    new-instance v1, Landroid/os/UserHandle;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mVpnUserId:I

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->getNameForVpnConfig(Lcom/android/internal/net/VpnConfig;Landroid/os/UserHandle;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 174
    :cond_0
    return-object v3
.end method

.method public getVpnPackageName()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 276
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentVpns:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mVpnUserId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/VpnConfig;

    .line 277
    .local v0, "cfg":Lcom/android/internal/net/VpnConfig;
    if-eqz v0, :cond_0

    .line 278
    iget-object v1, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    return-object v1

    .line 280
    :cond_0
    return-object v3
.end method

.method public getWorkProfileOrganizationName()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 164
    iget v1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentUserId:I

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->getWorkProfileUserId(I)I

    move-result v0

    .line 165
    .local v0, "profileId":I
    const/16 v1, -0x2710

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 166
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-static {v1, v0}, Landroid/app/admin/DevicePolicyManagerCompat;->getOrganizationNameForUser(Landroid/app/admin/DevicePolicyManager;I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method public getWorkProfileVpnName()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 192
    iget v2, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mVpnUserId:I

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->getWorkProfileUserId(I)I

    move-result v1

    .line 193
    .local v1, "profileId":I
    const/16 v2, -0x2710

    if-ne v1, v2, :cond_0

    return-object v3

    .line 194
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentVpns:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/VpnConfig;

    .line 195
    .local v0, "cfg":Lcom/android/internal/net/VpnConfig;
    if-eqz v0, :cond_1

    .line 196
    invoke-static {v1}, Landroid/os/UserHandleCompat;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->getNameForVpnConfig(Lcom/android/internal/net/VpnConfig;Landroid/os/UserHandle;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 198
    :cond_1
    return-object v3
.end method

.method public hasCACertInCurrentUser()Z
    .locals 3

    .prologue
    .line 235
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mHasCACerts:Landroid/util/ArrayMap;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentUserId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 236
    .local v0, "hasCACerts":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasCACertInWorkProfile()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 240
    iget v3, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentUserId:I

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->getWorkProfileUserId(I)I

    move-result v1

    .line 241
    .local v1, "userId":I
    const/16 v3, -0x2710

    if-ne v1, v3, :cond_0

    return v2

    .line 242
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mHasCACerts:Landroid/util/ArrayMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 243
    .local v0, "hasCACerts":Ljava/lang/Boolean;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :cond_1
    return v2
.end method

.method public hasWorkProfile()Z
    .locals 2

    .prologue
    .line 188
    iget v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentUserId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->getWorkProfileUserId(I)I

    move-result v0

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDeviceManaged()Z
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-static {v0}, Landroid/app/admin/DevicePolicyManagerCompat;->isDeviceManaged(Landroid/app/admin/DevicePolicyManager;)Z

    move-result v0

    return v0
.end method

.method public isNetworkLoggingEnabled()Z
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-static {v0}, Landroid/app/admin/DevicePolicyManagerCompat;->isNetworkLoggingEnabled(Landroid/app/admin/DevicePolicyManager;)Z

    move-result v0

    return v0
.end method

.method public isVpnBranded()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 221
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentVpns:Landroid/util/SparseArray;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mVpnUserId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/VpnConfig;

    .line 222
    .local v0, "cfg":Lcom/android/internal/net/VpnConfig;
    if-nez v0, :cond_0

    .line 223
    return v4

    .line 226
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->getPackageNameForVpnConfig(Lcom/android/internal/net/VpnConfig;)Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, "packageName":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 228
    return v4

    .line 231
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->isVpnPackageBranded(Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public onUserSwitched(I)V
    .locals 2
    .param p1, "newUserId"    # I

    .prologue
    .line 263
    iput p1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentUserId:I

    .line 264
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 265
    .local v0, "newUserInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 267
    const/16 v1, -0x2710

    iput v1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mVpnUserId:I

    .line 271
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->refreshCACerts()V

    .line 272
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->fireCallbacks()V

    .line 262
    return-void

    .line 269
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentUserId:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mVpnUserId:I

    goto :goto_0
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;

    .prologue
    .line 247
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 248
    if-nez p1, :cond_0

    monitor-exit v1

    return-void

    .line 249
    :cond_0
    :try_start_0
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "SecurityController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeCallback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 246
    return-void

    .line 247
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0
    .param p1, "callback"    # Ljava/lang/Object;

    .prologue
    .line 246
    check-cast p1, Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;

    .end local p1    # "callback":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->removeCallback(Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;)V

    return-void
.end method
