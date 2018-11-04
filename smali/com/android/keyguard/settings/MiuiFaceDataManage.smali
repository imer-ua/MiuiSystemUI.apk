.class public Lcom/android/keyguard/settings/MiuiFaceDataManage;
.super Lmiui/preference/PreferenceActivity;
.source "MiuiFaceDataManage.java"


# instance fields
.field private mConfirmLockLaunched:Z

.field private mDeleteFaceData:Landroid/preference/Preference;

.field private mFaceDataApplyUnlockScreen:Landroid/preference/CheckBoxPreference;

.field private mFaceUnlockByNotificationPreference:Landroid/preference/CheckBoxPreference;

.field private mHasFaceData:Z

.field private mIsKeyguardPasswordSecured:Z

.field private mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

.field private mLockPatternUtilsWrapper:Lcom/android/keyguard/LockPatternUtilsWrapper;

.field private mNeedSkipConfirmPassword:Z

.field private mValidFaceData:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    .line 52
    iput-boolean v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataManage;->mNeedSkipConfirmPassword:Z

    .line 53
    iput-boolean v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataManage;->mConfirmLockLaunched:Z

    .line 35
    return-void
.end method

.method private handleSecurityLockToggle()V
    .locals 3

    .prologue
    .line 139
    new-instance v0, Lcom/android/keyguard/settings/MiuiFaceDataManage$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/settings/MiuiFaceDataManage$1;-><init>(Lcom/android/keyguard/settings/MiuiFaceDataManage;)V

    .line 153
    .local v0, "onClickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 154
    const v2, 0x1010355

    .line 153
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 155
    const v2, 0x9100418

    .line 153
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 156
    const v2, 0x9100419

    .line 153
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 157
    const v2, 0x104000a

    .line 153
    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 158
    const/high16 v2, 0x1040000

    .line 153
    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 138
    return-void
.end method

