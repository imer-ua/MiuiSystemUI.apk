.class public Landroid/support/v7/preference/Preference;
.super Ljava/lang/Object;
.source "Preference.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/preference/Preference$1;,
        Landroid/support/v7/preference/Preference$BaseSavedState;,
        Landroid/support/v7/preference/Preference$OnPreferenceChangeInternalListener;,
        Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;,
        Landroid/support/v7/preference/Preference$OnPreferenceClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/support/v7/preference/Preference;",
        ">;"
    }
.end annotation


# instance fields
.field private final mClickListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mDefaultValue:Ljava/lang/Object;

.field private mDependencyKey:Ljava/lang/String;

.field private mDependencyMet:Z

.field private mDependents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mEnabled:Z

.field private mFragment:Ljava/lang/String;

.field private mIconResId:I

.field private mIntent:Landroid/content/Intent;

.field private mKey:Ljava/lang/String;

.field private mLayoutResId:I

.field private mListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeInternalListener;

.field private mOnChangeListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

.field private mOnClickListener:Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

.field private mOrder:I

.field private mParentDependencyMet:Z

.field private mPersistent:Z

.field private mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

.field private mSelectable:Z

.field private mShouldDisableView:Z

.field private mSummary:Ljava/lang/CharSequence;

.field private mTitle:Ljava/lang/CharSequence;

.field private mViewId:I

.field private mVisible:Z

