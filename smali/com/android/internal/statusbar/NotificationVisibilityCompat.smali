.class public Lcom/android/internal/statusbar/NotificationVisibilityCompat;
.super Ljava/lang/Object;
.source "NotificationVisibilityCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtain(Ljava/lang/String;IIZ)Lcom/android/internal/statusbar/NotificationVisibility;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "rank"    # I
    .param p2, "count"    # I
    .param p3, "visible"    # Z

    .prologue
    .line 9
    invoke-static {p0, p1, p3}, Lcom/android/internal/statusbar/NotificationVisibility;->obtain(Ljava/lang/String;IZ)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v0

    return-object v0
.end method
