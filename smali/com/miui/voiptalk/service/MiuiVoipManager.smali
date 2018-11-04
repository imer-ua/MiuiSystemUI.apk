.class public Lcom/miui/voiptalk/service/MiuiVoipManager;
.super Ljava/lang/Object;
.source "MiuiVoipManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/voiptalk/service/MiuiVoipManager$1;,
        Lcom/miui/voiptalk/service/MiuiVoipManager$VoIPStatusReceiver;
    }
.end annotation


# static fields
.field private static INSTANCE:Lcom/miui/voiptalk/service/MiuiVoipManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHasInit:Z

.field private mMiuiVoipService:Lcom/miui/voiptalk/service/IMiuiVoipService;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mVoIPStatusReceiver:Lcom/miui/voiptalk/service/MiuiVoipManager$VoIPStatusReceiver;


# direct methods
.method static synthetic -set0(Lcom/miui/voiptalk/service/MiuiVoipManager;Lcom/miui/voiptalk/service/IMiuiVoipService;)Lcom/miui/voiptalk/service/IMiuiVoipService;
    .locals 0

    iput-object p1, p0, Lcom/miui/voiptalk/service/MiuiVoipManager;->mMiuiVoipService:Lcom/miui/voiptalk/service/IMiuiVoipService;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/voiptalk/service/MiuiVoipManager;->INSTANCE:Lcom/miui/voiptalk/service/MiuiVoipManager;

    .line 13
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    new-instance v0, Lcom/miui/voiptalk/service/MiuiVoipManager$1;

    invoke-direct {v0, p0}, Lcom/miui/voiptalk/service/MiuiVoipManager$1;-><init>(Lcom/miui/voiptalk/service/MiuiVoipManager;)V

    iput-object v0, p0, Lcom/miui/voiptalk/service/MiuiVoipManager;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 30
    iput-object p1, p0, Lcom/miui/voiptalk/service/MiuiVoipManager;->mContext:Landroid/content/Context;

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/voiptalk/service/MiuiVoipManager;->mHasInit:Z

    .line 29
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/voiptalk/service/MiuiVoipManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/miui/voiptalk/service/MiuiVoipManager;

    monitor-enter v1

    .line 35
    :try_start_0
    sget-object v0, Lcom/miui/voiptalk/service/MiuiVoipManager;->INSTANCE:Lcom/miui/voiptalk/service/MiuiVoipManager;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/miui/voiptalk/service/MiuiVoipManager;

    invoke-direct {v0, p0}, Lcom/miui/voiptalk/service/MiuiVoipManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/voiptalk/service/MiuiVoipManager;->INSTANCE:Lcom/miui/voiptalk/service/MiuiVoipManager;

    .line 38
    :cond_0
    sget-object v0, Lcom/miui/voiptalk/service/MiuiVoipManager;->INSTANCE:Lcom/miui/voiptalk/service/MiuiVoipManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private registerVoIPStatusReceiver()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 167
    iget-object v1, p0, Lcom/miui/voiptalk/service/MiuiVoipManager;->mVoIPStatusReceiver:Lcom/miui/voiptalk/service/MiuiVoipManager$VoIPStatusReceiver;

    if-nez v1, :cond_0

    .line 168
    new-instance v1, Lcom/miui/voiptalk/service/MiuiVoipManager$VoIPStatusReceiver;

    invoke-direct {v1, p0, v2}, Lcom/miui/voiptalk/service/MiuiVoipManager$VoIPStatusReceiver;-><init>(Lcom/miui/voiptalk/service/MiuiVoipManager;Lcom/miui/voiptalk/service/MiuiVoipManager$VoIPStatusReceiver;)V

    iput-object v1, p0, Lcom/miui/voiptalk/service/MiuiVoipManager;->mVoIPStatusReceiver:Lcom/miui/voiptalk/service/MiuiVoipManager$VoIPStatusReceiver;

    .line 169
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 170
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.miui.voip.action.ACTIVATE_STATUS_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 171
    iget-object v1, p0, Lcom/miui/voiptalk/service/MiuiVoipManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/voiptalk/service/MiuiVoipManager;->mVoIPStatusReceiver:Lcom/miui/voiptalk/service/MiuiVoipManager$VoIPStatusReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 166
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized answerRingingCall()V
    .locals 3

    .prologue
    monitor-enter p0

    .line 76
    :try_start_0
    iget-object v1, p0, Lcom/miui/voiptalk/service/MiuiVoipManager;->mMiuiVoipService:Lcom/miui/voiptalk/service/IMiuiVoipService;

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/miui/voiptalk/service/MiuiVoipManager;->mMiuiVoipService:Lcom/miui/voiptalk/service/IMiuiVoipService;

    invoke-interface {v1}, Lcom/miui/voiptalk/service/IMiuiVoipService;->answerRingingCall()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 74
    return-void

    .line 79
    :cond_0
    :try_start_1
    const-string/jumbo v1, "MiuiVoipManager"

    const-string/jumbo v2, "MiuiVoipService is Null !"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v1, "MiuiVoipManager"

    const-string/jumbo v2, "answerRingingCall"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized endCall()V
    .locals 3

    .prologue
    monitor-enter p0

    .line 64
    :try_start_0
    iget-object v1, p0, Lcom/miui/voiptalk/service/MiuiVoipManager;->mMiuiVoipService:Lcom/miui/voiptalk/service/IMiuiVoipService;

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/miui/voiptalk/service/MiuiVoipManager;->mMiuiVoipService:Lcom/miui/voiptalk/service/IMiuiVoipService;

    invoke-interface {v1}, Lcom/miui/voiptalk/service/IMiuiVoipService;->endCall()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 62
    return-void

    .line 67
    :cond_0
    :try_start_1
    const-string/jumbo v1, "MiuiVoipManager"

    const-string/jumbo v2, "MiuiVoipService is Null !"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v1, "MiuiVoipManager"

    const-string/jumbo v2, "endCall"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getCallBaseTime()J
    .locals 4

    .prologue
    monitor-enter p0

    .line 124
    :try_start_0
    iget-object v1, p0, Lcom/miui/voiptalk/service/MiuiVoipManager;->mMiuiVoipService:Lcom/miui/voiptalk/service/IMiuiVoipService;

    if-eqz v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/miui/voiptalk/service/MiuiVoipManager;->mMiuiVoipService:Lcom/miui/voiptalk/service/IMiuiVoipService;

    invoke-interface {v1}, Lcom/miui/voiptalk/service/IMiuiVoipService;->getCallBaseTime()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    monitor-exit p0

    return-wide v2

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v1, "MiuiVoipManager"

    const-string/jumbo v2, "getCallBaseTime"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v2, 0x0

    monitor-exit p0

    return-wide v2

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getCallState()I
    .locals 3

    .prologue
    monitor-enter p0

    .line 100
    :try_start_0
    iget-object v1, p0, Lcom/miui/voiptalk/service/MiuiVoipManager;->mMiuiVoipService:Lcom/miui/voiptalk/service/IMiuiVoipService;

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/miui/voiptalk/service/MiuiVoipManager;->mMiuiVoipService:Lcom/miui/voiptalk/service/IMiuiVoipService;

    invoke-interface {v1}, Lcom/miui/voiptalk/service/IMiuiVoipService;->getCallState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .line 103
    :cond_0
    :try_start_1
    const-string/jumbo v1, "MiuiVoipManager"

    const-string/jumbo v2, "MiuiVoipService is Null !"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    :goto_0
    const/4 v1, -0x1

    monitor-exit p0

    return v1

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v1, "MiuiVoipManager"

    const-string/jumbo v2, "getCallState"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getExtraCallState()Ljava/lang/String;
    .locals 3

    .prologue
    monitor-enter p0

    .line 135
    :try_start_0
    iget-object v1, p0, Lcom/miui/voiptalk/service/MiuiVoipManager;->mMiuiVoipService:Lcom/miui/voiptalk/service/IMiuiVoipService;

    if-eqz v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/miui/voiptalk/service/MiuiVoipManager;->mMiuiVoipService:Lcom/miui/voiptalk/service/IMiuiVoipService;

    invoke-interface {v1}, Lcom/miui/voiptalk/service/IMiuiVoipService;->getExtraCallState()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v1, "MiuiVoipManager"

    const-string/jumbo v2, "getExtraCallState"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string/jumbo v1, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public init()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 42
    iget-boolean v1, p0, Lcom/miui/voiptalk/service/MiuiVoipManager;->mHasInit:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/voiptalk/service/MiuiVoipManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/provider/MiuiSettings$MiuiVoip;->isVoipEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.miui.voip.REMOTE_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 44
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.miui.voip"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    iget-object v1, p0, Lcom/miui/voiptalk/service/MiuiVoipManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/voiptalk/service/MiuiVoipManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 46
    iput-boolean v3, p0, Lcom/miui/voiptalk/service/MiuiVoipManager;->mHasInit:Z

    .line 47
    const-string/jumbo v1, "MiuiVoipManager"

    const-string/jumbo v2, "init success"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 49
    :cond_0
    invoke-direct {p0}, Lcom/miui/voiptalk/service/MiuiVoipManager;->registerVoIPStatusReceiver()V

    goto :goto_0
