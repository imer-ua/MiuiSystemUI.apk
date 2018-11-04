.class public Lcom/android/systemui/qs/tiles/ScreenShotTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "ScreenShotTile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
        "<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/tiles/ScreenShotTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenShotTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/tiles/ScreenShotTile;)Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenShotTile;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/tiles/ScreenShotTile;)Lcom/android/systemui/qs/QSHost;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenShotTile;->mHost:Lcom/android/systemui/qs/QSHost;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 0
    .param p1, "host"    # Lcom/android/systemui/qs/QSHost;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 42
    return-void
.end method

.method private longClickScreenshot()Z
    .locals 14

    .prologue
    const/4 v9, 0x0

    .line 115
    const/4 v3, 0x0

    .line 116
    .local v3, "path":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    .line 117
    sget-object v8, Lmiui/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    .line 116
    invoke-static {v8}, Lmiui/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    .line 117
    const-string/jumbo v10, "Screenshots"

    .line 116
    invoke-direct {v7, v8, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 118
    .local v7, "screenShotFolder":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 120
    new-instance v6, Lcom/android/systemui/qs/tiles/ScreenShotTile$2;

    invoke-direct {v6, p0}, Lcom/android/systemui/qs/tiles/ScreenShotTile$2;-><init>(Lcom/android/systemui/qs/tiles/ScreenShotTile;)V

    .line 131
    .local v6, "pictureFilter":Ljava/io/FilenameFilter;
    invoke-virtual {v7, v6}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 132
    .local v1, "files":[Ljava/io/File;
    if-nez v1, :cond_0

    .line 133
    return v9

    .line 135
    :cond_0
    const-wide/16 v4, 0x0

    .line 136
    .local v4, "maxLastModifed":J
    array-length v10, v1

    move v8, v9

    .end local v3    # "path":Ljava/lang/String;
    :goto_0
    if-ge v8, v10, :cond_2

    aget-object v0, v1, v8

    .line 137
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    cmp-long v11, v12, v4

    if-lez v11, :cond_1

    .line 138
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    .line 139
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 136
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 144
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "files":[Ljava/io/File;
    .end local v4    # "maxLastModifed":J
    .end local v6    # "pictureFilter":Ljava/io/FilenameFilter;
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    return v9

    .line 146
    :cond_3
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/ScreenShotTile;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v8}, Lcom/android/systemui/qs/QSHost;->collapsePanels()V

    .line 148
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.action.VIEW"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 149
    .local v2, "intent":Landroid/content/Intent;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    const-string/jumbo v10, "image/*"

    invoke-virtual {v2, v8, v10}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    const/high16 v8, 0x10000000

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 151
    const-class v8, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v8}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {v8, v2, v9}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    .line 152
    const/4 v8, 0x1

    return v8
.end method


# virtual methods
.method public getLongClickIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 111
    const/4 v0, -0x1

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenShotTile;->mContext:Landroid/content/Context;

    const v1, 0x9100574

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleClick()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenShotTile;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v0}, Lcom/android/systemui/qs/QSHost;->collapsePanels()V

    .line 77
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenShotTile;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    new-instance v1, Lcom/android/systemui/qs/tiles/ScreenShotTile$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/ScreenShotTile$1;-><init>(Lcom/android/systemui/qs/tiles/ScreenShotTile;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->post(Ljava/lang/Runnable;)Z

    .line 75
    return-void
.end method

.method protected handleDestroy()V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    .line 47
    return-void
.end method

.method protected handleLongClick()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/ScreenShotTile;->longClickScreenshot()Z

    .line 95
    return-void
.end method

.method public handleSetListening(Z)V
    .locals 0
    .param p1, "listening"    # Z

    .prologue
    .line 57
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const v1, 0x9100574

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 102
    const/4 v0, 0x1

    iput v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    .line 103
    const v0, 0x902017e

    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 104
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenShotTile;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v0}, Lcom/android/systemui/qs/QSHost;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 105
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenShotTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    .line 106
    const-class v0, Landroid/widget/Switch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 100
    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "state"    # Lcom/android/systemui/plugins/qs/QSTile$State;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 100
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .end local p1    # "state":Lcom/android/systemui/plugins/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/ScreenShotTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected handleUserSwitch(I)V
    .locals 0
    .param p1, "newUserId"    # I

    .prologue
    .line 61
    return-void
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x1

    return v0
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/ScreenShotTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method
