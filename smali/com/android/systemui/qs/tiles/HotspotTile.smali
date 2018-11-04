.class public Lcom/android/systemui/qs/tiles/HotspotTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "HotspotTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/HotspotTile$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
        "<",
        "Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;",
        ">;"
    }
.end annotation


# static fields
.field static final TETHER_SETTINGS:Landroid/content/Intent;


# instance fields
.field private final mAirplaneMode:Lcom/android/systemui/qs/GlobalSetting;

.field private final mCallback:Lcom/android/systemui/qs/tiles/HotspotTile$Callback;

.field private final mController:Lcom/android/systemui/statusbar/policy/HotspotController;

.field private mListening:Z


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/qs/tiles/HotspotTile;Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/HotspotTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 41
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    .line 42
    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.android.settings.Settings$TetherSettingsActivity"

    .line 41
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/HotspotTile;->TETHER_SETTINGS:Landroid/content/Intent;

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 4
    .param p1, "host"    # Lcom/android/systemui/qs/QSHost;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 45
    new-instance v0, Lcom/android/systemui/qs/tiles/HotspotTile$Callback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/HotspotTile$Callback;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;Lcom/android/systemui/qs/tiles/HotspotTile$Callback;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mCallback:Lcom/android/systemui/qs/tiles/HotspotTile$Callback;

    .line 51
    const-class v0, Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/HotspotController;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mController:Lcom/android/systemui/statusbar/policy/HotspotController;

    .line 52
    new-instance v0, Lcom/android/systemui/qs/tiles/HotspotTile$1;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const-string/jumbo v3, "airplane_mode_on"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/HotspotTile$1;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAirplaneMode:Lcom/android/systemui/qs/GlobalSetting;

    .line 49
    return-void
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->value:Z

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    const v1, 0x9100117

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    const v1, 0x9100116

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 93
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/android/systemui/qs/tiles/HotspotTile;->TETHER_SETTINGS:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 145
    const/16 v0, 0x78

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    const v1, 0x9100168

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleClick()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 98
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;

    iget-boolean v0, v1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->value:Z

    .line 99
    .local v0, "isEnabled":Z
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAirplaneMode:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v1}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    return-void

    .line 102
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleClick: from: mState.value: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;

    iget-boolean v1, v1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->value:Z

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, ", to: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;

    iget-boolean v1, v1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->value:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mController:Lcom/android/systemui/statusbar/policy/HotspotController;

    if-eqz v0, :cond_2

    :goto_1
    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/HotspotController;->setHotspotEnabled(Z)V

    .line 97
    return-void

    :cond_1
    move v1, v3

    .line 102
    goto :goto_0

    :cond_2
    move v2, v3

    .line 103
    goto :goto_1
.end method

.method protected handleDestroy()V
    .locals 0

    .prologue
    .line 68
    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    .line 67
    return-void
.end method

.method public handleSetListening(Z)V
    .locals 3
    .param p1, "listening"    # Z

    .prologue
    .line 78
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mListening:Z

    if-ne v1, p1, :cond_0

    return-void

    .line 79
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mListening:Z

    .line 80
    if-eqz p1, :cond_1

    .line 81
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mController:Lcom/android/systemui/statusbar/policy/HotspotController;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mCallback:Lcom/android/systemui/qs/tiles/HotspotTile$Callback;

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/HotspotController;->addCallback(Ljava/lang/Object;)V

    .line 82
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 83
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->refreshState()V

    .line 88
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAirplaneMode:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 77
    return-void

    .line 86
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mController:Lcom/android/systemui/statusbar/policy/HotspotController;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mCallback:Lcom/android/systemui/qs/tiles/HotspotTile$Callback;

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/HotspotController;->removeCallback(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;Ljava/lang/Object;)V
    .locals 7
    .param p1, "state"    # Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const v6, 0x9020168

    const v5, 0x9020167

    const/4 v3, 0x0

    .line 113
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    const v4, 0x9100168

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->label:Ljava/lang/CharSequence;

    .line 115
    const-string/jumbo v1, "no_config_tethering"

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/qs/tiles/HotspotTile;->checkIfRestrictionEnforcedByAdminOnly(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/String;)V

    .line 116
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 117
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->value:Z

    .line 122
    :goto_0
    iget-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->value:Z

    if-nez v1, :cond_2

    invoke-static {v5}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v1

    :goto_1
    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 126
    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->isAirplaneMode:Z

    .line 127
    .local v0, "wasAirplane":Z
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAirplaneMode:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v1}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_2
    iput-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->isAirplaneMode:Z

    .line 128
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mController:Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/HotspotController;->isHotspotTransient()Z

    move-result v1

    iput-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->isTransient:Z

    .line 129
    iget-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->isTransient:Z

    if-eqz v1, :cond_5

    .line 130
    invoke-static {v6}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 136
    :cond_0
    :goto_3
    iget-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->isAirplaneMode:Z

    if-eqz v1, :cond_7

    :goto_4
    iput v3, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->state:I

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->label:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    .line 139
    iget-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->value:Z

    if-eqz v1, :cond_a

    const v1, 0x91002ad

    .line 138
    :goto_5
    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->contentDescription:Ljava/lang/CharSequence;

    .line 140
    const-class v1, Landroid/widget/Switch;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 112
    return-void

    .line 119
    .end local v0    # "wasAirplane":Z
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mController:Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/HotspotController;->isHotspotEnabled()Z

    move-result v1

    iput-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->value:Z

    goto :goto_0

    .line 123
    .end local p2    # "arg":Ljava/lang/Object;
    :cond_2
    iget-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->isTransient:Z

    if-eqz v1, :cond_3

    invoke-static {v6}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v1

    goto :goto_1

    .line 124
    :cond_3
    invoke-static {v6}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v1

    goto :goto_1

    .restart local v0    # "wasAirplane":Z
    :cond_4
    move v1, v3

    .line 127
    goto :goto_2

    .line 131
    :cond_5
    iget-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->isAirplaneMode:Z

    if-eqz v1, :cond_6

    .line 132
    invoke-static {v5}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_3

    .line 133
    :cond_6
    if-eqz v0, :cond_0

    .line 134
    invoke-static {v5}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_3

    .line 137
    :cond_7
    iget-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->value:Z

    if-nez v1, :cond_8

    iget-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->isTransient:Z

    if-eqz v1, :cond_9

    :cond_8
    const/4 v3, 0x2

    goto :goto_4

    :cond_9
    move v3, v2

    goto :goto_4

    .line 139
    :cond_a
    const v1, 0x91002ae

    goto :goto_5
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "state"    # Lcom/android/systemui/plugins/qs/QSTile$State;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 112
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;

    .end local p1    # "state":Lcom/android/systemui/plugins/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/HotspotTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 62
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mController:Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/HotspotController;->isHotspotSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    invoke-static {}, Lmiui/securityspace/CrossUserUtils;->getCurrentUserId()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 62
    :cond_0
    return v0
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;

    move-result-object v0

    return-object v0
.end method
