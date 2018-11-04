.class public Lcom/android/systemui/DependencyUI;
.super Lcom/android/systemui/SystemUI;
.source "DependencyUI.java"


# static fields
.field private static sDependency:Lcom/android/systemui/DependencyUI;


# instance fields
.field private final mDependencies:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mProviders:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/android/systemui/Dependency$DependencyProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Lcom/android/systemui/DependencyUI;
    .locals 1

    sget-object v0, Lcom/android/systemui/DependencyUI;->sDependency:Lcom/android/systemui/DependencyUI;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 123
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/DependencyUI;->mDependencies:Landroid/util/ArrayMap;

    .line 124
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    .line 121
    return-void
.end method

.method private declared-synchronized getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 519
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/DependencyUI;->mDependencies:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 520
    .local v0, "obj":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_0

    .line 521
    invoke-virtual {p0, p1}, Lcom/android/systemui/DependencyUI;->createDependency(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 522
    iget-object v1, p0, Lcom/android/systemui/DependencyUI;->mDependencies:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 524
    return-object v0

    .end local v0    # "obj":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static initDependencies(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 552
    sget-object v1, Lcom/android/systemui/DependencyUI;->sDependency:Lcom/android/systemui/DependencyUI;

    if-eqz v1, :cond_0

    return-void

    .line 553
    :cond_0
    new-instance v0, Lcom/android/systemui/DependencyUI;

    invoke-direct {v0}, Lcom/android/systemui/DependencyUI;-><init>()V

    .line 554
    .local v0, "d":Lcom/android/systemui/DependencyUI;
    iput-object p0, v0, Lcom/android/systemui/DependencyUI;->mContext:Landroid/content/Context;

    .line 555
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/DependencyUI;->mComponents:Ljava/util/Map;

    .line 556
    invoke-virtual {v0}, Lcom/android/systemui/DependencyUI;->start()V

    .line 551
    return-void
.end method


# virtual methods
.method protected createDependency(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "cls"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 529
    instance-of v1, p1, Lcom/android/systemui/Dependency$DependencyKey;

    if-nez v1, :cond_0

    instance-of v1, p1, Ljava/lang/Class;

    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 532
    iget-object v1, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/Dependency$DependencyProvider;

    .line 533
    .local v0, "provider":Lcom/android/systemui/Dependency$DependencyProvider;, "Lcom/android/systemui/Dependency$DependencyProvider<TT;>;"
    if-nez v0, :cond_1

    .line 534
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported dependency "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 529
    .end local v0    # "provider":Lcom/android/systemui/Dependency$DependencyProvider;, "Lcom/android/systemui/Dependency$DependencyProvider<TT;>;"
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 536
    .restart local v0    # "provider":Lcom/android/systemui/Dependency$DependencyProvider;, "Lcom/android/systemui/Dependency$DependencyProvider<TT;>;"
    :cond_1
    invoke-interface {v0}, Lcom/android/systemui/Dependency$DependencyProvider;->createDependency()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 490
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/SystemUI;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 491
    const-string/jumbo v2, "Dumping existing controllers:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 492
    iget-object v2, p0, Lcom/android/systemui/DependencyUI;->mDependencies:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "o$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 493
    .local v0, "o":Ljava/lang/Object;
    instance-of v2, v0, Lcom/android/systemui/Dumpable;

    if-eqz v2, :cond_0

    .line 494
    check-cast v0, Lcom/android/systemui/Dumpable;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-interface {v0, p1, p2, p3}, Lcom/android/systemui/Dumpable;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v1    # "o$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .restart local v1    # "o$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit p0

    .line 489
    return-void
.end method

.method protected final getDependency(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/systemui/Dependency$DependencyKey",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 514
    .local p1, "key":Lcom/android/systemui/Dependency$DependencyKey;, "Lcom/android/systemui/Dependency$DependencyKey<TT;>;"
    invoke-direct {p0, p1}, Lcom/android/systemui/DependencyUI;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final getDependency(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 510
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1}, Lcom/android/systemui/DependencyUI;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected declared-synchronized onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    monitor-enter p0

    .line 501
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/systemui/SystemUI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 502
    iget-object v2, p0, Lcom/android/systemui/DependencyUI;->mDependencies:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "o$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 503
    .local v0, "o":Ljava/lang/Object;
    instance-of v2, v0, Lcom/android/systemui/ConfigurationChangedReceiver;

    if-eqz v2, :cond_0

    .line 504
    check-cast v0, Lcom/android/systemui/ConfigurationChangedReceiver;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-interface {v0, p1}, Lcom/android/systemui/ConfigurationChangedReceiver;->onConfigurationChanged(Landroid/content/res/Configuration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v1    # "o$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .restart local v1    # "o$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit p0

    .line 500
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 128
    sput-object p0, Lcom/android/systemui/DependencyUI;->sDependency:Lcom/android/systemui/DependencyUI;

    .line 132
    new-instance v0, Lcom/android/systemui/DependencyUI$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/DependencyUI$1;-><init>(Lcom/android/systemui/DependencyUI;)V

    .line 131
    invoke-static {v0}, Lcom/android/systemui/Dependency;->setDependencyResolver(Lcom/android/systemui/Dependency$DependencyResolver;)V

    .line 146
    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    sget-object v1, Lcom/android/systemui/Dependency;->TIME_TICK_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    new-instance v2, Lcom/android/systemui/DependencyUI$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$2;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    sget-object v1, Lcom/android/systemui/Dependency;->SCREEN_OFF_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    new-instance v2, Lcom/android/systemui/DependencyUI$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$3;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    sget-object v1, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    new-instance v2, Lcom/android/systemui/DependencyUI$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$4;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    sget-object v1, Lcom/android/systemui/Dependency;->NET_BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    new-instance v2, Lcom/android/systemui/DependencyUI$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$5;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    sget-object v1, Lcom/android/systemui/Dependency;->BT_BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    new-instance v2, Lcom/android/systemui/DependencyUI$6;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$6;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    sget-object v1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    new-instance v2, Lcom/android/systemui/DependencyUI$7;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$7;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v2, Lcom/android/systemui/DependencyUI$8;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$8;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/ActivityStarterDelegate;

    new-instance v2, Lcom/android/systemui/DependencyUI$9;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$9;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/BluetoothController;

    new-instance v2, Lcom/android/systemui/DependencyUI$10;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$10;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/LocationController;

    new-instance v2, Lcom/android/systemui/DependencyUI$11;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$11;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/RotationLockController;

    new-instance v2, Lcom/android/systemui/DependencyUI$12;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$12;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/NetworkController;

    new-instance v2, Lcom/android/systemui/DependencyUI$13;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$13;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/ZenModeController;

    new-instance v2, Lcom/android/systemui/DependencyUI$14;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$14;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/HotspotController;

    new-instance v2, Lcom/android/systemui/DependencyUI$15;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$15;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/CastController;

    new-instance v2, Lcom/android/systemui/DependencyUI$16;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$16;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/FlashlightController;

    new-instance v2, Lcom/android/systemui/DependencyUI$17;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$17;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    new-instance v2, Lcom/android/systemui/DependencyUI$18;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$18;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    new-instance v2, Lcom/android/systemui/DependencyUI$19;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$19;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/UserInfoController;

    new-instance v2, Lcom/android/systemui/DependencyUI$20;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$20;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/BatteryController;

    new-instance v2, Lcom/android/systemui/DependencyUI$21;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$21;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    new-instance v2, Lcom/android/systemui/DependencyUI$22;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$22;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/NextAlarmController;

    new-instance v2, Lcom/android/systemui/DependencyUI$23;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$23;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/DataSaverController;

    new-instance v2, Lcom/android/systemui/DependencyUI$24;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$24;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/AccessibilityController;

    new-instance v2, Lcom/android/systemui/DependencyUI$25;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$25;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    new-instance v2, Lcom/android/systemui/DependencyUI$26;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$26;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/plugins/PluginManager;

    new-instance v2, Lcom/android/systemui/DependencyUI$27;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$27;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/assist/AssistManager;

    new-instance v2, Lcom/android/systemui/DependencyUI$28;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$28;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/SecurityController;

    new-instance v2, Lcom/android/systemui/DependencyUI$29;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$29;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/util/leak/LeakDetector;

    new-instance v2, Lcom/android/systemui/DependencyUI$30;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$30;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    sget-object v1, Lcom/android/systemui/Dependency;->LEAK_REPORT_EMAIL:Lcom/android/systemui/Dependency$DependencyKey;

    new-instance v2, Lcom/android/systemui/DependencyUI$31;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$31;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/util/leak/LeakReporter;

    new-instance v2, Lcom/android/systemui/DependencyUI$32;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$32;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/util/leak/GarbageMonitor;

    new-instance v2, Lcom/android/systemui/DependencyUI$33;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$33;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/tuner/TunerService;

    new-instance v2, Lcom/android/systemui/DependencyUI$34;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$34;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    new-instance v2, Lcom/android/systemui/DependencyUI$35;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$35;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    new-instance v2, Lcom/android/systemui/DependencyUI$36;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$36;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    new-instance v2, Lcom/android/systemui/DependencyUI$37;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$37;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    new-instance v2, Lcom/android/systemui/DependencyUI$38;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$38;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/fragments/FragmentService;

    new-instance v2, Lcom/android/systemui/DependencyUI$39;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$39;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/ExtensionController;

    new-instance v2, Lcom/android/systemui/DependencyUI$40;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$40;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/plugins/PluginDependencyProvider;

    new-instance v2, Lcom/android/systemui/DependencyUI$41;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$41;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    new-instance v2, Lcom/android/systemui/DependencyUI$42;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$42;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/plugins/VolumeDialogController;

    new-instance v2, Lcom/android/systemui/DependencyUI$43;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$43;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/internal/logging/MetricsLogger;

    new-instance v2, Lcom/android/systemui/DependencyUI$44;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$44;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/ForegroundServiceController;

    new-instance v2, Lcom/android/systemui/DependencyUI$45;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$45;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/UiOffloadThread;

    new-instance v2, Lcom/android/systemui/DependencyUI$46;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$46;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/DemoModeController;

    new-instance v2, Lcom/android/systemui/DependencyUI$47;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$47;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/SilentModeObserverController;

    new-instance v2, Lcom/android/systemui/DependencyUI$48;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$48;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/KeyguardNotificationController;

    new-instance v2, Lcom/android/systemui/DependencyUI$49;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$49;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/CallStateController;

    new-instance v2, Lcom/android/systemui/DependencyUI$50;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$50;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;

    new-instance v2, Lcom/android/systemui/DependencyUI$51;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$51;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;

    new-instance v2, Lcom/android/systemui/DependencyUI$52;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$52;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;

    new-instance v2, Lcom/android/systemui/DependencyUI$53;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$53;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    iget-object v0, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;

    new-instance v2, Lcom/android/systemui/DependencyUI$54;

    invoke-direct {v2, p0}, Lcom/android/systemui/DependencyUI$54;-><init>(Lcom/android/systemui/DependencyUI;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/DependencyUI;->mProviders:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/SystemUIFactory;->injectDependencies(Landroid/util/ArrayMap;Landroid/content/Context;)V

    .line 127
    return-void
.end method
