.class public Lcom/android/internal/statusbar/StatusBarServiceCompat;
.super Ljava/lang/Object;
.source "StatusBarServiceCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onNotificationActionClick(Lcom/android/internal/statusbar/IStatusBarService;Ljava/lang/String;ILcom/android/internal/statusbar/NotificationVisibility;)V
    .locals 0
    .param p0, "barService"    # Lcom/android/internal/statusbar/IStatusBarService;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "actionIndex"    # I
    .param p3, "nv"    # Lcom/android/internal/statusbar/NotificationVisibility;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 17
    invoke-interface {p0, p1, p2}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationActionClick(Ljava/lang/String;I)V

    .line 16
    return-void
.end method

.method public static onNotificationClear(Lcom/android/internal/statusbar/IStatusBarService;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/android/internal/statusbar/NotificationVisibility;)V
    .locals 0
    .param p0, "barService"    # Lcom/android/internal/statusbar/IStatusBarService;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "userId"    # I
    .param p5, "key"    # Ljava/lang/String;
    .param p6, "dismissalSurface"    # I
    .param p7, "nv"    # Lcom/android/internal/statusbar/NotificationVisibility;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 22
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationClear(Ljava/lang/String;Ljava/lang/String;II)V

    .line 21
    return-void
.end method

.method public static onNotificationClick(Lcom/android/internal/statusbar/IStatusBarService;Ljava/lang/String;Lcom/android/internal/statusbar/NotificationVisibility;)V
    .locals 0
    .param p0, "barService"    # Lcom/android/internal/statusbar/IStatusBarService;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "nv"    # Lcom/android/internal/statusbar/NotificationVisibility;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 12
    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationClick(Ljava/lang/String;)V

    .line 11
    return-void
.end method
