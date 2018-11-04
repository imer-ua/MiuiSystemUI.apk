.class public Lcom/android/systemui/qs/tiles/AutoBrightnessTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "AutoBrightnessTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/AutoBrightnessTile$1;
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
.field private static final SUPPORT_AUTO_BRIGHTNESS_OPTIMIZE:Z


# instance fields
.field private mAutoBrightnessAvailable:Z

.field private mAutoBrightnessMode:Z

.field private mAutoBrightnessObserver:Landroid/database/ContentObserver;

.field private mCurrentUserId:I

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mResource:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    sget-boolean v0, Lmiui/os/DeviceFeature;->SUPPORT_AUTO_BRIGHTNESS_OPTIMIZE:Z

    sput-boolean v0, Lcom/android/systemui/qs/tiles/AutoBrightnessTile;->SUPPORT_AUTO_BRIGHTNESS_OPTIMIZE:Z

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 2
    .param p1, "host"    # Lcom/android/systemui/qs/QSHost;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 157
    new-instance v0, Lcom/android/systemui/qs/tiles/AutoBrightnessTile$1;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AutoBrightnessTile;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/AutoBrightnessTile$1;-><init>(Lcom/android/systemui/qs/tiles/AutoBrightnessTile;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/AutoBrightnessTile;->mAutoBrightnessObserver:Landroid/database/ContentObserver;

    .line 52
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AutoBrightnessTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/AutoBrightnessTile;->mResource:Landroid/content/res/Resources;

    .line 53
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AutoBrightnessTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/AutoBrightnessTile;->mResolver:Landroid/content/ContentResolver;

    .line 54
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/tiles/AutoBrightnessTile;->mCurrentUserId:I

    .line 55
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AutoBrightnessTile;->mResource:Landroid/content/res/Resources;

    const v1, 0x110a0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/AutoBrightnessTile;->mAutoBrightnessAvailable:Z

    .line 50
    return-void
.end method

.method private longClickAutoBrightnessIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 145
    const-string/jumbo v2, "com.android.settings/com.android.settings.display.BrightnessActivity"

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 146
    .local v0, "component":Landroid/content/ComponentName;
    if-nez v0, :cond_0

    .line 147
    return-object v3

    .line 150
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 151
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 152
    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 154
    return-object v1
.end method

.method private queryAutoBrightnessStatus()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 164
    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/AutoBrightnessTile;->mAutoBrightnessAvailable:Z

    if-eqz v2, :cond_1

    .line 166
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AutoBrightnessTile;->mResolver:Landroid/content/ContentResolver;

    .line 167
    const-string/jumbo v3, "screen_brightness_mode"

    .line 168
    iget v4, p0, Lcom/android/systemui/qs/tiles/AutoBrightnessTile;->mCurrentUserId:I

    .line 165
    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 164
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/AutoBrightnessTile;->mAutoBrightnessMode:Z

    .line 163
    return-void

    :cond_0
    move v0, v1

    .line 165
    goto :goto_0

    :cond_1
    move v0, v1

    .line 169
    goto :goto_0
.end method


# virtual methods
.method public getLongClickIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AutoBrightnessTile;->longClickAutoBrightnessIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 141
    const/4 v0, -0x1

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AutoBrightnessTile;->mContext:Landroid/content/Context;

    const v1, 0x9100575

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleClick()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 100
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/AutoBrightnessTile;->mAutoBrightnessMode:Z

    if-eqz v0, :cond_0

    .line 101
    iput-boolean v2, p0, Lcom/android/systemui/qs/tiles/AutoBrightnessTile;->mAutoBrightnessMode:Z

    .line 105
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AutoBrightnessTile;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleClick: from: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AutoBrightnessTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ", to: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v4, p0, Lcom/android/systemui/qs/tiles/AutoBrightnessTile;->mAutoBrightnessMode:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AutoBrightnessTile;->mResolver:Landroid/content/ContentResolver;

    .line 109
    const-string/jumbo v3, "screen_brightness_mode"

    .line 110
    iget-boolean v4, p0, Lcom/android/systemui/qs/tiles/AutoBrightnessTile;->mAutoBrightnessMode:Z

    if-eqz v4, :cond_2

    .line 113
    :goto_1
    iget v2, p0, Lcom/android/systemui/qs/tiles/AutoBrightnessTile;->mCurrentUserId:I

    .line 107
    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 99
    return-void

    .line 103
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/AutoBrightnessTile;->mAutoBrightnessAvailable:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/AutoBrightnessTile;->mAutoBrightnessMode:Z

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_2

    :cond_2
    move v1, v2

    .line 112
    goto :goto_1
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
    if-eqz p1, :cond_1

    .line 71
    sget-boolean v0, Lcom/android/systemui/qs/tiles/AutoBrightnessTile;->SUPPORT_AUTO_BRIGHTNESS_OPTIMIZE:Z

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AutoBrightnessTile;->mResolver:Landroid/content/ContentResolver;

    .line 73
    const-string/jumbo v1, "screen_brightness"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 75
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AutoBrightnessTile;->mAutoBrightnessObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/systemui/qs/tiles/AutoBrightnessTile;->mCurrentUserId:I

    .line 72
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 76
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AutoBrightnessTile;->mResolver:Landroid/content/ContentResolver;

    .line 77
    const-string/jumbo v1, "screen_auto_brightness_adj"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 79
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AutoBrightnessTile;->mAutoBrightnessObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/systemui/qs/tiles/AutoBrightnessTile;->mCurrentUserId:I

    .line 76
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AutoBrightnessTile;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 82
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AutoBrightnessTile;->mAutoBrightnessObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/systemui/qs/tiles/AutoBrightnessTile;->mCurrentUserId:I

    .line 81
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 69
    :goto_0
    return-void

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AutoBrightnessTile;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AutoBrightnessTile;->mAutoBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 3
    .param p1, "state"    # Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AutoBrightnessTile;->queryAutoBrightnessStatus()V

    .line 125
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/AutoBrightnessTile;->mAutoBrightnessMode:Z

    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 126
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AutoBrightnessTile;->mContext:Landroid/content/Context;

    const v1, 0x9100575

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 127
    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_0

    .line 128
    const/4 v0, 0x2

    iput v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    .line 129
    const v0, 0x902014f

    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 134
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AutoBrightnessTile;->mContext:Landroid/content/Context;

    .line 135
    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_1

    const v0, 0x91002ad

    .line 134
    :goto_1
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    .line 136
    const-class v0, Landroid/widget/Switch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 123
    return-void

    .line 131
    :cond_0
    const/4 v0, 0x1

    iput v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    .line 132
    const v0, 0x9020152

    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_0

    .line 135
    :cond_1
    const v0, 0x91002ae

    goto :goto_1
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "state"    # Lcom/android/systemui/plugins/qs/QSTile$State;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 123
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .end local p1    # "state":Lcom/android/systemui/plugins/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/AutoBrightnessTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected handleUserSwitch(I)V
    .locals 0
    .param p1, "newUserId"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/android/systemui/qs/tiles/AutoBrightnessTile;->mCurrentUserId:I

    .line 89
    return-void
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
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AutoBrightnessTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method
