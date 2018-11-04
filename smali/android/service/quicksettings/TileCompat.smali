.class public Landroid/service/quicksettings/TileCompat;
.super Ljava/lang/Object;
.source "TileCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newTile(Landroid/content/ComponentName;)Landroid/service/quicksettings/Tile;
    .locals 1
    .param p0, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 10
    new-instance v0, Landroid/service/quicksettings/Tile;

    invoke-direct {v0}, Landroid/service/quicksettings/Tile;-><init>()V

    return-object v0
.end method
