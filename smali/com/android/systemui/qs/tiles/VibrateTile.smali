.class public Lcom/android/systemui/qs/tiles/VibrateTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "VibrateTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/SilentModeObserverController$SilentModeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/VibrateTile$1;
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
.field private mCurrentUserId:I

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mSilentModeObserverController:Lcom/android/systemui/statusbar/policy/SilentModeObserverController;

.field private mVibrateEnableObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 2
    .param p1, "host"    # Lcom/android/systemui/qs/QSHost;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/qs/tiles/VibrateTile;->mCurrentUserId:I

    .line 141
    new-instance v0, Lcom/android/systemui/qs/tiles/VibrateTile$1;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VibrateTile;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/VibrateTile$1;-><init>(Lcom/android/systemui/qs/tiles/VibrateTile;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/VibrateTile;->mVibrateEnableObserver:Landroid/database/ContentObserver;

    .line 53
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VibrateTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/VibrateTile;->mResolver:Landroid/content/ContentResolver;

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/qs/tiles/VibrateTile;->mCurrentUserId:I

    .line 55
    const-class v0, Lcom/android/systemui/statusbar/policy/SilentModeObserverController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/SilentModeObserverController;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/VibrateTile;->mSilentModeObserverController:Lcom/android/systemui/statusbar/policy/SilentModeObserverController;

    .line 51
    return-void
.end method

.method private longClickVibrateIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 129
    const-string/jumbo v2, "com.android.settings/com.android.settings.Settings$SoundSettingsActivity"

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 130
    .local v0, "component":Landroid/content/ComponentName;
    if-nez v0, :cond_0

    .line 131
    return-object v3

    .line 134
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 135
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 136
    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 138
    return-object v1
.end method


# virtual methods
.method public getLongClickIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/VibrateTile;->longClickVibrateIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 119
    const/4 v0, -0x1

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VibrateTile;->mContext:Landroid/content/Context;

    const v1, 0x9100568

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleClick()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VibrateTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiui/util/AudioManagerHelper;->toggleVibrateSetting(Landroid/content/Context;)V

    .line 92
    return-void
.end method

.method protected handleDestroy()V
    .locals 0

    .prologue
    .line 60
    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    .line 59
    return-void
.end method

.method public handleSetListening(Z)V
    .locals 5
    .param p1, "listening"    # Z

    .prologue
    const/4 v4, 0x0

    .line 70
    if-eqz p1, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VibrateTile;->mResolver:Landroid/content/ContentResolver;

    .line 72
    const-string/jumbo v1, "vibrate_in_silent"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 74
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VibrateTile;->mVibrateEnableObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/systemui/qs/tiles/VibrateTile;->mCurrentUserId:I

    .line 71
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 75
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VibrateTile;->mResolver:Landroid/content/ContentResolver;

    .line 76
    const-string/jumbo v1, "vibrate_in_normal"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 78
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VibrateTile;->mVibrateEnableObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/systemui/qs/tiles/VibrateTile;->mCurrentUserId:I

    .line 75
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 79
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VibrateTile;->mSilentModeObserverController:Lcom/android/systemui/statusbar/policy/SilentModeObserverController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/SilentModeObserverController;->addCallback(Ljava/lang/Object;)V

    .line 69
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VibrateTile;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VibrateTile;->mVibrateEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 82
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VibrateTile;->mSilentModeObserverController:Lcom/android/systemui/statusbar/policy/SilentModeObserverController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/SilentModeObserverController;->removeCallback(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 3
    .param p1, "state"    # Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VibrateTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiui/util/AudioManagerHelper;->isVibrateEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 104
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VibrateTile;->mContext:Landroid/content/Context;

    const v1, 0x9100568

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 105
    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_0

    .line 106
    const/4 v0, 0x2

    iput v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    .line 107
    const v0, 0x9020194

    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 112
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VibrateTile;->mContext:Landroid/content/Context;

    .line 113
    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_1

    const v0, 0x91002ad

    .line 112
    :goto_1
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    .line 114
    const-class v0, Landroid/widget/Switch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 102
    return-void

    .line 109
    :cond_0
    const/4 v0, 0x1

    iput v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    .line 110
    const v0, 0x9020193

    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_0

    .line 113
    :cond_1
    const v0, 0x91002ae

    goto :goto_1
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "state"    # Lcom/android/systemui/plugins/qs/QSTile$State;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 102
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .end local p1    # "state":Lcom/android/systemui/plugins/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/VibrateTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 3

    .prologue
    .line 124
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VibrateTile;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 125
    .local v0, "vibrator":Landroid/os/Vibrator;
    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    return v1
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/VibrateTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public onSilentModeChanged(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/VibrateTile;->refreshState()V

    .line 148
    return-void
.end method
