.class public Lcom/android/systemui/power/PowerUtils;
.super Ljava/lang/Object;
.source "PowerUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableExtremeSaveMode(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 44
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 45
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "EXTREME_POWER_SAVE_MODE_OPEN"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 46
    const-string/jumbo v2, "IS_NOTIFY"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 47
    const-string/jumbo v2, "SOURCE"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "content://com.miui.powercenter.powersaver"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 50
    const-string/jumbo v4, "changeExtremePowerMode"

    const/4 v5, 0x0

    .line 49
    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v1

    .line 53
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v2, "PowerUtils"

    const-string/jumbo v3, "enableExtremeSaveMode error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static enableSaveMode(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 33
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 34
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "POWER_SAVE_MODE_OPEN"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 35
    const-string/jumbo v2, "LOW_BATTERY_DIALOG"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 37
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "content://com.miui.powercenter.powersaver"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 38
    const-string/jumbo v4, "changePowerMode"

    const/4 v5, 0x0

    .line 37
    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method

.method public static hideLowBatteryNotification(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 126
    const-string/jumbo v1, "notification"

    .line 125
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 127
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v2, 0x0

    const v3, 0x910051c

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 124
    return-void
.end method

.method public static isExtremeSaveModeEnabable(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 131
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "EXTREME_POWER_MODE_ENABLE"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isSaveModeEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "POWER_SAVE_MODE_OPEN"

    const/4 v3, -0x2

    .line 58
    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static showLowBatteryNotification(Landroid/content/Context;I)V
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "batteryLevel"    # I

    .prologue
    .line 71
    new-instance v10, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 72
    .local v10, "builder":Landroid/app/Notification$Builder;
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.action.POWER_MANAGER"

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    .local v3, "powerCenterIntent":Landroid/content/Intent;
    const/16 v1, 0x9

    move/from16 v0, p1

    if-gt v0, v1, :cond_2

    .line 76
    const v15, 0x902020c

    .line 82
    .local v15, "resId":I
    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v1, v4

    const v2, 0x910051c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 83
    .local v14, "notifyTitle":Ljava/lang/String;
    const v1, 0x90202d0

    invoke-virtual {v10, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v14}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v16

    .line 85
    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 83
    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 86
    const/4 v2, 0x1

    .line 83
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 87
    const/4 v2, 0x1

    .line 83
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 88
    const/4 v2, 0x1

    .line 83
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 90
    sget-boolean v1, Lcom/android/systemui/Constants;->IS_INTERNATIONAL:Z

    if-nez v1, :cond_0

    .line 91
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v15}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 94
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/android/systemui/power/PowerUtils;->isExtremeSaveModeEnabable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static/range {p0 .. p0}, Lcom/android/systemui/power/PowerUtils;->isSaveModeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 109
    :cond_1
    const v1, 0x910051f

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 113
    :goto_1
    const-string/jumbo v1, "notification"

    .line 112
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/NotificationManager;

    .line 114
    .local v13, "notificationManager":Landroid/app/NotificationManager;
    sget-object v1, Lcom/android/systemui/util/NotificationChannels;->BATTERY:Ljava/lang/String;

    invoke-static {v10, v1}, Landroid/app/NotificationCompat;->setChannelId(Landroid/app/Notification$Builder;Ljava/lang/String;)V

    .line 115
    invoke-virtual {v10}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v12

    .line 116
    .local v12, "notification":Landroid/app/Notification;
    iget v1, v12, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v12, Landroid/app/Notification;->flags:I

    .line 117
    iget v1, v12, Landroid/app/Notification;->defaults:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v12, Landroid/app/Notification;->defaults:I

    .line 118
    const/4 v1, 0x0

    iput-object v1, v12, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 119
    iget-object v1, v12, Landroid/app/Notification;->extraNotification:Landroid/app/MiuiNotification;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/MiuiNotification;->setCustomizedIcon(Z)Landroid/app/MiuiNotification;

    .line 120
    iget-object v1, v12, Landroid/app/Notification;->extraNotification:Landroid/app/MiuiNotification;

    const-string/jumbo v2, "android"

    invoke-virtual {v1, v2}, Landroid/app/MiuiNotification;->setTargetPkg(Ljava/lang/CharSequence;)V

    .line 121
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v2, 0x0

    const v4, 0x910051c

    invoke-virtual {v13, v2, v4, v12, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 70
    return-void

    .line 79
    .end local v12    # "notification":Landroid/app/Notification;
    .end local v13    # "notificationManager":Landroid/app/NotificationManager;
    .end local v14    # "notifyTitle":Ljava/lang/String;
    .end local v15    # "resId":I
    :cond_2
    const v15, 0x902020b

    .restart local v15    # "resId":I
    goto/16 :goto_0

    .line 94
    .restart local v14    # "notifyTitle":Ljava/lang/String;
    :cond_3
    sget-boolean v1, Lcom/android/systemui/Constants;->IS_TABLET:Z

    if-nez v1, :cond_1

    .line 95
    const v1, 0x910051e

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 96
    .local v9, "actionText":Ljava/lang/String;
    new-instance v8, Landroid/content/Intent;

    const-class v1, Lcom/android/systemui/power/PowerReceiver;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 97
    .local v8, "actionIntent":Landroid/content/Intent;
    sget-object v1, Lcom/android/systemui/power/PowerReceiver;->ACTION_OPEN_SAVE_MODE:Ljava/lang/String;

    invoke-virtual {v8, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    new-instance v7, Landroid/app/Notification$Action;

    .line 99
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v8, v4, v1}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 98
    const/4 v2, 0x0

    invoke-direct {v7, v2, v9, v1}, Landroid/app/Notification$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 101
    .local v7, "action":Landroid/app/Notification$Action;
    iget v1, v7, Landroid/app/Notification$Action;->icon:I

    iget-object v2, v7, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    iget-object v4, v7, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v10, v1, v2, v4}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 102
    const v1, 0x910051d

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 104
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 105
    .local v11, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "miui.showAction"

    sget-boolean v1, Lcom/android/systemui/Constants;->IS_INTERNATIONAL:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v11, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 106
    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    goto/16 :goto_1

    .line 105
    :cond_4
    const/4 v1, 0x1

    goto :goto_2
.end method

.method public static trackLowBatteryDialog(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "content://com.miui.powercenter.powersaver"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v3, "showLowBatteryDialog"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method
