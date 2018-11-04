.class public Lcom/android/systemui/usb/UsbResolverActivity;
.super Lcom/android/internal/app/ResolverActivity;
.source "UsbResolverActivity.java"


# instance fields
.field private mAccessory:Landroid/hardware/usb/UsbAccessory;

.field private mDevice:Landroid/hardware/usb/UsbDevice;

.field private mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDisconnectedReceiver;

.field private mForwardResolveInfo:Landroid/content/pm/ResolveInfo;

.field private mOtherProfileIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 17
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/usb/UsbResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 65
    .local v9, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.extra.INTENT"

    invoke-virtual {v9, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v16

    .line 66
    .local v16, "targetParcelable":Landroid/os/Parcelable;
    move-object/from16 v0, v16

    instance-of v1, v0, Landroid/content/Intent;

    if-nez v1, :cond_0

    .line 67
    const-string/jumbo v1, "UsbResolverActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Target is not an intent: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/usb/UsbResolverActivity;->finish()V

    .line 69
    return-void

    :cond_0
    move-object/from16 v3, v16

    .line 71
    check-cast v3, Landroid/content/Intent;

    .line 72
    .local v3, "target":Landroid/content/Intent;
    new-instance v11, Ljava/util/ArrayList;

    .line 73
    const-string/jumbo v1, "rlist"

    invoke-virtual {v9, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 72
    invoke-direct {v11, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 74
    .local v11, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 75
    .local v6, "rList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "p$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/Parcelable;

    .line 76
    .local v12, "p":Landroid/os/Parcelable;
    check-cast v12, Landroid/content/pm/ResolveInfo;

    .end local v12    # "p":Landroid/os/Parcelable;
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 81
    :cond_1
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v14, "rListOtherProfile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/systemui/usb/UsbResolverActivity;->mForwardResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 83
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/ResolveInfo;>;"
    :cond_2
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 84
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ResolveInfo;

    .line 86
    .local v15, "ri":Landroid/content/pm/ResolveInfo;
    invoke-static {v15}, Landroid/content/pm/ResolveInfoCompat;->getComponentInfo(Landroid/content/pm/ResolveInfo;)Landroid/content/pm/ComponentInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    sget-object v2, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 87
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/systemui/usb/UsbResolverActivity;->mForwardResolveInfo:Landroid/content/pm/ResolveInfo;

    goto :goto_1

    .line 88
    :cond_3
    iget-object v1, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 89
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 88
    if-eq v1, v2, :cond_2

    .line 90
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    .line 91
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 95
    .end local v15    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_4
    const-string/jumbo v1, "device"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbDevice;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/systemui/usb/UsbResolverActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 96
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/usb/UsbResolverActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    if-eqz v1, :cond_7

    .line 97
    new-instance v1, Lcom/android/systemui/usb/UsbDisconnectedReceiver;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/UsbResolverActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2}, Lcom/android/systemui/usb/UsbDisconnectedReceiver;-><init>(Landroid/app/Activity;Landroid/hardware/usb/UsbDevice;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/systemui/usb/UsbResolverActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDisconnectedReceiver;

    .line 110
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/usb/UsbResolverActivity;->mForwardResolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v1, :cond_5

    .line 111
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_9

    .line 112
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/systemui/usb/UsbResolverActivity;->mOtherProfileIntent:Landroid/content/Intent;

    .line 113
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/usb/UsbResolverActivity;->mOtherProfileIntent:Landroid/content/Intent;

    const-string/jumbo v2, "rlist"

    invoke-virtual {v1, v2, v14}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 129
    :cond_5
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/usb/UsbResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10403ad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 130
    .local v4, "title":Ljava/lang/CharSequence;
    const/4 v5, 0x0

    const/4 v7, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-super/range {v1 .. v7}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;Z)V

    .line 132
    const v1, 0x102033a

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/usb/UsbResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    .line 133
    .local v8, "alwaysUse":Landroid/widget/CheckBox;
    if-eqz v8, :cond_6

    .line 134
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/usb/UsbResolverActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    if-nez v1, :cond_b

    .line 135
    const v1, 0x910006f

    invoke-virtual {v8, v1}, Landroid/widget/CheckBox;->setText(I)V

    .line 63
    :cond_6
    :goto_4
    return-void

    .line 99
    .end local v4    # "title":Ljava/lang/CharSequence;
    .end local v8    # "alwaysUse":Landroid/widget/CheckBox;
    :cond_7
    const-string/jumbo v1, "accessory"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbAccessory;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/systemui/usb/UsbResolverActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    .line 100
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/usb/UsbResolverActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    if-nez v1, :cond_8

    .line 101
    const-string/jumbo v1, "UsbResolverActivity"

    const-string/jumbo v2, "no device or accessory"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/usb/UsbResolverActivity;->finish()V

    .line 103
    return-void

    .line 105
    :cond_8
    new-instance v1, Lcom/android/systemui/usb/UsbDisconnectedReceiver;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/UsbResolverActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2}, Lcom/android/systemui/usb/UsbDisconnectedReceiver;-><init>(Landroid/app/Activity;Landroid/hardware/usb/UsbAccessory;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/systemui/usb/UsbResolverActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDisconnectedReceiver;

    goto :goto_2

    .line 116
    :cond_9
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/systemui/usb/UsbConfirmActivity;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/systemui/usb/UsbResolverActivity;->mOtherProfileIntent:Landroid/content/Intent;

    .line 117
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/UsbResolverActivity;->mOtherProfileIntent:Landroid/content/Intent;

    const-string/jumbo v5, "rinfo"

    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 119
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/usb/UsbResolverActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    if-eqz v1, :cond_a

    .line 120
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/usb/UsbResolverActivity;->mOtherProfileIntent:Landroid/content/Intent;

    const-string/jumbo v2, "device"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/usb/UsbResolverActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 123
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/usb/UsbResolverActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    if-eqz v1, :cond_5

    .line 124
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/usb/UsbResolverActivity;->mOtherProfileIntent:Landroid/content/Intent;

    const-string/jumbo v2, "accessory"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/usb/UsbResolverActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_3

    .line 137
    .restart local v4    # "title":Ljava/lang/CharSequence;
    .restart local v8    # "alwaysUse":Landroid/widget/CheckBox;
    :cond_b
    const v1, 0x910006e

    invoke-virtual {v8, v1}, Landroid/widget/CheckBox;->setText(I)V

    goto :goto_4
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDisconnectedReceiver;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDisconnectedReceiver;

    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/UsbResolverActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 147
    :cond_0
    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity;->onDestroy()V

    .line 143
    return-void
.end method

.method protected onTargetSelected(Lcom/android/internal/app/ResolverActivity$TargetInfo;Z)Z
    .locals 11
    .param p1, "target"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .param p2, "alwaysCheck"    # Z

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 152
    invoke-interface {p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 153
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v7, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mForwardResolveInfo:Landroid/content/pm/ResolveInfo;

    if-ne v3, v7, :cond_0

    .line 154
    iget-object v7, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mOtherProfileIntent:Landroid/content/Intent;

    .line 155
    iget-object v8, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mForwardResolveInfo:Landroid/content/pm/ResolveInfo;

    iget v8, v8, Landroid/content/pm/ResolveInfo;->targetUserId:I

    invoke-static {v8}, Landroid/os/UserHandleCompat;->of(I)Landroid/os/UserHandle;

    move-result-object v8

    .line 154
    invoke-virtual {p0, v7, v9, v8}, Lcom/android/systemui/usb/UsbResolverActivity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 156
    return v10

    .line 160
    :cond_0
    :try_start_0
    const-string/jumbo v7, "usb"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 161
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v4

    .line 162
    .local v4, "service":Landroid/hardware/usb/IUsbManager;
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 163
    .local v5, "uid":I
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    .line 165
    .local v6, "userId":I
    iget-object v7, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    if-eqz v7, :cond_3

    .line 167
    iget-object v7, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-interface {v4, v7, v5}, Landroid/hardware/usb/IUsbManager;->grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V

    .line 169
    if-eqz p2, :cond_2

    .line 170
    iget-object v7, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v7, v8, v6}, Landroid/hardware/usb/IUsbManager;->setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :cond_1
    :goto_0
    :try_start_1
    invoke-static {v6}, Landroid/os/UserHandleCompat;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {p1, p0, v8, v7}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->startAsUser(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/UserHandle;)Z
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 193
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v4    # "service":Landroid/hardware/usb/IUsbManager;
    .end local v5    # "uid":I
    .end local v6    # "userId":I
    :goto_1
    return v10

    .line 172
    .restart local v0    # "b":Landroid/os/IBinder;
    .restart local v4    # "service":Landroid/hardware/usb/IUsbManager;
    .restart local v5    # "uid":I
    .restart local v6    # "userId":I
    :cond_2
    :try_start_2
    iget-object v7, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    const/4 v8, 0x0

    invoke-interface {v4, v7, v8, v6}, Landroid/hardware/usb/IUsbManager;->setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 190
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v4    # "service":Landroid/hardware/usb/IUsbManager;
    .end local v5    # "uid":I
    .end local v6    # "userId":I
    :catch_0
    move-exception v2

    .line 191
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v7, "UsbResolverActivity"

    const-string/jumbo v8, "onIntentSelected failed"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 174
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v0    # "b":Landroid/os/IBinder;
    .restart local v4    # "service":Landroid/hardware/usb/IUsbManager;
    .restart local v5    # "uid":I
    .restart local v6    # "userId":I
    :cond_3
    :try_start_3
    iget-object v7, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    if-eqz v7, :cond_1

    .line 176
    iget-object v7, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-interface {v4, v7, v5}, Landroid/hardware/usb/IUsbManager;->grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V

    .line 178
    if-eqz p2, :cond_4

    .line 179
    iget-object v7, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v7, v8, v6}, Landroid/hardware/usb/IUsbManager;->setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;I)V

    goto :goto_0

    .line 181
    :cond_4
    iget-object v7, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    const/4 v8, 0x0

    invoke-interface {v4, v7, v8, v6}, Landroid/hardware/usb/IUsbManager;->setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;I)V

    goto :goto_0

    .line 187
    :catch_1
    move-exception v1

    .line 188
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v7, "UsbResolverActivity"

    const-string/jumbo v8, "startActivity failed"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method
