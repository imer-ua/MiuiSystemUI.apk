.class public Lcom/android/keyguard/smartcover/LatticeSmartCoverView;
.super Lcom/android/keyguard/smartcover/SmartCoverView;
.source "LatticeSmartCoverView.java"


# instance fields
.field private mBatteryInfo:Landroid/view/View;

.field private mBatteryLevelImage:Lcom/android/keyguard/smartcover/BatteryLevelImageView;

.field private mBatteryLevelText:Landroid/widget/TextView;

.field private mInfo1:Landroid/view/View;

.field private mInfo1TextView:Landroid/widget/TextView;

.field private mInfo2:Landroid/view/View;

.field private mInfo2TextView1:Landroid/widget/TextView;

.field private mInfo2TextView2:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/android/keyguard/smartcover/SmartCoverView;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/smartcover/SmartCoverView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 34
    invoke-super {p0}, Lcom/android/keyguard/smartcover/SmartCoverView;->onFinishInflate()V

    .line 35
    const v1, 0x91200ef

    invoke-virtual {p0, v1}, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mInfo1:Landroid/view/View;

    .line 36
    iget-object v1, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mInfo1:Landroid/view/View;

    const v2, 0x91200f0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mInfo1TextView:Landroid/widget/TextView;

    .line 37
    const v1, 0x91200f1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mInfo2:Landroid/view/View;

    .line 38
    iget-object v1, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mInfo2:Landroid/view/View;

    const v2, 0x91200f5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mInfo2TextView1:Landroid/widget/TextView;

    .line 39
    iget-object v1, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mInfo2:Landroid/view/View;

    const v2, 0x91200f3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mInfo2TextView2:Landroid/widget/TextView;

    .line 40
    const v1, 0x91202c7

    invoke-virtual {p0, v1}, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mBatteryInfo:Landroid/view/View;

    .line 41
    const v1, 0x91202c8

    invoke-virtual {p0, v1}, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/smartcover/BatteryLevelImageView;

    iput-object v1, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mBatteryLevelImage:Lcom/android/keyguard/smartcover/BatteryLevelImageView;

    .line 42
    const v1, 0x91200f6

    invoke-virtual {p0, v1}, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mBatteryLevelText:Landroid/widget/TextView;

    .line 44
    const-string/jumbo v1, "miuiex-bitmap"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 45
    .local v0, "typeface":Landroid/graphics/Typeface;
    iget-object v1, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mInfo1TextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 46
    iget-object v1, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mInfo2TextView1:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 47
    iget-object v1, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mInfo2TextView2:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 48
    iget-object v1, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mBatteryLevelText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 33
    return-void
.end method

.method protected refresh()V
    .locals 5

    .prologue
    const v2, 0x9020341

    const v1, 0x9020340

    const/4 v3, 0x4

    const/4 v4, 0x0

    .line 53
    iget-object v0, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mInfo1:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 54
    iget-object v0, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mInfo2:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 55
    iget-object v0, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mBatteryInfo:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 56
    iget-boolean v0, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mShowMissCall:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mShowSms:Z

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mInfo2:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 58
    iget-object v0, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mInfo2TextView1:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mSmsNum:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v0, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mInfo2TextView2:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mMissCallNum:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v0, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mInfo2:Landroid/view/View;

    const v3, 0x91200f4

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 62
    iget-object v0, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mInfo2:Landroid/view/View;

    const v2, 0x91200f2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mShowMissCall:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mShowSms:Z

    if-eqz v0, :cond_3

    .line 78
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mInfo1:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 79
    iget-object v3, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mInfo1TextView:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mShowMissCall:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mMissCallNum:I

    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mInfo1:Landroid/view/View;

    const v3, 0x9120076

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mShowMissCall:Z

    if-eqz v3, :cond_9

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 65
    :cond_3
    iget-boolean v0, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mCharging:Z

    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mLevel:I

    iget v1, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mLowBatteryWarningLevel:I

    if-gt v0, v1, :cond_0

    .line 66
    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mBatteryLevelImage:Lcom/android/keyguard/smartcover/BatteryLevelImageView;

    iget-boolean v0, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mCharging:Z

    if-eqz v0, :cond_5

    .line 67
    const v0, 0x902033e

    .line 66
    :goto_3
    invoke-virtual {v1, v0}, Lcom/android/keyguard/smartcover/BatteryLevelImageView;->setImageResource(I)V

    .line 69
    iget-object v0, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mBatteryLevelImage:Lcom/android/keyguard/smartcover/BatteryLevelImageView;

    iget v1, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mLevel:I

    invoke-virtual {v0, v1}, Lcom/android/keyguard/smartcover/BatteryLevelImageView;->setBatteryLevel(I)V

    .line 70
    iget-object v1, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mBatteryLevelText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mLevel:I

    const/16 v3, 0xa

    if-ge v0, v3, :cond_6

    const-string/jumbo v0, "0"

    :goto_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mLevel:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v1, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mBatteryLevelText:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mCharging:Z

    if-eqz v0, :cond_7

    .line 72
    iget-object v0, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x90c011b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 71
    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 74
    iget-object v0, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mBatteryInfo:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 68
    :cond_5
    const v0, 0x902033f

    goto :goto_3

    .line 70
    :cond_6
    const-string/jumbo v0, ""

    goto :goto_4

    .line 73
    :cond_7
    iget-object v0, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x90c011c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_5

    .line 79
    :cond_8
    iget v0, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mSmsNum:I

    goto/16 :goto_1

    :cond_9
    move v1, v2

    .line 82
    goto/16 :goto_2
.end method
