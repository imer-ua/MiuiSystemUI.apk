.class public Lcom/android/settingslib/wifi/AccessPointPreference;
.super Landroid/support/v7/preference/Preference;
.source "AccessPointPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/wifi/AccessPointPreference$1;,
        Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;
    }
.end annotation


# static fields
.field private static final STATE_NONE:[I

.field private static final STATE_SECURED:[I

.field static final WIFI_CONNECTION_STRENGTH:[I

.field private static wifi_signal_attributes:[I


# instance fields
.field private final mBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

.field private final mBadgePadding:I

.field private mForSavedNetworks:Z

.field private final mNotifyChanged:Ljava/lang/Runnable;

.field private mTitleView:Landroid/widget/TextView;

.field private final mWifiSld:Landroid/graphics/drawable/StateListDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    new-array v0, v3, [I

    .line 38
    sget v1, Lcom/android/settingslib/R$attr;->state_encrypted:I

    aput v1, v0, v2

    .line 37
    sput-object v0, Lcom/android/settingslib/wifi/AccessPointPreference;->STATE_SECURED:[I

    .line 40
    new-array v0, v2, [I

    sput-object v0, Lcom/android/settingslib/wifi/AccessPointPreference;->STATE_NONE:[I

    .line 42
    new-array v0, v3, [I

    sget v1, Lcom/android/settingslib/R$attr;->wifi_signal:I

    aput v1, v0, v2

    sput-object v0, Lcom/android/settingslib/wifi/AccessPointPreference;->wifi_signal_attributes:[I

    .line 55
    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 56
    sget v1, Lcom/android/settingslib/R$string;->accessibility_wifi_one_bar:I

    aput v1, v0, v2

    .line 57
    sget v1, Lcom/android/settingslib/R$string;->accessibility_wifi_two_bars:I

    aput v1, v0, v3

    .line 58
    sget v1, Lcom/android/settingslib/R$string;->accessibility_wifi_three_bars:I

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 59
    sget v1, Lcom/android/settingslib/R$string;->accessibility_wifi_signal_full:I

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 55
    sput-object v0, Lcom/android/settingslib/wifi/AccessPointPreference;->WIFI_CONNECTION_STRENGTH:[I

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    iput-boolean v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mForSavedNetworks:Z

    .line 199
    new-instance v0, Lcom/android/settingslib/wifi/AccessPointPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settingslib/wifi/AccessPointPreference$1;-><init>(Lcom/android/settingslib/wifi/AccessPointPreference;)V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mNotifyChanged:Ljava/lang/Runnable;

    .line 65
    iput-object v2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mWifiSld:Landroid/graphics/drawable/StateListDrawable;

    .line 66
    iput v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mBadgePadding:I

    .line 67
    iput-object v2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    .line 63
    return-void
.end method

.method private postNotifyChanged()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mNotifyChanged:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 193
    :cond_0
    return-void
.end method


# virtual methods
.method protected notifyChanged()V
    .locals 2

    .prologue
    .line 181
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 183
    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->postNotifyChanged()V

    .line 180
    :goto_0
    return-void

    .line 185
    :cond_0
    invoke-super {p0}, Landroid/support/v7/preference/Preference;->notifyChanged()V

    goto :goto_0
.end method
