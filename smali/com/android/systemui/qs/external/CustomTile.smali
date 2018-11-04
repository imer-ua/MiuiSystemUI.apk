.class public Lcom/android/systemui/qs/external/CustomTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "CustomTile.java"

# interfaces
.implements Lcom/android/systemui/qs/external/TileLifecycleManager$TileChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
        "<",
        "Lcom/android/systemui/plugins/qs/QSTile$State;",
        ">;",
        "Lcom/android/systemui/qs/external/TileLifecycleManager$TileChangeListener;"
    }
.end annotation


# instance fields
.field private final mComponent:Landroid/content/ComponentName;

.field private mDefaultIcon:Landroid/graphics/drawable/Icon;

.field private mIsShowingDialog:Z

.field private mIsTokenGranted:Z

.field private mListening:Z

.field private final mService:Landroid/service/quicksettings/IQSTileService;

.field private final mServiceManager:Lcom/android/systemui/qs/external/TileServiceManager;

.field private final mTile:Landroid/service/quicksettings/Tile;

.field private final mToken:Landroid/os/IBinder;

.field private final mUser:I

.field private final mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/external/CustomTile;)Landroid/service/quicksettings/IQSTileService;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mService:Landroid/service/quicksettings/IQSTileService;

    return-object v0
.end method

