.class public Lcom/android/keyguard/smartcover/FullSmartCoverView;
.super Lcom/android/keyguard/smartcover/SmartCoverView;
.source "FullSmartCoverView.java"


# instance fields
.field private mBatteryLevelText:Landroid/widget/TextView;

.field private mDate:Lcom/android/keyguard/smartcover/Clock;

.field private mHour:Lcom/android/keyguard/smartcover/Clock;

.field private mInfo1:Landroid/view/View;

.field private mInfo1TextView:Landroid/widget/TextView;

.field private mInfo2:Landroid/view/View;

.field private mInfo2TextView1:Landroid/widget/TextView;

.field private mInfo2TextView2:Landroid/widget/TextView;

.field private mMinute:Lcom/android/keyguard/smartcover/Clock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/keyguard/smartcover/SmartCoverView;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/smartcover/SmartCoverView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 35
    invoke-super {p0}, Lcom/android/keyguard/smartcover/SmartCoverView;->onFinishInflate()V

    .line 36
    const v0, 0x91200ed

    invoke-virtual {p0, v0}, Lcom/android/keyguard/smartcover/FullSmartCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/smartcover/Clock;

    iput-object v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mHour:Lcom/android/keyguard/smartcover/Clock;

    .line 37
    iget-object v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mHour:Lcom/android/keyguard/smartcover/Clock;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/smartcover/Clock;->setShowHour(Z)V

    .line 38
    const v0, 0x91200ee

    invoke-virtual {p0, v0}, Lcom/android/keyguard/smartcover/FullSmartCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/smartcover/Clock;

    iput-object v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mMinute:Lcom/android/keyguard/smartcover/Clock;

    .line 39
    iget-object v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mMinute:Lcom/android/keyguard/smartcover/Clock;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/smartcover/Clock;->setShowMinute(Z)V

    .line 40
    const v0, 0x91200a3

    invoke-virtual {p0, v0}, Lcom/android/keyguard/smartcover/FullSmartCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/smartcover/Clock;

    iput-object v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mDate:Lcom/android/keyguard/smartcover/Clock;

    .line 41
    iget-object v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mDate:Lcom/android/keyguard/smartcover/Clock;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/smartcover/Clock;->setShowDate(Z)V

    .line 42
    const v0, 0x91200ef

    invoke-virtual {p0, v0}, Lcom/android/keyguard/smartcover/FullSmartCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mInfo1:Landroid/view/View;

    .line 43
    iget-object v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mInfo1:Landroid/view/View;

    const v1, 0x91200f0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mInfo1TextView:Landroid/widget/TextView;

    .line 44
    const v0, 0x91200f1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/smartcover/FullSmartCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mInfo2:Landroid/view/View;

    .line 45
    iget-object v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mInfo2:Landroid/view/View;

    const v1, 0x91200f5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mInfo2TextView1:Landroid/widget/TextView;

    .line 46
    iget-object v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mInfo2:Landroid/view/View;

    const v1, 0x91200f3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mInfo2TextView2:Landroid/widget/TextView;

    .line 47
    const v0, 0x91200f6

    invoke-virtual {p0, v0}, Lcom/android/keyguard/smartcover/FullSmartCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mBatteryLevelText:Landroid/widget/TextView;

    .line 34
    return-void
.end method

.method protected refresh()V
    .locals 5

    .prologue
    const v2, 0x90200ba

    const v1, 0x90200b9

    const/4 v3, 0x4

    const/4 v4, 0x0

    .line 52
    iget-object v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mInfo1:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 53
    iget-object v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mInfo2:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 54
    iget-object v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mBatteryLevelText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 55
    iget-boolean v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mShowMissCall:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mShowSms:Z

    if-eqz v0, :cond_4

    .line 56
    iget-object v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mInfo2:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 57
    iget-object v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mInfo2TextView1:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mSmsNum:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mInfo2TextView2:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mMissCallNum:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mInfo2:Landroid/view/View;

    const v3, 0x91200f4

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 61
    iget-object v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mInfo2:Landroid/view/View;

    const v2, 0x91200f2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 70
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mCharging:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mLevel:I

    iget v1, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mLowBatteryWarningLevel:I

    if-gt v0, v1, :cond_3

    .line 71
    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mCharging:Z

    if-eqz v0, :cond_9

    .line 72
    iget-boolean v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mFull:Z

    if-eqz v0, :cond_8

    .line 73
    iget-object v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mBatteryLevelText:Landroid/widget/TextView;

    const v1, 0x91003a6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 81
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mBatteryLevelText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 51
    :cond_3
    return-void

    .line 63
    :cond_4
    iget-boolean v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mShowMissCall:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mShowSms:Z

    if-eqz v0, :cond_0

    .line 64
    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mInfo1:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 65
    iget-object v3, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mInfo1TextView:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mShowMissCall:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mMissCallNum:I

    :goto_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mInfo1:Landroid/view/View;

    const v3, 0x9120076

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mShowMissCall:Z

    if-eqz v3, :cond_7

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 65
    :cond_6
    iget v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mSmsNum:I

    goto :goto_2

    :cond_7
    move v1, v2

    .line 68
    goto :goto_3

    .line 75
    :cond_8
    iget-object v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mBatteryLevelText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/keyguard/smartcover/FullSmartCoverView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 76
    iget v3, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mLevel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 75
    const v3, 0x91003a5

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 78
    :cond_9
    iget v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mLevel:I

    iget v1, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mLowBatteryWarningLevel:I

    if-gt v0, v1, :cond_2

    .line 79
    iget-object v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mBatteryLevelText:Landroid/widget/TextView;

    const v1, 0x91003a7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method
