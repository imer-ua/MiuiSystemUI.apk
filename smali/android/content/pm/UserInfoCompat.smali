.class public Landroid/content/pm/UserInfoCompat;
.super Ljava/lang/Object;
.source "UserInfoCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isQuietModeEnabled(Landroid/content/pm/UserInfo;)Z
    .locals 1
    .param p0, "ui"    # Landroid/content/pm/UserInfo;

    .prologue
    .line 11
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result v0

    return v0
.end method

.method public static supportsSwitchToByUser(Landroid/content/pm/UserInfo;)Z
    .locals 1
    .param p0, "ui"    # Landroid/content/pm/UserInfo;

    .prologue
    .line 15
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    move-result v0

    return v0
.end method
