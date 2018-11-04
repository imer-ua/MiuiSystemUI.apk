.class public Lcom/android/systemui/statusbar/NetworkSpeedView;
.super Landroid/widget/TextView;
.source "NetworkSpeedView.java"

# interfaces
.implements Lcom/android/systemui/DemoMode;
.implements Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/NetworkSpeedView$1;,
        Lcom/android/systemui/statusbar/NetworkSpeedView$2;,
        Lcom/android/systemui/statusbar/NetworkSpeedView$3;,
        Lcom/android/systemui/statusbar/NetworkSpeedView$4;,
        Lcom/android/systemui/statusbar/NetworkSpeedView$WorkHandler;
    }
.end annotation


# static fields
.field private static sViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/NetworkSpeedView;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mBgHandler:Landroid/os/Handler;

.field mBgThread:Landroid/os/HandlerThread;

.field private mConnectivityReceiver:Landroid/content/BroadcastReceiver;

.field private final mDemoCallback:Lcom/android/systemui/statusbar/policy/DemoModeController$DemoModeCallback;

.field private mDemoMode:Z

.field private mDisabled:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsDriveMode:Z

.field private mIsFirst:Z

.field private mIsNetworkConnected:Z

.field private mLastTime:J

.field private mMaxLength:I

.field private mNetworkSpeedObserver:Landroid/database/ContentObserver;

.field private mNetworkUpdateInterval:I

.field private mNetworkUri:Landroid/net/Uri;

.field private mNotch:Z

.field private mTotalBytes:J


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/NetworkSpeedView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/NetworkSpeedView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mDisabled:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/NetworkSpeedView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mIsNetworkConnected:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/NetworkSpeedView;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mNetworkUpdateInterval:I

    return p1
.end method

