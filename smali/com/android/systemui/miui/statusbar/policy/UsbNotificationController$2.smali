.class Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController$2;
.super Landroid/content/BroadcastReceiver;
.source "UsbNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;


# direct methods
.method constructor <init>(Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController$2;->this$0:Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "content"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x0

    .line 105
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 107
    iget-object v4, p0, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController$2;->this$0:Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;

    invoke-static {v4}, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;->-get3(Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;)I

    move-result v1

    .line 108
    .local v1, "oldPlugType":I
    iget-object v4, p0, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController$2;->this$0:Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;

    const-string/jumbo v5, "plugged"

    invoke-virtual {p2, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;->-set2(Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;I)I

    .line 110
    iget-object v4, p0, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController$2;->this$0:Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;

    invoke-static {v4}, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;->-get3(Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;)I

    move-result v4

    if-ne v4, v6, :cond_2

    const/4 v3, 0x1

    .line 111
    .local v3, "usbPlugged":Z
    :goto_0
    if-ne v1, v6, :cond_0

    const/4 v2, 0x1

    .line 112
    .local v2, "oldUsbPlugged":Z
    :cond_0
    if-eq v3, v2, :cond_1

    .line 113
    iget-object v4, p0, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController$2;->this$0:Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;

    invoke-static {v4, v3}, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;->-wrap0(Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;Z)V

    .line 104
    .end local v1    # "oldPlugType":I
    .end local v2    # "oldUsbPlugged":Z
    .end local v3    # "usbPlugged":Z
    :cond_1
    :goto_1
    return-void

    .line 110
    .restart local v1    # "oldPlugType":I
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "usbPlugged":Z
    goto :goto_0

    .line 115
    .end local v1    # "oldPlugType":I
    .end local v3    # "usbPlugged":Z
    :cond_3
    const-string/jumbo v4, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 116
    iget-object v4, p0, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController$2;->this$0:Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;

    const-string/jumbo v5, "connected"

    invoke-virtual {p2, v5, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v4, v5}, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;->-wrap0(Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;Z)V

    goto :goto_1
.end method
