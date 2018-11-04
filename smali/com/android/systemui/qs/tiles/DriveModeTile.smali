.class public Lcom/android/systemui/qs/tiles/DriveModeTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "DriveModeTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/DriveModeTile$1;
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


# static fields
.field private static mMiuiLabDriveModeOn:Z


# instance fields
.field private mDriveModeObserver:Landroid/database/ContentObserver;

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 4
    .param p1, "host"    # Lcom/android/systemui/qs/QSHost;

    .prologue
    const/4 v3, -0x1

    .line 51
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 190
    new-instance v0, Lcom/android/systemui/qs/tiles/DriveModeTile$1;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DriveModeTile;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/DriveModeTile$1;-><init>(Lcom/android/systemui/qs/tiles/DriveModeTile;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DriveModeTile;->mDriveModeObserver:Landroid/database/ContentObserver;

    .line 52
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DriveModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DriveModeTile;->mResolver:Landroid/content/ContentResolver;

    .line 53
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DriveModeTile;->mResolver:Landroid/content/ContentResolver;

    .line 54
    const-string/jumbo v1, "drive_mode_drive_mode"

    const/4 v2, -0x2

    .line 53
    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eq v3, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/systemui/qs/tiles/DriveModeTile;->mMiuiLabDriveModeOn:Z

    .line 50
    return-void

    .line 53
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getMiuiLabSettingsIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 181
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 182
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 183
    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    const-string/jumbo v1, ":android:show_fragment"

    const-string/jumbo v2, "com.android.settings.MiuiLabSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "com.android.settings.SubSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    return-object v0
.end method

.method public static leaveDriveMode(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 198
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "drive_mode_drive_mode"

    .line 199
    const/4 v3, 0x0

    const/4 v4, -0x2

    .line 198
    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 201
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 202
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.miui.app.ExtraStatusBarManager.action_leave_drive_mode"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 197
    return-void
.end method

.method private longClickDriveModeIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 168
    const-string/jumbo v2, "com.xiaomi.drivemode/.DriveModeSettingsActivity"

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 169
    .local v0, "component":Landroid/content/ComponentName;
    if-nez v0, :cond_0

    .line 170
    return-object v3

    .line 173
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 174
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 175
    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 177
    return-object v1
.end method

.method private startDriveModeActivity()V
    .locals 4

    .prologue
    .line 158
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 159
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    .line 160
    const-string/jumbo v2, "com.xiaomi.drivemode"

    const-string/jumbo v3, "com.xiaomi.drivemode.UserGuideActivity"

    .line 159
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 161
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 162
    const-string/jumbo v1, "EXTRA_START_MODE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 163
    const-class v1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/ActivityStarter;

    .line 164
    const/4 v2, 0x0

    .line 163
    invoke-interface {v1, v0, v2}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    .line 157
    return-void
.end method

.method private transitionMiuiLabSettings()V
    .locals 3

    .prologue
    .line 207
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/DriveModeTile;->getMiuiLabSettingsIntent()Landroid/content/Intent;

    move-result-object v0

    .line 208
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    .line 206
    return-void
.end method


# virtual methods
.method public getLongClickIntent()Landroid/content/Intent;
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 87
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DriveModeTile;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v1}, Lcom/android/systemui/qs/QSHost;->isDriveModeInstalled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/DriveModeTile;->getMiuiLabSettingsIntent()Landroid/content/Intent;

    move-result-object v0

    .line 89
    .local v0, "intent":Landroid/content/Intent;
    return-object v0

    .line 90
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    sget-boolean v1, Lcom/android/systemui/qs/tiles/DriveModeTile;->mMiuiLabDriveModeOn:Z

    if-nez v1, :cond_2

    .line 91
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DriveModeTile;->mResolver:Landroid/content/ContentResolver;

    .line 92
    const-string/jumbo v2, "drive_mode_drive_mode"

    const/4 v3, -0x2

    .line 91
    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eq v4, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    sput-boolean v1, Lcom/android/systemui/qs/tiles/DriveModeTile;->mMiuiLabDriveModeOn:Z

    .line 93
    sget-boolean v1, Lcom/android/systemui/qs/tiles/DriveModeTile;->mMiuiLabDriveModeOn:Z

    if-nez v1, :cond_2

    .line 94
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/DriveModeTile;->getMiuiLabSettingsIntent()Landroid/content/Intent;

    move-result-object v0

    .line 95
    .restart local v0    # "intent":Landroid/content/Intent;
    return-object v0

    .line 91
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 98
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/DriveModeTile;->longClickDriveModeIntent()Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 154
    const/4 v0, -0x1

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DriveModeTile;->mContext:Landroid/content/Context;

    const v1, 0x910056c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleClick()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v6, -0x1

    const/4 v5, -0x2

    const/4 v3, 0x0

    .line 103
    sget-boolean v1, Lcom/android/systemui/qs/tiles/DriveModeTile;->mMiuiLabDriveModeOn:Z

    if-nez v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DriveModeTile;->mResolver:Landroid/content/ContentResolver;

    .line 105
    const-string/jumbo v4, "drive_mode_drive_mode"

    .line 104
    invoke-static {v1, v4, v6, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eq v6, v1, :cond_1

    move v1, v2

    :goto_0
    sput-boolean v1, Lcom/android/systemui/qs/tiles/DriveModeTile;->mMiuiLabDriveModeOn:Z

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DriveModeTile;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v1}, Lcom/android/systemui/qs/QSHost;->isDriveModeInstalled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 109
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/DriveModeTile;->transitionMiuiLabSettings()V

    .line 102
    :goto_1
    return-void

    :cond_1
    move v1, v3

    .line 104
    goto :goto_0

    .line 110
    :cond_2
    sget-boolean v1, Lcom/android/systemui/qs/tiles/DriveModeTile;->mMiuiLabDriveModeOn:Z

    if-nez v1, :cond_3

    .line 111
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 112
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    .line 113
    const-string/jumbo v4, "com.xiaomi.drivemode"

    const-string/jumbo v5, "com.xiaomi.drivemode.MiuiLabDriveModeActivity"

    .line 112
    invoke-direct {v1, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 114
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 115
    const-string/jumbo v1, "EXTRA_START_MODE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 116
    const-class v1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {v1, v0, v3}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    goto :goto_1

    .line 119
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DriveModeTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v1, v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-nez v1, :cond_4

    .line 120
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/DriveModeTile;->startDriveModeActivity()V

    goto :goto_1

    .line 122
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DriveModeTile;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "drive_mode_drive_mode"

    invoke-static {v1, v2, v3, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 124
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DriveModeTile;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v1}, Lcom/android/systemui/qs/QSHost;->collapsePanels()V

    goto :goto_1
.end method

.method protected handleDestroy()V
    .locals 0

    .prologue
    .line 59
    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    .line 58
    return-void
.end method

.method public handleSetListening(Z)V
    .locals 5
    .param p1, "listening"    # Z

    .prologue
    .line 74
    if-eqz p1, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DriveModeTile;->mResolver:Landroid/content/ContentResolver;

    .line 76
    const-string/jumbo v1, "drive_mode_drive_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 78
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DriveModeTile;->mDriveModeObserver:Landroid/database/ContentObserver;

    .line 77
    const/4 v3, 0x0

    .line 78
    const/4 v4, -0x1

    .line 75
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 73
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DriveModeTile;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DriveModeTile;->mDriveModeObserver:Landroid/database/ContentObserver;

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

    .line 136
    const-string/jumbo v2, "SystemUI.DriveMode"

    const-string/jumbo v3, "drive mode handleUpdateState"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DriveModeTile;->mResolver:Landroid/content/ContentResolver;

    .line 138
    const-string/jumbo v3, "drive_mode_drive_mode"

    const/4 v4, -0x2

    .line 137
    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-lez v2, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 139
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DriveModeTile;->mContext:Landroid/content/Context;

    const v2, 0x910056c

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 140
    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_1

    .line 141
    const/4 v0, 0x2

    iput v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    .line 142
    const v0, 0x902015f

    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 147
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DriveModeTile;->mContext:Landroid/content/Context;

    .line 148
    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_2

    const v0, 0x91002ad

    .line 147
    :goto_1
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    .line 149
    const-class v0, Landroid/widget/Switch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 135
    return-void

    .line 144
    :cond_1
    iput v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    .line 145
    const v0, 0x902015e

    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_0

    .line 148
    :cond_2
    const v0, 0x91002ae

    goto :goto_1
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "state"    # Lcom/android/systemui/plugins/qs/QSTile$State;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 135
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .end local p1    # "state":Lcom/android/systemui/plugins/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/DriveModeTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 69
    sget-boolean v1, Lcom/android/systemui/Constants;->IS_INTERNATIONAL:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/systemui/Constants;->IS_TABLET:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lmiui/securityspace/CrossUserUtils;->getCurrentUserId()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DriveModeTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method
