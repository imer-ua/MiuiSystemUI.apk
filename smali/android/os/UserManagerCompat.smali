.class public Landroid/os/UserManagerCompat;
.super Ljava/lang/Object;
.source "UserManagerCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canSwitchUsers(Landroid/os/UserManager;)Z
    .locals 1
    .param p0, "um"    # Landroid/os/UserManager;

    .prologue
    .line 45
    invoke-virtual {p0}, Landroid/os/UserManager;->canSwitchUsers()Z

    move-result v0

    return v0
.end method

.method public static getEnabledProfileIds(Landroid/os/UserManager;I)[I
    .locals 1
    .param p0, "um"    # Landroid/os/UserManager;
    .param p1, "userId"    # I

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object v0

    return-object v0
.end method

.method public static getProfileIdsWithDisabled(Landroid/os/UserManager;I)[I
    .locals 1
    .param p0, "um"    # Landroid/os/UserManager;
    .param p1, "userId"    # I

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    move-result-object v0

    return-object v0
.end method

.method public static getUserAccount(Landroid/os/UserManager;I)Ljava/lang/String;
    .locals 1
    .param p0, "um"    # Landroid/os/UserManager;
    .param p1, "userHandle"    # I

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUserAccount(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasBaseUserRestriction(Landroid/os/UserManager;Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 1
    .param p0, "um"    # Landroid/os/UserManager;
    .param p1, "restrictionKey"    # Ljava/lang/String;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 49
    invoke-virtual {p0, p1, p2}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public static isManagedProfile(Landroid/os/UserManager;I)Z
    .locals 1
    .param p0, "um"    # Landroid/os/UserManager;
    .param p1, "userId"    # I

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v0

    return v0
.end method

.method public static isSplitSystemUser()Z
    .locals 2

    .prologue
    .line 33
    const-string/jumbo v0, "ro.fw.system_user_split"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isUserUnlocked(Landroid/os/UserManager;)Z
    .locals 1
    .param p0, "um"    # Landroid/os/UserManager;

    .prologue
    .line 21
    invoke-virtual {p0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v0

    return v0
.end method

.method public static isUserUnlocked(Landroid/os/UserManager;I)Z
    .locals 1
    .param p0, "um"    # Landroid/os/UserManager;
    .param p1, "userId"    # I

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v0

    return v0
.end method
