.class public Lcom/android/systemui/miui/statusbar/phone/applock/AppLockHelper;
.super Ljava/lang/Object;
.source "AppLockHelper.java"


# static fields
.field private static final DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    sget-boolean v0, Lcom/android/systemui/Constants;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/miui/statusbar/phone/applock/AppLockHelper;->DEBUG:Z

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkAccessControlPassAsUser(Lmiui/security/SecurityManager;Ljava/lang/String;I)Z
    .locals 4
    .param p0, "sm"    # Lmiui/security/SecurityManager;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 84
    invoke-virtual {p0, p1, p2}, Lmiui/security/SecurityManager;->checkAccessControlPassAsUser(Ljava/lang/String;I)Z

    move-result v0

    .line 85
    .local v0, "isMasked":Z
    sget-boolean v1, Lcom/android/systemui/miui/statusbar/phone/applock/AppLockHelper;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 86
    const-string/jumbo v1, "AppLockHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkAccessControlPassAsUser() isMasked="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_0
    return v0
.end method

.method private static getApplicationAccessControlEnabledAsUser(Lmiui/security/SecurityManager;Ljava/lang/String;I)Z
    .locals 4
    .param p0, "sm"    # Lmiui/security/SecurityManager;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 95
    invoke-virtual {p0, p1, p2}, Lmiui/security/SecurityManager;->getApplicationAccessControlEnabledAsUser(Ljava/lang/String;I)Z

    move-result v0

    .line 96
    .local v0, "lockOn":Z
    sget-boolean v1, Lcom/android/systemui/miui/statusbar/phone/applock/AppLockHelper;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 97
    const-string/jumbo v1, "AppLockHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getApplicationAccessControlEnabledAsUser() lockOn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_0
    return v0
.end method

.method private static getApplicationMaskNotificationEnabledAsUser(Lmiui/security/SecurityManager;Ljava/lang/String;I)Z
    .locals 4
    .param p0, "sm"    # Lmiui/security/SecurityManager;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 73
    invoke-virtual {p0, p1, p2}, Lmiui/security/SecurityManager;->getApplicationMaskNotificationEnabledAsUser(Ljava/lang/String;I)Z

    move-result v0

    .line 74
    .local v0, "isMasked":Z
    sget-boolean v1, Lcom/android/systemui/miui/statusbar/phone/applock/AppLockHelper;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 75
    const-string/jumbo v1, "AppLockHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getApplicationMaskNotificationEnabledAsUser() lockOn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_0
    return v0
.end method

.method public static getCurrentUserIdIfNeeded(II)I
    .locals 3
    .param p0, "originalUserId"    # I
    .param p1, "currentUserId"    # I

    .prologue
    .line 40
    sget-boolean v0, Lcom/android/systemui/miui/statusbar/phone/applock/AppLockHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 41
    const-string/jumbo v0, "AppLockHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getCurrentUserIdIfNeeded() originalUserId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; currentUserId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_0
    if-gez p1, :cond_1

    .line 45
    const-string/jumbo v0, "AppLockHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getCurrentUserIdIfNeeded() error currentUserId < 0: originalUserId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; currentUserId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const/4 p1, 0x0

    .line 48
    :cond_1
    if-gez p0, :cond_2

    .line 49
    return p1

    .line 51
    :cond_2
    return p0
.end method

.method private static getUserIdIgnoreXspace(I)I
    .locals 1
    .param p0, "userId"    # I

    .prologue
    .line 106
    invoke-static {p0}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    const/4 v0, 0x0

    return v0

    .line 109
    :cond_0
    return p0
.end method

.method private static isACLockEnabledAsUser(Landroid/content/ContentResolver;I)Z
    .locals 5
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "userId"    # I

    .prologue
    .line 59
    invoke-static {p1}, Lcom/android/systemui/miui/statusbar/phone/applock/AppLockHelper;->getUserIdIgnoreXspace(I)I

    move-result v1

    .line 61
    .local v1, "userIdIgnoreXspace":I
    const-string/jumbo v2, "access_control_lock_enabled"

    const/4 v3, -0x1

    invoke-static {p0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 62
    const/4 v3, 0x1

    .line 61
    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    .line 63
    .local v0, "lockOn":Z
    :goto_0
    sget-boolean v2, Lcom/android/systemui/miui/statusbar/phone/applock/AppLockHelper;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 64
    const-string/jumbo v2, "AppLockHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isACLockEnabledAsUser() lockOn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_0
    return v0

    .line 61
    .end local v0    # "lockOn":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "lockOn":Z
    goto :goto_0
.end method

.method public static shouldShowPublicNotificationByAppLock(Landroid/content/Context;Lmiui/security/SecurityManager;Ljava/lang/String;I)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sm"    # Lmiui/security/SecurityManager;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p3}, Lcom/android/systemui/miui/statusbar/phone/applock/AppLockHelper;->isACLockEnabledAsUser(Landroid/content/ContentResolver;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 27
    invoke-static {p1, p2, p3}, Lcom/android/systemui/miui/statusbar/phone/applock/AppLockHelper;->getApplicationAccessControlEnabledAsUser(Lmiui/security/SecurityManager;Ljava/lang/String;I)Z

    move-result v1

    .line 26
    if-eqz v1, :cond_2

    .line 28
    invoke-static {p1, p2, p3}, Lcom/android/systemui/miui/statusbar/phone/applock/AppLockHelper;->getApplicationMaskNotificationEnabledAsUser(Lmiui/security/SecurityManager;Ljava/lang/String;I)Z

    move-result v1

    .line 26
    if-eqz v1, :cond_2

    .line 29
    invoke-static {p1, p2, p3}, Lcom/android/systemui/miui/statusbar/phone/applock/AppLockHelper;->checkAccessControlPassAsUser(Lmiui/security/SecurityManager;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 30
    .local v0, "lockOn":Z
    :goto_0
    sget-boolean v1, Lcom/android/systemui/miui/statusbar/phone/applock/AppLockHelper;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 31
    const-string/jumbo v1, "AppLockHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "shouldShowPublicNotificationByAppLock() lockOn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_0
    return v0

    .line 29
    .end local v0    # "lockOn":Z
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "lockOn":Z
    goto :goto_0

    .line 26
    .end local v0    # "lockOn":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "lockOn":Z
    goto :goto_0
.end method
