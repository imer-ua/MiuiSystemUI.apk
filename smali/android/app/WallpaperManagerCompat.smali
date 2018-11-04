.class public Landroid/app/WallpaperManagerCompat;
.super Ljava/lang/Object;
.source "WallpaperManagerCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWallpaperFile(Landroid/app/WallpaperManager;II)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .param p0, "wm"    # Landroid/app/WallpaperManager;
    .param p1, "which"    # I
    .param p2, "userId"    # I

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2}, Landroid/app/WallpaperManager;->getWallpaperFile(II)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method
