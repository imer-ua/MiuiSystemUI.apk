.class public Lcom/android/keyguard/fod/MiuiGxzwManager;
.super Landroid/os/Binder;
.source "MiuiGxzwManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/fod/MiuiGxzwManager$1;,
        Lcom/android/keyguard/fod/MiuiGxzwManager$2;,
        Lcom/android/keyguard/fod/MiuiGxzwManager$3;,
        Lcom/android/keyguard/fod/MiuiGxzwManager$4;
    }
.end annotation


# static fields
.field private static sService:Lcom/android/keyguard/fod/MiuiGxzwManager;


# instance fields
.field private mBouncer:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDrawWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mGxzwUnlockMode:I

.field private mHandler:Landroid/os/Handler;

.field private mIgnoreFocusChange:Z

.field private mIgnoreFocusRunnable:Ljava/lang/Runnable;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mKeyguardAuthen:Z

.field private mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mMiuiGxzwIconView:Lcom/android/keyguard/fod/MiuiGxzwIconView;

.field private mMiuiGxzwOverlayView:Lcom/android/keyguard/fod/MiuiGxzwOverlayView;

.field private mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field private mShouldShowGxzwIconInKeyguard:Z

.field private mShowed:Z


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/fod/MiuiGxzwManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/fod/MiuiGxzwManager;)Lcom/android/keyguard/fod/MiuiGxzwIconView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mMiuiGxzwIconView:Lcom/android/keyguard/fod/MiuiGxzwIconView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/fod/MiuiGxzwManager;)Lcom/android/keyguard/fod/MiuiGxzwOverlayView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mMiuiGxzwOverlayView:Lcom/android/keyguard/fod/MiuiGxzwOverlayView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/fod/MiuiGxzwManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mShowed:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/fod/MiuiGxzwManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mBouncer:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/keyguard/fod/MiuiGxzwManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mIgnoreFocusChange:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/fod/MiuiGxzwManager;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwManager;->getKeyguardAuthen()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/fod/MiuiGxzwManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwManager;->dismissGxzwView()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/keyguard/fod/MiuiGxzwManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwManager;->ignoreFocusChangeForWhile()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/keyguard/fod/MiuiGxzwManager;Z)V
    .locals 0
    .param p1, "keyguardAuthen"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/fod/MiuiGxzwManager;->setKeyguardAuthen(Z)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/keyguard/fod/MiuiGxzwManager;Z)V
    .locals 0
    .param p1, "lightIcon"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/fod/MiuiGxzwManager;->showGxzwView(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 85
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 57
    iput-boolean v4, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mShowed:Z

    .line 59
    iput-boolean v5, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mShouldShowGxzwIconInKeyguard:Z

    .line 61
    iput-boolean v4, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mKeyguardAuthen:Z

    .line 62
    iput-boolean v4, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mBouncer:Z

    .line 65
    iput v4, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mGxzwUnlockMode:I

    .line 66
    iput-boolean v4, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mIgnoreFocusChange:Z

    .line 376
    new-instance v2, Lcom/android/keyguard/fod/MiuiGxzwManager$1;

    invoke-direct {v2, p0}, Lcom/android/keyguard/fod/MiuiGxzwManager$1;-><init>(Lcom/android/keyguard/fod/MiuiGxzwManager;)V

    iput-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mIgnoreFocusRunnable:Ljava/lang/Runnable;

    .line 392
    new-instance v2, Lcom/android/keyguard/fod/MiuiGxzwManager$2;

    invoke-direct {v2, p0}, Lcom/android/keyguard/fod/MiuiGxzwManager$2;-><init>(Lcom/android/keyguard/fod/MiuiGxzwManager;)V

    iput-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mHandler:Landroid/os/Handler;

    .line 440
    new-instance v2, Lcom/android/keyguard/fod/MiuiGxzwManager$3;

    invoke-direct {v2, p0}, Lcom/android/keyguard/fod/MiuiGxzwManager$3;-><init>(Lcom/android/keyguard/fod/MiuiGxzwManager;)V

    iput-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 488
    new-instance v2, Lcom/android/keyguard/fod/MiuiGxzwManager$4;

    invoke-direct {v2, p0}, Lcom/android/keyguard/fod/MiuiGxzwManager$4;-><init>(Lcom/android/keyguard/fod/MiuiGxzwManager;)V

    iput-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 86
    iput-object p1, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mContext:Landroid/content/Context;

    .line 87
    new-instance v2, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;

    iget-object v3, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mMiuiGxzwOverlayView:Lcom/android/keyguard/fod/MiuiGxzwOverlayView;

    .line 88
    new-instance v2, Lcom/android/keyguard/fod/MiuiGxzwIconView;

    iget-object v3, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/keyguard/fod/MiuiGxzwIconView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mMiuiGxzwIconView:Lcom/android/keyguard/fod/MiuiGxzwIconView;

    .line 89
    iget-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mMiuiGxzwIconView:Lcom/android/keyguard/fod/MiuiGxzwIconView;

    iget-object v3, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mMiuiGxzwOverlayView:Lcom/android/keyguard/fod/MiuiGxzwOverlayView;

    invoke-virtual {v2, v3}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->setCollectGxzwListener(Lcom/android/keyguard/fod/MiuiGxzwIconView$CollectGxzwListener;)V

    .line 90
    iget-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 91
    .local v0, "monitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    iget-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 92
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mIntentFilter:Landroid/content/IntentFilter;

    .line 93
    iget-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    iget-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 95
    .local v1, "pm":Landroid/os/PowerManager;
    const-string/jumbo v2, "gxzw"

    const/16 v3, 0x80

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mDrawWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 97
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    invoke-direct {p0, v5, v4}, Lcom/android/keyguard/fod/MiuiGxzwManager;->dealCallback(II)I

    .line 85
    :cond_0
    return-void
.end method

.method private dealCallback(II)I
    .locals 9
    .param p1, "cmd"    # I
    .param p2, "param"    # I

    .prologue
    const/16 v8, 0x3ec

    const/16 v7, 0x3eb

    const/16 v6, 0x3ea

    const/16 v5, 0x3e9

    const/4 v4, 0x0

    .line 231
    const-string/jumbo v1, "MiuiGxzwManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dealCallback, cmd: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " param: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    sparse-switch p1, :sswitch_data_0

    .line 271
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 235
    :sswitch_0
    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 236
    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5, p2, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 237
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 241
    .end local v0    # "msg":Landroid/os/Message;
    :sswitch_1
    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 242
    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 246
    :sswitch_2
    invoke-direct {p0, p2}, Lcom/android/keyguard/fod/MiuiGxzwManager;->processVendorSucess(I)V

    goto :goto_0

    .line 250
    :sswitch_3
    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3ee

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 251
    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3ee

    invoke-virtual {v1, v2, p2, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 252
    .restart local v0    # "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 256
    .end local v0    # "msg":Landroid/os/Message;
    :sswitch_4
    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 257
    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 261
    :sswitch_5
    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3ed

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 262
    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3ed

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 266
    :sswitch_6
    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 267
    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 233
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x65 -> :sswitch_5
        0x66 -> :sswitch_6
    .end sparse-switch
.end method

.method private dismissGxzwView()V
    .locals 3

    .prologue
    .line 344
    const-string/jumbo v0, "MiuiGxzwManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dismissGxzwView: mShowed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mShowed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mShowed:Z

    if-nez v0, :cond_0

    .line 348
    return-void

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mMiuiGxzwIconView:Lcom/android/keyguard/fod/MiuiGxzwIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->dismiss()V

    .line 352
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mMiuiGxzwOverlayView:Lcom/android/keyguard/fod/MiuiGxzwOverlayView;

    invoke-virtual {v0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->dismiss()V

    .line 353
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mShowed:Z

    .line 354
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 342
    return-void
.end method

.method public static getInstance()Lcom/android/keyguard/fod/MiuiGxzwManager;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/android/keyguard/fod/MiuiGxzwManager;->sService:Lcom/android/keyguard/fod/MiuiGxzwManager;

    return-object v0
.end method

.method private declared-synchronized getKeyguardAuthen()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 367
    :try_start_0
    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mKeyguardAuthen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private ignoreFocusChangeForWhile()V
    .locals 4

    .prologue
    .line 371
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mIgnoreFocusChange:Z

    .line 372
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mIgnoreFocusRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 373
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mIgnoreFocusRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 370
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    :try_start_0
    new-instance v1, Lcom/android/keyguard/fod/MiuiGxzwManager;

    invoke-direct {v1, p0}, Lcom/android/keyguard/fod/MiuiGxzwManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/keyguard/fod/MiuiGxzwManager;->sService:Lcom/android/keyguard/fod/MiuiGxzwManager;

    .line 72
    const-string/jumbo v1, "service_name"

    sget-object v2, Lcom/android/keyguard/fod/MiuiGxzwManager;->sService:Lcom/android/keyguard/fod/MiuiGxzwManager;

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 74
    const-string/jumbo v1, "MiuiGxzwManager"

    const-string/jumbo v2, "add MiuiGxzwManager successfully"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 77
    const-string/jumbo v1, "MiuiGxzwManager"

    const-string/jumbo v2, "add MiuiGxzwManager fail"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private processVendorSucess(I)V
    .locals 6
    .param p1, "param"    # I

    .prologue
    const/16 v5, 0x3ea

    .line 275
    if-nez p1, :cond_0

    .line 276
    return-void

    .line 279
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwManager;->getKeyguardAuthen()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 280
    iget-object v4, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mContext:Landroid/content/Context;

    invoke-static {v4, p1}, Lcom/android/keyguard/MiuiKeyguardUtils;->getAuthUserId(Landroid/content/Context;I)I

    move-result v3

    .line 281
    .local v3, "userId":I
    iget-object v4, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    .line 282
    .local v1, "monitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    invoke-virtual {v1, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed(I)Z

    move-result v2

    .line 283
    .local v2, "unlockingAllowed":Z
    if-eqz v2, :cond_1

    .line 284
    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardUtils;->isDozing()Z

    move-result v4

    if-nez v4, :cond_2

    .line 285
    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lcom/android/keyguard/fod/MiuiGxzwManager;->setGxzwUnlockMode(I)V

    .line 291
    :goto_0
    iget-object v4, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 292
    iget-object v4, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 274
    .end local v1    # "monitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    .end local v2    # "unlockingAllowed":Z
    .end local v3    # "userId":I
    :cond_1
    :goto_1
    return-void

    .line 287
    .restart local v1    # "monitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    .restart local v2    # "unlockingAllowed":Z
    .restart local v3    # "userId":I
    :cond_2
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/keyguard/fod/MiuiGxzwManager;->setGxzwUnlockMode(I)V

    .line 288
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "com.miui.keyguard.face_unlock_succeed"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 289
    .local v0, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 295
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "monitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    .end local v2    # "unlockingAllowed":Z
    .end local v3    # "userId":I
    :cond_3
    iget-object v4, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 296
    iget-object v4, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method

.method private declared-synchronized setGxzwUnlockMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    monitor-enter p0

    .line 168
    :try_start_0
    iput p1, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mGxzwUnlockMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 167
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setKeyguardAuthen(Z)V
    .locals 2
    .param p1, "keyguardAuthen"    # Z

    .prologue
    monitor-enter p0

    .line 358
    :try_start_0
    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mKeyguardAuthen:Z

    .line 359
    .local v0, "old":Z
    iput-boolean p1, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mKeyguardAuthen:Z

    .line 360
    if-eq v0, p1, :cond_0

    .line 361
    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mMiuiGxzwOverlayView:Lcom/android/keyguard/fod/MiuiGxzwOverlayView;

    invoke-virtual {v1, p1}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->onKeyguardAuthen(Z)V

    .line 362
    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mMiuiGxzwIconView:Lcom/android/keyguard/fod/MiuiGxzwIconView;

    invoke-virtual {v1, p1}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->onKeyguardAuthen(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 357
    return-void

    .end local v0    # "old":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private showGxzwView(Z)V
    .locals 3
    .param p1, "lightIcon"    # Z

    .prologue
    .line 320
    const-string/jumbo v0, "MiuiGxzwManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showGxzwView: lightIcon = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mShowed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 321
    iget-boolean v2, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mShowed:Z

    .line 320
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 321
    const-string/jumbo v2, ", mShouldShowGxzwIconInKeyguard = "

    .line 320
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 321
    iget-boolean v2, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mShouldShowGxzwIconInKeyguard:Z

    .line 320
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 322
    const-string/jumbo v2, ", keyguardAuthen = "

    .line 320
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 322
    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwManager;->getKeyguardAuthen()Z

    move-result v2

    .line 320
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mShowed:Z

    if-eqz v0, :cond_0

    .line 326
    return-void

    .line 333
    :cond_0
    invoke-static {}, Lcom/android/keyguard/fod/MiuiGxzwUtils;->caculateGxzwIconSize()V

    .line 334
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mMiuiGxzwOverlayView:Lcom/android/keyguard/fod/MiuiGxzwOverlayView;

    invoke-virtual {v0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->show()V

    .line 335
    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mShouldShowGxzwIconInKeyguard:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwManager;->getKeyguardAuthen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 338
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mShowed:Z

    .line 339
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 318
    return-void

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mMiuiGxzwIconView:Lcom/android/keyguard/fod/MiuiGxzwIconView;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->show(Z)V

    goto :goto_0
.end method


# virtual methods
.method public dismissGxzwIconView(Z)V
    .locals 5
    .param p1, "dismiss"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 144
    const-string/jumbo v2, "MiuiGxzwManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dismissGxzwIconView: dismiss = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-boolean v3, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mShouldShowGxzwIconInKeyguard:Z

    if-eqz p1, :cond_1

    move v2, v1

    :goto_0
    if-eq v3, v2, :cond_2

    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwManager;->getKeyguardAuthen()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 150
    if-eqz p1, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mShouldShowGxzwIconInKeyguard:Z

    .line 152
    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mShowed:Z

    if-nez v0, :cond_3

    .line 153
    return-void

    :cond_1
    move v2, v0

    .line 147
    goto :goto_0

    .line 148
    :cond_2
    return-void

    .line 156
    :cond_3
    if-eqz p1, :cond_4

    .line 157
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mMiuiGxzwIconView:Lcom/android/keyguard/fod/MiuiGxzwIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->dismiss()V

    .line 142
    :goto_1
    return-void

    .line 159
    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mMiuiGxzwIconView:Lcom/android/keyguard/fod/MiuiGxzwIconView;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->show(Z)V

    goto :goto_1
.end method

.method public declared-synchronized getGxzwUnlockMode()I
    .locals 1

    .prologue
    monitor-enter p0

    .line 172
    :try_start_0
    iget v0, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mGxzwUnlockMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isBouncer()Z
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mBouncer:Z

    return v0
.end method

.method public isIgnoreFocusChange()Z
    .locals 1

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mIgnoreFocusChange:Z

    return v0
.end method

.method public isShouldShowGxzwIconInKeyguard()Z
    .locals 1

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mShouldShowGxzwIconInKeyguard:Z

    return v0
.end method

.method public declared-synchronized isUnlockByGxzw()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    monitor-enter p0

    .line 176
    :try_start_0
    iget v1, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mGxzwUnlockMode:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mGxzwUnlockMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onKeyguardHide()V
    .locals 2

    .prologue
    .line 136
    const-string/jumbo v0, "MiuiGxzwManager"

    const-string/jumbo v1, "onKeyguardHide"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwManager;->dismissGxzwView()V

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mShouldShowGxzwIconInKeyguard:Z

    .line 134
    return-void
.end method

.method public onKeyguardShow()V
    .locals 6

    .prologue
    const/16 v5, 0x3e9

    const/4 v4, 0x0

    .line 122
    const-string/jumbo v2, "MiuiGxzwManager"

    const-string/jumbo v3, "onKeyguardShow"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-direct {p0, v4}, Lcom/android/keyguard/fod/MiuiGxzwManager;->setGxzwUnlockMode(I)V

    .line 126
    iget-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 127
    .local v0, "monitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mShowed:Z

    if-eqz v2, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 129
    iget-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5, v4, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 130
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 304
    packed-switch p1, :pswitch_data_0

    .line 315
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    .line 306
    :pswitch_0
    const-string/jumbo v3, "interface_descriptor"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 308
    .local v0, "cmd":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 309
    .local v1, "param":I
    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/fod/MiuiGxzwManager;->dealCallback(II)I

    move-result v2

    .line 310
    .local v2, "result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 312
    const/4 v3, 0x1

    return v3

    .line 304
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public releaseDrawWackLock()V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mDrawWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 203
    return-void
.end method

.method public requestDrawWackLock()V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mDrawWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 199
    return-void
.end method

.method public requestDrawWackLock(J)V
    .locals 1
    .param p1, "timeout"    # J

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mDrawWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, p1, p2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 195
    return-void
.end method

.method public setNotificationPanelView(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 0
    .param p1, "view"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 219
    return-void
.end method

.method public setUnlockLockout(Z)V
    .locals 1
    .param p1, "lockout"    # Z

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mMiuiGxzwIconView:Lcom/android/keyguard/fod/MiuiGxzwIconView;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->setUnlockLockout(Z)V

    .line 207
    return-void
.end method

.method public showGxzwInKeyguardWhenLockout()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 188
    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mShowed:Z

    if-nez v0, :cond_0

    .line 189
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/keyguard/fod/MiuiGxzwManager;->setKeyguardAuthen(Z)V

    .line 190
    invoke-direct {p0, v1}, Lcom/android/keyguard/fod/MiuiGxzwManager;->showGxzwView(Z)V

    .line 191
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mMiuiGxzwIconView:Lcom/android/keyguard/fod/MiuiGxzwIconView;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->setEnrolling(Z)V

    .line 187
    :cond_0
    return-void
.end method

.method public stopDozing()V
    .locals 2

    .prologue
    .line 113
    const-string/jumbo v0, "MiuiGxzwManager"

    const-string/jumbo v1, "stopDozing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwManager;->ignoreFocusChangeForWhile()V

    .line 116
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mMiuiGxzwOverlayView:Lcom/android/keyguard/fod/MiuiGxzwOverlayView;

    invoke-virtual {v0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->stopDozing()V

    .line 117
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mMiuiGxzwIconView:Lcom/android/keyguard/fod/MiuiGxzwIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->stopDozing()V

    .line 111
    return-void
.end method

.method public updateGxzwState()V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwManager;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateGxzwState()V

    .line 223
    :cond_0
    return-void
.end method
