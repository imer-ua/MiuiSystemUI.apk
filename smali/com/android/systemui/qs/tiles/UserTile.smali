.class public Lcom/android/systemui/qs/tiles/UserTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "UserTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
        "<",
        "Lcom/android/systemui/plugins/qs/QSTile$State;",
        ">;",
        "Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;"
    }
.end annotation


# instance fields
.field private mLastUpdate:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

.field private final mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 1
    .param p1, "host"    # Lcom/android/systemui/qs/QSHost;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 41
    const-class v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/UserTile;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 42
    const-class v0, Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/UserInfoController;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/UserTile;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    .line 39
    return-void
.end method


# virtual methods
.method public getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UserTile;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->userDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    return-object v0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 52
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.USER_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 67
    const/16 v0, 0x104

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/UserTile;->getState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected handleClick()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/UserTile;->showDetail(Z)V

    .line 56
    return-void
.end method

.method public handleSetListening(Z)V
    .locals 1
    .param p1, "listening"    # Z

    .prologue
    .line 72
    if-eqz p1, :cond_0

    .line 73
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UserTile;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/UserInfoController;->addCallback(Ljava/lang/Object;)V

    .line 71
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UserTile;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/UserInfoController;->removeCallback(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/plugins/qs/QSTile$State;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 86
    if-eqz p2, :cond_1

    check-cast p2, Landroid/util/Pair;

    move-object v0, p2

    .line 87
    .end local p2    # "arg":Ljava/lang/Object;
    .local v0, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/graphics/drawable/Drawable;>;"
    :goto_0
    if-eqz v0, :cond_0

    .line 88
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 90
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 91
    new-instance v1, Lcom/android/systemui/qs/tiles/UserTile$1;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/qs/tiles/UserTile$1;-><init>(Lcom/android/systemui/qs/tiles/UserTile;Landroid/util/Pair;)V

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 85
    :cond_0
    return-void

    .line 86
    .end local v0    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/graphics/drawable/Drawable;>;"
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UserTile;->mLastUpdate:Landroid/util/Pair;

    goto :goto_0
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$State;-><init>()V

    return-object v0
.end method

.method public onUserInfoChanged(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "picture"    # Landroid/graphics/drawable/Drawable;
    .param p3, "userAccount"    # Ljava/lang/String;

    .prologue
    .line 104
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/UserTile;->mLastUpdate:Landroid/util/Pair;

    .line 105
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UserTile;->mLastUpdate:Landroid/util/Pair;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/UserTile;->refreshState(Ljava/lang/Object;)V

    .line 103
    return-void
.end method