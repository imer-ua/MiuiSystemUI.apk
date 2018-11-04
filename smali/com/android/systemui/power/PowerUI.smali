.class public Lcom/android/systemui/power/PowerUI;
.super Lcom/android/systemui/SystemUI;
.source "PowerUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/power/PowerUI$1;,
        Lcom/android/systemui/power/PowerUI$2;
    }
.end annotation


# instance fields
.field private mBatteryLevel:I

.field mBatteryLevelImageView:Landroid/widget/ImageView;

.field mBatteryLevelTextView:Landroid/widget/TextView;

.field private mBatteryStatus:I

.field private mBgHandler:Landroid/os/Handler;

.field private mBgThread:Landroid/os/HandlerThread;

.field private mChargingHandler:Landroid/os/Handler;

.field mExtremePowerSaveDialog:Landroid/app/AlertDialog;

.field private final mHandler:Landroid/os/Handler;

.field private mHapticFeedBack:Lmiui/util/HapticFeedbackUtil;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mInvalidCharger:I

.field mInvalidChargerDialog:Landroid/app/AlertDialog;

.field private mLowBatteryAlertCloseLevel:I

.field mLowBatteryDialog:Landroid/app/AlertDialog;

.field private mLowBatteryReminderLevels:[I

.field mLowTemperatureDialog:Landroid/app/AlertDialog;

.field mNeedShowLowTemperatureDialog:Z

.field private mPlayFullBatterySound:Z

.field private mPlayLowBatterySound:Z

.field private mPlugType:I

.field private mPowerManager:Landroid/os/PowerManager;

.field private mShowLowBatteryDialogWarning:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/power/PowerUI;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/power/PowerUI;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/power/PowerUI;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mBgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/power/PowerUI;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargingHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/power/PowerUI;)Lmiui/util/HapticFeedbackUtil;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mHapticFeedBack:Lmiui/util/HapticFeedbackUtil;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/power/PowerUI;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/power/PowerUI;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/power/PowerUI;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/power/PowerUI;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/power/PowerUI;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/power/PowerUI;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/power/PowerUI;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "childStr"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/power/PowerUI;->getSpanStr(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/power/PowerUI;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->isFirstOpenExtremePowerSave()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/systemui/power/PowerUI;I)I
    .locals 1
    .param p1, "level"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/systemui/power/PowerUI;Landroid/content/Context;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/power/PowerUI;->getExpectedTimeString(Landroid/content/Context;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Lcom/android/systemui/power/PowerUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->dismissExtremePowerSaveDialog()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/power/PowerUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->hideLowBatteryNotification()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/systemui/power/PowerUI;Landroid/net/Uri;)V
    .locals 0
    .param p1, "soundUri"    # Landroid/net/Uri;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI;->playBatterySound(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/systemui/power/PowerUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->playLowBatterySound()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/systemui/power/PowerUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->showExtremePowerSaveDialog()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/systemui/power/PowerUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->showLowBatteryNotification()V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mPlayFullBatterySound:Z

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    .line 72
    iput v3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    .line 73
    iput v1, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    .line 74
    iput v1, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    .line 76
    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    .line 77
    const/16 v0, 0x14

    const/16 v1, 0xa

    const/4 v2, -0x1

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    .line 86
    iput-boolean v3, p0, Lcom/android/systemui/power/PowerUI;->mNeedShowLowTemperatureDialog:Z

    .line 159
    new-instance v0, Lcom/android/systemui/power/PowerUI$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$1;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 498
    new-instance v0, Lcom/android/systemui/power/PowerUI$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$2;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargingHandler:Landroid/os/Handler;

    .line 60
    return-void
.end method

.method private deviceIsProvisioned()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 429
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 430
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v2, "device_provisioned"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private dismissExtremePowerSaveDialog()V
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mExtremePowerSaveDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mExtremePowerSaveDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 458
    :cond_0
    return-void
.end method

