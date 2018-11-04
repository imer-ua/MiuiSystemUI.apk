.class public Lcom/android/systemui/qs/external/TileLifecycleManager;
.super Landroid/content/BroadcastReceiver;
.source "TileLifecycleManager.java"

# interfaces
.implements Landroid/service/quicksettings/IQSTileService;
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/external/TileLifecycleManager$TileChangeListener;
    }
.end annotation


# instance fields
.field private mBindRetryDelay:I

.field private mBindTryCount:I

.field private mBound:Z

.field private mChangeListener:Lcom/android/systemui/qs/external/TileLifecycleManager$TileChangeListener;

.field private mClickBinder:Landroid/os/IBinder;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mIntent:Landroid/content/Intent;

.field private mIsBound:Z

.field private mListening:Z

.field private final mPackageManagerAdapter:Lcom/android/systemui/qs/external/PackageManagerAdapter;

.field private mQueuedMessages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mReceiverRegistered:Z

.field private final mToken:Landroid/os/IBinder;

.field private mUnbindImmediate:Z

.field private final mUser:Landroid/os/UserHandle;

.field private mWrapper:Lcom/android/systemui/qs/external/QSTileServiceWrapper;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/external/TileLifecycleManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mBound:Z

    return v0
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;Landroid/service/quicksettings/IQSService;Landroid/service/quicksettings/Tile;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 8
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "service"    # Landroid/service/quicksettings/IQSService;
    .param p4, "tile"    # Landroid/service/quicksettings/Tile;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 103
    new-instance v7, Lcom/android/systemui/qs/external/PackageManagerAdapter;

    invoke-direct {v7, p2}, Lcom/android/systemui/qs/external/PackageManagerAdapter;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/qs/external/TileLifecycleManager;-><init>(Landroid/os/Handler;Landroid/content/Context;Landroid/service/quicksettings/IQSService;Landroid/service/quicksettings/Tile;Landroid/content/Intent;Landroid/os/UserHandle;Lcom/android/systemui/qs/external/PackageManagerAdapter;)V

    .line 102
    return-void
.end method