.method private constructor <init>(Lcom/android/systemui/qs/QSTileHost;Ljava/lang/String;)V
    .locals 1
    .param p1, "host"    # Lcom/android/systemui/qs/QSTileHost;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 68
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mToken:Landroid/os/IBinder;

    .line 81
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mWindowManager:Landroid/view/IWindowManager;

    .line 82
    invoke-static {p2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mComponent:Landroid/content/ComponentName;

    .line 83
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mComponent:Landroid/content/ComponentName;

    invoke-static {v0}, Landroid/service/quicksettings/TileCompat;->newTile(Landroid/content/ComponentName;)Landroid/service/quicksettings/Tile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    .line 84
    invoke-direct {p0}, Lcom/android/systemui/qs/external/CustomTile;->setTileIcon()V

    .line 85
    invoke-virtual {p1}, Lcom/android/systemui/qs/QSTileHost;->getTileServices()Lcom/android/systemui/qs/external/TileServices;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/external/TileServices;->getTileWrapper(Lcom/android/systemui/qs/external/CustomTile;)Lcom/android/systemui/qs/external/TileServiceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mServiceManager:Lcom/android/systemui/qs/external/TileServiceManager;

    .line 86
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mServiceManager:Lcom/android/systemui/qs/external/TileServiceManager;

    invoke-virtual {v0}, Lcom/android/systemui/qs/external/TileServiceManager;->getTileService()Landroid/service/quicksettings/IQSTileService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mService:Landroid/service/quicksettings/IQSTileService;

    .line 87
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mServiceManager:Lcom/android/systemui/qs/external/TileServiceManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/external/TileServiceManager;->setTileChangeListener(Lcom/android/systemui/qs/external/TileLifecycleManager$TileChangeListener;)V

    .line 88
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mUser:I

    .line 79
    return-void
.end method

.method public static create(Lcom/android/systemui/qs/QSTileHost;Ljava/lang/String;)Lcom/android/systemui/qs/external/CustomTile;
    .locals 4
    .param p0, "host"    # Lcom/android/systemui/qs/QSTileHost;
    .param p1, "spec"    # Ljava/lang/String;

    .prologue
    .line 346
    if-eqz p1, :cond_0

    const-string/jumbo v1, "custom("

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 349
    const-string/jumbo v1, "custom("

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 350
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 351
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Empty custom tile spec action"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 347
    .end local v0    # "action":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Bad custom tile spec: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 353
    .restart local v0    # "action":Ljava/lang/String;
    :cond_1
    new-instance v1, Lcom/android/systemui/qs/external/CustomTile;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/qs/external/CustomTile;-><init>(Lcom/android/systemui/qs/QSTileHost;Ljava/lang/String;)V

    return-object v1
.end method

.method public static getComponentFromSpec(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 3
    .param p0, "spec"    # Ljava/lang/String;

    .prologue
    .line 338
    const-string/jumbo v1, "custom("

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 339
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 340
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Empty custom tile spec action"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 342
    :cond_0
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    return-object v1
.end method

.method private iconEquals(Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)Z
    .locals 4
    .param p1, "icon1"    # Landroid/graphics/drawable/Icon;
    .param p2, "icon2"    # Landroid/graphics/drawable/Icon;

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 127
    if-ne p1, p2, :cond_0

    .line 128
    return v3

    .line 130
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 131
    :cond_1
    return v2

    .line 133
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 134
    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    if-eq v0, v1, :cond_4

    .line 135
    :cond_3
    return v2

    .line 137
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v1

    if-eq v0, v1, :cond_5

    .line 138
    return v2

    .line 140
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 141
    return v2

    .line 143
    :cond_6
    return v3
.end method

.method private isSystemApp(Landroid/content/pm/PackageManager;)Z
    .locals 2
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0

    return v0
.end method

.method private resolveIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 5
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 257
    iget-object v2, p0, Lcom/android/systemui/qs/external/CustomTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 258
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 257
    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4, v3}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 259
    .local v0, "result":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.service.quicksettings.action.QS_TILE_PREFERENCES"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 260
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 259
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method private setTileIcon()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 93
    :try_start_0
    iget-object v6, p0, Lcom/android/systemui/qs/external/CustomTile;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 94
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/high16 v1, 0xc0000

    .line 95
    .local v1, "flags":I
    invoke-direct {p0, v4}, Lcom/android/systemui/qs/external/CustomTile;->isSystemApp(Landroid/content/pm/PackageManager;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 96
    const v1, 0xc0200

    .line 98
    :cond_0
    iget-object v6, p0, Lcom/android/systemui/qs/external/CustomTile;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v4, v6, v1}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v3

    .line 99
    .local v3, "info":Landroid/content/pm/ServiceInfo;
    iget v6, v3, Landroid/content/pm/ServiceInfo;->icon:I

    if-eqz v6, :cond_3

    iget v2, v3, Landroid/content/pm/ServiceInfo;->icon:I

    .line 102
    .local v2, "icon":I
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {v6}, Landroid/service/quicksettings/Tile;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 103
    iget-object v6, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {v6}, Landroid/service/quicksettings/Tile;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v6

    iget-object v8, p0, Lcom/android/systemui/qs/external/CustomTile;->mDefaultIcon:Landroid/graphics/drawable/Icon;

    invoke-direct {p0, v6, v8}, Lcom/android/systemui/qs/external/CustomTile;->iconEquals(Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)Z

    move-result v5

    .line 104
    :goto_1
    if-eqz v2, :cond_5

    .line 105
    iget-object v6, p0, Lcom/android/systemui/qs/external/CustomTile;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 104
    invoke-static {v6, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v6

    :goto_2
    iput-object v6, p0, Lcom/android/systemui/qs/external/CustomTile;->mDefaultIcon:Landroid/graphics/drawable/Icon;

    .line 106
    if-eqz v5, :cond_1

    .line 107
    iget-object v6, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    iget-object v8, p0, Lcom/android/systemui/qs/external/CustomTile;->mDefaultIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v6, v8}, Landroid/service/quicksettings/Tile;->setIcon(Landroid/graphics/drawable/Icon;)V

    .line 110
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {v6}, Landroid/service/quicksettings/Tile;->getLabel()Ljava/lang/CharSequence;

    move-result-object v6

    if-nez v6, :cond_2

    .line 111
    iget-object v6, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {v3, v4}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/service/quicksettings/Tile;->setLabel(Ljava/lang/CharSequence;)V

    .line 91
    .end local v1    # "flags":I
    .end local v2    # "icon":I
    .end local v3    # "info":Landroid/content/pm/ServiceInfo;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    :goto_3
    return-void

    .line 100
    .restart local v1    # "flags":I
    .restart local v3    # "info":Landroid/content/pm/ServiceInfo;
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_3
    iget-object v6, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v6, Landroid/content/pm/ApplicationInfo;->icon:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v2    # "icon":I
    goto :goto_0

    .line 102
    :cond_4
    const/4 v5, 0x1

    .local v5, "updateIcon":Z
    goto :goto_1

    .end local v5    # "updateIcon":Z
    :cond_5
    move-object v6, v7

    .line 105
    goto :goto_2

    .line 113
    .end local v1    # "flags":I
    .end local v2    # "icon":I
    .end local v3    # "info":Landroid/content/pm/ServiceInfo;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    iput-object v7, p0, Lcom/android/systemui/qs/external/CustomTile;->mDefaultIcon:Landroid/graphics/drawable/Icon;

    goto :goto_3
.end method

.method public static toSpec(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "custom("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getComponent()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 244
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.service.quicksettings.action.QS_TILE_PREFERENCES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 245
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/external/CustomTile;->resolveIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 247
    if-eqz v0, :cond_0

    .line 248
    const-string/jumbo v1, "android.intent.extra.COMPONENT_NAME"

    iget-object v2, p0, Lcom/android/systemui/qs/external/CustomTile;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 249
    const-string/jumbo v1, "state"

    iget-object v2, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {v2}, Landroid/service/quicksettings/Tile;->getState()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 250
    return-object v0

    .line 252
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 253
    const-string/jumbo v2, "package"

    iget-object v3, p0, Lcom/android/systemui/qs/external/CustomTile;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 252
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 318
    const/16 v0, 0x10c

    return v0
.end method

.method public getQsTile()Landroid/service/quicksettings/Tile;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    return-object v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/android/systemui/qs/external/CustomTile;->getState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getUser()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mUser:I

    return v0
.end method

.method protected handleClick()V
    .locals 5

    .prologue
    .line 265
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {v1}, Landroid/service/quicksettings/Tile;->getState()I

    move-result v1

    if-nez v1, :cond_0

    .line 266
    return-void

    .line 270
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v2, p0, Lcom/android/systemui/qs/external/CustomTile;->mToken:Landroid/os/IBinder;

    const/16 v3, 0x7f3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/view/IWindowManagerCompat;->addWindowToken(Landroid/view/IWindowManager;Landroid/os/IBinder;II)V

    .line 271
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mIsTokenGranted:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 275
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mServiceManager:Lcom/android/systemui/qs/external/TileServiceManager;

    invoke-virtual {v1}, Lcom/android/systemui/qs/external/TileServiceManager;->isActiveTile()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 276
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mServiceManager:Lcom/android/systemui/qs/external/TileServiceManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/external/TileServiceManager;->setBindRequested(Z)V

    .line 277
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mService:Landroid/service/quicksettings/IQSTileService;

    invoke-interface {v1}, Landroid/service/quicksettings/IQSTileService;->onStartListening()V

    .line 279
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mService:Landroid/service/quicksettings/IQSTileService;

    iget-object v2, p0, Lcom/android/systemui/qs/external/CustomTile;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/service/quicksettings/IQSTileService;->onClick(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 264
    :goto_1
    return-void

    .line 280
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 272
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method protected handleDestroy()V
    .locals 4

    .prologue
    .line 225
    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    .line 226
    iget-boolean v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mIsTokenGranted:Z

    if-eqz v1, :cond_0

    .line 229
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v2, p0, Lcom/android/systemui/qs/external/CustomTile;->mToken:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/IWindowManagerCompat;->removeWindowToken(Landroid/view/IWindowManager;Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v1}, Lcom/android/systemui/qs/QSHost;->getTileServices()Lcom/android/systemui/qs/external/TileServices;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/external/CustomTile;->mServiceManager:Lcom/android/systemui/qs/external/TileServiceManager;

    invoke-virtual {v1, p0, v2}, Lcom/android/systemui/qs/external/TileServices;->freeService(Lcom/android/systemui/qs/external/CustomTile;Lcom/android/systemui/qs/external/TileServiceManager;)V

    .line 224
    return-void

    .line 230
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public handleSetListening(Z)V
    .locals 4
    .param p1, "listening"    # Z

    .prologue
    .line 195
    iget-boolean v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mListening:Z

    if-ne v1, p1, :cond_0

    return-void

    .line 196
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/external/CustomTile;->mListening:Z

    .line 198
    if-eqz p1, :cond_2

    .line 199
    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/qs/external/CustomTile;->setTileIcon()V

    .line 200
    invoke-virtual {p0}, Lcom/android/systemui/qs/external/CustomTile;->refreshState()V

    .line 201
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mServiceManager:Lcom/android/systemui/qs/external/TileServiceManager;

    invoke-virtual {v1}, Lcom/android/systemui/qs/external/TileServiceManager;->isActiveTile()Z

    move-result v1

    if-nez v1, :cond_1

    .line 202
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mServiceManager:Lcom/android/systemui/qs/external/TileServiceManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/external/TileServiceManager;->setBindRequested(Z)V

    .line 203
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mService:Landroid/service/quicksettings/IQSTileService;

    invoke-interface {v1}, Landroid/service/quicksettings/IQSTileService;->onStartListening()V

    .line 194
    :cond_1
    :goto_0
    return-void

    .line 206
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mService:Landroid/service/quicksettings/IQSTileService;

    invoke-interface {v1}, Landroid/service/quicksettings/IQSTileService;->onStopListening()V

    .line 207
    iget-boolean v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mIsTokenGranted:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mIsShowingDialog:Z

    if-eqz v1, :cond_4

    .line 215
    :cond_3
    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mIsShowingDialog:Z

    .line 216
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mServiceManager:Lcom/android/systemui/qs/external/TileServiceManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/external/TileServiceManager;->setBindRequested(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 218
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 210
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v2, p0, Lcom/android/systemui/qs/external/CustomTile;->mToken:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/IWindowManagerCompat;->removeWindowToken(Landroid/view/IWindowManager;Landroid/os/IBinder;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 213
    :goto_2
    const/4 v1, 0x0

    :try_start_2
    iput-boolean v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mIsTokenGranted:Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 211
    :catch_1
    move-exception v0

    .restart local v0    # "e":Landroid/os/RemoteException;
    goto :goto_2
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 5
    .param p1, "state"    # Lcom/android/systemui/plugins/qs/QSTile$State;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 292
    iget-object v3, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {v3}, Landroid/service/quicksettings/Tile;->getState()I

    move-result v2

    .line 293
    .local v2, "tileState":I
    iget-object v3, p0, Lcom/android/systemui/qs/external/CustomTile;->mServiceManager:Lcom/android/systemui/qs/external/TileServiceManager;

    invoke-virtual {v3}, Lcom/android/systemui/qs/external/TileServiceManager;->hasPendingBind()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 294
    const/4 v2, 0x0

    .line 296
    :cond_0
    iput v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 299
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {v3}, Landroid/service/quicksettings/Tile;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/external/CustomTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 306
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    new-instance v3, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;

    invoke-direct {v3, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 308
    iget-object v3, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {v3}, Landroid/service/quicksettings/Tile;->getLabel()Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 309
    iget-object v3, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {v3}, Landroid/service/quicksettings/Tile;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 310
    iget-object v3, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {v3}, Landroid/service/quicksettings/Tile;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 291
    :goto_1
    return-void

    .line 300
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v1

    .line 301
    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/systemui/qs/external/CustomTile;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Invalid icon, forcing into unavailable state"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const/4 v3, 0x0

    iput v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 303
    iget-object v3, p0, Lcom/android/systemui/qs/external/CustomTile;->mDefaultIcon:Landroid/graphics/drawable/Icon;

    iget-object v4, p0, Lcom/android/systemui/qs/external/CustomTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 312
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    iput-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    goto :goto_1
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mDefaultIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    .prologue
    .line 238
    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$State;-><init>()V

    .line 239
    .local v0, "state":Lcom/android/systemui/plugins/qs/QSTile$State;
    return-object v0
.end method

.method public onDialogHidden()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 185
    iput-boolean v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mIsShowingDialog:Z

    .line 188
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v2, p0, Lcom/android/systemui/qs/external/CustomTile;->mToken:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/IWindowManagerCompat;->removeWindowToken(Landroid/view/IWindowManager;Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :goto_0
    return-void

    .line 189
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public onDialogShown()V
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mIsShowingDialog:Z

    .line 180
    return-void
.end method

.method public onTileChanged(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "tile"    # Landroid/content/ComponentName;

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/android/systemui/qs/external/CustomTile;->setTileIcon()V

    .line 147
    return-void
.end method

.method public populate(Landroid/metrics/LogMakerCompat;)Landroid/metrics/LogMakerCompat;
    .locals 2
    .param p1, "logMaker"    # Landroid/metrics/LogMakerCompat;

    .prologue
    .line 166
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->populate(Landroid/metrics/LogMakerCompat;)Landroid/metrics/LogMakerCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/metrics/LogMakerCompat;->setComponentName(Landroid/content/ComponentName;)Landroid/metrics/LogMakerCompat;

    move-result-object v0

    return-object v0
.end method

.method public startUnlockAndRun()V
    .locals 2

    .prologue
    .line 322
    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v1, Lcom/android/systemui/qs/external/CustomTile$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/external/CustomTile$1;-><init>(Lcom/android/systemui/qs/external/CustomTile;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    .line 321
    return-void
.end method

.method public updateState(Landroid/service/quicksettings/Tile;)V
    .locals 2
    .param p1, "tile"    # Landroid/service/quicksettings/Tile;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {p1}, Landroid/service/quicksettings/Tile;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setIcon(Landroid/graphics/drawable/Icon;)V

    .line 175
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {p1}, Landroid/service/quicksettings/Tile;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setLabel(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {p1}, Landroid/service/quicksettings/Tile;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {p1}, Landroid/service/quicksettings/Tile;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setState(I)V

    .line 173
    return-void
.end method