.method private findBatteryLevelBucket(I)I
    .locals 4
    .param p1, "level"    # I

    .prologue
    const/4 v3, 0x0

    .line 144
    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    if-lt p1, v2, :cond_0

    .line 145
    const/4 v2, 0x1

    return v2

    .line 147
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aget v2, v2, v3

    if-le p1, v2, :cond_1

    .line 148
    return v3

    .line 150
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    array-length v0, v2

    .line 151
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 152
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aget v2, v2, v1

    if-gt p1, v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aget v2, v2, v1

    if-lez v2, :cond_2

    .line 153
    rsub-int/lit8 v2, v1, -0x1

    return v2

    .line 151
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 156
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "not possible!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getExpectedTimeString(Landroid/content/Context;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 526
    const-string/jumbo v8, "drainedTime"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 527
    .local v0, "drainedTime":J
    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-gtz v8, :cond_0

    .line 528
    const-string/jumbo v3, "-"

    .line 545
    .local v3, "result":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 530
    .end local v3    # "result":Ljava/lang/String;
    :cond_0
    invoke-static {v0, v1}, Lcom/android/keyguard/charge/ChargeUtils;->getMins(J)J

    move-result-wide v6

    .line 531
    .local v6, "minutes":J
    invoke-static {v0, v1}, Lcom/android/keyguard/charge/ChargeUtils;->getHours(J)J

    move-result-wide v4

    .line 532
    .local v4, "hours":J
    const-string/jumbo v2, "-"

    .line 533
    .local v2, "drainedTimeStr":Ljava/lang/String;
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-lez v8, :cond_2

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_2

    .line 534
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 535
    long-to-int v9, v4

    .line 534
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    .line 535
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v10, v12

    const v11, 0x9140019

    .line 534
    invoke-virtual {v8, v11, v9, v10}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 543
    :cond_1
    :goto_1
    move-object v3, v2

    .restart local v3    # "result":Ljava/lang/String;
    goto :goto_0

    .line 536
    .end local v3    # "result":Ljava/lang/String;
    :cond_2
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-lez v8, :cond_3

    .line 537
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 538
    long-to-int v9, v4

    .line 537
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    .line 538
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const v11, 0x9140017

    .line 537
    invoke-virtual {v8, v11, v9, v10}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 539
    :cond_3
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_1

    .line 540
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 541
    long-to-int v9, v6

    .line 540
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    .line 541
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const v11, 0x9140018

    .line 540
    invoke-virtual {v8, v11, v9, v10}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private getSpanStr(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 5
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "childStr"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 549
    invoke-virtual {p1, p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 550
    .local v0, "index":I
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 551
    .local v1, "ss":Landroid/text/SpannableString;
    if-lez v0, :cond_0

    .line 552
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const v4, 0x90c018f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 553
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v0

    const/16 v4, 0x21

    .line 552
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 555
    :cond_0
    return-object v1
.end method

.method private hideLowBatteryNotification()V
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/power/PowerUtils;->hideLowBatteryNotification(Landroid/content/Context;)V

    .line 446
    return-void
.end method

.method private isFirstOpenExtremePowerSave()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 451
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "is_first_open_extreme_power_save"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLowBatteryDialogAvailable()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 442
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSupportExtremeMode()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method private playBatterySound(Landroid/net/Uri;)V
    .locals 3
    .param p1, "soundUri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x1

    .line 422
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 423
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v1, "power_sounds_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_0

    if-eqz p1, :cond_0

    .line 424
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v2}, Lcom/android/systemui/Util;->playRingtoneAsync(Landroid/content/Context;Landroid/net/Uri;I)V

    .line 421
    :cond_0
    return-void
.end method

.method private playLowBatterySound()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mPlayLowBatterySound:Z

    if-nez v0, :cond_0

    return-void

    .line 414
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 415
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v2, "low_battery_sound"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 416
    .local v1, "soundPath":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 417
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/systemui/Util;->playRingtoneAsync(Landroid/content/Context;Landroid/net/Uri;I)V

    .line 413
    :cond_1
    return-void
.end method

.method private showExtremePowerSaveDialog()V
    .locals 2

    .prologue
    .line 465
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/systemui/power/PowerUI$9;

    invoke-direct {v1, p0}, Lcom/android/systemui/power/PowerUI$9;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 464
    return-void
.end method

.method private showLowBatteryNotification()V
    .locals 2

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->isLowBatteryDialogAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    :goto_0
    return-void

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-static {v0, v1}, Lcom/android/systemui/power/PowerUtils;->showLowBatteryNotification(Landroid/content/Context;I)V

    goto :goto_0
.end method


# virtual methods
.method dismissInvalidChargerDialog()V
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidChargerDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidChargerDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 349
    :cond_0
    return-void
.end method

.method dismissLowBatteryWarning()V
    .locals 3

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 247
    const-string/jumbo v0, "PowerUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "closing low battery warning: level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 245
    :cond_0
    return-void
.end method

.method dismissLowTemperatureDialog()V
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowTemperatureDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowTemperatureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 381
    :cond_0
    return-void
.end method

.method playFullBatterySound()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string v1, "charging_sounds_full"

    invoke-static {v0, v1}, Landroid/preference/MiuiCoreSettingsPreference;->getKeyParam(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mPlayFullBatterySound:Z

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mPlayFullBatterySound:Z

    new-instance v0, Ljava/io/File;

    const-string v1, "/system/media/audio/ui/fullcharging.ogg"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const/4 v2, 0x5

    invoke-static {v1, v0, v2}, Lcom/android/systemui/Util;->playRingtoneAsync(Landroid/content/Context;Landroid/net/Uri;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mPlayFullBatterySound:Z

    goto :goto_0
.end method

.method setBattaryLevel()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string v2, "set_low_level"

    invoke-static {v1, v2}, Landroid/preference/MiuiCoreSettingsPreference;->getKeyParam(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x14

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aput v2, v0, v4

    const-string v2, "set_critical_level"

    invoke-static {v1, v2}, Landroid/preference/MiuiCoreSettingsPreference;->getKeyParam(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0xa

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    const/4 v3, 0x1

    aput v2, v0, v3

    const-string v2, "set_close_level"

    invoke-static {v1, v2}, Landroid/preference/MiuiCoreSettingsPreference;->getKeyParam(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0x1e

    :cond_2
    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    return-void
.end method

.method public setFirstOpenExtremePowerSave(Z)V
    .locals 3
    .param p1, "isFirst"    # Z

    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "is_first_open_extreme_power_save"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 454
    return-void

    .line 455
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setPreferences()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string v2, "low_battery"

    invoke-static {v1, v2}, Landroid/preference/MiuiCoreSettingsPreference;->getKeyParam(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iput-boolean v4, p0, Lcom/android/systemui/power/PowerUI;->mShowLowBatteryDialogWarning:Z

    iput-boolean v4, p0, Lcom/android/systemui/power/PowerUI;->mPlayLowBatterySound:Z

    :goto_0
    return-void

    :pswitch_0
    iput-boolean v3, p0, Lcom/android/systemui/power/PowerUI;->mShowLowBatteryDialogWarning:Z

    iput-boolean v3, p0, Lcom/android/systemui/power/PowerUI;->mPlayLowBatterySound:Z

    goto :goto_0

    :pswitch_1
    iput-boolean v3, p0, Lcom/android/systemui/power/PowerUI;->mShowLowBatteryDialogWarning:Z

    iput-boolean v4, p0, Lcom/android/systemui/power/PowerUI;->mPlayLowBatterySound:Z

    goto :goto_0

    :pswitch_2
    iput-boolean v4, p0, Lcom/android/systemui/power/PowerUI;->mShowLowBatteryDialogWarning:Z

    iput-boolean v3, p0, Lcom/android/systemui/power/PowerUI;->mPlayLowBatterySound:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method showInvalidChargerDialog()V
    .locals 4

    .prologue
    .line 356
    const-string/jumbo v2, "PowerUI"

    const-string/jumbo v3, "showing invalid charger dialog"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->dismissLowBatteryWarning()V

    .line 359
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->dismissExtremePowerSaveDialog()V

    .line 361
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    sget v3, Lmiui/R$style;->Theme_Light_Dialog_Alert:I

    invoke-direct {v0, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 362
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 363
    const v2, 0x9100056

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 364
    const v2, 0x1010355

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 365
    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 367
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 368
    .local v1, "d":Landroid/app/AlertDialog;
    new-instance v2, Lcom/android/systemui/power/PowerUI$7;

    invoke-direct {v2, p0}, Lcom/android/systemui/power/PowerUI$7;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 376
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 377
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 378
    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mInvalidChargerDialog:Landroid/app/AlertDialog;

    .line 355
    return-void
.end method

.method showLowBatteryWarning()V
    .locals 12

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mShowLowBatteryDialogWarning:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 253
    const-string/jumbo v7, "PowerUI"

    .line 254
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    if-nez v6, :cond_1

    const-string/jumbo v6, "showing"

    :goto_0
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 255
    const-string/jumbo v8, " low battery warning: level="

    .line 254
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 255
    iget v8, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    .line 254
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 256
    const-string/jumbo v8, " ["

    .line 254
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 256
    iget v8, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-direct {p0, v8}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    move-result v8

    .line 254
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 256
    const-string/jumbo v8, "]"

    .line 254
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 253
    invoke-static {v7, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->isLowBatteryDialogAvailable()Z

    move-result v6

    if-nez v6, :cond_2

    .line 259
    const-string/jumbo v6, "PowerUI"

    const-string/jumbo v7, "low battery dialog not shown"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    return-void

    .line 254
    :cond_1
    const-string/jumbo v6, "updating"

    goto :goto_0

    .line 263
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "low_battery_dialog_disabled"

    .line 264
    const/4 v8, -0x2

    .line 263
    invoke-static {v6, v7, v11, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v9, :cond_3

    .line 265
    return-void

    .line 267
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "vr_mode"

    invoke-static {v6, v7, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v9, v6, :cond_4

    .line 268
    return-void

    .line 272
    :cond_4
    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 273
    .local v4, "telMgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v6

    if-eq v6, v9, :cond_5

    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->deviceIsProvisioned()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 277
    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    new-array v7, v9, [Ljava/lang/Object;

    .line 278
    iget v8, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    const v8, 0x9100054

    .line 277
    invoke-virtual {v6, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 280
    .local v2, "levelText":Ljava/lang/CharSequence;
    iget v6, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    const/4 v7, 0x4

    if-gt v6, v7, :cond_6

    .line 281
    const v3, 0x9020064

    .line 290
    .local v3, "resId":I
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    if-eqz v6, :cond_9

    .line 291
    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelImageView:Landroid/widget/ImageView;

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 252
    :goto_2
    return-void

    .line 274
    .end local v2    # "levelText":Ljava/lang/CharSequence;
    .end local v3    # "resId":I
    :cond_5
    return-void

    .line 282
    .restart local v2    # "levelText":Ljava/lang/CharSequence;
    :cond_6
    iget v6, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    const/4 v3, 0x1

    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aget v7, v7, v3

    if-gt v6, v7, :cond_7

    .line 283
    const v3, 0x9020065

    .restart local v3    # "resId":I
    goto :goto_1

    .line 284
    .end local v3    # "resId":I
    :cond_7
    iget v6, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    const/4 v3, 0x0

    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aget v7, v7, v3

    if-gt v6, v7, :cond_8

    .line 285
    const v3, 0x9020062

    .restart local v3    # "resId":I
    goto :goto_1

    .line 287
    .end local v3    # "resId":I
    :cond_8
    const v3, 0x9020063

    .restart local v3    # "resId":I
    goto :goto_1

    .line 294
    :cond_9
    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const v7, 0x9040021

    invoke-static {v6, v7, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 295
    .local v5, "v":Landroid/view/View;
    const v6, 0x91200b6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    .line 296
    const v6, 0x9120076

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelImageView:Landroid/widget/ImageView;

    .line 298
    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelImageView:Landroid/widget/ImageView;

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 301
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    sget v7, Lmiui/R$style;->Theme_Light_Dialog_Alert:I

    invoke-direct {v0, v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 302
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 303
    const v6, 0x9100053

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 304
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 305
    const v6, 0x1010355

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 306
    const v6, 0x910051b

    invoke-virtual {v0, v6, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 308
    sget-boolean v6, Lcom/android/systemui/Constants;->IS_TABLET:Z

    if-nez v6, :cond_b

    .line 309
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->isSupportExtremeMode()Z

    move-result v6

    if-eqz v6, :cond_a

    iget v6, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    const/4 v7, 0x5

    if-gt v6, v7, :cond_a

    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/systemui/power/PowerUtils;->isExtremeSaveModeEnabable(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 321
    :cond_a
    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/systemui/power/PowerUtils;->isExtremeSaveModeEnabable(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_b

    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/systemui/power/PowerUtils;->isSaveModeEnabled(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 332
    :cond_b
    :goto_3
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 333
    .local v1, "d":Landroid/app/AlertDialog;
    new-instance v6, Lcom/android/systemui/power/PowerUI$6;

    invoke-direct {v6, p0}, Lcom/android/systemui/power/PowerUI$6;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 341
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d3

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    .line 342
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 343
    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Landroid/app/AlertDialog;

    .line 345
    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/systemui/power/PowerUtils;->trackLowBatteryDialog(Landroid/content/Context;)V

    goto/16 :goto_2

    .line 311
    .end local v1    # "d":Landroid/app/AlertDialog;
    :cond_c
    new-instance v6, Lcom/android/systemui/power/PowerUI$4;

    invoke-direct {v6, p0}, Lcom/android/systemui/power/PowerUI$4;-><init>(Lcom/android/systemui/power/PowerUI;)V

    .line 310
    const v7, 0x9100520

    invoke-virtual {v0, v7, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_3

    .line 323
    :cond_d
    new-instance v6, Lcom/android/systemui/power/PowerUI$5;

    invoke-direct {v6, p0}, Lcom/android/systemui/power/PowerUI$5;-><init>(Lcom/android/systemui/power/PowerUI;)V

    .line 322
    const v7, 0x910051a

    invoke-virtual {v0, v7, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_3
.end method

.method showLowTemperatureDialog()V
    .locals 4

    .prologue
    .line 388
    const-string/jumbo v2, "PowerUI"

    const-string/jumbo v3, "showing low temperature dialog"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->dismissLowBatteryWarning()V

    .line 391
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->dismissInvalidChargerDialog()V

    .line 392
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->dismissExtremePowerSaveDialog()V

    .line 394
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    sget v3, Lmiui/R$style;->Theme_Light_Dialog_Alert:I

    invoke-direct {v0, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 395
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 396
    const v2, 0x91005a5

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 397
    const v2, 0x91005a4

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 398
    const v2, 0x1010355

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 399
    const v2, 0x91005a3

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 401
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 402
    .local v1, "d":Landroid/app/AlertDialog;
    new-instance v2, Lcom/android/systemui/power/PowerUI$8;

    invoke-direct {v2, p0}, Lcom/android/systemui/power/PowerUI$8;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 408
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7da

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 409
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 410
    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mLowTemperatureDialog:Landroid/app/AlertDialog;

    .line 387
    return-void
.end method

.method public start()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xa

    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->setBattaryLevel()V

    new-instance v1, Lmiui/util/HapticFeedbackUtil;

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v4}, Lmiui/util/HapticFeedbackUtil;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mHapticFeedBack:Lmiui/util/HapticFeedbackUtil;

    .line 102
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->setPreferences()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 103
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "my.settings.BAT_PREF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    const-string/jumbo v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 107
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;

    .line 109
    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "PowerUI"

    invoke-direct {v1, v2, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mBgThread:Landroid/os/HandlerThread;

    .line 110
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mBgThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 111
    new-instance v1, Lcom/android/systemui/power/PowerUI$3;

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mBgThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/power/PowerUI$3;-><init>(Lcom/android/systemui/power/PowerUI;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mBgHandler:Landroid/os/Handler;

    .line 90
    return-void
.end method