.method constructor <init>(Landroid/os/Handler;Landroid/content/Context;Landroid/service/quicksettings/IQSService;Landroid/service/quicksettings/Tile;Landroid/content/Intent;Landroid/os/UserHandle;Lcom/android/systemui/qs/external/PackageManagerAdapter;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "service"    # Landroid/service/quicksettings/IQSService;
    .param p4, "tile"    # Landroid/service/quicksettings/Tile;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "user"    # Landroid/os/UserHandle;
    .param p7, "packageManagerAdapter"    # Lcom/android/systemui/qs/external/PackageManagerAdapter;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 107
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 84
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mToken:Landroid/os/IBinder;

    .line 87
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mQueuedMessages:Ljava/util/Set;

    .line 93
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mBindRetryDelay:I

    .line 109
    iput-object p2, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mContext:Landroid/content/Context;

    .line 110
    iput-object p1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mHandler:Landroid/os/Handler;

    .line 111
    iput-object p5, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mIntent:Landroid/content/Intent;

    .line 112
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "service"

    invoke-interface {p3}, Landroid/service/quicksettings/IQSService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    .line 113
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-le v0, v1, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "token"

    iget-object v2, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    .line 118
    :goto_0
    iput-object p6, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mUser:Landroid/os/UserHandle;

    .line 119
    iput-object p7, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mPackageManagerAdapter:Lcom/android/systemui/qs/external/PackageManagerAdapter;

    .line 108
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "android.service.quicksettings.extra.COMPONENT"

    invoke-virtual {p5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private checkComponentState()Z
    .locals 1

    .prologue
    .line 291
    invoke-direct {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->isPackageAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->isComponentAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    const/4 v0, 0x1

    return v0

    .line 292
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->startPackageListening()V

    .line 293
    const/4 v0, 0x0

    return v0
.end method

.method private handleDeath()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 273
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mWrapper:Lcom/android/systemui/qs/external/QSTileServiceWrapper;

    if-nez v0, :cond_0

    return-void

    .line 274
    :cond_0
    iput-object v1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mWrapper:Lcom/android/systemui/qs/external/QSTileServiceWrapper;

    .line 275
    iget-boolean v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mBound:Z

    if-nez v0, :cond_1

    return-void

    .line 277
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->checkComponentState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 278
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/qs/external/TileLifecycleManager$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/external/TileLifecycleManager$1;-><init>(Lcom/android/systemui/qs/external/TileLifecycleManager;)V

    .line 286
    iget v2, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mBindRetryDelay:I

    int-to-long v2, v2

    .line 278
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 272
    :cond_2
    return-void
.end method

.method private handlePendingMessages()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 221
    iget-object v2, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mQueuedMessages:Ljava/util/Set;

    monitor-enter v2

    .line 222
    :try_start_0
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mQueuedMessages:Ljava/util/Set;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 223
    .local v0, "queue":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mQueuedMessages:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 225
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->onTileAdded()V

    .line 229
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mListening:Z

    if-eqz v1, :cond_1

    .line 231
    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->onStartListening()V

    .line 233
    :cond_1
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 235
    iget-boolean v1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mListening:Z

    if-nez v1, :cond_7

    .line 236
    const-string/jumbo v1, "TileLifecycleManager"

    const-string/jumbo v2, "Managed to get click on non-listening state..."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_2
    :goto_0
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 244
    iget-boolean v1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mListening:Z

    if-nez v1, :cond_8

    .line 245
    const-string/jumbo v1, "TileLifecycleManager"

    const-string/jumbo v2, "Managed to get unlock on non-listening state..."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_3
    :goto_1
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 253
    iget-boolean v1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mListening:Z

    if-eqz v1, :cond_4

    .line 254
    const-string/jumbo v1, "TileLifecycleManager"

    const-string/jumbo v2, "Managed to get remove in listening state..."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->onStopListening()V

    .line 257
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->onTileRemoved()V

    .line 259
    :cond_5
    iget-boolean v1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mUnbindImmediate:Z

    if-eqz v1, :cond_6

    .line 260
    iput-boolean v3, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mUnbindImmediate:Z

    .line 261
    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/external/TileLifecycleManager;->setBindService(Z)V

    .line 217
    :cond_6
    return-void

    .line 221
    .end local v0    # "queue":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 239
    .restart local v0    # "queue":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mClickBinder:Landroid/os/IBinder;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/external/TileLifecycleManager;->onClick(Landroid/os/IBinder;)V

    goto :goto_0

    .line 248
    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->onUnlockComplete()V

    goto :goto_1
.end method

.method private isComponentAvailable()Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 341
    iget-object v4, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 343
    .local v1, "packageName":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mPackageManagerAdapter:Lcom/android/systemui/qs/external/PackageManagerAdapter;

    iget-object v5, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    .line 344
    iget-object v6, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    const/4 v7, 0x0

    .line 343
    invoke-virtual {v4, v5, v7, v6}, Lcom/android/systemui/qs/external/PackageManagerAdapter;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 346
    .local v2, "si":Landroid/content/pm/ServiceInfo;
    if-eqz v2, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3

    .line 347
    .end local v2    # "si":Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v0

    .line 350
    .local v0, "e":Landroid/os/RemoteException;
    return v3
.end method

.method private isPackageAvailable()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 354
    iget-object v2, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 356
    .local v1, "packageName":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mPackageManagerAdapter:Lcom/android/systemui/qs/external/PackageManagerAdapter;

    iget-object v3, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Lcom/android/systemui/qs/external/PackageManagerAdapter;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    const/4 v2, 0x1

    return v2

    .line 358
    :catch_0
    move-exception v0

    .line 360
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v2, "TileLifecycleManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Package not available: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    return v5
.end method

.method public static isTileAdded(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    const/4 v2, 0x0

    .line 438
    const-string/jumbo v0, "tiles_prefs"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private queueMessage(I)V
    .locals 3
    .param p1, "message"    # I

    .prologue
    .line 366
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mQueuedMessages:Ljava/util/Set;

    monitor-enter v1

    .line 367
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mQueuedMessages:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 365
    return-void

    .line 366
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setTileAdded(Landroid/content/Context;Landroid/content/ComponentName;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "added"    # Z

    .prologue
    .line 442
    const-string/jumbo v0, "tiles_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 441
    return-void
.end method

.method private startPackageListening()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 300
    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v0, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 301
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 302
    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mUser:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mHandler:Landroid/os/Handler;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 304
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 305
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mUser:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mHandler:Landroid/os/Handler;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 306
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mReceiverRegistered:Z

    .line 298
    return-void
.end method

.method private stopPackageListening()V
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 312
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mReceiverRegistered:Z

    .line 309
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 421
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mWrapper:Lcom/android/systemui/qs/external/QSTileServiceWrapper;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mWrapper:Lcom/android/systemui/qs/external/QSTileServiceWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/qs/external/QSTileServiceWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public binderDied()V
    .locals 0

    .prologue
    .line 426
    invoke-direct {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->handleDeath()V

    .line 424
    return-void
.end method

.method public flushMessagesAndUnbind()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 152
    iput-boolean v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mUnbindImmediate:Z

    .line 153
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->setBindService(Z)V

    .line 151
    return-void
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getToken()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public handleDestroy()V
    .locals 1

    .prologue
    .line 267
    iget-boolean v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 268
    invoke-direct {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->stopPackageListening()V

    .line 265
    :cond_0
    return-void
.end method

.method public hasPendingClick()Z
    .locals 3

    .prologue
    .line 128
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mQueuedMessages:Ljava/util/Set;

    monitor-enter v1

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mQueuedMessages:Ljava/util/Set;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isActiveTile()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 139
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mPackageManagerAdapter:Lcom/android/systemui/qs/external/PackageManagerAdapter;

    iget-object v4, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    .line 140
    const/16 v5, 0x2080

    .line 139
    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/qs/external/PackageManagerAdapter;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    .line 141
    .local v1, "info":Landroid/content/pm/ServiceInfo;
    iget-object v3, v1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_0

    .line 142
    iget-object v3, v1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v4, "android.service.quicksettings.ACTIVE_TILE"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 141
    :cond_0
    return v2

    .line 143
    .end local v1    # "info":Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v2
.end method

.method public onClick(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "iBinder"    # Landroid/os/IBinder;

    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mWrapper:Lcom/android/systemui/qs/external/QSTileServiceWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mWrapper:Lcom/android/systemui/qs/external/QSTileServiceWrapper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/external/QSTileServiceWrapper;->onClick(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    :goto_0
    return-void

    .line 406
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mClickBinder:Landroid/os/IBinder;

    .line 407
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->queueMessage(I)V

    .line 408
    invoke-direct {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->handleDeath()V

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 322
    const-string/jumbo v2, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 323
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 324
    .local v0, "data":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 325
    .local v1, "pkgName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 326
    return-void

    .line 329
    .end local v0    # "data":Landroid/net/Uri;
    .end local v1    # "pkgName":Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mChangeListener:Lcom/android/systemui/qs/external/TileLifecycleManager$TileChangeListener;

    if-eqz v2, :cond_1

    .line 330
    iget-object v2, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mChangeListener:Lcom/android/systemui/qs/external/TileLifecycleManager$TileChangeListener;

    iget-object v3, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/systemui/qs/external/TileLifecycleManager$TileChangeListener;->onTileChanged(Landroid/content/ComponentName;)V

    .line 332
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->stopPackageListening()V

    .line 333
    iget-boolean v2, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mBound:Z

    if-eqz v2, :cond_2

    .line 336
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/external/TileLifecycleManager;->setBindService(Z)V

    .line 320
    :cond_2
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    const/4 v2, 0x0

    .line 201
    iput v2, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mBindTryCount:I

    .line 202
    new-instance v1, Lcom/android/systemui/qs/external/QSTileServiceWrapper;

    invoke-static {p2}, Landroid/service/quicksettings/IQSTileService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/quicksettings/IQSTileService;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/systemui/qs/external/QSTileServiceWrapper;-><init>(Landroid/service/quicksettings/IQSTileService;)V

    .line 204
    .local v1, "wrapper":Lcom/android/systemui/qs/external/QSTileServiceWrapper;
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p2, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :goto_0
    iput-object v1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mWrapper:Lcom/android/systemui/qs/external/QSTileServiceWrapper;

    .line 208
    invoke-direct {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->handlePendingMessages()V

    .line 198
    return-void

    .line 205
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->handleDeath()V

    .line 212
    return-void
.end method

.method public onStartListening()V
    .locals 1

    .prologue
    .line 389
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mListening:Z

    .line 390
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mWrapper:Lcom/android/systemui/qs/external/QSTileServiceWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mWrapper:Lcom/android/systemui/qs/external/QSTileServiceWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/qs/external/QSTileServiceWrapper;->onStartListening()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 391
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->handleDeath()V

    goto :goto_0
.end method

.method public onStopListening()V
    .locals 1

    .prologue
    .line 397
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mListening:Z

    .line 398
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mWrapper:Lcom/android/systemui/qs/external/QSTileServiceWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mWrapper:Lcom/android/systemui/qs/external/QSTileServiceWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/qs/external/QSTileServiceWrapper;->onStopListening()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 399
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->handleDeath()V

    goto :goto_0
.end method

.method public onTileAdded()V
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mWrapper:Lcom/android/systemui/qs/external/QSTileServiceWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mWrapper:Lcom/android/systemui/qs/external/QSTileServiceWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/qs/external/QSTileServiceWrapper;->onTileAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    :goto_0
    return-void

    .line 374
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->queueMessage(I)V

    .line 375
    invoke-direct {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->handleDeath()V

    goto :goto_0
.end method

.method public onTileRemoved()V
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mWrapper:Lcom/android/systemui/qs/external/QSTileServiceWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mWrapper:Lcom/android/systemui/qs/external/QSTileServiceWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/qs/external/QSTileServiceWrapper;->onTileRemoved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    :goto_0
    return-void

    .line 382
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->queueMessage(I)V

    .line 383
    invoke-direct {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->handleDeath()V

    goto :goto_0
.end method

.method public onUnlockComplete()V
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mWrapper:Lcom/android/systemui/qs/external/QSTileServiceWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mWrapper:Lcom/android/systemui/qs/external/QSTileServiceWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/qs/external/QSTileServiceWrapper;->onUnlockComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    :goto_0
    return-void

    .line 415
    :cond_0
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->queueMessage(I)V

    .line 416
    invoke-direct {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->handleDeath()V

    goto :goto_0
.end method

.method public setBindService(Z)V
    .locals 6
    .param p1, "bind"    # Z

    .prologue
    const/4 v5, 0x0

    .line 157
    iget-boolean v1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mBound:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mUnbindImmediate:Z

    if-eqz v1, :cond_1

    .line 160
    invoke-static {}, Lcom/android/systemui/Util;->isMiuiOptimizationDisabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 161
    iput-boolean v5, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mUnbindImmediate:Z

    .line 163
    :cond_0
    return-void

    .line 165
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mBound:Z

    .line 166
    if-eqz p1, :cond_5

    .line 167
    iget v1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mBindTryCount:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 169
    invoke-direct {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->startPackageListening()V

    .line 170
    return-void

    .line 172
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->checkComponentState()Z

    move-result v1

    if-nez v1, :cond_3

    .line 173
    return-void

    .line 176
    :cond_3
    iget v1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mBindTryCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mBindTryCount:I

    .line 178
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mIntent:Landroid/content/Intent;

    .line 180
    iget-object v3, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mUser:Landroid/os/UserHandle;

    .line 179
    const v4, 0x2000001

    .line 178
    invoke-virtual {v1, v2, p0, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mIsBound:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :cond_4
    :goto_0
    return-void

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Ljava/lang/SecurityException;
    const-string/jumbo v1, "TileLifecycleManager"

    const-string/jumbo v2, "Failed to bind to service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 183
    iput-boolean v5, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mIsBound:Z

    goto :goto_0

    .line 188
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_5
    iput v5, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mBindTryCount:I

    .line 189
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mWrapper:Lcom/android/systemui/qs/external/QSTileServiceWrapper;

    .line 190
    iget-boolean v1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mIsBound:Z

    if-eqz v1, :cond_4

    .line 191
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 192
    iput-boolean v5, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mIsBound:Z

    goto :goto_0
.end method

.method public setTileChangeListener(Lcom/android/systemui/qs/external/TileLifecycleManager$TileChangeListener;)V
    .locals 0
    .param p1, "changeListener"    # Lcom/android/systemui/qs/external/TileLifecycleManager$TileChangeListener;

    .prologue
    .line 316
    iput-object p1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mChangeListener:Lcom/android/systemui/qs/external/TileLifecycleManager$TileChangeListener;

    .line 315
    return-void
.end method
