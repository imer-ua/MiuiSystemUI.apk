.class public Lcom/android/systemui/qs/tiles/IntentTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "IntentTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/IntentTile$1;,
        Lcom/android/systemui/qs/tiles/IntentTile$BytesIcon;,
        Lcom/android/systemui/qs/tiles/IntentTile$PackageDrawableIcon;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
        "<",
        "Lcom/android/systemui/plugins/qs/QSTile$State;",
        ">;"
    }
.end annotation


# instance fields
.field private mCurrentUserId:I

.field private mIntentPackage:Ljava/lang/String;

.field private mLastIntent:Landroid/content/Intent;

.field private mOnClick:Landroid/app/PendingIntent;

.field private mOnClickUri:Ljava/lang/String;

.field private mOnLongClick:Landroid/app/PendingIntent;

.field private mOnLongClickUri:Ljava/lang/String;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/tiles/IntentTile;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/IntentTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/tiles/IntentTile;Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/IntentTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/systemui/qs/QSHost;Ljava/lang/String;)V
    .locals 3
    .param p1, "host"    # Lcom/android/systemui/qs/QSHost;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 176
    new-instance v0, Lcom/android/systemui/qs/tiles/IntentTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/IntentTile$1;-><init>(Lcom/android/systemui/qs/tiles/IntentTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/IntentTile;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 58
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/IntentTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/IntentTile;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 56
    return-void
.end method

.method public static create(Lcom/android/systemui/qs/QSHost;Ljava/lang/String;)Lcom/android/systemui/qs/tiles/IntentTile;
    .locals 4
    .param p0, "host"    # Lcom/android/systemui/qs/QSHost;
    .param p1, "spec"    # Ljava/lang/String;

    .prologue
    .line 68
    if-eqz p1, :cond_0

    const-string/jumbo v1, "intent("

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    const-string/jumbo v1, "intent("

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Empty intent tile spec action"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 69
    .end local v0    # "action":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Bad intent tile spec: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 75
    .restart local v0    # "action":Ljava/lang/String;
    :cond_1
    new-instance v1, Lcom/android/systemui/qs/tiles/IntentTile;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/qs/tiles/IntentTile;-><init>(Lcom/android/systemui/qs/QSHost;Ljava/lang/String;)V

    return-object v1
.end method

.method private sendIntent(Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "pi"    # Landroid/app/PendingIntent;
    .param p3, "uri"    # Ljava/lang/String;

    .prologue
    .line 110
    if-eqz p2, :cond_2

    .line 111
    :try_start_0
    invoke-virtual {p2}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 112
    const-class v2, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {v2, p2}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;)V

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    invoke-virtual {p2}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 120
    :catch_0
    move-exception v1

    .line 121
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/IntentTile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error sending "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " intent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 116
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_2
    if-eqz p3, :cond_0

    .line 117
    const/4 v2, 0x1

    :try_start_1
    invoke-static {p3, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 118
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/IntentTile;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    iget v4, p0, Lcom/android/systemui/qs/tiles/IntentTile;->mCurrentUserId:I

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public getLongClickIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 173
    const/16 v0, 0x79

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/IntentTile;->getState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected handleClick()V
    .locals 3

    .prologue
    .line 95
    const-string/jumbo v0, "click"

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/IntentTile;->mOnClick:Landroid/app/PendingIntent;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/IntentTile;->mOnClickUri:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/qs/tiles/IntentTile;->sendIntent(Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method protected handleDestroy()V
    .locals 2

    .prologue
    .line 63
    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    .line 64
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/IntentTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/IntentTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 62
    return-void
.end method

.method protected handleLongClick()V
    .locals 3

    .prologue
    .line 105
    const-string/jumbo v0, "long-click"

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/IntentTile;->mOnLongClick:Landroid/app/PendingIntent;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/IntentTile;->mOnLongClickUri:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/qs/tiles/IntentTile;->sendIntent(Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public handleSetListening(Z)V
    .locals 0
    .param p1, "listening"    # Z

    .prologue
    .line 79
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 8
    .param p1, "state"    # Lcom/android/systemui/plugins/qs/QSTile$State;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    move-object v3, p2

    .line 132
    check-cast v3, Landroid/content/Intent;

    .line 133
    .local v3, "intent":Landroid/content/Intent;
    if-nez v3, :cond_1

    .line 134
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/IntentTile;->mLastIntent:Landroid/content/Intent;

    if-nez v5, :cond_0

    .line 135
    return-void

    .line 138
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/IntentTile;->mLastIntent:Landroid/content/Intent;

    .line 141
    :cond_1
    iput-object v3, p0, Lcom/android/systemui/qs/tiles/IntentTile;->mLastIntent:Landroid/content/Intent;

    .line 142
    const-string/jumbo v5, "contentDescription"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 143
    const-string/jumbo v5, "label"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 144
    iput-object v6, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 145
    const-string/jumbo v5, "iconBitmap"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 146
    .local v0, "iconBitmap":[B
    if-eqz v0, :cond_3

    .line 148
    :try_start_0
    new-instance v5, Lcom/android/systemui/qs/tiles/IntentTile$BytesIcon;

    invoke-direct {v5, v0}, Lcom/android/systemui/qs/tiles/IntentTile$BytesIcon;-><init>([B)V

    iput-object v5, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :cond_2
    :goto_0
    const-string/jumbo v5, "onClick"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/app/PendingIntent;

    iput-object v5, p0, Lcom/android/systemui/qs/tiles/IntentTile;->mOnClick:Landroid/app/PendingIntent;

    .line 164
    const-string/jumbo v5, "onClickUri"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/qs/tiles/IntentTile;->mOnClickUri:Ljava/lang/String;

    .line 165
    const-string/jumbo v5, "onLongClick"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/app/PendingIntent;

    iput-object v5, p0, Lcom/android/systemui/qs/tiles/IntentTile;->mOnLongClick:Landroid/app/PendingIntent;

    .line 166
    const-string/jumbo v5, "onLongClickUri"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/qs/tiles/IntentTile;->mOnLongClickUri:Ljava/lang/String;

    .line 167
    const-string/jumbo v5, "package"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/qs/tiles/IntentTile;->mIntentPackage:Ljava/lang/String;

    .line 168
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/IntentTile;->mIntentPackage:Ljava/lang/String;

    if-nez v5, :cond_5

    const-string/jumbo v5, ""

    :goto_1
    iput-object v5, p0, Lcom/android/systemui/qs/tiles/IntentTile;->mIntentPackage:Ljava/lang/String;

    .line 131
    return-void

    .line 149
    :catch_0
    move-exception v4

    .line 150
    .local v4, "t":Ljava/lang/Throwable;
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/IntentTile;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error loading icon bitmap, length "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 153
    .end local v4    # "t":Ljava/lang/Throwable;
    :cond_3
    const-string/jumbo v5, "iconId"

    invoke-virtual {v3, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 154
    .local v1, "iconId":I
    if-eqz v1, :cond_2

    .line 155
    const-string/jumbo v5, "iconPackage"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 156
    .local v2, "iconPackage":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 157
    new-instance v5, Lcom/android/systemui/qs/tiles/IntentTile$PackageDrawableIcon;

    invoke-direct {v5, p0, v2, v1}, Lcom/android/systemui/qs/tiles/IntentTile$PackageDrawableIcon;-><init>(Lcom/android/systemui/qs/tiles/IntentTile;Ljava/lang/String;I)V

    iput-object v5, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_0

    .line 159
    :cond_4
    invoke-static {v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v5

    iput-object v5, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_0

    .line 168
    .end local v1    # "iconId":I
    .end local v2    # "iconPackage":Ljava/lang/String;
    :cond_5
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/IntentTile;->mIntentPackage:Ljava/lang/String;

    goto :goto_1
.end method

.method protected handleUserSwitch(I)V
    .locals 0
    .param p1, "newUserId"    # I

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleUserSwitch(I)V

    .line 90
    iput p1, p0, Lcom/android/systemui/qs/tiles/IntentTile;->mCurrentUserId:I

    .line 88
    return-void
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    .prologue
    .line 84
    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$State;-><init>()V

    return-object v0
.end method