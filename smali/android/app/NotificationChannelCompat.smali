.class public Landroid/app/NotificationChannelCompat;
.super Ljava/lang/Object;
.source "NotificationChannelCompat.java"


# instance fields
.field private mChannelId:Ljava/lang/String;

.field private mChannelName:Ljava/lang/CharSequence;

.field private mImportance:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/CharSequence;
    .param p3, "importance"    # I

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Landroid/app/NotificationChannelCompat;->mChannelId:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Landroid/app/NotificationChannelCompat;->mChannelName:Ljava/lang/CharSequence;

    .line 21
    iput p3, p0, Landroid/app/NotificationChannelCompat;->mImportance:I

    .line 18
    return-void
.end method

.method public static createNotificationChannel(Landroid/app/NotificationManager;Landroid/app/NotificationChannelCompat;)V
    .locals 0
    .param p0, "nm"    # Landroid/app/NotificationManager;
    .param p1, "channel"    # Landroid/app/NotificationChannelCompat;

    .prologue
    .line 46
    return-void
.end method

.method public static createNotificationChannels(Landroid/app/NotificationManager;Ljava/util/List;)V
    .locals 0
    .param p0, "nm"    # Landroid/app/NotificationManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/NotificationManager;",
            "Ljava/util/List",
            "<",
            "Landroid/app/NotificationChannelCompat;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "channels":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannelCompat;>;"
    return-void
.end method

.method public static getChannel(Landroid/service/notification/NotificationListenerService$Ranking;)Landroid/app/NotificationChannelCompat;
    .locals 4
    .param p0, "ranking"    # Landroid/service/notification/NotificationListenerService$Ranking;

    .prologue
    .line 54
    new-instance v0, Landroid/app/NotificationChannelCompat;

    const-string/jumbo v1, "miscellaneous"

    const-string/jumbo v2, "Default"

    const/16 v3, -0x3e8

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannelCompat;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    return-object v0
.end method

.method public static getGroupName(Landroid/app/NotificationChannelCompat;Landroid/app/INotificationManager;Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "channel"    # Landroid/app/NotificationChannelCompat;
    .param p1, "notificationManager"    # Landroid/app/INotificationManager;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "appUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getNumNotificationChannelsForPackage(Landroid/app/INotificationManager;Ljava/lang/String;IZ)I
    .locals 1
    .param p0, "notificationManager"    # Landroid/app/INotificationManager;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "appUid"    # I
    .param p3, "includeDeleted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 60
    const/4 v0, 0x1

    return v0
.end method

.method public static saveImportance(Landroid/app/NotificationChannelCompat;ILandroid/app/INotificationManager;Ljava/lang/String;I)V
    .locals 0
    .param p0, "channel"    # Landroid/app/NotificationChannelCompat;
    .param p1, "selectedImportance"    # I
    .param p2, "notificationManager"    # Landroid/app/INotificationManager;
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "appUid"    # I

    .prologue
    .line 69
    return-void
.end method


# virtual methods
.method public enableLights(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 43
    return-void
.end method

.method public enableVibration(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 40
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Landroid/app/NotificationChannelCompat;->mChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public getImportance()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Landroid/app/NotificationChannelCompat;->mImportance:I

    return v0
.end method

.method public getName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Landroid/app/NotificationChannelCompat;->mChannelName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 74
    const-string/jumbo v0, "miscellaneous"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