.field private mWidgetLayoutResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 331
    sget v0, Landroid/support/v7/preference/R$attr;->preferenceStyle:I

    .line 332
    const v1, 0x101008e

    .line 331
    invoke-static {p1, v0, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 330
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 313
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 312
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const v3, 0x7fffffff

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput v3, p0, Landroid/support/v7/preference/Preference;->mOrder:I

    .line 109
    iput v5, p0, Landroid/support/v7/preference/Preference;->mViewId:I

    .line 121
    iput-boolean v4, p0, Landroid/support/v7/preference/Preference;->mEnabled:Z

    .line 122
    iput-boolean v4, p0, Landroid/support/v7/preference/Preference;->mSelectable:Z

    .line 124
    iput-boolean v4, p0, Landroid/support/v7/preference/Preference;->mPersistent:Z

    .line 127
    iput-boolean v4, p0, Landroid/support/v7/preference/Preference;->mDependencyMet:Z

    .line 128
    iput-boolean v4, p0, Landroid/support/v7/preference/Preference;->mParentDependencyMet:Z

    .line 129
    iput-boolean v4, p0, Landroid/support/v7/preference/Preference;->mVisible:Z

    .line 134
    iput-boolean v4, p0, Landroid/support/v7/preference/Preference;->mShouldDisableView:Z

    .line 136
    sget v1, Landroid/support/v7/preference/R$layout;->preference:I

    iput v1, p0, Landroid/support/v7/preference/Preference;->mLayoutResId:I

    .line 145
    new-instance v1, Landroid/support/v7/preference/Preference$1;

    invoke-direct {v1, p0}, Landroid/support/v7/preference/Preference$1;-><init>(Landroid/support/v7/preference/Preference;)V

    iput-object v1, p0, Landroid/support/v7/preference/Preference;->mClickListener:Landroid/view/View$OnClickListener;

    .line 238
    iput-object p1, p0, Landroid/support/v7/preference/Preference;->mContext:Landroid/content/Context;

    .line 241
    sget-object v1, Landroid/support/v7/preference/R$styleable;->Preference:[I

    .line 240
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 243
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Landroid/support/v7/preference/R$styleable;->Preference_icon:I

    .line 244
    sget v2, Landroid/support/v7/preference/R$styleable;->Preference_android_icon:I

    .line 243
    invoke-static {v0, v1, v2, v5}, Landroid/support/v4/content/res/TypedArrayUtils;->getResourceId(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Landroid/support/v7/preference/Preference;->mIconResId:I

    .line 246
    sget v1, Landroid/support/v7/preference/R$styleable;->Preference_key:I

    .line 247
    sget v2, Landroid/support/v7/preference/R$styleable;->Preference_android_key:I

    .line 246
    invoke-static {v0, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/preference/Preference;->mKey:Ljava/lang/String;

    .line 249
    sget v1, Landroid/support/v7/preference/R$styleable;->Preference_title:I

    .line 250
    sget v2, Landroid/support/v7/preference/R$styleable;->Preference_android_title:I

    .line 249
    invoke-static {v0, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    .line 252
    sget v1, Landroid/support/v7/preference/R$styleable;->Preference_summary:I

    .line 253
    sget v2, Landroid/support/v7/preference/R$styleable;->Preference_android_summary:I

    .line 252
    invoke-static {v0, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    .line 255
    sget v1, Landroid/support/v7/preference/R$styleable;->Preference_order:I

    .line 256
    sget v2, Landroid/support/v7/preference/R$styleable;->Preference_android_order:I

    .line 255
    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/content/res/TypedArrayUtils;->getInt(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Landroid/support/v7/preference/Preference;->mOrder:I

    .line 258
    sget v1, Landroid/support/v7/preference/R$styleable;->Preference_fragment:I

    .line 259
    sget v2, Landroid/support/v7/preference/R$styleable;->Preference_android_fragment:I

    .line 258
    invoke-static {v0, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/preference/Preference;->mFragment:Ljava/lang/String;

    .line 261
    sget v1, Landroid/support/v7/preference/R$styleable;->Preference_layout:I

    .line 262
    sget v2, Landroid/support/v7/preference/R$styleable;->Preference_android_layout:I

    sget v3, Landroid/support/v7/preference/R$layout;->preference:I

    .line 261
    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/content/res/TypedArrayUtils;->getResourceId(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Landroid/support/v7/preference/Preference;->mLayoutResId:I

    .line 264
    sget v1, Landroid/support/v7/preference/R$styleable;->Preference_widgetLayout:I

    .line 265
    sget v2, Landroid/support/v7/preference/R$styleable;->Preference_android_widgetLayout:I

    .line 264
    invoke-static {v0, v1, v2, v5}, Landroid/support/v4/content/res/TypedArrayUtils;->getResourceId(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Landroid/support/v7/preference/Preference;->mWidgetLayoutResId:I

    .line 267
    sget v1, Landroid/support/v7/preference/R$styleable;->Preference_enabled:I

    .line 268
    sget v2, Landroid/support/v7/preference/R$styleable;->Preference_android_enabled:I

    .line 267
    invoke-static {v0, v1, v2, v4}, Landroid/support/v4/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/preference/Preference;->mEnabled:Z

    .line 270
    sget v1, Landroid/support/v7/preference/R$styleable;->Preference_selectable:I

    .line 271
    sget v2, Landroid/support/v7/preference/R$styleable;->Preference_android_selectable:I

    .line 270
    invoke-static {v0, v1, v2, v4}, Landroid/support/v4/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/preference/Preference;->mSelectable:Z

    .line 273
    sget v1, Landroid/support/v7/preference/R$styleable;->Preference_persistent:I

    .line 274
    sget v2, Landroid/support/v7/preference/R$styleable;->Preference_android_persistent:I

    .line 273
    invoke-static {v0, v1, v2, v4}, Landroid/support/v4/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/preference/Preference;->mPersistent:Z

    .line 276
    sget v1, Landroid/support/v7/preference/R$styleable;->Preference_dependency:I

    .line 277
    sget v2, Landroid/support/v7/preference/R$styleable;->Preference_android_dependency:I

    .line 276
    invoke-static {v0, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/preference/Preference;->mDependencyKey:Ljava/lang/String;

    .line 279
    sget v1, Landroid/support/v7/preference/R$styleable;->Preference_defaultValue:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 280
    sget v1, Landroid/support/v7/preference/R$styleable;->Preference_defaultValue:I

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/preference/Preference;->onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    .line 286
    :cond_0
    :goto_0
    sget v1, Landroid/support/v7/preference/R$styleable;->Preference_shouldDisableView:I

    .line 287
    sget v2, Landroid/support/v7/preference/R$styleable;->Preference_android_shouldDisableView:I

    .line 286
    invoke-static {v0, v1, v2, v4}, Landroid/support/v4/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v1

    .line 285
    iput-boolean v1, p0, Landroid/support/v7/preference/Preference;->mShouldDisableView:Z

    .line 289
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 237
    return-void

    .line 281
    :cond_1
    sget v1, Landroid/support/v7/preference/R$styleable;->Preference_android_defaultValue:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 282
    sget v1, Landroid/support/v7/preference/R$styleable;->Preference_android_defaultValue:I

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/preference/Preference;->onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    goto :goto_0
.end method

.method private tryCommit(Landroid/content/SharedPreferences$Editor;)V
    .locals 1
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1358
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceManager;->shouldCommit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1359
    invoke-static {}, Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat;->getInstance()Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 1357
    :cond_0
    return-void
.end method


# virtual methods
.method public callChangeListener(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 914
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mOnChangeListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mOnChangeListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    invoke-interface {v0, p0, p1}, Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public compareTo(Landroid/support/v7/preference/Preference;)I
    .locals 2
    .param p1, "another"    # Landroid/support/v7/preference/Preference;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1035
    iget v0, p0, Landroid/support/v7/preference/Preference;->mOrder:I

    iget v1, p1, Landroid/support/v7/preference/Preference;->mOrder:I

    if-eq v0, v1, :cond_0

    .line 1037
    iget v0, p0, Landroid/support/v7/preference/Preference;->mOrder:I

    iget v1, p1, Landroid/support/v7/preference/Preference;->mOrder:I

    sub-int/2addr v0, v1

    return v0

    .line 1038
    :cond_0
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    iget-object v1, p1, Landroid/support/v7/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-ne v0, v1, :cond_1

    .line 1040
    const/4 v0, 0x0

    return v0

    .line 1041
    :cond_1
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    .line 1042
    const/4 v0, 0x1

    return v0

    .line 1043
    :cond_2
    iget-object v0, p1, Landroid/support/v7/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_3

    .line 1044
    const/4 v0, -0x1

    return v0

    .line 1047
    :cond_3
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Landroid/support/v7/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "another"    # Ljava/lang/Object;

    .prologue
    .line 1034
    check-cast p1, Landroid/support/v7/preference/Preference;

    .end local p1    # "another":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/support/v7/preference/Preference;->compareTo(Landroid/support/v7/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1006
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getFilterableStringBuilder()Ljava/lang/StringBuilder;
    .locals 5

    .prologue
    const/16 v4, 0x20

    .line 1606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1607
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 1608
    .local v2, "title":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1609
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1611
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1612
    .local v1, "summary":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1613
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1615
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 1617
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1619
    :cond_2
    return-object v0
.end method

.method public getFragment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mFragment:Ljava/lang/String;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method protected getPersistedBoolean(Z)Z
    .locals 2
    .param p1, "defaultReturnValue"    # Z

    .prologue
    .line 1582
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1583
    return p1

    .line 1586
    :cond_0
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected getPersistedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "defaultReturnValue"    # Ljava/lang/String;

    .prologue
    .line 1406
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1407
    return-object p1

    .line 1410
    :cond_0
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;
    .locals 1

    .prologue
    .line 1087
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 634
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hasKey()Z
    .locals 1

    .prologue
    .line 867
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 729
    iget-boolean v0, p0, Landroid/support/v7/preference/Preference;->mEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/preference/Preference;->mDependencyMet:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/preference/Preference;->mParentDependencyMet:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPersistent()Z
    .locals 1

    .prologue
    .line 877
    iget-boolean v0, p0, Landroid/support/v7/preference/Preference;->mPersistent:Z

    return v0
.end method

.method protected notifyChanged()V
    .locals 1

    .prologue
    .line 1065
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeInternalListener;

    if-eqz v0, :cond_0

    .line 1066
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeInternalListener;

    invoke-interface {v0, p0}, Landroid/support/v7/preference/Preference$OnPreferenceChangeInternalListener;->onPreferenceChange(Landroid/support/v7/preference/Preference;)V

    .line 1064
    :cond_0
    return-void
.end method

.method public notifyDependencyChange(Z)V
    .locals 4
    .param p1, "disableDependents"    # Z

    .prologue
    .line 1224
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mDependents:Ljava/util/List;

    .line 1226
    .local v0, "dependents":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/preference/Preference;>;"
    if-nez v0, :cond_0

    .line 1227
    return-void

    .line 1230
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1231
    .local v1, "dependentsCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1232
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/Preference;

    invoke-virtual {v3, p0, p1}, Landroid/support/v7/preference/Preference;->onDependencyChanged(Landroid/support/v7/preference/Preference;Z)V

    .line 1231
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1223
    :cond_1
    return-void
.end method

.method protected onClick()V
    .locals 0

    .prologue
    .line 819
    return-void
.end method

.method public onDependencyChanged(Landroid/support/v7/preference/Preference;Z)V
    .locals 1
    .param p1, "dependency"    # Landroid/support/v7/preference/Preference;
    .param p2, "disableDependent"    # Z

    .prologue
    .line 1243
    iget-boolean v0, p0, Landroid/support/v7/preference/Preference;->mDependencyMet:Z

    if-ne v0, p2, :cond_0

    .line 1244
    if-eqz p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/preference/Preference;->mDependencyMet:Z

    .line 1247
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/Preference;->notifyDependencyChange(Z)V

    .line 1249
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->notifyChanged()V

    .line 1242
    :cond_0
    return-void

    .line 1244
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 358
    const/4 v0, 0x0

    return-object v0
.end method

.method public onParentChanged(Landroid/support/v7/preference/Preference;Z)V
    .locals 1
    .param p1, "parent"    # Landroid/support/v7/preference/Preference;
    .param p2, "disableChild"    # Z

    .prologue
    .line 1260
    iget-boolean v0, p0, Landroid/support/v7/preference/Preference;->mParentDependencyMet:Z

    if-ne v0, p2, :cond_0

    .line 1261
    if-eqz p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/preference/Preference;->mParentDependencyMet:Z

    .line 1264
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/Preference;->notifyDependencyChange(Z)V

    .line 1266
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->notifyChanged()V

    .line 1259
    :cond_0
    return-void

    .line 1261
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public performClick()V
    .locals 4
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 972
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 973
    return-void

    .line 976
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->onClick()V

    .line 978
    iget-object v3, p0, Landroid/support/v7/preference/Preference;->mOnClickListener:Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/support/v7/preference/Preference;->mOnClickListener:Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

    invoke-interface {v3, p0}, Landroid/support/v7/preference/Preference$OnPreferenceClickListener;->onPreferenceClick(Landroid/support/v7/preference/Preference;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 979
    return-void

    .line 982
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v2

    .line 983
    .local v2, "preferenceManager":Landroid/support/v7/preference/PreferenceManager;
    if-eqz v2, :cond_2

    .line 984
    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceManager;->getOnPreferenceTreeClickListener()Landroid/support/v7/preference/PreferenceManager$OnPreferenceTreeClickListener;

    move-result-object v1

    .line 986
    .local v1, "listener":Landroid/support/v7/preference/PreferenceManager$OnPreferenceTreeClickListener;
    if-eqz v1, :cond_2

    invoke-interface {v1, p0}, Landroid/support/v7/preference/PreferenceManager$OnPreferenceTreeClickListener;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 987
    return-void

    .line 991
    .end local v1    # "listener":Landroid/support/v7/preference/PreferenceManager$OnPreferenceTreeClickListener;
    :cond_2
    iget-object v3, p0, Landroid/support/v7/preference/Preference;->mIntent:Landroid/content/Intent;

    if-eqz v3, :cond_3

    .line 992
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 993
    .local v0, "context":Landroid/content/Context;
    iget-object v3, p0, Landroid/support/v7/preference/Preference;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 970
    .end local v0    # "context":Landroid/content/Context;
    :cond_3
    return-void
.end method

.method protected performClick(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 961
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->performClick()V

    .line 960
    return-void
.end method

.method protected persistBoolean(Z)Z
    .locals 4
    .param p1, "value"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1556
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->shouldPersist()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1557
    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {p0, v1}, Landroid/support/v7/preference/Preference;->getPersistedBoolean(Z)Z

    move-result v1

    if-ne p1, v1, :cond_1

    .line 1559
    return v2

    :cond_0
    move v1, v2

    .line 1557
    goto :goto_0

    .line 1562
    :cond_1
    iget-object v1, p0, Landroid/support/v7/preference/Preference;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1563
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Landroid/support/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1564
    invoke-direct {p0, v0}, Landroid/support/v7/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    .line 1565
    return v2

    .line 1567
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_2
    return v1
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 1377
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->shouldPersist()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1379
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/support/v7/preference/Preference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 1381
    return v2

    .line 1384
    :cond_0
    iget-object v1, p0, Landroid/support/v7/preference/Preference;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1385
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Landroid/support/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1386
    invoke-direct {p0, v0}, Landroid/support/v7/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    .line 1387
    return v2

    .line 1389
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public setLayoutResource(I)V
    .locals 0
    .param p1, "layoutResId"    # I

    .prologue
    .line 435
    iput p1, p0, Landroid/support/v7/preference/Preference;->mLayoutResId:I

    .line 434
    return-void
.end method

.method public setWidgetLayoutResource(I)V
    .locals 0
    .param p1, "widgetLayoutResId"    # I

    .prologue
    .line 460
    iput p1, p0, Landroid/support/v7/preference/Preference;->mWidgetLayoutResId:I

    .line 459
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 1

    .prologue
    .line 1277
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected shouldPersist()Z
    .locals 1

    .prologue
    .line 890
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->hasKey()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1591
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->getFilterableStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
