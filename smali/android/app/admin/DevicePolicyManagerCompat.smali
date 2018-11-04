.class public Landroid/app/admin/DevicePolicyManagerCompat;
.super Ljava/lang/Object;
.source "DevicePolicyManagerCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceOwnerOrganizationName(Landroid/app/admin/DevicePolicyManager;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "devicePolicyManager"    # Landroid/app/admin/DevicePolicyManager;

    .prologue
    .line 136
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getOrganizationNameForUser(Landroid/app/admin/DevicePolicyManager;I)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "dpm"    # Landroid/app/admin/DevicePolicyManager;
    .param p1, "userHandle"    # I

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->getOrganizationNameForUser(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getRequiredStrongAuthTimeout(Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;I)J
    .locals 2
    .param p0, "dpm"    # Landroid/app/admin/DevicePolicyManager;
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .prologue
    .line 177
    invoke-virtual {p0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->getRequiredStrongAuthTimeout(Landroid/content/ComponentName;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static isDeviceManaged(Landroid/app/admin/DevicePolicyManager;)Z
    .locals 1
    .param p0, "dpm"    # Landroid/app/admin/DevicePolicyManager;

    .prologue
    .line 152
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->isDeviceManaged()Z

    move-result v0

    return v0
.end method

.method public static isNetworkLoggingEnabled(Landroid/app/admin/DevicePolicyManager;)Z
    .locals 1
    .param p0, "devicePolicyManager"    # Landroid/app/admin/DevicePolicyManager;

    .prologue
    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public static reportFailedFingerprintAttempt(Landroid/app/admin/DevicePolicyManager;I)V
    .locals 0
    .param p0, "dpm"    # Landroid/app/admin/DevicePolicyManager;
    .param p1, "userHandle"    # I

    .prologue
    .line 160
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->reportFailedFingerprintAttempt(I)V

    .line 159
    return-void
.end method

.method public static reportKeyguardDismissed(Landroid/app/admin/DevicePolicyManager;I)V
    .locals 0
    .param p0, "dpm"    # Landroid/app/admin/DevicePolicyManager;
    .param p1, "userHandle"    # I

    .prologue
    .line 168
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->reportKeyguardDismissed(I)V

    .line 167
    return-void
.end method

.method public static reportKeyguardSecured(Landroid/app/admin/DevicePolicyManager;I)V
    .locals 0
    .param p0, "dpm"    # Landroid/app/admin/DevicePolicyManager;
    .param p1, "userHandle"    # I

    .prologue
    .line 172
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->reportKeyguardSecured(I)V

    .line 171
    return-void
.end method

.method public static reportSuccessfulFingerprintAttempt(Landroid/app/admin/DevicePolicyManager;I)V
    .locals 0
    .param p0, "dpm"    # Landroid/app/admin/DevicePolicyManager;
    .param p1, "userHandle"    # I

    .prologue
    .line 164
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->reportSuccessfulFingerprintAttempt(I)V

    .line 163
    return-void
.end method
