.class public Lcom/android/systemui/qs/tiles/ScreenButtonTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "ScreenButtonTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/ScreenButtonTile$1;,
        Lcom/android/systemui/qs/tiles/ScreenButtonTile$ClickRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
        "<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# instance fields
.field private final mScreenButtonStateObserver:Landroid/database/ContentObserver;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/tiles/ScreenButtonTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenButtonTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/tiles/ScreenButtonTile;II)V
    .locals 0
    .param p1, "resId"    # I
    .param p2, "length"    # I

    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/ScreenButtonTile;->showToast(II)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 2
    .param p1, "host"    # Lcom/android/systemui/qs/QSHost;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 130
    new-instance v0, Lcom/android/systemui/qs/tiles/ScreenButtonTile$1;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ScreenButtonTile;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/ScreenButtonTile$1;-><init>(Lcom/android/systemui/qs/tiles/ScreenButtonTile;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenButtonTile;->mScreenButtonStateObserver:Landroid/database/ContentObserver;

    .line 39
    return-void
.end method


# virtual methods
.method public getLongClickIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 127
    const/4 v0, -0x1

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenButtonTile;->mContext:Landroid/content/Context;

    const v1, 0x9100572

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleClick()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v7, -0x2

    const/4 v5, 0x0

    .line 70
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/ScreenButtonTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 73
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v3, "screen_buttons_state"

    .line 71
    invoke-static {v0, v3, v5, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    .line 79
    .local v1, "screenButtonDisabled":Z
    :goto_0
    const-string/jumbo v3, "screen_buttons_has_been_disabled"

    .line 77
    invoke-static {v0, v3, v5, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 83
    .local v2, "value":I
    if-nez v2, :cond_0

    .line 86
    const-string/jumbo v3, "screen_buttons_has_been_disabled"

    .line 84
    invoke-static {v0, v3, v4, v7}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 93
    :cond_0
    const-string/jumbo v6, "screen_buttons_state"

    .line 94
    if-nez v1, :cond_2

    move v3, v4

    .line 91
    :goto_1
    invoke-static {v0, v6, v3, v7}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 97
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/ScreenButtonTile;->mUiHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/systemui/qs/tiles/ScreenButtonTile$ClickRunnable;

    if-eqz v1, :cond_3

    :goto_2
    invoke-direct {v6, p0, v2, v5}, Lcom/android/systemui/qs/tiles/ScreenButtonTile$ClickRunnable;-><init>(Lcom/android/systemui/qs/tiles/ScreenButtonTile;IZ)V

    invoke-virtual {v3, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 69
    return-void

    .line 71
    .end local v1    # "screenButtonDisabled":Z
    .end local v2    # "value":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "screenButtonDisabled":Z
    goto :goto_0

    .restart local v2    # "value":I
    :cond_2
    move v3, v5

    .line 94
    goto :goto_1

    :cond_3
    move v5, v4

    .line 97
    goto :goto_2
.end method

.method protected handleDestroy()V
    .locals 0

    .prologue
    .line 45
    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    .line 44
    return-void
.end method

.method protected handleLongClick()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public handleSetListening(Z)V
    .locals 5
    .param p1, "listening"    # Z

    .prologue
    .line 58
    if-eqz p1, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenButtonTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 60
    const-string/jumbo v1, "screen_buttons_state"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 62
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ScreenButtonTile;->mScreenButtonStateObserver:Landroid/database/ContentObserver;

    .line 61
    const/4 v3, 0x0

    .line 62
    const/4 v4, -0x1

    .line 59
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 57
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenButtonTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ScreenButtonTile;->mScreenButtonStateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 5
    .param p1, "state"    # Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 111
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ScreenButtonTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "screen_buttons_state"

    const/4 v4, -0x2

    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 112
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenButtonTile;->mContext:Landroid/content/Context;

    const v2, 0x9100572

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 113
    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_1

    .line 114
    const/4 v0, 0x2

    iput v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    .line 115
    const v0, 0x902017c

    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 120
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ScreenButtonTile;->mContext:Landroid/content/Context;

    .line 121
    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_2

    const v0, 0x91002ad

    .line 120
    :goto_1
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    .line 122
    const-class v0, Landroid/widget/Switch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 110
    return-void

    .line 117
    :cond_1
    iput v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    .line 118
    const v0, 0x902017b

    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_0

    .line 121
    :cond_2
    const v0, 0x91002ae

    goto :goto_1
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "state"    # Lcom/android/systemui/plugins/qs/QSTile$State;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 110
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .end local p1    # "state":Lcom/android/systemui/plugins/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/ScreenButtonTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/ScreenButtonTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method
