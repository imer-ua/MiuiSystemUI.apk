.class public Lcom/android/systemui/qs/tiles/QuietModeTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "QuietModeTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/SilentModeObserverController$SilentModeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
        "<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;",
        "Lcom/android/systemui/statusbar/policy/SilentModeObserverController$SilentModeListener;"
    }
.end annotation


# instance fields
.field private final mSilentModeObserverController:Lcom/android/systemui/statusbar/policy/SilentModeObserverController;

.field private mSupportNewSilentMode:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 2
    .param p1, "host"    # Lcom/android/systemui/qs/QSHost;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 48
    const-string/jumbo v0, "support_new_silentmode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/QuietModeTile;->mSupportNewSilentMode:Ljava/lang/Boolean;

    .line 49
    const-class v0, Lcom/android/systemui/statusbar/policy/SilentModeObserverController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/SilentModeObserverController;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/QuietModeTile;->mSilentModeObserverController:Lcom/android/systemui/statusbar/policy/SilentModeObserverController;

    .line 46
    return-void
.end method

.method private longClickQuietModeIntent()Landroid/content/Intent;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 129
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/QuietModeTile;->mSupportNewSilentMode:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 130
    const-string/jumbo v0, "com.android.settings/com.android.settings.Settings$MiuiSilentModeAcivity"

    .line 135
    .local v0, "action":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 136
    .local v1, "component":Landroid/content/ComponentName;
    if-nez v1, :cond_1

    .line 137
    return-object v4

    .line 132
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "component":Landroid/content/ComponentName;
    :cond_0
    const-string/jumbo v0, "com.android.settings/.dndmode.DoNotDisturbModeActivity"

    .restart local v0    # "action":Ljava/lang/String;
    goto :goto_0

    .line 140
    .restart local v1    # "component":Landroid/content/ComponentName;
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 141
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 142
    const/high16 v3, 0x14000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 144
    return-object v2
.end method


# virtual methods
.method public getLongClickIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/QuietModeTile;->longClickQuietModeIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 116
    const/4 v0, -0x1

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/QuietModeTile;->mContext:Landroid/content/Context;

    const v1, 0x910056d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleClick()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 78
    sget-boolean v2, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-eqz v2, :cond_2

    .line 79
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/QuietModeTile;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v1

    .line 80
    .local v1, "zenMode":I
    if-eq v1, v3, :cond_0

    const/4 v0, 0x1

    .line 82
    .local v0, "enabled":Z
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/QuietModeTile;->mContext:Landroid/content/Context;

    .line 83
    if-eqz v0, :cond_1

    move v2, v3

    .line 84
    :goto_1
    const/4 v3, 0x0

    .line 81
    invoke-static {v5, v2, v3}, Landroid/provider/MiuiSettings$SilenceMode;->setSilenceMode(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 85
    return-void

    .line 80
    .end local v0    # "enabled":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_0

    :cond_1
    move v2, v4

    .line 83
    goto :goto_1

    .line 87
    .end local v0    # "enabled":Z
    .end local v1    # "zenMode":I
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/QuietModeTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/QuietModeTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v2, v2, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v2, :cond_3

    :goto_2
    invoke-static {v5, v4}, Landroid/provider/MiuiSettings$AntiSpam;->setQuietMode(Landroid/content/Context;Z)V

    .line 77
    return-void

    :cond_3
    move v4, v3

    .line 87
    goto :goto_2
.end method

.method protected handleDestroy()V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    .line 53
    return-void
.end method

.method public handleSetListening(Z)V
    .locals 1
    .param p1, "listening"    # Z

    .prologue
    .line 64
    if-eqz p1, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/QuietModeTile;->mSilentModeObserverController:Lcom/android/systemui/statusbar/policy/SilentModeObserverController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/SilentModeObserverController;->addCallback(Ljava/lang/Object;)V

    .line 63
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/QuietModeTile;->mSilentModeObserverController:Lcom/android/systemui/statusbar/policy/SilentModeObserverController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/SilentModeObserverController;->removeCallback(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 4
    .param p1, "state"    # Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    .line 97
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/QuietModeTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v0

    .line 98
    .local v0, "zenMode":I
    sget-boolean v1, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-eqz v1, :cond_1

    .line 99
    if-ne v0, v2, :cond_0

    move v1, v2

    .line 98
    :goto_0
    iput-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 101
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/QuietModeTile;->mContext:Landroid/content/Context;

    const v3, 0x910056d

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 102
    iget-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v1, :cond_2

    .line 103
    const/4 v1, 0x2

    iput v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    .line 104
    const v1, 0x902015c

    invoke-static {v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 109
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/QuietModeTile;->mContext:Landroid/content/Context;

    .line 110
    iget-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v1, :cond_3

    const v1, 0x91002ad

    .line 109
    :goto_2
    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    .line 111
    const-class v1, Landroid/widget/Switch;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 96
    return-void

    .line 99
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 100
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/QuietModeTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/provider/MiuiSettings$AntiSpam;->isQuietModeEnable(Landroid/content/Context;)Z

    move-result v1

    goto :goto_0

    .line 106
    :cond_2
    iput v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    .line 107
    const v1, 0x902015b

    invoke-static {v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_1

    .line 110
    :cond_3
    const v1, 0x91002ae

    goto :goto_2
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "state"    # Lcom/android/systemui/plugins/qs/QSTile$State;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 96
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .end local p1    # "state":Lcom/android/systemui/plugins/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/QuietModeTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 3

    .prologue
    .line 121
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/QuietModeTile;->mContext:Landroid/content/Context;

    .line 122
    const-string/jumbo v2, "connectivity"

    .line 121
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 123
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    return v1
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/QuietModeTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public onSilentModeChanged(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/QuietModeTile;->refreshState()V

    .line 148
    return-void
.end method
