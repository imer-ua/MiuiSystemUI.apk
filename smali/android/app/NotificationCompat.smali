.class public Landroid/app/NotificationCompat;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createContentView(Landroid/app/Notification$Builder;ZZ)Landroid/widget/RemoteViews;
    .locals 1
    .param p0, "builder"    # Landroid/app/Notification$Builder;
    .param p1, "isLowPriority"    # Z
    .param p2, "useLarge"    # Z

    .prologue
    .line 92
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->createContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public static createHeadsUpContentView(Landroid/app/Notification$Builder;Z)Landroid/widget/RemoteViews;
    .locals 1
    .param p0, "builder"    # Landroid/app/Notification$Builder;
    .param p1, "usesIncreasedHeadsUpHeight"    # Z

    .prologue
    .line 87
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->createHeadsUpContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public static getChannelId(Landroid/app/Notification;)Ljava/lang/String;
    .locals 1
    .param p0, "notification"    # Landroid/app/Notification;

    .prologue
    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getNotificationStyle(Landroid/app/Notification;)Ljava/lang/Class;
    .locals 3
    .param p0, "notification"    # Landroid/app/Notification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Notification;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Notification$Style;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.template"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "templateClass":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 48
    invoke-static {v0}, Landroid/app/NotificationCompat;->getNotificationStyleClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    return-object v1

    .line 50
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getNotificationStyleClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 5
    .param p0, "templateClass"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Notification$Style;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 54
    const/4 v3, 0x7

    new-array v0, v3, [Ljava/lang/Class;

    .line 55
    const-class v3, Landroid/app/Notification$BigTextStyle;

    aput-object v3, v0, v2

    const-class v3, Landroid/app/Notification$BigPictureStyle;

    const/4 v4, 0x1

    aput-object v3, v0, v4

    const-class v3, Landroid/app/Notification$InboxStyle;

    const/4 v4, 0x2

    aput-object v3, v0, v4

    const-class v3, Landroid/app/Notification$MediaStyle;

    const/4 v4, 0x3

    aput-object v3, v0, v4

    .line 56
    const-class v3, Landroid/app/Notification$DecoratedCustomViewStyle;

    const/4 v4, 0x4

    aput-object v3, v0, v4

    const-class v3, Landroid/app/Notification$DecoratedMediaCustomViewStyle;

    const/4 v4, 0x5

    aput-object v3, v0, v4

    .line 57
    const-class v3, Landroid/app/Notification$MessagingStyle;

    const/4 v4, 0x6

    aput-object v3, v0, v4

    .line 58
    .local v0, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<+Landroid/app/Notification$Style;>;"
    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 59
    .local v1, "innerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Notification$Style;>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 60
    return-object v1

    .line 58
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 63
    .end local v1    # "innerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Notification$Style;>;"
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public static isColorized(Landroid/app/Notification;)Z
    .locals 1
    .param p0, "notification"    # Landroid/app/Notification;

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public static isMediaNotification(Landroid/app/Notification;)Z
    .locals 3
    .param p0, "notification"    # Landroid/app/Notification;

    .prologue
    const/4 v2, 0x1

    .line 32
    invoke-static {p0}, Landroid/app/NotificationCompat;->getNotificationStyle(Landroid/app/Notification;)Ljava/lang/Class;

    move-result-object v0

    .line 33
    .local v0, "style":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Notification$Style;>;"
    const-class v1, Landroid/app/Notification$MediaStyle;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    return v2

    .line 35
    :cond_0
    const-class v1, Landroid/app/Notification$DecoratedMediaCustomViewStyle;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 36
    return v2

    .line 38
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public static loadHeaderAppName(Landroid/app/Notification$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "b"    # Landroid/app/Notification$Builder;

    .prologue
    .line 147
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->loadHeaderAppName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static makeAmbientNotification(Landroid/app/Notification$Builder;Z)Landroid/widget/RemoteViews;
    .locals 1
    .param p0, "builder"    # Landroid/app/Notification$Builder;
    .param p1, "redactAmbient"    # Z

    .prologue
    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public static makeHeaderExpanded(Landroid/widget/RemoteViews;)V
    .locals 3
    .param p0, "result"    # Landroid/widget/RemoteViews;

    .prologue
    .line 119
    if-eqz p0, :cond_0

    .line 120
    const-string/jumbo v0, "setExpanded"

    const v1, 0x10203ca

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 118
    :cond_0
    return-void
.end method

.method public static makeLowPriorityContentView(Landroid/app/Notification$Builder;Z)Landroid/widget/RemoteViews;
    .locals 4
    .param p0, "builder"    # Landroid/app/Notification$Builder;
    .param p1, "useRegularSubtext"    # Z

    .prologue
    .line 101
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "android.subText"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 103
    .local v1, "summary":Ljava/lang/CharSequence;
    const/4 v2, 0x0

    invoke-static {p0, v2}, Landroid/app/NotificationCompat;->makeNotificationHeader(Landroid/app/Notification$Builder;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 104
    .local v0, "header":Landroid/widget/RemoteViews;
    if-eqz v1, :cond_0

    .line 105
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "android.subText"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 109
    :goto_0
    return-object v0

    .line 107
    :cond_0
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "android.subText"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static makeNotificationHeader(Landroid/app/Notification$Builder;Z)Landroid/widget/RemoteViews;
    .locals 1
    .param p0, "builder"    # Landroid/app/Notification$Builder;
    .param p1, "ambient"    # Z

    .prologue
    .line 96
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->makeNotificationHeader()Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "channelId"    # Ljava/lang/String;

    .prologue
    .line 75
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "n"    # Landroid/app/Notification;

    .prologue
    .line 139
    invoke-static {p0, p1}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static setBackgroundColorHint(Landroid/app/Notification$Builder;I)V
    .locals 0
    .param p0, "builder"    # Landroid/app/Notification$Builder;
    .param p1, "backgroundColor"    # I

    .prologue
    .line 115
    return-void
.end method

.method public static setChannelId(Landroid/app/Notification$Builder;Ljava/lang/String;)V
    .locals 0
    .param p0, "builder"    # Landroid/app/Notification$Builder;
    .param p1, "channelId"    # Ljava/lang/String;

    .prologue
    .line 150
    return-void
.end method

.method public static setRebuildStyledRemoteViews(Landroid/app/Notification$Builder;Z)V
    .locals 0
    .param p0, "builder"    # Landroid/app/Notification$Builder;
    .param p1, "rebuild"    # Z

    .prologue
    .line 112
    return-void
.end method

.method public static setRemoteInputHistory(Landroid/app/Notification$Builder;[Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 1
    .param p0, "b"    # Landroid/app/Notification$Builder;
    .param p1, "text"    # [Ljava/lang/CharSequence;

    .prologue
    .line 143
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setRemoteInputHistory([Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static showsChronometer(Landroid/app/Notification;)Z
    .locals 4
    .param p0, "notification"    # Landroid/app/Notification;

    .prologue
    .line 135
    iget-wide v0, p0, Landroid/app/Notification;->when:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.showChronometer"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static showsTime(Landroid/app/Notification;)Z
    .locals 4
    .param p0, "notification"    # Landroid/app/Notification;

    .prologue
    .line 131
    iget-wide v0, p0, Landroid/app/Notification;->when:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.showWhen"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static snoozeNotification(Landroid/service/notification/NotificationListenerService;Ljava/lang/String;J)V
    .locals 0
    .param p0, "service"    # Landroid/service/notification/NotificationListenerService;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "duration"    # J

    .prologue
    .line 127
    return-void
.end method

.method public static snoozeNotification(Landroid/service/notification/NotificationListenerService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "service"    # Landroid/service/notification/NotificationListenerService;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 124
    return-void
.end method

.method public static suppressAlertingDueToGrouping(Landroid/app/Notification;)Z
    .locals 1
    .param p0, "notification"    # Landroid/app/Notification;

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method
