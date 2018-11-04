.class public Lcom/android/systemui/util/NotificationChannels;
.super Lcom/android/systemui/SystemUI;
.source "NotificationChannels.java"


# static fields
.field public static ALERTS:Ljava/lang/String;

.field public static BATTERY:Ljava/lang/String;

.field public static GENERAL:Ljava/lang/String;

.field public static LOCATION:Ljava/lang/String;

.field public static SCREENBUTTON:Ljava/lang/String;

.field public static SCREENSHOTS:Ljava/lang/String;

.field public static STORAGE:Ljava/lang/String;

.field public static TVPIP:Ljava/lang/String;

.field public static USB:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string/jumbo v0, "ALR"

    sput-object v0, Lcom/android/systemui/util/NotificationChannels;->ALERTS:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, "SCN"

    sput-object v0, Lcom/android/systemui/util/NotificationChannels;->SCREENSHOTS:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, "GEN"

    sput-object v0, Lcom/android/systemui/util/NotificationChannels;->GENERAL:Ljava/lang/String;

    .line 33
    const-string/jumbo v0, "DSK"

    sput-object v0, Lcom/android/systemui/util/NotificationChannels;->STORAGE:Ljava/lang/String;

    .line 34
    const-string/jumbo v0, "TPP"

    sput-object v0, Lcom/android/systemui/util/NotificationChannels;->TVPIP:Ljava/lang/String;

    .line 35
    const-string/jumbo v0, "LOC"

    sput-object v0, Lcom/android/systemui/util/NotificationChannels;->LOCATION:Ljava/lang/String;

    .line 36
    const-string/jumbo v0, "SCB"

    sput-object v0, Lcom/android/systemui/util/NotificationChannels;->SCREENBUTTON:Ljava/lang/String;

    .line 37
    const-string/jumbo v0, "USB"

    sput-object v0, Lcom/android/systemui/util/NotificationChannels;->USB:Ljava/lang/String;

    .line 38
    const-string/jumbo v0, "BAT"

    sput-object v0, Lcom/android/systemui/util/NotificationChannels;->BATTERY:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    return-void
.end method

.method static createAll(Landroid/content/Context;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x4

    const/4 v3, 0x3

    const/4 v9, 0x1

    const/4 v4, 0x2

    .line 43
    const-class v2, Landroid/app/NotificationManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 44
    .local v1, "nm":Landroid/app/NotificationManager;
    const/4 v2, 0x7

    new-array v5, v2, [Landroid/app/NotificationChannelCompat;

    .line 45
    new-instance v2, Landroid/app/NotificationChannelCompat;

    .line 46
    sget-object v6, Lcom/android/systemui/util/NotificationChannels;->ALERTS:Ljava/lang/String;

    .line 47
    const v7, 0x910030d

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 45
    invoke-direct {v2, v6, v7, v10}, Landroid/app/NotificationChannelCompat;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v6, 0x0

    aput-object v2, v5, v6

    .line 49
    new-instance v2, Landroid/app/NotificationChannelCompat;

    .line 50
    sget-object v6, Lcom/android/systemui/util/NotificationChannels;->SCREENSHOTS:Ljava/lang/String;

    .line 51
    const v7, 0x910030e

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 49
    invoke-direct {v2, v6, v7, v4}, Landroid/app/NotificationChannelCompat;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    aput-object v2, v5, v9

    .line 53
    new-instance v2, Landroid/app/NotificationChannelCompat;

    .line 54
    sget-object v6, Lcom/android/systemui/util/NotificationChannels;->GENERAL:Ljava/lang/String;

    .line 55
    const v7, 0x910030f

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 53
    invoke-direct {v2, v6, v7, v9}, Landroid/app/NotificationChannelCompat;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    aput-object v2, v5, v4

    .line 57
    new-instance v6, Landroid/app/NotificationChannelCompat;

    .line 58
    sget-object v7, Lcom/android/systemui/util/NotificationChannels;->STORAGE:Ljava/lang/String;

    .line 59
    const v2, 0x9100310

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 60
    invoke-static {p0}, Lcom/android/systemui/util/NotificationChannels;->isTv(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    .line 57
    :goto_0
    invoke-direct {v6, v7, v8, v2}, Landroid/app/NotificationChannelCompat;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    aput-object v6, v5, v3

    .line 63
    new-instance v2, Landroid/app/NotificationChannelCompat;

    .line 64
    sget-object v6, Lcom/android/systemui/util/NotificationChannels;->SCREENBUTTON:Ljava/lang/String;

    .line 65
    const v7, 0x9100311

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 63
    invoke-direct {v2, v6, v7, v4}, Landroid/app/NotificationChannelCompat;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    aput-object v2, v5, v10

    .line 67
    new-instance v2, Landroid/app/NotificationChannelCompat;

    .line 68
    sget-object v6, Lcom/android/systemui/util/NotificationChannels;->LOCATION:Ljava/lang/String;

    .line 69
    const v7, 0x910059a

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 67
    invoke-direct {v2, v6, v7, v4}, Landroid/app/NotificationChannelCompat;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    aput-object v2, v5, v11

    .line 71
    new-instance v2, Landroid/app/NotificationChannelCompat;

    .line 72
    sget-object v4, Lcom/android/systemui/util/NotificationChannels;->USB:Ljava/lang/String;

    .line 73
    const v6, 0x910059b

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 71
    invoke-direct {v2, v4, v6, v3}, Landroid/app/NotificationChannelCompat;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v3, 0x6

    aput-object v2, v5, v3

    .line 44
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/app/NotificationChannelCompat;->createNotificationChannels(Landroid/app/NotificationManager;Ljava/util/List;)V

    .line 77
    new-instance v0, Landroid/app/NotificationChannelCompat;

    .line 78
    sget-object v2, Lcom/android/systemui/util/NotificationChannels;->BATTERY:Ljava/lang/String;

    .line 79
    const v3, 0x910059c

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 77
    invoke-direct {v0, v2, v3, v10}, Landroid/app/NotificationChannelCompat;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 81
    .local v0, "batteryChannel":Landroid/app/NotificationChannelCompat;
    invoke-virtual {v0, v9}, Landroid/app/NotificationChannelCompat;->enableLights(Z)V

    .line 82
    invoke-static {v1, v0}, Landroid/app/NotificationChannelCompat;->createNotificationChannel(Landroid/app/NotificationManager;Landroid/app/NotificationChannelCompat;)V

    .line 84
    invoke-static {p0}, Lcom/android/systemui/util/NotificationChannels;->isTv(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    new-instance v2, Landroid/app/NotificationChannelCompat;

    .line 89
    sget-object v3, Lcom/android/systemui/util/NotificationChannels;->TVPIP:Ljava/lang/String;

    .line 90
    const v4, 0x9100345

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 88
    invoke-direct {v2, v3, v4, v11}, Landroid/app/NotificationChannelCompat;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-static {v1, v2}, Landroid/app/NotificationChannelCompat;->createNotificationChannel(Landroid/app/NotificationManager;Landroid/app/NotificationChannelCompat;)V

    .line 41
    :cond_0
    return-void

    .end local v0    # "batteryChannel":Landroid/app/NotificationChannelCompat;
    :cond_1
    move v2, v4

    .line 62
    goto :goto_0
.end method

.method private static isTv(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 102
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    const-string/jumbo v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public start()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/systemui/util/NotificationChannels;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/NotificationChannels;->createAll(Landroid/content/Context;)V

    .line 96
    return-void
.end method
