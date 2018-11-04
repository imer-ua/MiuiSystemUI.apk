.class public Lcom/android/settingslib/RestrictedSwitchPreference;
.super Landroid/support/v14/preference/SwitchPreference;
.source "RestrictedSwitchPreference.java"


# instance fields
.field mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

.field mRestrictedSwitchSummary:Ljava/lang/String;

.field mUseAdditionalSummary:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 86
    sget v0, Landroid/support/v7/preference/R$attr;->switchPreferenceStyle:I

    .line 87
    const v1, 0x101036d

    .line 85
    invoke-static {p1, v0, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 39
    iput-boolean v5, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mUseAdditionalSummary:Z

    .line 40
    iput-object v6, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mRestrictedSwitchSummary:Ljava/lang/String;

    .line 45
    sget v4, Lcom/android/settingslib/R$layout;->restricted_switch_widget:I

    invoke-virtual {p0, v4}, Lcom/android/settingslib/RestrictedSwitchPreference;->setWidgetLayoutResource(I)V

    .line 46
    new-instance v4, Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-direct {v4, p1, p0, p2}, Lcom/android/settingslib/RestrictedPreferenceHelper;-><init>(Landroid/content/Context;Landroid/support/v7/preference/Preference;Landroid/util/AttributeSet;)V

    iput-object v4, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    .line 47
    if-eqz p2, :cond_2

    .line 49
    sget-object v4, Lcom/android/settingslib/R$styleable;->RestrictedSwitchPreference:[I

    .line 48
    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 51
    .local v0, "attributes":Landroid/content/res/TypedArray;
    sget v4, Lcom/android/settingslib/R$styleable;->RestrictedSwitchPreference_useAdditionalSummary:I

    .line 50
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    .line 52
    .local v3, "useAdditionalSummary":Landroid/util/TypedValue;
    if-eqz v3, :cond_0

    .line 54
    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/16 v7, 0x12

    if-ne v4, v7, :cond_6

    .line 55
    iget v4, v3, Landroid/util/TypedValue;->data:I

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    .line 53
    :goto_0
    iput-boolean v4, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mUseAdditionalSummary:Z

    .line 59
    :cond_0
    sget v4, Lcom/android/settingslib/R$styleable;->RestrictedSwitchPreference_restrictedSwitchSummary:I

    .line 58
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    .line 60
    .local v2, "restrictedSwitchSummary":Landroid/util/TypedValue;
    const/4 v1, 0x0

    .line 61
    .local v1, "data":Ljava/lang/CharSequence;
    if-eqz v2, :cond_1

    .line 62
    iget v4, v2, Landroid/util/TypedValue;->type:I

    const/4 v7, 0x3

    if-ne v4, v7, :cond_1

    .line 63
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v4, :cond_7

    .line 64
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 69
    .end local v1    # "data":Ljava/lang/CharSequence;
    :cond_1
    :goto_1
    if-nez v1, :cond_8

    move-object v4, v6

    :goto_2
    iput-object v4, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mRestrictedSwitchSummary:Ljava/lang/String;

    .line 71
    .end local v0    # "attributes":Landroid/content/res/TypedArray;
    .end local v2    # "restrictedSwitchSummary":Landroid/util/TypedValue;
    .end local v3    # "useAdditionalSummary":Landroid/util/TypedValue;
    :cond_2
    iget-object v4, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mRestrictedSwitchSummary:Ljava/lang/String;

    if-nez v4, :cond_3

    .line 72
    sget v4, Lcom/android/settingslib/R$string;->disabled_by_admin:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mRestrictedSwitchSummary:Ljava/lang/String;

    .line 74
    :cond_3
    iget-boolean v4, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mUseAdditionalSummary:Z

    if-eqz v4, :cond_4

    .line 75
    sget v4, Lcom/android/settingslib/R$layout;->restricted_switch_preference:I

    invoke-virtual {p0, v4}, Lcom/android/settingslib/RestrictedSwitchPreference;->setLayoutResource(I)V

    .line 76
    invoke-virtual {p0, v5}, Lcom/android/settingslib/RestrictedSwitchPreference;->useAdminDisabledSummary(Z)V

    .line 43
    :cond_4
    return-void

    .restart local v0    # "attributes":Landroid/content/res/TypedArray;
    .restart local v3    # "useAdditionalSummary":Landroid/util/TypedValue;
    :cond_5
    move v4, v5

    .line 55
    goto :goto_0

    :cond_6
    move v4, v5

    .line 54
    goto :goto_0

    .line 66
    .restart local v1    # "data":Ljava/lang/CharSequence;
    .restart local v2    # "restrictedSwitchSummary":Landroid/util/TypedValue;
    :cond_7
    iget-object v1, v2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .local v1, "data":Ljava/lang/CharSequence;
    goto :goto_1

    .line 69
    .end local v1    # "data":Ljava/lang/CharSequence;
    :cond_8
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2
.end method


# virtual methods
.method public performClick()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->performClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    invoke-super {p0}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    .line 131
    :cond_0
    return-void
.end method

.method public useAdminDisabledSummary(Z)V
    .locals 1
    .param p1, "useSummary"    # Z

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/RestrictedPreferenceHelper;->useAdminDisabledSummary(Z)V

    .line 137
    return-void
.end method
