.class public Landroid/content/pm/ShortcutManagerCompat;
.super Ljava/lang/Object;
.source "ShortcutManagerCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onApplicationActive(Landroid/content/pm/ShortcutManager;Ljava/lang/String;I)V
    .locals 0
    .param p0, "shortcutManager"    # Landroid/content/pm/ShortcutManager;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 8
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/ShortcutManager;->onApplicationActive(Ljava/lang/String;I)V

    .line 7
    return-void
.end method
