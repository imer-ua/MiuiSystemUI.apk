.class public Landroid/media/session/MediaSessionLegacyHelperCompat;
.super Ljava/lang/Object;
.source "MediaSessionLegacyHelperCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendVolumeKeyEvent(Landroid/content/Context;Landroid/view/KeyEvent;IZ)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "stream"    # I
    .param p3, "musicOnly"    # Z

    .prologue
    .line 11
    invoke-static {p0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 10
    return-void
.end method