.method private isAvailableFaceData()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataManage;->mHasFaceData:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataManage;->mValidFaceData:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 108
    invoke-super {p0, p1, p2, p3}, Lmiui/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 109
    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_0

    .line 110
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/android/keyguard/settings/MiuiFaceDataManage;->finish()V

    .line 107
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 57
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const/high16 v2, 0x9090000

    invoke-virtual {p0, v2}, Lcom/android/keyguard/settings/MiuiFaceDataManage;->addPreferencesFromResource(I)V

    .line 60
    new-instance v2, Landroid/security/MiuiLockPatternUtils;

    invoke-direct {v2, p0}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/keyguard/settings/MiuiFaceDataManage;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    .line 61
    new-instance v2, Lcom/android/keyguard/LockPatternUtilsWrapper;

    iget-object v5, p0, Lcom/android/keyguard/settings/MiuiFaceDataManage;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    invoke-direct {v2, v5}, Lcom/android/keyguard/LockPatternUtilsWrapper;-><init>(Lcom/android/internal/widget/LockPatternUtils;)V

    iput-object v2, p0, Lcom/android/keyguard/settings/MiuiFaceDataManage;->mLockPatternUtilsWrapper:Lcom/android/keyguard/LockPatternUtilsWrapper;

    .line 62
    invoke-virtual {p0}, Lcom/android/keyguard/settings/MiuiFaceDataManage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "face_unlock_has_feature"

    .line 63
    invoke-static {}, Lcom/android/keyguard/LockPatternUtilsWrapper;->getCurrentUser()I

    move-result v6

    .line 62
    invoke-static {v2, v5, v4, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v3, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/keyguard/settings/MiuiFaceDataManage;->mHasFaceData:Z

    .line 64
    invoke-virtual {p0}, Lcom/android/keyguard/settings/MiuiFaceDataManage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "face_unlock_valid_feature"

    .line 65
    invoke-static {}, Lcom/android/keyguard/LockPatternUtilsWrapper;->getCurrentUser()I

    move-result v6

    .line 64
    invoke-static {v2, v5, v3, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v3, :cond_3

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/android/keyguard/settings/MiuiFaceDataManage;->mValidFaceData:Z

    .line 66
    iget-object v2, p0, Lcom/android/keyguard/settings/MiuiFaceDataManage;->mLockPatternUtilsWrapper:Lcom/android/keyguard/LockPatternUtilsWrapper;

    invoke-virtual {v2}, Lcom/android/keyguard/LockPatternUtilsWrapper;->getActivePasswordQuality()I

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/android/keyguard/settings/MiuiFaceDataManage;->mIsKeyguardPasswordSecured:Z

    .line 67
    const-string/jumbo v2, "delete_face_data_recoginition"

    invoke-virtual {p0, v2}, Lcom/android/keyguard/settings/MiuiFaceDataManage;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/settings/MiuiFaceDataManage;->mDeleteFaceData:Landroid/preference/Preference;

    .line 68
    const-string/jumbo v2, "apply_face_data_lock"

    invoke-virtual {p0, v2}, Lcom/android/keyguard/settings/MiuiFaceDataManage;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/keyguard/settings/MiuiFaceDataManage;->mFaceDataApplyUnlockScreen:Landroid/preference/CheckBoxPreference;

    .line 69
    iget-object v5, p0, Lcom/android/keyguard/settings/MiuiFaceDataManage;->mFaceDataApplyUnlockScreen:Landroid/preference/CheckBoxPreference;

    .line 70
    invoke-virtual {p0}, Lcom/android/keyguard/settings/MiuiFaceDataManage;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 71
    const-string/jumbo v6, "face_unlcok_apply_for_lock"

    invoke-static {}, Lcom/android/keyguard/LockPatternUtilsWrapper;->getCurrentUser()I

    move-result v7

    .line 69
    invoke-static {v2, v6, v3, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v3, :cond_5

    move v2, v3

    :goto_3
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 72
    const-string/jumbo v2, "face_unlock_by_notification_screen_on"

    invoke-virtual {p0, v2}, Lcom/android/keyguard/settings/MiuiFaceDataManage;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/keyguard/settings/MiuiFaceDataManage;->mFaceUnlockByNotificationPreference:Landroid/preference/CheckBoxPreference;

    .line 73
    iget-object v5, p0, Lcom/android/keyguard/settings/MiuiFaceDataManage;->mFaceUnlockByNotificationPreference:Landroid/preference/CheckBoxPreference;

    .line 74
    invoke-virtual {p0}, Lcom/android/keyguard/settings/MiuiFaceDataManage;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 75
    const-string/jumbo v6, "face_unlock_by_notification_screen_on"

    .line 76
    invoke-static {}, Lcom/android/keyguard/LockPatternUtilsWrapper;->getCurrentUser()I

    move-result v7

    .line 73
    invoke-static {v2, v6, v4, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v3, :cond_6

    move v2, v3

    :goto_4
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 77
    invoke-virtual {p0}, Lcom/android/keyguard/settings/MiuiFaceDataManage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 78
    .local v0, "in":Landroid/content/Intent;
    const-string/jumbo v2, "input_facedata_need_skip_password"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/keyguard/settings/MiuiFaceDataManage;->mNeedSkipConfirmPassword:Z

    .line 79
    if-eqz p1, :cond_0

    .line 80
    const-string/jumbo v2, "key_confirm_lock_launched"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/keyguard/settings/MiuiFaceDataManage;->mConfirmLockLaunched:Z

    .line 82
    :cond_0
    iget-boolean v2, p0, Lcom/android/keyguard/settings/MiuiFaceDataManage;->mIsKeyguardPasswordSecured:Z

    if-eqz v2, :cond_8

    invoke-direct {p0}, Lcom/android/keyguard/settings/MiuiFaceDataManage;->isAvailableFaceData()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 83
    iget-boolean v2, p0, Lcom/android/keyguard/settings/MiuiFaceDataManage;->mNeedSkipConfirmPassword:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/keyguard/settings/MiuiFaceDataManage;->mConfirmLockLaunched:Z

    if-eqz v2, :cond_7

    .line 56
    :cond_1
    :goto_5
    return-void

    .end local v0    # "in":Landroid/content/Intent;
    :cond_2
    move v2, v4

    .line 62
    goto/16 :goto_0

    :cond_3
    move v2, v4

    .line 64
    goto/16 :goto_1

    :cond_4
    move v2, v4

    .line 66
    goto/16 :goto_2

    :cond_5
    move v2, v4

    .line 69
    goto :goto_3

    :cond_6
    move v2, v4

    .line 73
    goto :goto_4

    .line 84
    .restart local v0    # "in":Landroid/content/Intent;
    :cond_7
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 85
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.android.settings"

    .line 86
    const-string/jumbo v4, "com.android.settings.MiuiConfirmCommonPassword"

    .line 85
    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    const/16 v2, 0x3ea

    invoke-virtual {p0, v1, v2}, Lcom/android/keyguard/settings/MiuiFaceDataManage;->startActivityForResult(Landroid/content/Intent;I)V

    .line 88
    iput-boolean v3, p0, Lcom/android/keyguard/settings/MiuiFaceDataManage;->mConfirmLockLaunched:Z

    goto :goto_5

    .line 92
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_8
    invoke-virtual {p0}, Lcom/android/keyguard/settings/MiuiFaceDataManage;->finish()V

    goto :goto_5
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 119
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "key":Ljava/lang/String;
    const/4 v0, 0x1

    .line 121
    .local v0, "handled":Z
    const-string/jumbo v4, "delete_face_data_recoginition"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 122
    invoke-direct {p0}, Lcom/android/keyguard/settings/MiuiFaceDataManage;->handleSecurityLockToggle()V

    .line 135
    .end local v0    # "handled":Z
    :goto_0
    return v0

    .line 123
    .restart local v0    # "handled":Z
    :cond_0
    const-string/jumbo v4, "apply_face_data_lock"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 124
    invoke-virtual {p0}, Lcom/android/keyguard/settings/MiuiFaceDataManage;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 125
    const-string/jumbo v5, "face_unlcok_apply_for_lock"

    .line 126
    iget-object v6, p0, Lcom/android/keyguard/settings/MiuiFaceDataManage;->mFaceDataApplyUnlockScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_1

    :goto_1
    invoke-static {}, Lcom/android/keyguard/LockPatternUtilsWrapper;->getCurrentUser()I

    move-result v3

    .line 124
    invoke-static {v4, v5, v2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    :cond_1
    move v2, v3

    .line 126
    goto :goto_1

    .line 127
    :cond_2
    const-string/jumbo v4, "face_unlock_by_notification_screen_on"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 128
    invoke-virtual {p0}, Lcom/android/keyguard/settings/MiuiFaceDataManage;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 129
    const-string/jumbo v5, "face_unlock_by_notification_screen_on"

    .line 130
    iget-object v6, p0, Lcom/android/keyguard/settings/MiuiFaceDataManage;->mFaceUnlockByNotificationPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_3

    :goto_2
    invoke-static {}, Lcom/android/keyguard/LockPatternUtilsWrapper;->getCurrentUser()I

    move-result v3

    .line 128
    invoke-static {v4, v5, v2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    :cond_3
    move v2, v3

    .line 130
    goto :goto_2

    .line 132
    :cond_4
    invoke-super {p0, p1, p2}, Lmiui/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    .local v0, "handled":Z
    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 98
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 99
    const-string/jumbo v0, "key_confirm_lock_launched"

    iget-boolean v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataManage;->mConfirmLockLaunched:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 97
    return-void
.end method
