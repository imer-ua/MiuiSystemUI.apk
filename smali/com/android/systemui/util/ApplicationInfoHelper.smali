.class public final Lcom/android/systemui/util/ApplicationInfoHelper;
.super Ljava/lang/Object;
.source "ApplicationInfoHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static postEphemeralNotificationIfNeeded(Landroid/content/Context;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Landroid/app/NotificationManager;ILandroid/util/ArraySet;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p4, "noMan"    # Landroid/app/NotificationManager;
    .param p5, "taskId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/pm/ApplicationInfo;",
            "Landroid/app/NotificationManager;",
            "I",
            "Landroid/util/ArraySet",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 14
    .local p6, "outSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    return-void
.end method
