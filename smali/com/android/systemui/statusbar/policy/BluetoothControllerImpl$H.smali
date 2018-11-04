.class final Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;
.super Landroid/os/Handler;
.source "BluetoothControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->mCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;Landroid/os/Looper;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 382
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    .line 383
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 374
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->mCallbacks:Ljava/util/ArrayList;

    .line 382
    return-void
.end method

.method private fireInoutStateChange(Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;Ljava/lang/String;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 429
    invoke-interface {p1, p2}, Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;->onBluetoothInoutStateChange(Ljava/lang/String;)V

    .line 428
    return-void
.end method

.method private fireInoutStateChange(Ljava/lang/String;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 419
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->mCallbacks:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cb$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    .line 420
    .local v0, "cb":Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->fireInoutStateChange(Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;Ljava/lang/String;)V

    goto :goto_0

    .line 418
    .end local v0    # "cb":Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;
    :cond_0
    return-void
.end method

.method private firePairedDevicesChanged()V
    .locals 3

    .prologue
    .line 407
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->mCallbacks:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cb$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    .line 408
    .local v0, "cb":Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;->onBluetoothDevicesChanged()V

    goto :goto_0

    .line 406
    .end local v0    # "cb":Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;
    :cond_0
    return-void
.end method

.method private fireStateChange()V
    .locals 3

    .prologue
    .line 413
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->mCallbacks:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cb$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    .line 414
    .local v0, "cb":Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->fireStateChange(Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;)V

    goto :goto_0

    .line 412
    .end local v0    # "cb":Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;
    :cond_0
    return-void
.end method

.method private fireStateChange(Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;)V
    .locals 1
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->-get0(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;->onBluetoothStateChange(Z)V

    .line 424
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 388
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 387
    :goto_0
    return-void

    .line 390
    :pswitch_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->firePairedDevicesChanged()V

    goto :goto_0

    .line 393
    :pswitch_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->fireStateChange()V

    goto :goto_0

    .line 396
    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->mCallbacks:Ljava/util/ArrayList;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 399
    :pswitch_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->mCallbacks:Ljava/util/ArrayList;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 402
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->fireInoutStateChange(Ljava/lang/String;)V

    goto :goto_0

    .line 388
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
