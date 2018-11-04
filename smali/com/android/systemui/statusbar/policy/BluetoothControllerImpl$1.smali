.class Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 91
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "com.android.bluetooth.opp.BLUETOOTH_OPP_INBOUND_START"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 93
    const-string/jumbo v2, "com.android.bluetooth.opp.BLUETOOTH_OPP_INBOUND_END"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 92
    if-nez v2, :cond_0

    .line 94
    const-string/jumbo v2, "com.android.bluetooth.opp.BLUETOOTH_OPP_OUTBOUND_START"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 92
    if-nez v2, :cond_0

    .line 95
    const-string/jumbo v2, "com.android.bluetooth.opp.BLUETOOTH_OPP_OUTBOUND_END"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 92
    if-eqz v2, :cond_1

    .line 96
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 97
    .local v1, "message":Landroid/os/Message;
    const/4 v2, 0x5

    iput v2, v1, Landroid/os/Message;->what:I

    .line 98
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 99
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->sendMessage(Landroid/os/Message;)Z

    .line 90
    .end local v1    # "message":Landroid/os/Message;
    :cond_1
    return-void
.end method