.end method

.method public declared-synchronized isVideoCall()Z
    .locals 3

    .prologue
    monitor-enter p0

    .line 157
    :try_start_0
    iget-object v1, p0, Lcom/miui/voiptalk/service/MiuiVoipManager;->mMiuiVoipService:Lcom/miui/voiptalk/service/IMiuiVoipService;

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/miui/voiptalk/service/MiuiVoipManager;->mMiuiVoipService:Lcom/miui/voiptalk/service/IMiuiVoipService;

    invoke-interface {v1}, Lcom/miui/voiptalk/service/IMiuiVoipService;->isVideoCall()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v1, "MiuiVoipManager"

    const-string/jumbo v2, "isVideoCall"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized isVoipCallUiOnBack()Z
    .locals 3

    .prologue
    monitor-enter p0

    .line 146
    :try_start_0
    iget-object v1, p0, Lcom/miui/voiptalk/service/MiuiVoipManager;->mMiuiVoipService:Lcom/miui/voiptalk/service/IMiuiVoipService;

    if-eqz v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/miui/voiptalk/service/MiuiVoipManager;->mMiuiVoipService:Lcom/miui/voiptalk/service/IMiuiVoipService;

    invoke-interface {v1}, Lcom/miui/voiptalk/service/IMiuiVoipService;->isVoipCallUiOnBack()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v1, "MiuiVoipManager"

    const-string/jumbo v2, "isVoipCallUiOnBack"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
