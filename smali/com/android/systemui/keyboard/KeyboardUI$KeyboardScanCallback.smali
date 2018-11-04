.class final Lcom/android/systemui/keyboard/KeyboardUI$KeyboardScanCallback;
.super Landroid/bluetooth/le/ScanCallback;
.source "KeyboardUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyboard/KeyboardUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "KeyboardScanCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyboard/KeyboardUI;


# direct methods
.method private constructor <init>(Lcom/android/systemui/keyboard/KeyboardUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/keyboard/KeyboardUI;

    .prologue
    .line 544
    iput-object p1, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardScanCallback;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/keyboard/KeyboardUI;Lcom/android/systemui/keyboard/KeyboardUI$KeyboardScanCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/keyboard/KeyboardUI;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardScanCallback;-><init>(Lcom/android/systemui/keyboard/KeyboardUI;)V

    return-void
.end method

.method private isDeviceDiscoverable(Landroid/bluetooth/le/ScanResult;)Z
    .locals 5
    .param p1, "result"    # Landroid/bluetooth/le/ScanResult;

    .prologue
    const/4 v3, 0x0

    .line 547
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v2

    .line 548
    .local v2, "scanRecord":Landroid/bluetooth/le/ScanRecord;
    invoke-virtual {v2}, Landroid/bluetooth/le/ScanRecord;->getAdvertiseFlags()I

    move-result v1

    .line 549
    .local v1, "flags":I
    const/4 v0, 0x3

    .line 551
    .local v0, "BT_DISCOVERABLE_MASK":I
    and-int/lit8 v4, v1, 0x3

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method


# virtual methods
.method public onBatchScanResults(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 560
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanResult;>;"
    const/4 v0, 0x0

    .line 561
    .local v0, "bestDevice":Landroid/bluetooth/BluetoothDevice;
    const/high16 v1, -0x80000000

    .line 563
    .local v1, "bestRssi":I
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v0    # "bestDevice":Landroid/bluetooth/BluetoothDevice;
    .local v3, "result$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/le/ScanResult;

    .line 568
    .local v2, "result":Landroid/bluetooth/le/ScanResult;
    invoke-direct {p0, v2}, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardScanCallback;->isDeviceDiscoverable(Landroid/bluetooth/le/ScanResult;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result v4

    if-le v4, v1, :cond_0

    .line 569
    invoke-virtual {v2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 570
    .local v0, "bestDevice":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v2}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result v1

    goto :goto_0

    .line 574
    .end local v0    # "bestDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "result":Landroid/bluetooth/le/ScanResult;
    :cond_1
    if-eqz v0, :cond_2

    .line 575
    iget-object v4, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardScanCallback;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-static {v4}, Lcom/android/systemui/keyboard/KeyboardUI;->-get1(Lcom/android/systemui/keyboard/KeyboardUI;)Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;

    move-result-object v4

    const/4 v5, 0x6

    invoke-virtual {v4, v5, v0}, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 555
    :cond_2
    return-void
.end method

.method public onScanFailed(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .prologue
    .line 584
    iget-object v0, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardScanCallback;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-static {v0}, Lcom/android/systemui/keyboard/KeyboardUI;->-get1(Lcom/android/systemui/keyboard/KeyboardUI;)Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 580
    return-void
.end method

.method public onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .locals 3
    .param p1, "callbackType"    # I
    .param p2, "result"    # Landroid/bluetooth/le/ScanResult;

    .prologue
    .line 593
    invoke-direct {p0, p2}, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardScanCallback;->isDeviceDiscoverable(Landroid/bluetooth/le/ScanResult;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardScanCallback;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-static {v0}, Lcom/android/systemui/keyboard/KeyboardUI;->-get1(Lcom/android/systemui/keyboard/KeyboardUI;)Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;

    move-result-object v0

    .line 595
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 594
    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 588
    :cond_0
    return-void
.end method