.method static synthetic -wrap0(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # J

    .prologue
    invoke-static {p0, p1, p2}, Lcom/android/systemui/statusbar/NetworkSpeedView;->formatSpeed(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/NetworkSpeedView;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NetworkSpeedView;->setTextToViewList(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/NetworkSpeedView;I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NetworkSpeedView;->setVisibilityToViewList(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/statusbar/NetworkSpeedView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NetworkSpeedView;->updateNetworkSpeedAsync()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/statusbar/NetworkSpeedView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NetworkSpeedView;->updateNetworkSpeed()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mIsFirst:Z

    .line 101
    new-instance v0, Lcom/android/systemui/statusbar/NetworkSpeedView$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/NetworkSpeedView$1;-><init>(Lcom/android/systemui/statusbar/NetworkSpeedView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mNetworkSpeedObserver:Landroid/database/ContentObserver;

    .line 112
    new-instance v0, Lcom/android/systemui/statusbar/NetworkSpeedView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/NetworkSpeedView$2;-><init>(Lcom/android/systemui/statusbar/NetworkSpeedView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    .line 309
    new-instance v0, Lcom/android/systemui/statusbar/NetworkSpeedView$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/NetworkSpeedView$3;-><init>(Lcom/android/systemui/statusbar/NetworkSpeedView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mHandler:Landroid/os/Handler;

    .line 334
    new-instance v0, Lcom/android/systemui/statusbar/NetworkSpeedView$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/NetworkSpeedView$4;-><init>(Lcom/android/systemui/statusbar/NetworkSpeedView;)V

    .line 333
    iput-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mDemoCallback:Lcom/android/systemui/statusbar/policy/DemoModeController$DemoModeCallback;

    .line 51
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NetworkSpeedView;->initNetworkAssistantProviderUri()V

    .line 49
    return-void
.end method

.method private static HideZeroSpeed(Landroid/content/Context;Ljava/lang/String;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string v2, "network_speed_view_zero_hide"

    invoke-static {v2, p0}, Landroid/preference/MiuiCoreSettingsPreference;->gKP(Ljava/lang/String;Landroid/content/Context;)I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0.00"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "0.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method static synthetic access$2000(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/NetworkSpeedView;->HideZeroSpeed(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private addToViewList()V
    .locals 2

    .prologue
    .line 59
    sget-object v0, Lcom/android/systemui/statusbar/NetworkSpeedView;->sViewList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mIsFirst:Z

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/NetworkSpeedView;->sViewList:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "PhoneStatusBar/NetworkSpeedView"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mBgThread:Landroid/os/HandlerThread;

    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mBgThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 64
    new-instance v0, Lcom/android/systemui/statusbar/NetworkSpeedView$WorkHandler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mBgThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/NetworkSpeedView$WorkHandler;-><init>(Lcom/android/systemui/statusbar/NetworkSpeedView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mBgHandler:Landroid/os/Handler;

    .line 66
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/NetworkSpeedView;->sViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    return-void
.end method

.method private static formatSpeed(Landroid/content/Context;J)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # J

    .prologue
    const/high16 v4, 0x44800000    # 1024.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 258
    long-to-float v0, p1

    .line 259
    .local v0, "result":F
    const v1, 0x91004e9

    .line 260
    .local v1, "suffix":I
    div-float/2addr v0, v4

    .line 262
    const v3, 0x4479c000    # 999.0f

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    .line 263
    const v1, 0x91004ea

    .line 264
    div-float/2addr v0, v4

    .line 268
    :cond_0
    const/high16 v3, 0x41200000    # 10.0f

    cmpg-float v3, v0, v3

    if-gez v3, :cond_1

    .line 269
    const-string/jumbo v3, "%.1f"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 275
    .local v2, "value":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 276
    aput-object v2, v4, v6

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    .line 275
    const v5, 0x91004e8

    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 270
    .end local v2    # "value":Ljava/lang/String;
    :cond_1
    const/high16 v3, 0x42c80000    # 100.0f

    cmpg-float v3, v0, v3

    if-gez v3, :cond_2

    .line 271
    const-string/jumbo v3, "%.1f"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "value":Ljava/lang/String;
    goto :goto_0

    .line 273
    .end local v2    # "value":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, "%.0f"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "value":Ljava/lang/String;
    goto :goto_0
.end method

.method private getTotalByte()J
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 185
    iget-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mNetworkUri:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 186
    .local v6, "cursor":Landroid/database/Cursor;
    const-wide/16 v10, 0x0

    .line 187
    .local v10, "totalByte":J
    const/4 v8, 0x0

    .line 188
    .local v8, "hasException":Z
    if-eqz v6, :cond_1

    .line 190
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    const-string/jumbo v0, "total_tx_byte"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 192
    const-string/jumbo v0, "total_rx_byte"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    add-long/2addr v10, v0

    .line 198
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 201
    :cond_1
    :goto_0
    if-nez v8, :cond_2

    if-nez v6, :cond_3

    .line 202
    :cond_2
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v0

    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v2

    add-long v10, v0, v2

    .line 204
    :cond_3
    return-wide v10

    .line 194
    :catch_0
    move-exception v7

    .line 195
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    const/4 v8, 0x1

    .line 198
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 197
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 198
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 197
    throw v0
.end method

.method private initNetworkAssistantProviderUri()V
    .locals 1

    .prologue
    .line 181
    const-string/jumbo v0, "content://com.miui.networkassistant.provider/na_traffic_stats"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mNetworkUri:Landroid/net/Uri;

    .line 180
    return-void
.end method

.method private removeFromViewList()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 70
    sget-object v0, Lcom/android/systemui/statusbar/NetworkSpeedView;->sViewList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 71
    sget-object v0, Lcom/android/systemui/statusbar/NetworkSpeedView;->sViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 72
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mIsFirst:Z

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mBgThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mBgThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 75
    iput-object v1, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mBgThread:Landroid/os/HandlerThread;

    .line 77
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/NetworkSpeedView;->sViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 78
    sput-object v1, Lcom/android/systemui/statusbar/NetworkSpeedView;->sViewList:Ljava/util/ArrayList;

    .line 69
    :cond_1
    return-void
.end method

.method private setTextToViewList(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 84
    sget-object v2, Lcom/android/systemui/statusbar/NetworkSpeedView;->sViewList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 85
    sget-object v2, Lcom/android/systemui/statusbar/NetworkSpeedView;->sViewList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "view$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NetworkSpeedView;

    .line 86
    .local v0, "view":Lcom/android/systemui/statusbar/NetworkSpeedView;
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NetworkSpeedView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 83
    .end local v0    # "view":Lcom/android/systemui/statusbar/NetworkSpeedView;
    .end local v1    # "view$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private setVisibilityToViewList(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    .line 92
    sget-object v2, Lcom/android/systemui/statusbar/NetworkSpeedView;->sViewList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 93
    sget-object v2, Lcom/android/systemui/statusbar/NetworkSpeedView;->sViewList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "view$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NetworkSpeedView;

    .line 94
    .local v0, "view":Lcom/android/systemui/statusbar/NetworkSpeedView;
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mIsDriveMode:Z

    if-nez v2, :cond_0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mNotch:Z

    if-nez v2, :cond_0

    .line 95
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NetworkSpeedView;->setVisibility(I)V

    goto :goto_0

    .line 91
    .end local v0    # "view":Lcom/android/systemui/statusbar/NetworkSpeedView;
    .end local v1    # "view$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private updateNetworkSpeed()V
    .locals 2

    .prologue
    .line 208
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/NetworkSpeedView;->updateNetworkSpeed(J)V

    .line 207
    return-void
.end method

.method private updateNetworkSpeed(J)V
    .locals 3
    .param p1, "delay"    # J

    .prologue
    const/16 v1, 0x64

    .line 212
    iget-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mBgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 214
    iget-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 211
    :cond_0
    return-void
.end method

.method private updateNetworkSpeedAsync()V
    .locals 13

    .prologue
    const v12, 0x30d40

    const-wide/16 v10, 0x0

    .line 219
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mDemoMode:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mIsDriveMode:Z

    if-eqz v5, :cond_1

    :cond_0
    return-void

    .line 220
    :cond_1
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mIsFirst:Z

    if-nez v5, :cond_2

    .line 221
    return-void

    .line 223
    :cond_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 224
    .local v4, "msg":Landroid/os/Message;
    iput v12, v4, Landroid/os/Message;->what:I

    .line 225
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mDisabled:Z

    if-nez v5, :cond_5

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mIsNetworkConnected:Z

    if-eqz v5, :cond_5

    .line 234
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 235
    .local v2, "currentTime":J
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NetworkSpeedView;->getTotalByte()J

    move-result-wide v6

    .line 236
    .local v6, "totalBytes":J
    cmp-long v5, v6, v10

    if-nez v5, :cond_3

    .line 237
    iput-wide v10, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mLastTime:J

    .line 238
    iput-wide v10, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mTotalBytes:J

    .line 239
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NetworkSpeedView;->getTotalByte()J

    move-result-wide v6

    .line 241
    :cond_3
    const-wide/16 v0, 0x0

    .line 242
    .local v0, "currentSpeed":J
    iget-wide v8, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mLastTime:J

    cmp-long v5, v8, v10

    if-eqz v5, :cond_4

    iget-wide v8, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mLastTime:J

    cmp-long v5, v2, v8

    if-lez v5, :cond_4

    iget-wide v8, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mTotalBytes:J

    cmp-long v5, v8, v10

    if-eqz v5, :cond_4

    cmp-long v5, v6, v10

    if-eqz v5, :cond_4

    .line 243
    iget-wide v8, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mTotalBytes:J

    cmp-long v5, v6, v8

    if-lez v5, :cond_4

    .line 244
    iget-wide v8, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mTotalBytes:J

    sub-long v8, v6, v8

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    iget-wide v10, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mLastTime:J

    sub-long v10, v2, v10

    div-long v0, v8, v10

    .line 247
    :cond_4
    const/4 v5, 0x1

    iput v5, v4, Landroid/os/Message;->arg1:I

    .line 248
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 249
    iget-object v5, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 250
    iget-object v5, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 252
    iput-wide v2, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mLastTime:J

    .line 253
    iput-wide v6, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mTotalBytes:J

    .line 254
    iget v5, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mNetworkUpdateInterval:I

    int-to-long v8, v5

    invoke-direct {p0, v8, v9}, Lcom/android/systemui/statusbar/NetworkSpeedView;->updateNetworkSpeed(J)V

    .line 218
    return-void

    .line 226
    .end local v0    # "currentSpeed":J
    .end local v2    # "currentTime":J
    .end local v6    # "totalBytes":J
    :cond_5
    const/4 v5, 0x0

    iput v5, v4, Landroid/os/Message;->arg1:I

    .line 227
    iget-object v5, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 228
    iget-object v5, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 229
    iput-wide v10, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mLastTime:J

    .line 230
    iput-wide v10, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mTotalBytes:J

    .line 231
    return-void
.end method


# virtual methods
.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 349
    const-string/jumbo v0, "demo_mode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "NetworkSpeedView mDemoMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mDemoMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", command = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mDemoMode:Z

    if-nez v0, :cond_1

    const-string/jumbo v0, "enter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mDemoMode:Z

    .line 352
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NetworkSpeedView;->setVisibility(I)V

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mDemoMode:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "exit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mDemoMode:Z

    .line 355
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NetworkSpeedView;->updateNetworkSpeed()V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 129
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 130
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NetworkSpeedView;->addToViewList()V

    .line 132
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 133
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    const-string/jumbo v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    iget-object v1, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 137
    iget-object v1, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 138
    const-string/jumbo v2, "status_bar_show_network_speed"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 139
    iget-object v3, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mNetworkSpeedObserver:Landroid/database/ContentObserver;

    .line 137
    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 141
    iget-object v1, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 142
    const-string/jumbo v2, "status_bar_network_speed_interval"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 143
    iget-object v3, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mNetworkSpeedObserver:Landroid/database/ContentObserver;

    .line 141
    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 145
    iget-object v1, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mNetworkSpeedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v4}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 147
    const-class v1, Lcom/android/systemui/statusbar/policy/DemoModeController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/DemoModeController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mDemoCallback:Lcom/android/systemui/statusbar/policy/DemoModeController$DemoModeCallback;

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/DemoModeController;->addCallback(Ljava/lang/Object;)V

    .line 128
    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 3
    .param p1, "area"    # Landroid/graphics/Rect;
    .param p2, "darkIntensity"    # F
    .param p3, "tint"    # I

    .prologue
    const v0, 0x90c0140

    .line 281
    invoke-static {}, Lcom/android/systemui/Util;->showCtsSpecifiedColor()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 282
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NetworkSpeedView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 283
    invoke-static {p1, p0, p2}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcherHelper;->inDarkMode(Landroid/graphics/Rect;Landroid/view/View;F)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 284
    const v0, 0x90c009c

    .line 282
    :cond_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NetworkSpeedView;->setTextColor(I)V

    .line 280
    :goto_0
    return-void

    .line 286
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NetworkSpeedView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 287
    invoke-static {p1, p0, p2}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcherHelper;->inDarkMode(Landroid/graphics/Rect;Landroid/view/View;F)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 288
    const v0, 0x90c0141

    .line 286
    :cond_2
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NetworkSpeedView;->setTextColor(I)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 161
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 162
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NetworkSpeedView;->removeFromViewList()V

    .line 164
    iget-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 165
    iget-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mNetworkSpeedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 166
    const-class v0, Lcom/android/systemui/statusbar/policy/DemoModeController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DemoModeController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mDemoCallback:Lcom/android/systemui/statusbar/policy/DemoModeController$DemoModeCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/DemoModeController;->removeCallback(Ljava/lang/Object;)V

    .line 160
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "lengthBefore"    # I
    .param p4, "lengthAfter"    # I

    .prologue
    .line 152
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 153
    .local v0, "length":I
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mMaxLength:I

    if-ge v1, v0, :cond_0

    .line 154
    iput v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mMaxLength:I

    .line 155
    iget v1, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mMaxLength:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NetworkSpeedView;->setWidth(I)V

    .line 151
    :cond_0
    return-void

    .line 152
    .end local v0    # "length":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NetworkSpeedView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    .restart local v0    # "length":I
    goto :goto_0
.end method

.method public setDriveMode(Z)V
    .locals 1
    .param p1, "isDriveMode"    # Z

    .prologue
    .line 325
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mIsDriveMode:Z

    .line 326
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mIsDriveMode:Z

    if-eqz v0, :cond_0

    .line 327
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NetworkSpeedView;->setVisibility(I)V

    .line 328
    return-void

    .line 330
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NetworkSpeedView;->updateNetworkSpeed()V

    .line 324
    return-void
.end method

.method public setNotch()V
    .locals 1

    .prologue
    .line 341
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mNotch:Z

    .line 342
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NetworkSpeedView;->setVisibility(I)V

    .line 340
    return-void
.end method
