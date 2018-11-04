.class Lcom/android/systemui/usb/UsbDebuggingActivity$1;
.super Ljava/lang/Object;
.source "UsbDebuggingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/usb/UsbDebuggingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/usb/UsbDebuggingActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/usb/UsbDebuggingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/usb/UsbDebuggingActivity;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/systemui/usb/UsbDebuggingActivity$1;->this$0:Lcom/android/systemui/usb/UsbDebuggingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 74
    const/4 v5, -0x1

    if-ne p2, v5, :cond_0

    const/4 v0, 0x1

    .line 75
    .local v0, "allow":Z
    :goto_0
    if-eqz v0, :cond_1

    iget-object v5, p0, Lcom/android/systemui/usb/UsbDebuggingActivity$1;->this$0:Lcom/android/systemui/usb/UsbDebuggingActivity;

    invoke-static {v5}, Lcom/android/systemui/usb/UsbDebuggingActivity;->-get0(Lcom/android/systemui/usb/UsbDebuggingActivity;)Lmiui/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Lmiui/app/AlertDialog;->isChecked()Z

    move-result v1

    .line 77
    :goto_1
    :try_start_0
    const-string/jumbo v5, "usb"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 78
    .local v2, "b":Landroid/os/IBinder;
    invoke-static {v2}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v4

    .line 79
    .local v4, "service":Landroid/hardware/usb/IUsbManager;
    if-eqz v0, :cond_2

    .line 80
    iget-object v5, p0, Lcom/android/systemui/usb/UsbDebuggingActivity$1;->this$0:Lcom/android/systemui/usb/UsbDebuggingActivity;

    invoke-static {v5}, Lcom/android/systemui/usb/UsbDebuggingActivity;->-get1(Lcom/android/systemui/usb/UsbDebuggingActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Landroid/hardware/usb/IUsbManager;->allowUsbDebugging(ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .end local v2    # "b":Landroid/os/IBinder;
    .end local v4    # "service":Landroid/hardware/usb/IUsbManager;
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/usb/UsbDebuggingActivity$1;->this$0:Lcom/android/systemui/usb/UsbDebuggingActivity;

    invoke-virtual {v5}, Lcom/android/systemui/usb/UsbDebuggingActivity;->finish()V

    .line 73
    return-void

    .line 74
    .end local v0    # "allow":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 75
    .restart local v0    # "allow":Z
    :cond_1
    const/4 v1, 0x0

    .local v1, "alwaysAllow":Z
    goto :goto_1

    .line 82
    .end local v1    # "alwaysAllow":Z
    .restart local v2    # "b":Landroid/os/IBinder;
    .restart local v4    # "service":Landroid/hardware/usb/IUsbManager;
    :cond_2
    :try_start_1
    invoke-interface {v4}, Landroid/hardware/usb/IUsbManager;->denyUsbDebugging()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 84
    .end local v2    # "b":Landroid/os/IBinder;
    .end local v4    # "service":Landroid/hardware/usb/IUsbManager;
    :catch_0
    move-exception v3

    .line 85
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "UsbDebuggingActivity"

    const-string/jumbo v6, "Unable to notify Usb service"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method
