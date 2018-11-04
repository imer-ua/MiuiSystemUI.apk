.class public Lcom/android/systemui/qs/tiles/MuteTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "MuteTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/SilentModeObserverController$SilentModeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/MuteTile$1;
    }
.end annotation

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
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mSilentModeObserverController:Lcom/android/systemui/statusbar/policy/SilentModeObserverController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 1
    .param p1, "host"    # Lcom/android/systemui/qs/QSHost;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 144
    new-instance v0, Lcom/android/systemui/qs/tiles/MuteTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/MuteTile$1;-><init>(Lcom/android/systemui/qs/tiles/MuteTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/MuteTile;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 49
    const-class v0, Lcom/android/systemui/statusbar/policy/SilentModeObserverController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/SilentModeObserverController;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/MuteTile;->mSilentModeObserverController:Lcom/android/systemui/statusbar/policy/SilentModeObserverController;

    .line 47
    return-void
.end method

.method private longClickMuteIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 132
    const-string/jumbo v2, "com.android.settings/com.android.settings.Settings$SoundSettingsActivity"

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 133
    .local v0, "component":Landroid/content/ComponentName;
    if-nez v0, :cond_0

    .line 134
    return-object v3

    .line 137
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 139
    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 141
    return-object v1
.end method


# virtual methods
.method public getLongClickIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MuteTile;->longClickMuteIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 128
    const/4 v0, -0x1

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MuteTile;->mContext:Landroid/content/Context;

    const v1, 0x910056a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleClick()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x4

    .line 84
    sget-boolean v2, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-eqz v2, :cond_3

    .line 85
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MuteTile;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v1

    .line 86
    .local v1, "zenMode":I
    if-eq v1, v4, :cond_0

    const/4 v0, 0x1

    .line 88
    .local v0, "enabled":Z
    :goto_0
    if-eqz v0, :cond_1

    move-object v2, v3

    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/tiles/MuteTile;->refreshState(Ljava/lang/Object;)V

    .line 90
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/MuteTile;->mContext:Landroid/content/Context;

    .line 91
    if-eqz v0, :cond_2

    move v2, v4

    .line 89
    :goto_2
    invoke-static {v6, v2, v3}, Landroid/provider/MiuiSettings$SilenceMode;->setSilenceMode(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 94
    return-void

    .end local v0    # "enabled":Z
    :cond_0
    move v0, v5

    .line 86
    goto :goto_0

    .line 88
    .restart local v0    # "enabled":Z
    :cond_1
    sget-object v2, Lcom/android/systemui/qs/tiles/MuteTile;->ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

    goto :goto_1

    :cond_2
    move v2, v5

    .line 91
    goto :goto_2

    .line 97
    .end local v0    # "enabled":Z
    .end local v1    # "zenMode":I
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MuteTile;->mContext:Landroid/content/Context;

    invoke-static {v2, v4}, Lmiui/util/AudioManagerHelper;->toggleSilent(Landroid/content/Context;I)V

    .line 83
    return-void
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
    .locals 6
    .param p1, "listening"    # Z

    .prologue
    const/4 v4, 0x0

    .line 64
    if-eqz p1, :cond_0

    .line 65
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 66
    .local v2, "user":Landroid/os/UserHandle;
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 67
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MuteTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MuteTile;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 70
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MuteTile;->mSilentModeObserverController:Lcom/android/systemui/statusbar/policy/SilentModeObserverController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/SilentModeObserverController;->addCallback(Ljava/lang/Object;)V

    .line 63
    .end local v2    # "user":Landroid/os/UserHandle;
    .end local v3    # "filter":Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MuteTile;->mSilentModeObserverController:Lcom/android/systemui/statusbar/policy/SilentModeObserverController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/SilentModeObserverController;->removeCallback(Ljava/lang/Object;)V

    .line 73
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MuteTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MuteTile;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 6
    .param p1, "state"    # Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 107
    sget-object v4, Lcom/android/systemui/qs/tiles/MuteTile;->ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

    if-ne p2, v4, :cond_1

    const/4 v1, 0x1

    .line 108
    .local v1, "transientEnabling":Z
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MuteTile;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v2

    .line 109
    .local v2, "zenMode":I
    if-nez v1, :cond_0

    sget-boolean v4, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-eqz v4, :cond_3

    .line 110
    :cond_0
    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    move v0, v3

    .line 112
    .local v0, "enabled":Z
    :goto_1
    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 113
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MuteTile;->mContext:Landroid/content/Context;

    const v5, 0x910056a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 114
    iget-boolean v4, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v4, :cond_4

    .line 115
    const/4 v3, 0x2

    iput v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    .line 116
    const v3, 0x902016f

    invoke-static {v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 121
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/MuteTile;->mContext:Landroid/content/Context;

    .line 122
    iget-boolean v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v3, :cond_5

    const v3, 0x91002ad

    .line 121
    :goto_3
    invoke-virtual {v5, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    .line 123
    const-class v3, Landroid/widget/Switch;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 106
    return-void

    .line 107
    .end local v0    # "enabled":Z
    .end local v1    # "transientEnabling":Z
    .end local v2    # "zenMode":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "transientEnabling":Z
    goto :goto_0

    .line 110
    .restart local v2    # "zenMode":I
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 111
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MuteTile;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lmiui/util/AudioManagerHelper;->isSilentEnabled(Landroid/content/Context;)Z

    move-result v0

    goto :goto_1

    .line 118
    .restart local v0    # "enabled":Z
    :cond_4
    iput v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    .line 119
    const v3, 0x902016e

    invoke-static {v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_2

    .line 122
    :cond_5
    const v3, 0x91002ae

    goto :goto_3
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "state"    # Lcom/android/systemui/plugins/qs/QSTile$State;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 106
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .end local p1    # "state":Lcom/android/systemui/plugins/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/MuteTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
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
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MuteTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public onSilentModeChanged(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MuteTile;->refreshState()V

    .line 154
    return-void
.end method
