.class public Lcom/android/systemui/TorchServiceView;
.super Landroid/widget/FrameLayout;
.source "TorchServiceView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/TorchServiceView$1;,
        Lcom/android/systemui/TorchServiceView$2;,
        Lcom/android/systemui/TorchServiceView$3;,
        Lcom/android/systemui/TorchServiceView$4;,
        Lcom/android/systemui/TorchServiceView$5;
    }
.end annotation


# static fields
.field public static final FLASH_DEVICES:[Ljava/lang/String;


# instance fields
.field private mBgHandler:Landroid/os/Handler;

.field private final mCloseRunnable:Ljava/lang/Runnable;

.field private mDelayOpen:Ljava/lang/Runnable;

.field private mFlashDevice:Ljava/lang/String;

.field private mFlashMode:I

.field private final mFlashRunable:Ljava/lang/Runnable;

.field private mForceOff:Z

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private final mOpenRunnable:Ljava/lang/Runnable;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mStatusDetecting:Ljava/lang/Runnable;

.field private mValueOn:I

.field private mWaringToastString:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/TorchServiceView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/TorchServiceView;->mCloseRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/TorchServiceView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/TorchServiceView;->mFlashDevice:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/TorchServiceView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/TorchServiceView;->mFlashMode:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/TorchServiceView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/TorchServiceView;->mFlashRunable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/TorchServiceView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/TorchServiceView;->mForceOff:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/TorchServiceView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/TorchServiceView;->mOpenRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/TorchServiceView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/TorchServiceView;->mStatusDetecting:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/TorchServiceView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/TorchServiceView;->mValueOn:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/TorchServiceView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/TorchServiceView;->mForceOff:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/TorchServiceView;I)Z
    .locals 1
    .param p1, "mode"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/TorchServiceView;->setFlashModeInternal(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/TorchServiceView;I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/TorchServiceView;->setFlashMode(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/TorchServiceView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/TorchServiceView;->showToast()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 36
    const-string/jumbo v1, "/sys/class/leds/flashlight/brightness"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 37
    const-string/jumbo v1, "/sys/class/leds/spotlight/brightness"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 35
    sput-object v0, Lcom/android/systemui/TorchServiceView;->FLASH_DEVICES:[Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/TorchServiceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 114
    new-instance v0, Lcom/android/systemui/TorchServiceView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/TorchServiceView$1;-><init>(Lcom/android/systemui/TorchServiceView;)V

    iput-object v0, p0, Lcom/android/systemui/TorchServiceView;->mFlashRunable:Ljava/lang/Runnable;

    .line 123
    new-instance v0, Lcom/android/systemui/TorchServiceView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/TorchServiceView$2;-><init>(Lcom/android/systemui/TorchServiceView;)V

    iput-object v0, p0, Lcom/android/systemui/TorchServiceView;->mOpenRunnable:Ljava/lang/Runnable;

    .line 130
    new-instance v0, Lcom/android/systemui/TorchServiceView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/TorchServiceView$3;-><init>(Lcom/android/systemui/TorchServiceView;)V

    iput-object v0, p0, Lcom/android/systemui/TorchServiceView;->mCloseRunnable:Ljava/lang/Runnable;

    .line 214
    new-instance v0, Lcom/android/systemui/TorchServiceView$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/TorchServiceView$4;-><init>(Lcom/android/systemui/TorchServiceView;)V

    iput-object v0, p0, Lcom/android/systemui/TorchServiceView;->mDelayOpen:Ljava/lang/Runnable;

    .line 221
    new-instance v0, Lcom/android/systemui/TorchServiceView$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/TorchServiceView$5;-><init>(Lcom/android/systemui/TorchServiceView;)V

    iput-object v0, p0, Lcom/android/systemui/TorchServiceView;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 63
    invoke-direct {p0}, Lcom/android/systemui/TorchServiceView;->fetchFlashDeviceConfig()V

    .line 61
    return-void
.end method

.method private fetchFlashDeviceConfig()V
    .locals 5

    .prologue
    .line 67
    iget-object v3, p0, Lcom/android/systemui/TorchServiceView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 69
    .local v2, "resources":Landroid/content/res/Resources;
    const v3, 0x90d0042

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 70
    const v3, 0x90e004e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/TorchServiceView;->mValueOn:I

    .line 72
    const v3, 0x910047d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/TorchServiceView;->mFlashDevice:Ljava/lang/String;

    .line 73
    const/4 v0, 0x0

    .line 74
    .local v0, "i":I
    :goto_0
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/systemui/TorchServiceView;->mFlashDevice:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 75
    sget-object v3, Lcom/android/systemui/TorchServiceView;->FLASH_DEVICES:[Ljava/lang/String;

    array-length v3, v3

    if-ne v0, v3, :cond_1

    .line 76
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/TorchServiceView;->mFlashDevice:Ljava/lang/String;

    .line 66
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 79
    .restart local v0    # "i":I
    :cond_1
    sget-object v3, Lcom/android/systemui/TorchServiceView;->FLASH_DEVICES:[Ljava/lang/String;

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    aget-object v3, v3, v0

    iput-object v3, p0, Lcom/android/systemui/TorchServiceView;->mFlashDevice:Ljava/lang/String;

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0
.end method

.method private declared-synchronized setFlashMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    monitor-enter p0

    .line 138
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/systemui/TorchServiceView;->setFlashModeInternal(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iput p1, p0, Lcom/android/systemui/TorchServiceView;->mFlashMode:I

    .line 140
    iget-object v0, p0, Lcom/android/systemui/TorchServiceView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "torch_state"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 137
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setFlashModeInternal(I)Z
    .locals 6
    .param p1, "mode"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    monitor-enter p0

    .line 147
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/TorchServiceView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lmiui/os/Build;->hasCameraFlash(Landroid/content/Context;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    monitor-exit p0

    .line 148
    return v2

    .line 151
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/TorchServiceView;->mFlashDevice:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 152
    const-class v1, Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/FlashlightController;

    if-ne p1, v3, :cond_1

    move v2, v3

    :cond_1
    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/FlashlightController;->setFlashlight(Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .line 155
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/android/systemui/TorchServiceView;->mStatusDetecting:Ljava/lang/Runnable;

    if-nez v1, :cond_3

    .line 156
    new-instance v1, Lcom/android/systemui/TorchServiceView$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/TorchServiceView$6;-><init>(Lcom/android/systemui/TorchServiceView;)V

    iput-object v1, p0, Lcom/android/systemui/TorchServiceView;->mStatusDetecting:Ljava/lang/Runnable;

    .line 179
    :cond_3
    if-ne p1, v3, :cond_4

    .line 180
    iget-object v1, p0, Lcom/android/systemui/TorchServiceView;->mStatusDetecting:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {p0, v1, v4, v5}, Lcom/android/systemui/TorchServiceView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 185
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/TorchServiceView;->mBgHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/TorchServiceView$7;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/TorchServiceView$7;-><init>(Lcom/android/systemui/TorchServiceView;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit p0

    .line 211
    return v3

    .line 182
    :cond_4
    :try_start_3
    iget-object v1, p0, Lcom/android/systemui/TorchServiceView;->mStatusDetecting:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/systemui/TorchServiceView;->removeCallbacks(Ljava/lang/Runnable;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private showToast()V
    .locals 4

    .prologue
    .line 251
    iget-object v1, p0, Lcom/android/systemui/TorchServiceView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/TorchServiceView;->mWaringToastString:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 252
    .local v0, "toast":Landroid/widget/Toast;
    const/16 v1, 0x7d6

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setType(I)V

    .line 253
    invoke-virtual {v0}, Landroid/widget/Toast;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 254
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 250
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 86
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 88
    iget-object v0, p0, Lcom/android/systemui/TorchServiceView;->mContext:Landroid/content/Context;

    const v1, 0x91004c9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/TorchServiceView;->mWaringToastString:Ljava/lang/String;

    .line 90
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "torch"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/TorchServiceView;->mHandlerThread:Landroid/os/HandlerThread;

    .line 91
    iget-object v0, p0, Lcom/android/systemui/TorchServiceView;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 92
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/TorchServiceView;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/TorchServiceView;->mBgHandler:Landroid/os/Handler;

    .line 95
    iget-object v0, p0, Lcom/android/systemui/TorchServiceView;->mFlashDevice:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/TorchServiceView;->setFlashMode(I)V

    .line 98
    :cond_0
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 99
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "miui.intent.action.TOGGLE_TORCH"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    const-string/jumbo v0, "action_temp_state_change"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    const/16 v0, -0x3e8

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 102
    iget-object v0, p0, Lcom/android/systemui/TorchServiceView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/TorchServiceView;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 85
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/systemui/TorchServiceView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/TorchServiceView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/TorchServiceView;->setFlashMode(I)V

    .line 110
    iget-object v0, p0, Lcom/android/systemui/TorchServiceView;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 111
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 106
    return-void
.end method
