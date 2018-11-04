.class public Lcom/android/keyguard/CarrierText;
.super Landroid/widget/TextView;
.source "CarrierText.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$CarrierNameListener;
.implements Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;
.implements Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/CarrierText$1;,
        Lcom/android/keyguard/CarrierText$2;,
        Lcom/android/keyguard/CarrierText$3;
    }
.end annotation


# static fields
.field private static mSeparator:Ljava/lang/CharSequence;


# instance fields
.field private mAirplaneModeOn:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mCustomCarrier:[Ljava/lang/String;

.field private mCustomCarrierObserver:[Landroid/database/ContentObserver;

.field private mEmergencyOnly:Z

.field private mForceHide:Z

.field private mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mPhoneCount:I

.field private mShowCarrier:Z

.field private mShowCarrierObserver:Landroid/database/ContentObserver;

.field private mShowStyle:I

.field private mSimCarrier:[Ljava/lang/String;

.field private mSimErrorState:[Z

.field private mSupportNetwork:Z


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/CarrierText;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/CarrierText;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mCustomCarrier:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/CarrierText;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/CarrierText;->mForceHide:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/CarrierText;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/keyguard/CarrierText;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/CarrierText;->mPhoneCount:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/keyguard/CarrierText;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/CarrierText;->mShowCarrier:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/keyguard/CarrierText;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/CarrierText;->mShowStyle:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/keyguard/CarrierText;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mSimCarrier:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/keyguard/CarrierText;)[Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mSimErrorState:[Z

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/CarrierText;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/CarrierText;->mAirplaneModeOn:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/keyguard/CarrierText;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/CarrierText;->mShowCarrier:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/CarrierText;Lcom/android/internal/telephony/IccCardConstants$State;)Z
    .locals 1
    .param p1, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/CarrierText;->isSimErrorByIccState(Lcom/android/internal/telephony/IccCardConstants$State;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/CarrierText;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "strAry"    # [Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/CarrierText;->getCarrierString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/keyguard/CarrierText;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/CarrierText;->initCarrier()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 239
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/CarrierText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 238
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 243
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/CarrierText;->mShowStyle:I

    .line 90
    new-instance v0, Lcom/android/keyguard/CarrierText$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/CarrierText$1;-><init>(Lcom/android/keyguard/CarrierText;)V

    iput-object v0, p0, Lcom/android/keyguard/CarrierText;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 154
    new-instance v0, Lcom/android/keyguard/CarrierText$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/CarrierText$2;-><init>(Lcom/android/keyguard/CarrierText;)V

    iput-object v0, p0, Lcom/android/keyguard/CarrierText;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 164
    new-instance v1, Lcom/android/keyguard/CarrierText$3;

    new-instance v2, Landroid/os/Handler;

    sget-object v0, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/CarrierText$3;-><init>(Lcom/android/keyguard/CarrierText;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/keyguard/CarrierText;->mShowCarrierObserver:Landroid/database/ContentObserver;

    .line 244
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/CarrierText;->mPhoneCount:I

    .line 246
    iget v0, p0, Lcom/android/keyguard/CarrierText;->mPhoneCount:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/keyguard/CarrierText;->mSimErrorState:[Z

    .line 247
    iget v0, p0, Lcom/android/keyguard/CarrierText;->mPhoneCount:I

    new-array v0, v0, [Landroid/database/ContentObserver;

    iput-object v0, p0, Lcom/android/keyguard/CarrierText;->mCustomCarrierObserver:[Landroid/database/ContentObserver;

    .line 248
    iget v0, p0, Lcom/android/keyguard/CarrierText;->mPhoneCount:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/keyguard/CarrierText;->mCustomCarrier:[Ljava/lang/String;

    .line 249
    iget v0, p0, Lcom/android/keyguard/CarrierText;->mPhoneCount:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/keyguard/CarrierText;->mSimCarrier:[Ljava/lang/String;

    .line 242
    return-void
.end method

.method private getCarrierString([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "strAry"    # [Ljava/lang/String;

    .prologue
    .line 313
    iget-boolean v2, p0, Lcom/android/keyguard/CarrierText;->mAirplaneModeOn:Z

    if-eqz v2, :cond_0

    .line 314
    iget-object v2, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x9100439

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 316
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 317
    .local v1, "result":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_3

    .line 318
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_3

    .line 319
    aget-object v2, p1, v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 320
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 321
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 323
    :cond_2
    const-string/jumbo v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 328
    .end local v0    # "i":I
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    return-object v2

    :cond_4
    iget-object v2, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-boolean v2, p0, Lcom/android/keyguard/CarrierText;->mEmergencyOnly:Z

    if-eqz v2, :cond_5

    .line 329
    const v2, 0x9100438

    .line 328
    :goto_3
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 329
    :cond_5
    const v2, 0x9100437

    goto :goto_3
.end method

.method private initCarrier()V
    .locals 8

    .prologue
    const/4 v7, -0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 201
    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 204
    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 205
    const-string/jumbo v4, "status_bar_show_carrier_under_keyguard"

    .line 203
    invoke-static {v1, v4, v2, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/keyguard/CarrierText;->mShowCarrier:Z

    .line 206
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/android/keyguard/CarrierText;->mPhoneCount:I

    if-ge v0, v1, :cond_1

    .line 207
    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mCustomCarrier:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 208
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "status_bar_custom_carrier"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 207
    invoke-static {v4, v5, v7}, Landroid/provider/MiuiSettings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    .line 206
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    :cond_0
    move v1, v3

    .line 203
    goto :goto_0

    .line 211
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "airplane_mode_on"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_3

    :goto_2
    iput-boolean v2, p0, Lcom/android/keyguard/CarrierText;->mAirplaneModeOn:Z

    .line 212
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->updateCarrier()V

    .line 200
    .end local v0    # "i":I
    :cond_2
    return-void

    .restart local v0    # "i":I
    :cond_3
    move v2, v3

    .line 211
    goto :goto_2
.end method

.method private isSimErrorByIccState(Lcom/android/internal/telephony/IccCardConstants$State;)Z
    .locals 4
    .param p1, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 345
    if-nez p1, :cond_0

    .line 346
    return v2

    .line 350
    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v3

    if-nez v3, :cond_4

    .line 351
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p1, v3, :cond_2

    .line 352
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v3, :cond_3

    move v0, v1

    .line 355
    .local v0, "missingAndNotProvisioned":Z
    :goto_0
    if-eqz v0, :cond_1

    sget-object p1, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 356
    :cond_1
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v3, :cond_5

    .line 357
    return v2

    .end local v0    # "missingAndNotProvisioned":Z
    :cond_2
    move v0, v1

    .line 351
    goto :goto_0

    :cond_3
    move v0, v2

    .line 352
    goto :goto_0

    :cond_4
    move v0, v2

    .line 350
    goto :goto_0

    .line 359
    .restart local v0    # "missingAndNotProvisioned":Z
    :cond_5
    return v1
.end method

.method private registerObservers()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 176
    new-instance v1, Landroid/os/Handler;

    sget-object v3, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Looper;

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 177
    .local v1, "handler":Landroid/os/Handler;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lcom/android/keyguard/CarrierText;->mPhoneCount:I

    if-ge v2, v3, :cond_0

    .line 178
    iget-object v3, p0, Lcom/android/keyguard/CarrierText;->mCustomCarrierObserver:[Landroid/database/ContentObserver;

    new-instance v4, Lcom/android/keyguard/CarrierText$4;

    invoke-direct {v4, p0, v1}, Lcom/android/keyguard/CarrierText$4;-><init>(Lcom/android/keyguard/CarrierText;Landroid/os/Handler;)V

    aput-object v4, v3, v2

    .line 191
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "status_bar_custom_carrier"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 192
    .local v0, "customUri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/CarrierText;->mCustomCarrierObserver:[Landroid/database/ContentObserver;

    aget-object v4, v4, v2

    invoke-virtual {v3, v0, v7, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 177
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 194
    .end local v0    # "customUri":Landroid/net/Uri;
    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 195
    const-string/jumbo v4, "status_bar_show_carrier_under_keyguard"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/CarrierText;->mShowCarrierObserver:Landroid/database/ContentObserver;

    .line 194
    invoke-virtual {v3, v4, v7, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 197
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->updateCarrier()V

    .line 175
    return-void
.end method


# virtual methods
.method public forceHide(Z)V
    .locals 1
    .param p1, "hide"    # Z

    .prologue
    .line 369
    iget-boolean v0, p0, Lcom/android/keyguard/CarrierText;->mForceHide:Z

    if-eq v0, p1, :cond_0

    .line 370
    iput-boolean p1, p0, Lcom/android/keyguard/CarrierText;->mForceHide:Z

    .line 371
    iget-boolean v0, p0, Lcom/android/keyguard/CarrierText;->mForceHide:Z

    if-eqz v0, :cond_1

    .line 372
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/keyguard/CarrierText;->setVisibility(I)V

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 374
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->updateCarrier()V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 130
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 131
    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/keyguard/CarrierText;->mSupportNetwork:Z

    .line 134
    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 135
    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v2, p0, Lcom/android/keyguard/CarrierText;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 137
    invoke-direct {p0}, Lcom/android/keyguard/CarrierText;->initCarrier()V

    .line 139
    invoke-direct {p0}, Lcom/android/keyguard/CarrierText;->registerObservers()V

    .line 141
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 142
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/CarrierText;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 145
    const-class v1, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v1, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->addCarrierNameListener(Lcom/android/systemui/statusbar/policy/NetworkController$CarrierNameListener;)V

    .line 146
    const-class v1, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v1, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->addEmergencyListener(Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;)V

    .line 129
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 148
    :cond_0
    iput-boolean v2, p0, Lcom/android/keyguard/CarrierText;->mSupportNetwork:Z

    .line 149
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 150
    const-string/jumbo v1, ""

    invoke-virtual {p0, v1}, Lcom/android/keyguard/CarrierText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 1
    .param p1, "area"    # Landroid/graphics/Rect;
    .param p2, "darkIntensity"    # F
    .param p3, "tint"    # I

    .prologue
    .line 254
    invoke-static {p1, p0, p3}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcherHelper;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/CarrierText;->setTextColor(I)V

    .line 253
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 226
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 227
    iget-boolean v0, p0, Lcom/android/keyguard/CarrierText;->mSupportNetwork:Z

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 231
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->unregisterObservers()V

    .line 232
    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeCarrierNameListener(Lcom/android/systemui/statusbar/policy/NetworkController$CarrierNameListener;)V

    .line 233
    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeEmergencyListener(Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;)V

    .line 235
    :cond_1
    const-class v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V

    .line 225
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 334
    invoke-super {p0}, Landroid/widget/TextView;->onFinishInflate()V

    .line 335
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 336
    const v2, 0x104054d

    .line 335
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/keyguard/CarrierText;->mSeparator:Ljava/lang/CharSequence;

    .line 337
    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    .line 338
    .local v0, "shouldMarquee":Z
    invoke-virtual {p0, v0}, Lcom/android/keyguard/CarrierText;->setSelected(Z)V

    .line 333
    return-void
.end method

.method public setEmergencyCallsOnly(Z)V
    .locals 1
    .param p1, "emergencyOnly"    # Z

    .prologue
    .line 267
    iget-boolean v0, p0, Lcom/android/keyguard/CarrierText;->mEmergencyOnly:Z

    if-eq v0, p1, :cond_0

    .line 268
    iput-boolean p1, p0, Lcom/android/keyguard/CarrierText;->mEmergencyOnly:Z

    .line 269
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->updateCarrier()V

    .line 266
    :cond_0
    return-void
.end method

.method public setShowStyle(I)V
    .locals 0
    .param p1, "showStyle"    # I

    .prologue
    .line 364
    iput p1, p0, Lcom/android/keyguard/CarrierText;->mShowStyle:I

    .line 365
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->updateCarrier()V

    .line 363
    return-void
.end method

.method public unregisterObservers()V
    .locals 3

    .prologue
    .line 217
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/keyguard/CarrierText;->mPhoneCount:I

    if-ge v0, v1, :cond_0

    .line 218
    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/CarrierText;->mCustomCarrierObserver:[Landroid/database/ContentObserver;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 217
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 220
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/CarrierText;->mShowCarrierObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 221
    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/CarrierText;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 216
    return-void
.end method

.method public updateCarrier()V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 275
    const/4 v1, 0x0

    .line 274
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    new-instance v0, Lcom/android/keyguard/CarrierText$5;

    invoke-direct {v0, p0}, Lcom/android/keyguard/CarrierText$5;-><init>(Lcom/android/keyguard/CarrierText;)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/CarrierText;->post(Ljava/lang/Runnable;)Z

    .line 273
    :cond_0
    return-void
.end method

.method public updateCarrierName(ILjava/lang/String;)V
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "carrierName"    # Ljava/lang/String;

    .prologue
    .line 259
    iget v0, p0, Lcom/android/keyguard/CarrierText;->mPhoneCount:I

    if-ge p1, v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mSimCarrier:[Ljava/lang/String;

    aput-object p2, v0, p1

    .line 262
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->updateCarrier()V

    .line 258
    return-void
.end method
