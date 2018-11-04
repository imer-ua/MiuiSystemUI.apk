.class public Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;
.super Ljava/lang/Object;
.source "MediaNotificationProcessor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static processNotification(Landroid/app/Notification;Landroid/app/Notification$Builder;)V
    .locals 2
    .param p0, "notification"    # Landroid/app/Notification;
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    .prologue
    .line 26
    invoke-virtual {p0}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 27
    .local v0, "largeIcon":Landroid/graphics/drawable/Icon;
    if-eqz v0, :cond_0

    .line 30
    const/4 v1, 0x1

    invoke-static {p1, v1}, Landroid/app/NotificationCompat;->setRebuildStyledRemoteViews(Landroid/app/Notification$Builder;Z)V

    .line 25
    :cond_0
    return-void
.end method
