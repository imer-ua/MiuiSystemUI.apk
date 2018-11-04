.class public Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;
.super Ljava/lang/Object;
.source "BluetoothControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BluetoothController;
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;
.implements Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$1;,
        Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$ActuallyCachedState;,
        Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mBgHandler:Landroid/os/Handler;

.field private mCachedDevices:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mCachedState:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
            "Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$ActuallyCachedState;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectionState:I

.field private final mCurrentUser:I

.field private mEnabled:Z

.field private final mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLastDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field private final mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mState:I

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mEnabled:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->updateConnected()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    const-string/jumbo v0, "BluetoothController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->DEBUG:Z

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bgLooper"    # Landroid/os/Looper;

    .prologue
    const/4 v4, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 56
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mCachedState:Ljava/util/WeakHashMap;

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mConnectionState:I

    .line 65
    new-instance v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;-><init>(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    .line 88
    new-instance v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 69
    const-class v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mBgHandler:Landroid/os/Handler;

    .line 71
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->setReceiverHandler(Landroid/os/Handler;)V

    .line 73
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    .line 75
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    .line 74
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->onBluetoothStateChanged(I)V

    .line 77
    :cond_0
    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mUserManager:Landroid/os/UserManager;

    .line 78
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mCurrentUser:I

    .line 80
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 81
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "com.android.bluetooth.opp.BLUETOOTH_OPP_INBOUND_START"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    const-string/jumbo v0, "com.android.bluetooth.opp.BLUETOOTH_OPP_INBOUND_END"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    const-string/jumbo v0, "com.android.bluetooth.opp.BLUETOOTH_OPP_OUTBOUND_START"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    const-string/jumbo v0, "com.android.bluetooth.opp.BLUETOOTH_OPP_OUTBOUND_END"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mBgHandler:Landroid/os/Handler;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 68
    return-void
.end method

.method private clearCachedDevices()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 231
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mCachedDevices:Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mCachedDevices:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 233
    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mCachedDevices:Ljava/util/Collection;

    .line 230
    :cond_0
    return-void
.end method

.method private getCachedState(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$ActuallyCachedState;
    .locals 3
    .param p1, "device"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .prologue
    const/4 v2, 0x0

    .line 337
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mCachedState:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$ActuallyCachedState;

    .line 338
    .local v0, "state":Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$ActuallyCachedState;
    if-nez v0, :cond_0

    .line 339
    new-instance v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$ActuallyCachedState;

    .end local v0    # "state":Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$ActuallyCachedState;
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    invoke-direct {v0, p1, v1, v2}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$ActuallyCachedState;-><init>(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Landroid/os/Handler;Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$ActuallyCachedState;)V

    .line 340
    .restart local v0    # "state":Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$ActuallyCachedState;
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 341
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mCachedState:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    return-object v0

    .line 344
    :cond_0
    return-object v0
.end method

.method private getDeviceString(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Ljava/lang/String;
    .locals 2
    .param p1, "device"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .prologue
    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static stateToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "state"    # I

    .prologue
    .line 128
    packed-switch p0, :pswitch_data_0

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 130
    :pswitch_0
    const-string/jumbo v0, "CONNECTED"

    return-object v0

    .line 132
    :pswitch_1
    const-string/jumbo v0, "CONNECTING"

    return-object v0

    .line 134
    :pswitch_2
    const-string/jumbo v0, "DISCONNECTED"

    return-object v0

    .line 136
    :pswitch_3
    const-string/jumbo v0, "DISCONNECTING"

    return-object v0

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private updateConnected()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 239
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getConnectionState()I

    move-result v3

    .line 240
    .local v3, "state":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLastDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLastDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 247
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->getDevices()Ljava/util/Collection;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mCachedDevices:Ljava/util/Collection;

    .line 248
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mCachedDevices:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "device$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 249
    .local v0, "device":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMaxConnectionState()I

    move-result v2

    .line 250
    .local v2, "maxDeviceState":I
    if-le v2, v3, :cond_2

    .line 251
    move v3, v2

    .line 253
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLastDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-nez v4, :cond_1

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 255
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLastDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    goto :goto_1

    .line 242
    .end local v0    # "device":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .end local v1    # "device$iterator":Ljava/util/Iterator;
    .end local v2    # "maxDeviceState":I
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mCachedState:Ljava/util/WeakHashMap;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLastDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4, v5}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLastDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    goto :goto_0

    .line 259
    .restart local v1    # "device$iterator":Ljava/util/Iterator;
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLastDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-nez v4, :cond_5

    if-ne v3, v7, :cond_5

    .line 262
    const/4 v3, 0x0

    .line 264
    :cond_5
    iget v4, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mConnectionState:I

    if-eq v3, v4, :cond_6

    .line 265
    iput v3, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mConnectionState:I

    .line 266
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    invoke-virtual {v4, v7}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->sendEmptyMessage(I)Z

    .line 268
    :cond_6
    const-string/jumbo v4, "BluetoothController"

    const-string/jumbo v5, "updateConnected complete"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;)V
    .locals 2
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 158
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->sendEmptyMessage(I)Z

    .line 156
    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0
    .param p1, "cb"    # Ljava/lang/Object;

    .prologue
    .line 156
    check-cast p1, Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    .end local p1    # "cb":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->addCallback(Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;)V

    return-void
.end method

.method public canConfigBluetooth()Z
    .locals 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v1, "no_config_bluetooth"

    .line 107
    iget v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mCurrentUser:I

    invoke-static {v2}, Landroid/os/UserHandleCompat;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 106
    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public connect(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 1
    .param p1, "device"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-void

    .line 201
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connect(Z)V

    .line 199
    return-void
.end method

.method public disconnect(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 1
    .param p1, "device"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-void

    .line 207
    :cond_1
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->disconnect()V

    .line 205
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 111
    const-string/jumbo v2, "BluetoothController state:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 112
    const-string/jumbo v2, "  mLocalBluetoothManager="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 113
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v2, :cond_0

    .line 114
    return-void

    .line 116
    :cond_0
    const-string/jumbo v2, "  mEnabled="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mEnabled:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 117
    const-string/jumbo v2, "  mConnectionState="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mConnectionState:I

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 118
    const-string/jumbo v2, "  mLastDevice="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLastDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 119
    const-string/jumbo v2, "  mCallbacks.size="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->-get0(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 120
    const-string/jumbo v2, "  Bluetooth Devices:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 122
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/Collection;

    move-result-object v2

    .line 121
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "device$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 123
    .local v0, "device":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->getDeviceString(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 110
    .end local v0    # "device":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    :cond_1
    return-void
.end method

.method public getBluetoothState()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mState:I

    return v0
.end method

.method public getBondState(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)I
    .locals 1
    .param p1, "device"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->getCachedState(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$ActuallyCachedState;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$ActuallyCachedState;->-get0(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$ActuallyCachedState;)I

    move-result v0

    return v0
.end method

.method public getCachedDevicesCopy()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 223
    const/4 v0, 0x0

    .line 224
    .local v0, "cachedDevices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;>;"
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mCachedDevices:Ljava/util/Collection;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mCachedDevices:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 227
    .end local v0    # "cachedDevices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;>;"
    :cond_0
    :goto_0
    return-object v0

    .line 225
    .restart local v0    # "cachedDevices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;>;"
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "cachedDevices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;>;"
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mCachedDevices:Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .local v0, "cachedDevices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;>;"
    goto :goto_0
.end method

.method public getDevices()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 217
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v1, :cond_0

    .line 218
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/Collection;

    move-result-object v0

    .line 217
    :cond_0
    return-object v0
.end method

.method public getLastDeviceName()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 212
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLastDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLastDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getMaxConnectionState(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)I
    .locals 1
    .param p1, "device"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->getCachedState(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$ActuallyCachedState;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$ActuallyCachedState;->-get1(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$ActuallyCachedState;)I

    move-result v0

    return v0
.end method

.method public isBluetoothConnected()Z
    .locals 2

    .prologue
    .line 178
    iget v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mConnectionState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBluetoothConnecting()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 183
    iget v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mConnectionState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBluetoothEnabled()Z
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mEnabled:Z

    return v0
.end method

.method public isBluetoothSupported()Z
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBluetoothStateChanged(I)V
    .locals 2
    .param p1, "bluetoothState"    # I

    .prologue
    const/4 v0, 0x1

    .line 273
    const/16 v1, 0xc

    if-eq p1, v1, :cond_0

    .line 274
    const/16 v1, 0xb

    if-ne p1, v1, :cond_2

    .line 273
    :cond_0
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mEnabled:Z

    .line 275
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mEnabled:Z

    if-nez v0, :cond_1

    .line 276
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->clearCachedDevices()V

    .line 278
    :cond_1
    iput p1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mState:I

    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->sendEmptyMessage(I)Z

    .line 272
    return-void

    .line 274
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 2
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .param p2, "state"    # I

    .prologue
    .line 325
    const-string/jumbo v0, "BluetoothController"

    const-string/jumbo v1, "onConnectionStateChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mCachedState:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLastDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 328
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->updateConnected()V

    .line 329
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->sendEmptyMessage(I)Z

    .line 324
    return-void
.end method

.method public onDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 2
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .prologue
    .line 289
    const-string/jumbo v0, "BluetoothController"

    const-string/jumbo v1, "onDeviceAdded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-virtual {p1, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 291
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->updateConnected()V

    .line 292
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->sendEmptyMessage(I)Z

    .line 288
    return-void
.end method

.method public onDeviceAttributesChanged()V
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$2;-><init>(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 312
    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 2
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .param p2, "bondState"    # I

    .prologue
    .line 305
    const-string/jumbo v0, "BluetoothController"

    const-string/jumbo v1, "onDeviceBondStateChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mCachedState:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->updateConnected()V

    .line 308
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->sendEmptyMessage(I)Z

    .line 304
    return-void
.end method

.method public onDeviceDeleted(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 2
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .prologue
    .line 297
    const-string/jumbo v0, "BluetoothController"

    const-string/jumbo v1, "onDeviceDeleted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mCachedState:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->updateConnected()V

    .line 300
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->sendEmptyMessage(I)Z

    .line 296
    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 0
    .param p1, "started"    # Z

    .prologue
    .line 283
    return-void
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;)V
    .locals 2
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 162
    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0
    .param p1, "cb"    # Ljava/lang/Object;

    .prologue
    .line 162
    check-cast p1, Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    .end local p1    # "cb":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->removeCallback(Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;)V

    return-void
.end method

.method public setBluetoothEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setBluetoothEnabled(Z)Z

    .line 187
    :cond_0
    return-void
.end method
