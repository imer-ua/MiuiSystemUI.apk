.class Lcom/android/systemui/statusbar/phone/StatusBar$33;
.super Landroid/database/ContentObserver;
.source "StatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/StatusBar;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 7183
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$33;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 12
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const v9, 0x9020317

    const/4 v8, 0x0

    .line 7187
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar$33;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get31(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "screen_buttons_state"

    .line 7188
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar$33;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget v7, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentUserId:I

    .line 7187
    invoke-static {v5, v6, v8, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x1

    .line 7190
    .local v3, "screenButtonDisabled":Z
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar$33;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 7191
    .local v2, "notificationManager":Landroid/app/NotificationManager;
    if-eqz v3, :cond_1

    .line 7192
    new-instance v1, Landroid/content/Intent;

    .line 7193
    const-string/jumbo v5, "com.miui.app.ExtraStatusBarManager.TRIGGER_TOGGLE_SCREEN_BUTTONS"

    .line 7192
    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7194
    .local v1, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar$33;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/systemui/util/NotificationChannels;->SCREENBUTTON:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/app/NotificationCompat;->newBuilder(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 7195
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 7194
    invoke-virtual {v5, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 7200
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar$33;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v6, v6, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const v7, 0x9100539

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 7194
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 7202
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar$33;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v6, v6, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const v7, 0x110900bd

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 7194
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 7203
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar$33;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v6, v6, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v6, v8, v1, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 7194
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 7205
    .local v0, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    .line 7206
    .local v4, "screenButtonNotification":Landroid/app/Notification;
    iget-object v5, v4, Landroid/app/Notification;->extraNotification:Landroid/app/MiuiNotification;

    const-string/jumbo v6, "android"

    invoke-virtual {v5, v6}, Landroid/app/MiuiNotification;->setTargetPkg(Ljava/lang/CharSequence;)V

    .line 7209
    new-instance v5, Landroid/os/UserHandle;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar$33;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget v6, v6, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentUserId:I

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    .line 7207
    invoke-virtual {v2, v11, v9, v4, v5}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 7185
    .end local v0    # "builder":Landroid/app/Notification$Builder;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v4    # "screenButtonNotification":Landroid/app/Notification;
    :goto_1
    return-void

    .line 7187
    .end local v2    # "notificationManager":Landroid/app/NotificationManager;
    .end local v3    # "screenButtonDisabled":Z
    :cond_0
    const/4 v3, 0x0

    .restart local v3    # "screenButtonDisabled":Z
    goto :goto_0

    .line 7211
    .restart local v2    # "notificationManager":Landroid/app/NotificationManager;
    :cond_1
    new-instance v5, Landroid/os/UserHandle;

    .line 7212
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar$33;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget v6, v6, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentUserId:I

    .line 7211
    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v11, v9, v5}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_1
.end method
