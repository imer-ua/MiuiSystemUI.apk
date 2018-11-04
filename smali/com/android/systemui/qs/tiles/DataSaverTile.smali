.class public Lcom/android/systemui/qs/tiles/DataSaverTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "DataSaverTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
        "<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;",
        "Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;"
    }
.end annotation


# instance fields
.field private final mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/qs/tiles/DataSaverTile;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/DataSaverTile;->toggleDataSaver()V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 1
    .param p1, "host"    # Lcom/android/systemui/qs/QSHost;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 41
    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getDataSaverController()Lcom/android/systemui/statusbar/policy/DataSaverController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    .line 39
    return-void
.end method

.method private toggleDataSaver()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/DataSaverController;->isDataSaverEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 90
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/policy/DataSaverController;->setDataSaverEnabled(Z)V

    .line 91
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/DataSaverTile;->refreshState(Ljava/lang/Object;)V

    .line 88
    return-void

    .line 89
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mContext:Landroid/content/Context;

    const v1, 0x910011e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mContext:Landroid/content/Context;

    const v1, 0x910011d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 60
    invoke-static {}, Lcom/android/systemui/qs/tiles/CellularTile;->longClickDataIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 113
    const/16 v0, 0x11c

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mContext:Landroid/content/Context;

    const v1, 0x91002aa

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleClick()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 65
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v1, v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-nez v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "QsDataSaverDialogShown"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 65
    if-eqz v1, :cond_1

    .line 68
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/DataSaverTile;->toggleDataSaver()V

    .line 69
    return-void

    .line 72
    :cond_1
    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    .line 73
    .local v0, "dialog":Lcom/android/systemui/statusbar/phone/SystemUIDialog;
    const v1, 0x91005a0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setTitle(I)V

    .line 74
    const v1, 0x910059f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setMessage(I)V

    .line 76
    new-instance v1, Lcom/android/systemui/qs/tiles/DataSaverTile$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/DataSaverTile$1;-><init>(Lcom/android/systemui/qs/tiles/DataSaverTile;)V

    .line 75
    const v2, 0x91005a1

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 82
    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 83
    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Z)V

    .line 84
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->show()V

    .line 85
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "QsDataSaverDialogShown"

    invoke-static {v1, v2, v4}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 64
    return-void
.end method

.method public handleSetListening(Z)V
    .locals 1
    .param p1, "listening"    # Z

    .prologue
    .line 51
    if-eqz p1, :cond_0

    .line 52
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/DataSaverController;->addCallback(Ljava/lang/Object;)V

    .line 50
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/DataSaverController;->removeCallback(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 101
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 103
    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    :goto_1
    iput v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    .line 104
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mContext:Landroid/content/Context;

    const v1, 0x91002aa

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 105
    iget-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    .line 106
    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_2

    const v0, 0x90200df

    :goto_2
    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 108
    const-class v0, Landroid/widget/Switch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 100
    return-void

    .line 102
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DataSaverController;->isDataSaverEnabled()Z

    move-result v0

    goto :goto_0

    .line 103
    .end local p2    # "arg":Ljava/lang/Object;
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 107
    :cond_2
    const v0, 0x90200e0

    goto :goto_2
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "state"    # Lcom/android/systemui/plugins/qs/QSTile$State;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 100
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .end local p1    # "state":Lcom/android/systemui/plugins/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/DataSaverTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DataSaverTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public onDataSaverChanged(Z)V
    .locals 1
    .param p1, "isDataSaving"    # Z

    .prologue
    .line 127
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/DataSaverTile;->refreshState(Ljava/lang/Object;)V

    .line 126
    return-void
.end method
