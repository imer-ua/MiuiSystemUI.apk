.class public Lcom/android/systemui/qs/tiles/WifiTileHelper;
.super Ljava/lang/Object;
.source "WifiTileHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static filterUnreachableAPs([Lcom/android/settingslib/wifi/AccessPoint;)[Lcom/android/settingslib/wifi/AccessPoint;
    .locals 0
    .param p0, "accessPoints"    # [Lcom/android/settingslib/wifi/AccessPoint;

    .prologue
    .line 11
    return-object p0
.end method
