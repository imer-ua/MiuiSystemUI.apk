.class public Lcom/android/keyguard/KeyguardCompatibilityHelperForO;
.super Ljava/lang/Object;
.source "KeyguardCompatibilityHelperForO.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;ZLjava/lang/String;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "icon"    # I
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "autoCancel"    # Z
    .param p6, "targetPkg"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 25
    const-string/jumbo v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    .line 27
    .local v6, "manager":Landroid/app/NotificationManager;
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 31
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v0, p0

    move-object v2, p4

    move v3, v1

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 27
    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    .line 34
    .local v7, "notification":Landroid/app/Notification;
    iget-object v0, v7, Landroid/app/Notification;->extraNotification:Landroid/app/MiuiNotification;

    invoke-virtual {v0, p6}, Landroid/app/MiuiNotification;->setTargetPkg(Ljava/lang/CharSequence;)V

    .line 35
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6, v4, p3, v7, v0}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 24
    return-void
.end method

.method public static setFlag(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0
    .param p0, "lp"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 49
    return-void
.end method

.method public static setRoundedCornersOverlayFlag(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0
    .param p0, "lp"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 52
    return-void
.end method

.method public static setScreenEffect(II)V
    .locals 0
    .param p0, "mode"    # I
    .param p1, "value"    # I

    .prologue
    .line 46
    return-void
.end method
