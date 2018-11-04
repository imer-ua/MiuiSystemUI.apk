.class public Lcom/android/systemui/qs/QSTileHost;
.super Ljava/lang/Object;
.source "QSTileHost.java"

# interfaces
.implements Lcom/android/systemui/qs/QSHost;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/android/systemui/plugins/PluginListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSTileHost$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/qs/QSHost;",
        "Lcom/android/systemui/tuner/TunerService$Tunable;",
        "Lcom/android/systemui/plugins/PluginListener",
        "<",
        "Lcom/android/systemui/plugins/qs/QSFactory;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/qs/QSHost$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mCollpaseAfterClick:Z

.field private final mContext:Landroid/content/Context;

.field private mCurrentUser:I

.field private mHandler:Landroid/os/Handler;

.field private volatile mHasDriveApp:Z

.field private final mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

.field private mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

.field private final mQsFactories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/plugins/qs/QSFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final mServices:Lcom/android/systemui/qs/external/TileServices;

.field private final mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field protected final mTileSpecs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTiles:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/plugins/qs/QSTile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/QSTileHost;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/QSTileHost;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/QSTileHost;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSTileHost;->mHasDriveApp:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/QSTileHost;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSTileHost;->mCollpaseAfterClick:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/qs/QSTileHost;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSTileHost;->mHasDriveApp:Z

    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    sget-boolean v0, Lcom/android/systemui/Constants;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/qs/QSTileHost;->DEBUG:Z

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/StatusBarIconController;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "statusBar"    # Lcom/android/systemui/statusbar/phone/StatusBar;
    .param p3, "iconController"    # Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v8, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mCallbacks:Ljava/util/List;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mQsFactories:Ljava/util/ArrayList;

    .line 83
    iput-boolean v8, p0, Lcom/android/systemui/qs/QSTileHost;->mHasDriveApp:Z

    .line 84
    iput-boolean v8, p0, Lcom/android/systemui/qs/QSTileHost;->mCollpaseAfterClick:Z

    .line 141
    new-instance v0, Lcom/android/systemui/qs/QSTileHost$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSTileHost$1;-><init>(Lcom/android/systemui/qs/QSTileHost;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 90
    iput-object p3, p0, Lcom/android/systemui/qs/QSTileHost;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 91
    iput-object p1, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    .line 92
    iput-object p2, p0, Lcom/android/systemui/qs/QSTileHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 94
    new-instance v1, Lcom/android/systemui/qs/external/TileServices;

    sget-object v0, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/qs/external/TileServices;-><init>(Lcom/android/systemui/qs/QSTileHost;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mServices:Lcom/android/systemui/qs/external/TileServices;

    .line 96
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mQsFactories:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;-><init>(Lcom/android/systemui/qs/QSTileHost;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    const-class v0, Lcom/android/systemui/plugins/PluginManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/PluginManager;

    const-class v1, Lcom/android/systemui/plugins/qs/QSFactory;

    invoke-interface {v0, p0, v1, v2}, Lcom/android/systemui/plugins/PluginManager;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    .line 99
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    new-array v1, v2, [Ljava/lang/String;

    const-string/jumbo v2, "sysui_qs_tiles"

    aput-object v2, v1, v8

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 101
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 102
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 106
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    .line 105
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 108
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 109
    .local v7, "userChangeFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/systemui/qs/QSTileHost$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSTileHost$2;-><init>(Lcom/android/systemui/qs/QSTileHost;)V

    invoke-virtual {v0, v1, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 117
    new-instance v0, Lcom/android/systemui/qs/QSTileHost$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSTileHost$3;-><init>(Lcom/android/systemui/qs/QSTileHost;)V

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSTileHost$3;->start()V

    .line 128
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mHandler:Landroid/os/Handler;

    .line 129
    new-instance v6, Lcom/android/systemui/qs/QSTileHost$4;

    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mHandler:Landroid/os/Handler;

    invoke-direct {v6, p0, v0, p1}, Lcom/android/systemui/qs/QSTileHost$4;-><init>(Lcom/android/systemui/qs/QSTileHost;Landroid/os/Handler;Landroid/content/Context;)V

    .line 135
    .local v6, "contentObserver":Landroid/database/ContentObserver;
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 136
    const-string/jumbo v1, "status_bar_collapse_after_clicked"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 137
    const/4 v2, -0x1

    .line 135
    invoke-virtual {v0, v1, v8, v6, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 138
    invoke-virtual {v6, v8}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 89
    return-void
.end method

.method private filterQSTiles(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 453
    .local p1, "tiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 454
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 455
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 456
    .local v10, "tileSpec":Ljava/lang/String;
    const-string/jumbo v11, "custom("

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 459
    invoke-virtual {p0, v10}, Lcom/android/systemui/qs/QSTileHost;->createTile(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;

    move-result-object v7

    .line 460
    .local v7, "qsTile":Lcom/android/systemui/plugins/qs/QSTile;
    if-nez v7, :cond_1

    .line 461
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 464
    :cond_1
    invoke-interface {v7}, Lcom/android/systemui/plugins/qs/QSTile;->isAvailable()Z

    move-result v11

    if-nez v11, :cond_2

    .line 465
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 467
    :cond_2
    invoke-interface {v7}, Lcom/android/systemui/plugins/qs/QSTile;->destroy()V

    goto :goto_0

    .line 471
    .end local v7    # "qsTile":Lcom/android/systemui/plugins/qs/QSTile;
    .end local v10    # "tileSpec":Ljava/lang/String;
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v11

    const/16 v12, 0xc

    if-ge v11, v12, :cond_7

    .line 472
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 473
    .local v1, "index":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v11

    rsub-int/lit8 v4, v11, 0xc

    .line 474
    .local v4, "num":I
    iget-object v11, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    const v12, 0x9100038

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 475
    .local v5, "possible":Ljava/lang/String;
    const-string/jumbo v11, ","

    invoke-virtual {v5, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 477
    .local v6, "possibleTiles":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    array-length v11, v6

    if-ge v0, v11, :cond_7

    if-ge v3, v4, :cond_7

    .line 478
    aget-object v10, v6, v0

    .line 479
    .restart local v10    # "tileSpec":Ljava/lang/String;
    invoke-interface {p1, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 477
    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 482
    :cond_5
    aget-object v8, v6, v0

    .line 483
    .local v8, "spec":Ljava/lang/String;
    invoke-virtual {p0, v8}, Lcom/android/systemui/qs/QSTileHost;->createTile(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;

    move-result-object v9

    .line 484
    .local v9, "tile":Lcom/android/systemui/plugins/qs/QSTile;
    if-eqz v9, :cond_4

    .line 486
    invoke-interface {v9}, Lcom/android/systemui/plugins/qs/QSTile;->isAvailable()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 487
    add-int v11, v1, v3

    add-int/lit8 v11, v11, -0x1

    invoke-interface {p1, v11, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 488
    add-int/lit8 v3, v3, 0x1

    .line 490
    :cond_6
    invoke-interface {v9}, Lcom/android/systemui/plugins/qs/QSTile;->destroy()V

    goto :goto_2

    .line 451
    .end local v0    # "i":I
    .end local v1    # "index":I
    .end local v3    # "j":I
    .end local v4    # "num":I
    .end local v5    # "possible":Ljava/lang/String;
    .end local v6    # "possibleTiles":[Ljava/lang/String;
    .end local v8    # "spec":Ljava/lang/String;
    .end local v9    # "tile":Lcom/android/systemui/plugins/qs/QSTile;
    .end local v10    # "tileSpec":Ljava/lang/String;
    :cond_7
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/qs/QSHost$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui/qs/QSHost$Callback;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    return-void
.end method

.method public addTile(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "tile"    # Landroid/content/ComponentName;

    .prologue
    .line 366
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 367
    .local v0, "newSpecs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/android/systemui/qs/external/CustomTile;->toSpec(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 368
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/qs/QSTileHost;->changeTiles(Ljava/util/List;Ljava/util/List;)V

    .line 365
    return-void
.end method

.method public changeTiles(Ljava/util/List;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 378
    .local p1, "previousTiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "newTiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    .line 379
    .local v7, "NP":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v7, :cond_2

    .line 380
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 381
    .local v10, "tileSpec":Ljava/lang/String;
    const-string/jumbo v1, "custom("

    invoke-virtual {v10, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 379
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 382
    :cond_1
    invoke-interface {p2, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 383
    invoke-static {v10}, Lcom/android/systemui/qs/external/CustomTile;->getComponentFromSpec(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    .line 384
    .local v8, "component":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v5

    .line 385
    .local v5, "intent":Landroid/content/Intent;
    new-instance v0, Lcom/android/systemui/qs/external/TileLifecycleManager;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 386
    iget-object v2, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/qs/QSTileHost;->mServices:Lcom/android/systemui/qs/external/TileServices;

    invoke-static {v8}, Landroid/service/quicksettings/TileCompat;->newTile(Landroid/content/ComponentName;)Landroid/service/quicksettings/Tile;

    move-result-object v4

    .line 387
    new-instance v6, Landroid/os/UserHandle;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v11

    invoke-direct {v6, v11}, Landroid/os/UserHandle;-><init>(I)V

    .line 385
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/external/TileLifecycleManager;-><init>(Landroid/os/Handler;Landroid/content/Context;Landroid/service/quicksettings/IQSService;Landroid/service/quicksettings/Tile;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 388
    .local v0, "lifecycleManager":Lcom/android/systemui/qs/external/TileLifecycleManager;
    invoke-virtual {v0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->onStopListening()V

    .line 389
    invoke-virtual {v0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->onTileRemoved()V

    .line 390
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v8, v2}, Lcom/android/systemui/qs/external/TileLifecycleManager;->setTileAdded(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    .line 391
    invoke-virtual {v0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->flushMessagesAndUnbind()V

    goto :goto_1

    .line 395
    .end local v0    # "lifecycleManager":Lcom/android/systemui/qs/external/TileLifecycleManager;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v8    # "component":Landroid/content/ComponentName;
    .end local v10    # "tileSpec":Ljava/lang/String;
    :cond_2
    sget-boolean v1, Lcom/android/systemui/qs/QSTileHost;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "QSTileHost"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "saveCurrentTiles "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileHost;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sysui_qs_tiles"

    .line 397
    const-string/jumbo v3, ","

    invoke-static {v3, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 396
    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 377
    return-void
.end method

.method public collapseAfterClick()Z
    .locals 1

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSTileHost;->mCollpaseAfterClick:Z

    return v0
.end method

.method public collapsePanels()V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 232
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->closeQs()V

    .line 230
    :goto_0
    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->postAnimateCollapsePanels()V

    goto :goto_0
.end method

.method public createTile(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;
    .locals 4
    .param p1, "tileSpec"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 401
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSTileHost;->mQsFactories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 402
    iget-object v2, p0, Lcom/android/systemui/qs/QSTileHost;->mQsFactories:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/qs/QSFactory;

    invoke-interface {v2, p1}, Lcom/android/systemui/plugins/qs/QSFactory;->createTile(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;

    move-result-object v1

    .line 403
    .local v1, "t":Lcom/android/systemui/plugins/qs/QSTile;
    if-eqz v1, :cond_0

    .line 404
    return-object v1

    .line 401
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 407
    .end local v1    # "t":Lcom/android/systemui/plugins/qs/QSTile;
    :cond_1
    return-object v3
.end method

.method public createTileView(Lcom/android/systemui/plugins/qs/QSTile;Z)Lcom/android/systemui/plugins/qs/QSTileView;
    .locals 5
    .param p1, "tile"    # Lcom/android/systemui/plugins/qs/QSTile;
    .param p2, "collapsedView"    # Z

    .prologue
    .line 411
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSTileHost;->mQsFactories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 412
    iget-object v2, p0, Lcom/android/systemui/qs/QSTileHost;->mQsFactories:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/qs/QSFactory;

    invoke-interface {v2, p1, p2}, Lcom/android/systemui/plugins/qs/QSFactory;->createTileView(Lcom/android/systemui/plugins/qs/QSTile;Z)Lcom/android/systemui/plugins/qs/QSTileView;

    move-result-object v1

    .line 413
    .local v1, "view":Lcom/android/systemui/plugins/qs/QSTileView;
    if-eqz v1, :cond_0

    .line 414
    return-object v1

    .line 411
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 417
    .end local v1    # "view":Lcom/android/systemui/plugins/qs/QSTileView;
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Default factory didn\'t create view for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getTile(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;
    .locals 1
    .param p1, "tileSpec"    # Ljava/lang/String;

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile;

    return-object v0
.end method

.method public getTileServices()Lcom/android/systemui/qs/external/TileServices;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mServices:Lcom/android/systemui/qs/external/TileServices;

    return-object v0
.end method

.method public getTiles()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/systemui/plugins/qs/QSTile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public indexOf(Ljava/lang/String;)I
    .locals 1
    .param p1, "spec"    # Ljava/lang/String;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isDriveModeInstalled()Z
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSTileHost;->mHasDriveApp:Z

    return v0
.end method

.method public isQSFullyCollapsed()Z
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isQSFullyCollapsed()Z

    move-result v0

    return v0
.end method

.method protected loadTileSpecs(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tileList"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const v6, 0x9100039

    .line 421
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 422
    .local v2, "res":Landroid/content/res/Resources;
    const v5, 0x9100037

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 423
    .local v1, "defaultTileList":Ljava/lang/String;
    if-nez p2, :cond_1

    .line 424
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 425
    const-string/jumbo v5, "QSTileHost"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "loadTileSpecs: Loaded tile specs from config: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 433
    .local v4, "tiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 434
    .local v0, "addedDefault":Z
    const-string/jumbo v5, ","

    invoke-virtual {p2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v5, 0x0

    array-length v7, v6

    :goto_1
    if-ge v5, v7, :cond_5

    aget-object v3, v6, v5

    .line 435
    .local v3, "tile":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 436
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 434
    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 426
    .end local v0    # "addedDefault":Z
    .end local v3    # "tile":Ljava/lang/String;
    .end local v4    # "tiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    const-string/jumbo v5, "edit"

    invoke-virtual {p2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 427
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 428
    const-string/jumbo v5, "QSTileHost"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "loadTileSpecs: missing edit, loaded tile specs from config: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 430
    :cond_2
    const-string/jumbo v5, "QSTileHost"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "loadTileSpecs: loaded tile specs from setting: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 437
    .restart local v0    # "addedDefault":Z
    .restart local v3    # "tile":Ljava/lang/String;
    .restart local v4    # "tiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    const-string/jumbo v8, "default"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 438
    if-nez v0, :cond_0

    .line 439
    const-string/jumbo v8, ","

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 440
    const/4 v0, 0x1

    goto :goto_2

    .line 443
    :cond_4
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 447
    .end local v3    # "tile":Ljava/lang/String;
    :cond_5
    invoke-direct {p0, v4}, Lcom/android/systemui/qs/QSTileHost;->filterQSTiles(Ljava/util/List;)V

    .line 448
    return-object v4
.end method

.method public bridge synthetic onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .locals 0
    .param p1, "plugin"    # Lcom/android/systemui/plugins/Plugin;
    .param p2, "pluginContext"    # Landroid/content/Context;

    .prologue
    .line 184
    check-cast p1, Lcom/android/systemui/plugins/qs/QSFactory;

    .end local p1    # "plugin":Lcom/android/systemui/plugins/Plugin;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/QSTileHost;->onPluginConnected(Lcom/android/systemui/plugins/qs/QSFactory;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginConnected(Lcom/android/systemui/plugins/qs/QSFactory;Landroid/content/Context;)V
    .locals 3
    .param p1, "plugin"    # Lcom/android/systemui/plugins/qs/QSFactory;
    .param p2, "pluginContext"    # Landroid/content/Context;

    .prologue
    .line 186
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mQsFactories:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 187
    const-class v1, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/tuner/TunerService;

    const-string/jumbo v2, "sysui_qs_tiles"

    invoke-virtual {v1, v2}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "QSTileHost"

    const-string/jumbo v2, "onPluginConnected: force remove and recreate of all tiles."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const-string/jumbo v1, "sysui_qs_tiles"

    const-string/jumbo v2, ""

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/qs/QSTileHost;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string/jumbo v1, "sysui_qs_tiles"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/qs/QSTileHost;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method public bridge synthetic onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V
    .locals 0
    .param p1, "plugin"    # Lcom/android/systemui/plugins/Plugin;

    .prologue
    .line 195
    check-cast p1, Lcom/android/systemui/plugins/qs/QSFactory;

    .end local p1    # "plugin":Lcom/android/systemui/plugins/Plugin;
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSTileHost;->onPluginDisconnected(Lcom/android/systemui/plugins/qs/QSFactory;)V

    return-void
.end method

.method public onPluginDisconnected(Lcom/android/systemui/plugins/qs/QSFactory;)V
    .locals 3
    .param p1, "plugin"    # Lcom/android/systemui/plugins/qs/QSFactory;

    .prologue
    .line 196
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mQsFactories:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 198
    const-string/jumbo v1, "QSTileHost"

    const-string/jumbo v2, "onPluginDisconnected: force remove and recreate of all tiles."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const-class v1, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/tuner/TunerService;

    const-string/jumbo v2, "sysui_qs_tiles"

    invoke-virtual {v1, v2}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "sysui_qs_tiles"

    const-string/jumbo v2, ""

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/qs/QSTileHost;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string/jumbo v1, "sysui_qs_tiles"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/qs/QSTileHost;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    .line 274
    const-string/jumbo v12, "sysui_qs_tiles"

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 275
    const-string/jumbo v12, "QSTileHost"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "onTuningChanged: other key: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    return-void

    .line 278
    :cond_0
    if-nez p2, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/systemui/proxy/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 279
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x910003a

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 281
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v12, v1}, Lcom/android/systemui/qs/QSTileHost;->loadTileSpecs(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 282
    .local v11, "tileSpecs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v12, "QSTileHost"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "onTuningChanged: recreating tiles: newValue: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", tileSpecs: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 284
    .local v2, "currentUser":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-interface {v11, v12}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/qs/QSTileHost;->mCurrentUser:I

    if-ne v2, v12, :cond_2

    return-void

    .line 285
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v12}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "entry$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 286
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/systemui/plugins/qs/QSTile;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 287
    sget-boolean v12, Lcom/android/systemui/qs/QSTileHost;->DEBUG:Z

    if-eqz v12, :cond_4

    const-string/jumbo v13, "QSTileHost"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Destroying tile: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_4
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v12}, Lcom/android/systemui/plugins/qs/QSTile;->destroy()V

    goto :goto_0

    .line 291
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/systemui/plugins/qs/QSTile;>;"
    :cond_5
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 292
    .local v6, "newTiles":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/android/systemui/plugins/qs/QSTile;>;"
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "tileSpec$iterator":Ljava/util/Iterator;
    :cond_6
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 293
    .local v9, "tileSpec":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v12, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/plugins/qs/QSTile;

    .line 294
    .local v8, "tile":Lcom/android/systemui/plugins/qs/QSTile;
    if-eqz v8, :cond_b

    instance-of v12, v8, Lcom/android/systemui/qs/external/CustomTile;

    if-eqz v12, :cond_7

    move-object v12, v8

    .line 295
    check-cast v12, Lcom/android/systemui/qs/external/CustomTile;

    invoke-virtual {v12}, Lcom/android/systemui/qs/external/CustomTile;->getUser()I

    move-result v12

    if-ne v12, v2, :cond_b

    .line 296
    :cond_7
    invoke-interface {v8}, Lcom/android/systemui/plugins/qs/QSTile;->isAvailable()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 297
    sget-boolean v12, Lcom/android/systemui/qs/QSTileHost;->DEBUG:Z

    if-eqz v12, :cond_8

    const-string/jumbo v12, "QSTileHost"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Adding "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_8
    invoke-interface {v8}, Lcom/android/systemui/plugins/qs/QSTile;->removeCallbacks()V

    .line 299
    instance-of v12, v8, Lcom/android/systemui/qs/external/CustomTile;

    if-nez v12, :cond_9

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/qs/QSTileHost;->mCurrentUser:I

    if-eq v12, v2, :cond_9

    .line 300
    invoke-interface {v8, v2}, Lcom/android/systemui/plugins/qs/QSTile;->userSwitch(I)V

    .line 302
    :cond_9
    invoke-virtual {v6, v9, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 304
    :cond_a
    const-string/jumbo v12, "QSTileHost"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "onTuningChanged: unavailable tile: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-interface {v8}, Lcom/android/systemui/plugins/qs/QSTile;->destroy()V

    goto :goto_1

    .line 308
    :cond_b
    sget-boolean v12, Lcom/android/systemui/qs/QSTileHost;->DEBUG:Z

    if-eqz v12, :cond_c

    const-string/jumbo v12, "QSTileHost"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Creating tile: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_c
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/systemui/qs/QSTileHost;->createTile(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;

    move-result-object v8

    .line 311
    if-eqz v8, :cond_6

    .line 312
    invoke-interface {v8}, Lcom/android/systemui/plugins/qs/QSTile;->isAvailable()Z

    move-result v12

    if-eqz v12, :cond_d

    .line 313
    invoke-interface {v8, v9}, Lcom/android/systemui/plugins/qs/QSTile;->setTileSpec(Ljava/lang/String;)V

    .line 314
    invoke-virtual {v6, v9, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 320
    :catch_0
    move-exception v7

    .line 321
    .local v7, "t":Ljava/lang/Throwable;
    const-string/jumbo v12, "QSTileHost"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "onTuningChanged: Error creating tile for spec: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 316
    .end local v7    # "t":Ljava/lang/Throwable;
    :cond_d
    :try_start_1
    const-string/jumbo v12, "QSTileHost"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "onTuningChanged: unavailable custom tile: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-interface {v8}, Lcom/android/systemui/plugins/qs/QSTile;->destroy()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 325
    .end local v8    # "tile":Lcom/android/systemui/plugins/qs/QSTile;
    .end local v9    # "tileSpec":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/qs/QSTileHost;->mCurrentUser:I

    .line 326
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 327
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 328
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v12}, Ljava/util/LinkedHashMap;->clear()V

    .line 329
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v12, v6}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 330
    invoke-static {}, Lcom/android/systemui/Util;->isMiuiOptimizationDisabled()Z

    move-result v12

    if-eqz v12, :cond_10

    const/16 v3, 0xc8

    .line 332
    .local v3, "delay":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSTileHost;->mHandler:Landroid/os/Handler;

    if-nez v12, :cond_f

    .line 333
    new-instance v12, Landroid/os/Handler;

    invoke-direct {v12}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/qs/QSTileHost;->mHandler:Landroid/os/Handler;

    .line 335
    :cond_f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSTileHost;->mHandler:Landroid/os/Handler;

    new-instance v13, Lcom/android/systemui/qs/QSTileHost$5;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/systemui/qs/QSTileHost$5;-><init>(Lcom/android/systemui/qs/QSTileHost;)V

    .line 342
    int-to-long v14, v3

    .line 335
    invoke-virtual {v12, v13, v14, v15}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 273
    return-void

    .line 330
    .end local v3    # "delay":I
    :cond_10
    const/4 v3, 0x0

    .restart local v3    # "delay":I
    goto :goto_2
.end method

.method public removeCallback(Lcom/android/systemui/qs/QSHost$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui/qs/QSHost$Callback;

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 210
    return-void
.end method

.method public removeTile(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "tile"    # Landroid/content/ComponentName;

    .prologue
    .line 372
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 373
    .local v0, "newSpecs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/android/systemui/qs/external/CustomTile;->toSpec(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 374
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/qs/QSTileHost;->changeTiles(Ljava/util/List;Ljava/util/List;)V

    .line 371
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 225
    return-void
.end method
