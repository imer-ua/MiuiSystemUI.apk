.class public Lcom/android/settingslib/RestrictedPreferenceHelper;
.super Ljava/lang/Object;
.source "RestrictedPreferenceHelper.java"


# instance fields
.field private mAttrUserRestriction:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mDisabledByAdmin:Z

.field private mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private final mPreference:Landroid/support/v7/preference/Preference;

.field private mUseAdminDisabledSummary:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/preference/Preference;Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preference"    # Landroid/support/v7/preference/Preference;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v5, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mAttrUserRestriction:Ljava/lang/String;

    .line 43
    iput-boolean v6, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mUseAdminDisabledSummary:Z

    .line 47
    iput-object p1, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mPreference:Landroid/support/v7/preference/Preference;

    .line 50
    if-eqz p3, :cond_4

    .line 52
    sget-object v4, Lcom/android/settingslib/R$styleable;->RestrictedPreference:[I

    .line 51
    invoke-virtual {p1, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 54
    .local v0, "attributes":Landroid/content/res/TypedArray;
    sget v4, Lcom/android/settingslib/R$styleable;->RestrictedPreference_userRestriction:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    .line 55
    .local v3, "userRestriction":Landroid/util/TypedValue;
    const/4 v1, 0x0

    .line 56
    .local v1, "data":Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/4 v7, 0x3

    if-ne v4, v7, :cond_0

    .line 57
    iget v4, v3, Landroid/util/TypedValue;->resourceId:I

    if-eqz v4, :cond_1

    .line 58
    iget v4, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 63
    .end local v1    # "data":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    if-nez v1, :cond_2

    move-object v4, v5

    :goto_1
    iput-object v4, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mAttrUserRestriction:Ljava/lang/String;

    .line 65
    iget-object v4, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mAttrUserRestriction:Ljava/lang/String;

    .line 66
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    .line 65
    invoke-static {v4, v7, v8}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 67
    iput-object v5, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mAttrUserRestriction:Ljava/lang/String;

    .line 68
    return-void

    .line 60
    .restart local v1    # "data":Ljava/lang/CharSequence;
    :cond_1
    iget-object v1, v3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .local v1, "data":Ljava/lang/CharSequence;
    goto :goto_0

    .line 63
    .end local v1    # "data":Ljava/lang/CharSequence;
    :cond_2
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 72
    :cond_3
    sget v4, Lcom/android/settingslib/R$styleable;->RestrictedPreference_useAdminDisabledSummary:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    .line 73
    .local v2, "useAdminDisabledSummary":Landroid/util/TypedValue;
    if-eqz v2, :cond_4

    .line 75
    iget v4, v2, Landroid/util/TypedValue;->type:I

    const/16 v5, 0x12

    if-ne v4, v5, :cond_6

    .line 76
    iget v4, v2, Landroid/util/TypedValue;->data:I

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    .line 74
    :goto_2
    iput-boolean v4, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mUseAdminDisabledSummary:Z

    .line 46
    .end local v0    # "attributes":Landroid/content/res/TypedArray;
    .end local v2    # "useAdminDisabledSummary":Landroid/util/TypedValue;
    .end local v3    # "userRestriction":Landroid/util/TypedValue;
    :cond_4
    return-void

    .restart local v0    # "attributes":Landroid/content/res/TypedArray;
    .restart local v2    # "useAdminDisabledSummary":Landroid/util/TypedValue;
    .restart local v3    # "userRestriction":Landroid/util/TypedValue;
    :cond_5
    move v4, v6

    .line 76
    goto :goto_2

    :cond_6
    move v4, v6

    .line 75
    goto :goto_2
.end method


# virtual methods
.method public performClick()Z
    .locals 2

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mDisabledByAdmin:Z

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 113
    const/4 v0, 0x1

    return v0

    .line 115
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public useAdminDisabledSummary(Z)V
    .locals 0
    .param p1, "useSummary"    # Z

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mUseAdminDisabledSummary:Z

    .line 101
    return-void
.end method
