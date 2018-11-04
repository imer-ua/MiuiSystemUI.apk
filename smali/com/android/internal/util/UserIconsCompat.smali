.class public Lcom/android/internal/util/UserIconsCompat;
.super Ljava/lang/Object;
.source "UserIconsCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultUserIcon(Landroid/content/res/Resources;IZ)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "userId"    # I
    .param p2, "light"    # Z

    .prologue
    .line 12
    invoke-static {p1, p2}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
