.class public Lcom/android/systemui/qs/customize/TileQueryHelper;
.super Ljava/lang/Object;
.source "TileQueryHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/customize/TileQueryHelper$TileCallback;,
        Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;,
        Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;
    }
.end annotation


# instance fields
.field private final mBgHandler:Landroid/os/Handler;

.field private final mContext:Landroid/content/Context;

.field private mFinished:Z

.field private final mListener:Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;

.field private final mLiveTiles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/plugins/qs/QSTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainHandler:Landroid/os/Handler;

.field private final mSpecs:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/customize/TileQueryHelper;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/customize/TileQueryHelper;)Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mListener:Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/customize/TileQueryHelper;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mLiveTiles:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/customize/TileQueryHelper;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/qs/customize/TileQueryHelper;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mTiles:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/customize/TileQueryHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mFinished:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/customize/TileQueryHelper;Ljava/util/Collection;Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1
    .param p1, "tiles"    # Ljava/util/Collection;
    .param p2, "spec"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/customize/TileQueryHelper;->getState(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/customize/TileQueryHelper;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "spec"    # Ljava/lang/String;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "label"    # Ljava/lang/CharSequence;
    .param p4, "appLabel"    # Ljava/lang/CharSequence;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/qs/customize/TileQueryHelper;->addTile(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/qs/customize/TileQueryHelper;Ljava/lang/String;Ljava/lang/CharSequence;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V
    .locals 0
    .param p1, "spec"    # Ljava/lang/String;
    .param p2, "appLabel"    # Ljava/lang/CharSequence;
    .param p3, "state"    # Lcom/android/systemui/plugins/qs/QSTile$State;
    .param p4, "isSystem"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/qs/customize/TileQueryHelper;->addTile(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/qs/customize/TileQueryHelper;Z)V
    .locals 0
    .param p1, "finished"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/TileQueryHelper;->notifyTilesChanged(Z)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/qs/customize/TileQueryHelper;Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 0
    .param p1, "state"    # Lcom/android/systemui/plugins/qs/QSTile$State;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/TileQueryHelper;->updateStateForCustomizer(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mTiles:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mSpecs:Landroid/util/ArraySet;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mLiveTiles:Ljava/util/HashMap;

    .line 66
    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mContext:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mListener:Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;

    .line 68
    new-instance v1, Landroid/os/Handler;

    sget-object v0, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mBgHandler:Landroid/os/Handler;

    .line 69
    sget-object v0, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    iput-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mMainHandler:Landroid/os/Handler;

    .line 65
    return-void
.end method

.method private addPackageTiles(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 2
    .param p1, "host"    # Lcom/android/systemui/qs/QSTileHost;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/qs/customize/TileQueryHelper$2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/customize/TileQueryHelper$2;-><init>(Lcom/android/systemui/qs/customize/TileQueryHelper;Lcom/android/systemui/qs/QSTileHost;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 130
    return-void
.end method

.method private addStockTiles(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 8
    .param p1, "host"    # Lcom/android/systemui/qs/QSTileHost;

    .prologue
    .line 96
    iget-object v6, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mContext:Landroid/content/Context;

    const v7, 0x9100038

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "possible":Ljava/lang/String;
    const-string/jumbo v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, "possibleTiles":[Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v5, "tilesToAdd":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/plugins/qs/QSTile;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v6, v2

    if-ge v0, v6, :cond_2

    .line 100
    aget-object v3, v2, v0

    .line 101
    .local v3, "spec":Ljava/lang/String;
    invoke-virtual {p1, v3}, Lcom/android/systemui/qs/QSTileHost;->createTile(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;

    move-result-object v4

    .line 102
    .local v4, "tile":Lcom/android/systemui/plugins/qs/QSTile;
    if-nez v4, :cond_0

    .line 99
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    :cond_0
    invoke-interface {v4}, Lcom/android/systemui/plugins/qs/QSTile;->isAvailable()Z

    move-result v6

    if-nez v6, :cond_1

    .line 105
    invoke-interface {v4}, Lcom/android/systemui/plugins/qs/QSTile;->destroy()V

    goto :goto_1

    .line 108
    :cond_1
    const/4 v6, 0x1

    invoke-interface {v4, p0, v6}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    .line 109
    invoke-interface {v4}, Lcom/android/systemui/plugins/qs/QSTile;->clearState()V

    .line 110
    invoke-interface {v4}, Lcom/android/systemui/plugins/qs/QSTile;->refreshState()V

    .line 111
    new-instance v6, Lcom/android/systemui/qs/customize/TileQueryHelper$TileCallback;

    invoke-direct {v6, p0, v4}, Lcom/android/systemui/qs/customize/TileQueryHelper$TileCallback;-><init>(Lcom/android/systemui/qs/customize/TileQueryHelper;Lcom/android/systemui/plugins/qs/QSTile;)V

    invoke-interface {v4, v6}, Lcom/android/systemui/plugins/qs/QSTile;->addCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V

    .line 112
    invoke-interface {v4, v3}, Lcom/android/systemui/plugins/qs/QSTile;->setTileSpec(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v6, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mLiveTiles:Ljava/util/HashMap;

    invoke-virtual {v6, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 117
    .end local v3    # "spec":Ljava/lang/String;
    .end local v4    # "tile":Lcom/android/systemui/plugins/qs/QSTile;
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mBgHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/systemui/qs/customize/TileQueryHelper$1;

    invoke-direct {v7, p0, v5}, Lcom/android/systemui/qs/customize/TileQueryHelper$1;-><init>(Lcom/android/systemui/qs/customize/TileQueryHelper;Ljava/util/ArrayList;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 95
    return-void
.end method

.method private addTile(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "spec"    # Ljava/lang/String;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "label"    # Ljava/lang/CharSequence;
    .param p4, "appLabel"    # Ljava/lang/CharSequence;

    .prologue
    .line 235
    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$State;-><init>()V

    .line 236
    .local v0, "state":Lcom/android/systemui/plugins/qs/QSTile$State;
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 237
    iput-object p3, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 238
    iput-object p3, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 239
    new-instance v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;

    invoke-direct {v1, p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v1, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 240
    const/4 v1, 0x0

    invoke-direct {p0, p1, p4, v0, v1}, Lcom/android/systemui/qs/customize/TileQueryHelper;->addTile(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V

    .line 234
    return-void
.end method

.method private addTile(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V
    .locals 3
    .param p1, "spec"    # Ljava/lang/String;
    .param p2, "appLabel"    # Ljava/lang/CharSequence;
    .param p3, "state"    # Lcom/android/systemui/plugins/qs/QSTile$State;
    .param p4, "isSystem"    # Z

    .prologue
    .line 219
    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mSpecs:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "edit"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 220
    :cond_0
    return-void

    .line 222
    :cond_1
    new-instance v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    invoke-direct {v0}, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;-><init>()V

    .line 223
    .local v0, "info":Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    iput-object p3, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 224
    iget-object v1, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/customize/TileQueryHelper;->updateStateForCustomizer(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    .line 225
    iput-object p1, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    .line 226
    iget-object v1, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    if-nez p4, :cond_2

    iget-object v2, p3, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 227
    :cond_2
    const/4 p2, 0x0

    .line 226
    .end local p2    # "appLabel":Ljava/lang/CharSequence;
    :cond_3
    iput-object p2, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 228
    iput-boolean p4, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->isSystem:Z

    .line 229
    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mSpecs:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 218
    return-void
.end method

.method private getState(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 3
    .param p2, "spec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/systemui/plugins/qs/QSTile;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/systemui/plugins/qs/QSTile$State;"
        }
    .end annotation

    .prologue
    .line 210
    .local p1, "tiles":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/systemui/plugins/qs/QSTile;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "tile$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile;

    .line 211
    .local v0, "tile":Lcom/android/systemui/plugins/qs/QSTile;
    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 212
    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QSTile;->getState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/plugins/qs/QSTile$State;->copy()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v2

    return-object v2

    .line 215
    .end local v0    # "tile":Lcom/android/systemui/plugins/qs/QSTile;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private notifyTilesChanged(Z)V
    .locals 3
    .param p1, "finished"    # Z

    .prologue
    .line 193
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mTiles:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 194
    .local v0, "tilesToReturn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;>;"
    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mMainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/qs/customize/TileQueryHelper$3;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/systemui/qs/customize/TileQueryHelper$3;-><init>(Lcom/android/systemui/qs/customize/TileQueryHelper;Ljava/util/ArrayList;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 192
    return-void
.end method

.method private updateStateForCustomizer(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 1
    .param p1, "state"    # Lcom/android/systemui/plugins/qs/QSTile$State;

    .prologue
    .line 204
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    .line 206
    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 205
    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 203
    return-void
.end method


# virtual methods
.method public isFinished()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mFinished:Z

    return v0
.end method

.method public queryTiles(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 1
    .param p1, "host"    # Lcom/android/systemui/qs/QSTileHost;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 74
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mSpecs:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mFinished:Z

    .line 77
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/TileQueryHelper;->addStockTiles(Lcom/android/systemui/qs/QSTileHost;)V

    .line 78
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/TileQueryHelper;->addPackageTiles(Lcom/android/systemui/qs/QSTileHost;)V

    .line 72
    return-void
.end method

.method public releaseTiles()V
    .locals 3

    .prologue
    .line 83
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mLiveTiles:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "tile$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile;

    .line 84
    .local v0, "tile":Lcom/android/systemui/plugins/qs/QSTile;
    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QSTile;->removeCallbacks()V

    .line 85
    const/4 v2, 0x0

    invoke-interface {v0, p0, v2}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    .line 86
    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QSTile;->destroy()V

    goto :goto_0

    .line 88
    .end local v0    # "tile":Lcom/android/systemui/plugins/qs/QSTile;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mLiveTiles:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 82
    return-void
.end method
