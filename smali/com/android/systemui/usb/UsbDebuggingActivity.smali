.class public Lcom/android/systemui/usb/UsbDebuggingActivity;
.super Lmiui/app/Activity;
.source "UsbDebuggingActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/usb/UsbDebuggingActivity$UsbDisconnectedReceiver;
    }
.end annotation


# instance fields
.field private mCheckBoxDialog:Lmiui/app/AlertDialog;

.field private mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDebuggingActivity$UsbDisconnectedReceiver;

.field private mKey:Ljava/lang/String;

.field private onClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private onDismissListener:Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/usb/UsbDebuggingActivity;)Lmiui/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mCheckBoxDialog:Lmiui/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/usb/UsbDebuggingActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 50
    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbDebuggingActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbDebuggingActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/app/ActionBar;->hide()V

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbDebuggingActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 58
    const-string/jumbo v4, "service.adb.tcp.port"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_1

    .line 59
    new-instance v4, Lcom/android/systemui/usb/UsbDebuggingActivity$UsbDisconnectedReceiver;

    invoke-direct {v4, p0, p0}, Lcom/android/systemui/usb/UsbDebuggingActivity$UsbDisconnectedReceiver;-><init>(Lcom/android/systemui/usb/UsbDebuggingActivity;Lmiui/app/Activity;)V

    iput-object v4, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDebuggingActivity$UsbDisconnectedReceiver;

    .line 62
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbDebuggingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 63
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "fingerprints"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, "fingerprints":Ljava/lang/String;
    const-string/jumbo v4, "key"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mKey:Ljava/lang/String;

    .line 66
    if-eqz v2, :cond_2

    iget-object v4, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mKey:Ljava/lang/String;

    if-nez v4, :cond_3

    .line 67
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbDebuggingActivity;->finish()V

    .line 68
    return-void

    .line 71
    :cond_3
    new-instance v4, Lcom/android/systemui/usb/UsbDebuggingActivity$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/usb/UsbDebuggingActivity$1;-><init>(Lcom/android/systemui/usb/UsbDebuggingActivity;)V

    iput-object v4, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 91
    new-instance v4, Lcom/android/systemui/usb/UsbDebuggingActivity$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/usb/UsbDebuggingActivity$2;-><init>(Lcom/android/systemui/usb/UsbDebuggingActivity;)V

    iput-object v4, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 98
    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 99
    .local v0, "builder":Lmiui/app/AlertDialog$Builder;
    const v4, 0x9100070

    invoke-virtual {p0, v4}, Lcom/android/systemui/usb/UsbDebuggingActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lmiui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v4

    .line 101
    new-array v5, v7, [Ljava/lang/Object;

    aput-object v2, v5, v6

    const v6, 0x9100071

    invoke-virtual {p0, v6, v5}, Lcom/android/systemui/usb/UsbDebuggingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 99
    invoke-virtual {v4, v5}, Lmiui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v4

    .line 102
    const v5, 0x9100072

    invoke-virtual {p0, v5}, Lcom/android/systemui/usb/UsbDebuggingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 99
    invoke-virtual {v4, v7, v5}, Lmiui/app/AlertDialog$Builder;->setCheckBox(ZLjava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Lmiui/app/AlertDialog$Builder;->setCancelable(Z)Lmiui/app/AlertDialog$Builder;

    move-result-object v4

    .line 104
    const v5, 0x104000a

    invoke-virtual {p0, v5}, Lcom/android/systemui/usb/UsbDebuggingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 99
    invoke-virtual {v4, v5, v6}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v4

    .line 105
    const/high16 v5, 0x1040000

    invoke-virtual {p0, v5}, Lcom/android/systemui/usb/UsbDebuggingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 99
    invoke-virtual {v4, v5, v6}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v4

    .line 106
    iget-object v5, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 99
    invoke-virtual {v4, v5}, Lmiui/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiui/app/AlertDialog$Builder;

    .line 107
    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v1

    .line 108
    .local v1, "dialog":Landroid/app/Dialog;
    check-cast v1, Lmiui/app/AlertDialog;

    .end local v1    # "dialog":Landroid/app/Dialog;
    iput-object v1, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mCheckBoxDialog:Lmiui/app/AlertDialog;

    .line 109
    iget-object v4, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mCheckBoxDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v4}, Lmiui/app/AlertDialog;->show()V

    .line 49
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 133
    invoke-super {p0}, Lmiui/app/Activity;->onStart()V

    .line 134
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 135
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDebuggingActivity$UsbDisconnectedReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/usb/UsbDebuggingActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 132
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDebuggingActivity$UsbDisconnectedReceiver;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDebuggingActivity$UsbDisconnectedReceiver;

    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/UsbDebuggingActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 143
    :cond_0
    invoke-super {p0}, Lmiui/app/Activity;->onStop()V

    .line 139
    return-void
.end method
