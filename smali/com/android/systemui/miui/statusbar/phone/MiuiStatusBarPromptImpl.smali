.class Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;
.super Ljava/lang/Object;
.source "MiuiStatusBarPromptImpl.java"

# interfaces
.implements Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;


# instance fields
.field private mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mCallStateIcon:Landroid/widget/ImageView;

.field private mCallTimer:Landroid/widget/Chronometer;

.field private mClickActionType:I

.field private mContext:Landroid/content/Context;

.field private mDisableFlags:I

.field private mDriveModeBg:Landroid/view/View;

.field private mDriveModeMask:Z

.field private mDriveModeTextView:Landroid/widget/TextView;

.field private mNotchRecorderImage:Landroid/widget/ImageView;

.field private mParentView:Landroid/view/View;

.field private mRecordTimer:Landroid/widget/Chronometer;

.field private mReturnToDriveModeView:Landroid/view/View;

.field private mReturnToInCallScreenButton:Landroid/view/View;

.field private mReturnToMultiModeView:Landroid/widget/TextView;

.field private mReturnToRecorderView:Landroid/view/View;

.field private mSafepayStatusBar:Landroid/view/View;

.field private mSafepayStatusBarText:Landroid/widget/TextView;

.field private mSosStatusBar:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/view/View;I)V
    .locals 4
    .param p1, "statusBar"    # Lcom/android/systemui/statusbar/phone/StatusBar;
    .param p2, "parent"    # Landroid/view/View;
    .param p3, "disableFlags"    # I

    .prologue
    const v3, 0x91201b3

    const v2, 0x9120076

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mClickActionType:I

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mDisableFlags:I

    .line 76
    iput-object p1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 77
    iput p3, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mDisableFlags:I

    .line 78
    iput-object p2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mParentView:Landroid/view/View;

    .line 79
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mContext:Landroid/content/Context;

    .line 81
    sget-boolean v0, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v0, :cond_1

    .line 82
    const v0, 0x91201b6

    invoke-direct {p0, v0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToInCallScreenButton:Landroid/view/View;

    .line 83
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToInCallScreenButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mCallStateIcon:Landroid/widget/ImageView;

    .line 84
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToInCallScreenButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Chronometer;

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mCallTimer:Landroid/widget/Chronometer;

    .line 91
    :goto_0
    sget-boolean v0, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v0, :cond_2

    .line 92
    const v0, 0x91201b0

    invoke-direct {p0, v0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToDriveModeView:Landroid/view/View;

    .line 93
    const v0, 0x91201b1

    invoke-direct {p0, v0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mDriveModeTextView:Landroid/widget/TextView;

    .line 99
    :goto_1
    sget-boolean v0, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v0, :cond_3

    .line 100
    const v0, 0x91201b7

    invoke-direct {p0, v0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToMultiModeView:Landroid/widget/TextView;

    .line 104
    :goto_2
    const v0, 0x91202cd

    invoke-direct {p0, v0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mDriveModeBg:Landroid/view/View;

    .line 106
    sget-boolean v0, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v0, :cond_4

    .line 107
    const v0, 0x91201b2

    invoke-direct {p0, v0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToRecorderView:Landroid/view/View;

    .line 108
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToRecorderView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mNotchRecorderImage:Landroid/widget/ImageView;

    .line 109
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToRecorderView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Chronometer;

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mRecordTimer:Landroid/widget/Chronometer;

    .line 115
    :goto_3
    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->isSafePayDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    sget-boolean v0, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v0, :cond_5

    .line 117
    const v0, 0x91201b4

    invoke-direct {p0, v0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mSafepayStatusBar:Landroid/view/View;

    .line 118
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mSafepayStatusBar:Landroid/view/View;

    const v1, 0x912007a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mSafepayStatusBarText:Landroid/widget/TextView;

    .line 125
    :cond_0
    :goto_4
    sget-boolean v0, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v0, :cond_6

    .line 126
    const v0, 0x91201b5

    invoke-direct {p0, v0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mSosStatusBar:Landroid/view/View;

    .line 75
    :goto_5
    return-void

    .line 86
    :cond_1
    const v0, 0x91201c3

    invoke-direct {p0, v0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToInCallScreenButton:Landroid/view/View;

    .line 87
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToInCallScreenButton:Landroid/view/View;

    const v1, 0x91201c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mCallStateIcon:Landroid/widget/ImageView;

    .line 88
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToInCallScreenButton:Landroid/view/View;

    const v1, 0x91201c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Chronometer;

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mCallTimer:Landroid/widget/Chronometer;

    goto/16 :goto_0

    .line 95
    :cond_2
    const v0, 0x91201b8

    invoke-direct {p0, v0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToDriveModeView:Landroid/view/View;

    .line 96
    const v0, 0x91201b9

    invoke-direct {p0, v0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mDriveModeTextView:Landroid/widget/TextView;

    goto/16 :goto_1

    .line 102
    :cond_3
    const v0, 0x91201c7

    invoke-direct {p0, v0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToMultiModeView:Landroid/widget/TextView;

    goto/16 :goto_2

    .line 111
    :cond_4
    const v0, 0x91201ba

    invoke-direct {p0, v0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToRecorderView:Landroid/view/View;

    .line 112
    const v0, 0x91201bd

    invoke-direct {p0, v0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Chronometer;

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mRecordTimer:Landroid/widget/Chronometer;

    goto/16 :goto_3

    .line 120
    :cond_5
    const v0, 0x91201be

    invoke-direct {p0, v0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mSafepayStatusBar:Landroid/view/View;

    .line 121
    const v0, 0x91201bf

    invoke-direct {p0, v0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mSafepayStatusBarText:Landroid/widget/TextView;

    goto :goto_4

    .line 128
    :cond_6
    const v0, 0x91201c0

    invoke-direct {p0, v0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mSosStatusBar:Landroid/view/View;

    goto :goto_5
.end method

.method private clearReturnToInCallScreenButtonIcons()V
    .locals 0

    .prologue
    .line 211
    return-void
.end method

.method private findViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private isDriveModeDisabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 522
    iget v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mDisableFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isMultiWindowDisabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 534
    iget v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mDisableFlags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isSafePayDisabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 526
    iget v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mDisableFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isSosDisabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 530
    iget v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mDisableFlags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private updateNotchPromptViewLayout(Landroid/view/View;)V
    .locals 5
    .param p1, "viewGroup"    # Landroid/view/View;

    .prologue
    const/16 v4, 0x11

    .line 286
    if-eqz p1, :cond_1

    .line 287
    const/4 v0, 0x0

    .line 288
    .local v0, "center":Z
    sget-boolean v3, Lcom/android/systemui/Constants;->IS_NARROW_NOTCH:Z

    if-nez v3, :cond_0

    .line 289
    const/4 v0, 0x1

    .line 292
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 293
    .local v2, "mlp":Landroid/widget/FrameLayout$LayoutParams;
    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-ne v3, v4, :cond_2

    const/4 v1, 0x1

    .line 294
    .local v1, "centerValueOld":Z
    :goto_0
    if-eq v1, v0, :cond_1

    .line 295
    if-eqz v0, :cond_3

    .line 296
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 300
    :goto_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 285
    .end local v0    # "center":Z
    .end local v1    # "centerValueOld":Z
    .end local v2    # "mlp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    return-void

    .line 293
    .restart local v0    # "center":Z
    .restart local v2    # "mlp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 298
    .restart local v1    # "centerValueOld":Z
    :cond_3
    const v3, 0x800013

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_1
.end method


# virtual methods
.method public blockClickAction()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 443
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 444
    return v1

    .line 447
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->isMultiWindowDisabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToMultiModeView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToMultiModeView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 448
    iput v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mClickActionType:I

    .line 449
    return v2

    .line 451
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToInCallScreenButton:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToInCallScreenButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 452
    iput v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mClickActionType:I

    .line 453
    return v2

    .line 455
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->isDriveModeDisabled()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToDriveModeView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToDriveModeView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 456
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mClickActionType:I

    .line 457
    return v2

    .line 459
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToRecorderView:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToRecorderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 460
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mClickActionType:I

    .line 461
    return v2

    .line 463
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mSosStatusBar:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mSosStatusBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 464
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mClickActionType:I

    .line 465
    return v2

    .line 467
    :cond_5
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mClickActionType:I

    .line 468
    return v1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public handleClickAction()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x3

    .line 473
    iget v6, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mClickActionType:I

    if-nez v6, :cond_1

    .line 476
    const/4 v6, 0x3

    const/4 v7, 0x3

    const/4 v8, 0x0

    .line 475
    :try_start_0
    invoke-static {v6, v7, v8}, Landroid/app/ActivityManagerCompat;->getStackInfo(III)Landroid/app/ActivityManager$StackInfo;

    move-result-object v1

    .line 477
    .local v1, "dockStackInfo":Landroid/app/ActivityManager$StackInfo;
    if-eqz v1, :cond_0

    iget-object v6, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v6, :cond_0

    .line 478
    iget-object v6, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/android/systemui/statusbar/phone/StatusBar;->showRecentApps(ZZ)V

    .line 479
    const-string/jumbo v6, "clickStatusBarToReturnMultiWindow"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/systemui/recents/misc/RecentsPushEventHelper;->sendMultiWindowEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    .end local v1    # "dockStackInfo":Landroid/app/ActivityManager$StackInfo;
    :cond_0
    :goto_0
    return-void

    .line 485
    :cond_1
    iget v6, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mClickActionType:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 486
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v5

    .line 487
    .local v5, "telephonyManager":Lmiui/telephony/TelephonyManager;
    iget-object v6, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/miui/voiptalk/service/MiuiVoipManager;->getInstance(Landroid/content/Context;)Lcom/miui/voiptalk/service/MiuiVoipManager;

    move-result-object v4

    .line 488
    .local v4, "miuiVoipManager":Lcom/miui/voiptalk/service/MiuiVoipManager;
    invoke-virtual {v5}, Lmiui/telephony/TelephonyManager;->getCallState()I

    move-result v6

    if-nez v6, :cond_2

    .line 489
    invoke-virtual {v4}, Lcom/miui/voiptalk/service/MiuiVoipManager;->getCallState()I

    move-result v6

    if-nez v6, :cond_2

    .line 490
    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->hideReturnToInCallScreenButton()V

    .line 491
    return-void

    .line 493
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/systemui/miui/statusbar/InCallUtils;->goInCallScreen(Landroid/content/Context;)V

    .line 494
    return-void

    .line 496
    .end local v4    # "miuiVoipManager":Lcom/miui/voiptalk/service/MiuiVoipManager;
    .end local v5    # "telephonyManager":Lmiui/telephony/TelephonyManager;
    :cond_3
    iget v6, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mClickActionType:I

    if-ne v6, v8, :cond_4

    .line 497
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.MAIN"

    invoke-direct {v3, v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 498
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v6, 0x14040000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 501
    const-string/jumbo v6, "com.android.soundrecorder"

    const-string/jumbo v7, "com.android.soundrecorder.SoundRecorder"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 502
    iget-object v6, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6, v3, v7}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 504
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_4
    iget v6, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mClickActionType:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_5

    .line 505
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v6, "miui.intent.action.EXIT_SOS"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 506
    .local v0, "dialogIntent":Landroid/content/Intent;
    const-string/jumbo v6, "com.android.settings"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 507
    const/high16 v6, 0x10000000

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 508
    iget-object v6, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 472
    .end local v0    # "dialogIntent":Landroid/content/Intent;
    :cond_5
    return-void

    .line 481
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public hideReturnToInCallScreenButton()V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mCallTimer:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->stop()V

    .line 193
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToInCallScreenButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 194
    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->clearReturnToInCallScreenButtonIcons()V

    .line 191
    return-void
.end method

.method public hideReturnToRecorderView()V
    .locals 2

    .prologue
    .line 312
    sget-boolean v0, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mNotchRecorderImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 317
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mRecordTimer:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->stop()V

    .line 311
    return-void

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToRecorderView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public hideSafePayStatusBar()V
    .locals 2

    .prologue
    .line 400
    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->isSafePayDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    return-void

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mSafepayStatusBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 399
    return-void
.end method

.method public hideSosStatusBar()V
    .locals 2

    .prologue
    .line 427
    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->isSosDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    return-void

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mSosStatusBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 426
    return-void
.end method

.method public initReturnToInCallScreenButtonIcons()V
    .locals 0

    .prologue
    .line 207
    return-void
.end method

.method public makeReturnToInCallScreenButtonGone()V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToInCallScreenButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 203
    return-void
.end method

.method public makeReturnToInCallScreenButtonVisible()V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToInCallScreenButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 198
    return-void
.end method

.method public showReturnToDriveMode(Z)V
    .locals 3
    .param p1, "isShowReturnToDriveMode"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 245
    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->isDriveModeDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    return-void

    .line 249
    :cond_0
    if-eqz p1, :cond_1

    .line 250
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToDriveModeView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mDriveModeBg:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 244
    :goto_0
    return-void

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToDriveModeView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mDriveModeBg:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showReturnToDriveModeView(ZZ)V
    .locals 4
    .param p1, "show"    # Z
    .param p2, "mask_mode"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 260
    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->isDriveModeDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    return-void

    .line 264
    :cond_0
    iput-boolean p2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mDriveModeMask:Z

    .line 265
    if-eqz p2, :cond_3

    .line 266
    sget-boolean v0, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v0, :cond_2

    .line 267
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mDriveModeTextView:Landroid/widget/TextView;

    const v3, 0x91004f3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 278
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToDriveModeView:Landroid/view/View;

    if-eqz p1, :cond_5

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 279
    sget-boolean v0, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 280
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToDriveModeView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->updateNotchPromptViewLayout(Landroid/view/View;)V

    .line 281
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mDriveModeBg:Landroid/view/View;

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 259
    :cond_1
    return-void

    .line 269
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mDriveModeTextView:Landroid/widget/TextView;

    const v3, 0x91004f1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 272
    :cond_3
    sget-boolean v0, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v0, :cond_4

    .line 273
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mDriveModeTextView:Landroid/widget/TextView;

    const v3, 0x91004f2

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 275
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mDriveModeTextView:Landroid/widget/TextView;

    const v3, 0x91004f0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_5
    move v0, v2

    .line 278
    goto :goto_1

    :cond_6
    move v1, v2

    .line 281
    goto :goto_2
.end method

.method public showReturnToInCall(Z)V
    .locals 2
    .param p1, "isShowReturnToIncall"    # Z

    .prologue
    .line 236
    if-eqz p1, :cond_0

    .line 237
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToInCallScreenButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 235
    :goto_0
    return-void

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToInCallScreenButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showReturnToInCallScreenButton(Ljava/lang/String;J)V
    .locals 4
    .param p1, "state"    # Ljava/lang/String;
    .param p2, "baseTime"    # J

    .prologue
    .line 134
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToInCallScreenButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 135
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 136
    sget-boolean v1, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v1, :cond_2

    .line 137
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x90c00d6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 138
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToInCallScreenButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 142
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mCallStateIcon:Landroid/widget/ImageView;

    const v2, 0x9020600

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 153
    :goto_1
    sget-boolean v1, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-nez v1, :cond_8

    .line 154
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 155
    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 156
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mCallTimer:Landroid/widget/Chronometer;

    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mContext:Landroid/content/Context;

    const v3, 0x91004b0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Chronometer;->setFormat(Ljava/lang/String;)V

    .line 165
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mCallTimer:Landroid/widget/Chronometer;

    invoke-virtual {v1, p2, p3}, Landroid/widget/Chronometer;->setBase(J)V

    .line 166
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mCallTimer:Landroid/widget/Chronometer;

    invoke-virtual {v1}, Landroid/widget/Chronometer;->start()V

    .line 181
    :goto_3
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToInCallScreenButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->initReturnToInCallScreenButtonIcons()V

    .line 184
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToInCallScreenButton:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 185
    sget-boolean v1, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v1, :cond_1

    .line 186
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToInCallScreenButton:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->updateNotchPromptViewLayout(Landroid/view/View;)V

    .line 133
    :cond_1
    return-void

    .line 140
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToInCallScreenButton:Landroid/view/View;

    const v2, 0x9020604

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 144
    :cond_3
    sget-boolean v1, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v1, :cond_4

    .line 145
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x90c00d5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 146
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToInCallScreenButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 150
    :goto_4
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mCallStateIcon:Landroid/widget/ImageView;

    const v2, 0x90205ff    # 1.5651E-33f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 148
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToInCallScreenButton:Landroid/view/View;

    const v2, 0x90205fe

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4

    .line 157
    :cond_5
    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 158
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mCallTimer:Landroid/widget/Chronometer;

    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mContext:Landroid/content/Context;

    const v3, 0x91004b2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Chronometer;->setFormat(Ljava/lang/String;)V

    goto :goto_2

    .line 160
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mCallTimer:Landroid/widget/Chronometer;

    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mContext:Landroid/content/Context;

    const v3, 0x91004b1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Chronometer;->setFormat(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 163
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mCallTimer:Landroid/widget/Chronometer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Chronometer;->setFormat(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 168
    :cond_8
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 169
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mCallTimer:Landroid/widget/Chronometer;

    invoke-virtual {v1}, Landroid/widget/Chronometer;->stop()V

    .line 170
    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 171
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mCallTimer:Landroid/widget/Chronometer;

    invoke-virtual {v1, p2, p3}, Landroid/widget/Chronometer;->setBase(J)V

    goto/16 :goto_3

    .line 173
    :cond_9
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mCallTimer:Landroid/widget/Chronometer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/Chronometer;->setBase(J)V

    goto/16 :goto_3

    .line 176
    :cond_a
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mCallTimer:Landroid/widget/Chronometer;

    invoke-virtual {v1, p2, p3}, Landroid/widget/Chronometer;->setBase(J)V

    .line 177
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mCallTimer:Landroid/widget/Chronometer;

    invoke-virtual {v1}, Landroid/widget/Chronometer;->start()V

    goto/16 :goto_3
.end method

.method public showReturnToMulti(Z)V
    .locals 3
    .param p1, "isShowReturnToMulti"    # Z

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->isMultiWindowDisabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    return-void

    .line 221
    :cond_0
    if-eqz p1, :cond_2

    .line 222
    sget-boolean v1, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v1, :cond_1

    .line 223
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToMultiModeView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 224
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x90c00d9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 225
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToMultiModeView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 226
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToMultiModeView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->updateNotchPromptViewLayout(Landroid/view/View;)V

    .line 228
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToMultiModeView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    :goto_0
    return-void

    .line 230
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToMultiModeView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showReturnToRecorderView(Ljava/lang/String;ZJ)V
    .locals 7
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "duration"    # J

    .prologue
    .line 322
    sget-boolean v4, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v4, :cond_1

    .line 323
    iget-object v4, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToRecorderView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 324
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mContext:Landroid/content/Context;

    const v5, 0x90c0180

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 325
    iget-object v4, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToRecorderView:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 326
    iget-object v4, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mNotchRecorderImage:Landroid/widget/ImageView;

    const v5, 0x9020602

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 327
    iget-object v4, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToRecorderView:Landroid/view/View;

    invoke-direct {p0, v4}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->updateNotchPromptViewLayout(Landroid/view/View;)V

    .line 333
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v0, v4, p3

    .line 334
    .local v0, "baseTime":J
    iget-object v4, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mRecordTimer:Landroid/widget/Chronometer;

    invoke-virtual {v4}, Landroid/widget/Chronometer;->stop()V

    .line 335
    iget-object v4, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mRecordTimer:Landroid/widget/Chronometer;

    invoke-virtual {v4, v0, v1}, Landroid/widget/Chronometer;->setBase(J)V

    .line 336
    if-eqz p2, :cond_0

    .line 337
    iget-object v4, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mRecordTimer:Landroid/widget/Chronometer;

    invoke-virtual {v4}, Landroid/widget/Chronometer;->start()V

    .line 321
    :cond_0
    return-void

    .line 329
    .end local v0    # "baseTime":J
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToRecorderView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 330
    iget-object v4, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToRecorderView:Landroid/view/View;

    const v5, 0x91201bc

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 331
    .local v3, "titleView":Landroid/widget/TextView;
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public showReturnToRecorderView(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 307
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToRecorderView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 306
    return-void

    .line 307
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showReturnToSafeBar(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 343
    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->isSafePayDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    return-void

    .line 346
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mSafepayStatusBar:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 342
    return-void

    .line 346
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showReturnToSosBar(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 435
    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->isSosDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    return-void

    .line 438
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mSosStatusBar:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 434
    return-void

    .line 438
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showSafePayStatusBar(ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "ext"    # Landroid/os/Bundle;

    .prologue
    .line 352
    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->isSafePayDisabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 353
    return-void

    .line 356
    :cond_0
    sget-boolean v2, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v2, :cond_2

    .line 357
    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mSafepayStatusBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 358
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v0, -0x1

    .line 360
    .local v0, "colorId":I
    packed-switch p1, :pswitch_data_0

    .line 374
    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 375
    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 376
    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mSafepayStatusBar:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 378
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mSafepayStatusBar:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->updateNotchPromptViewLayout(Landroid/view/View;)V

    .line 351
    .end local v0    # "colorId":I
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_1
    return-void

    .line 362
    .restart local v0    # "colorId":I
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :pswitch_0
    const v0, 0x90c0182

    .line 363
    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mSafepayStatusBarText:Landroid/widget/TextView;

    const v3, 0x91005a8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 366
    :pswitch_1
    const v0, 0x90c0183

    .line 367
    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mSafepayStatusBarText:Landroid/widget/TextView;

    const v3, 0x91005a9

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 370
    :pswitch_2
    const v0, 0x90c0184

    .line 371
    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mSafepayStatusBarText:Landroid/widget/TextView;

    const v3, 0x91005aa

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 380
    .end local v0    # "colorId":I
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mSafepayStatusBar:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 381
    packed-switch p1, :pswitch_data_1

    goto :goto_1

    .line 383
    :pswitch_3
    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mSafepayStatusBar:Landroid/view/View;

    const v3, 0x9020311

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 384
    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mSafepayStatusBarText:Landroid/widget/TextView;

    const v3, 0x91005ac

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 387
    :pswitch_4
    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mSafepayStatusBar:Landroid/view/View;

    const v3, 0x9020312

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 388
    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mSafepayStatusBarText:Landroid/widget/TextView;

    const v3, 0x91005ad

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 391
    :pswitch_5
    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mSafepayStatusBar:Landroid/view/View;

    const v3, 0x9020313

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 392
    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mSafepayStatusBarText:Landroid/widget/TextView;

    const v3, 0x91005ae

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 360
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 381
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public showSosStatusBar()V
    .locals 3

    .prologue
    .line 409
    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->isSosDisabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 410
    return-void

    .line 413
    :cond_0
    sget-boolean v1, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v1, :cond_1

    .line 414
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mSosStatusBar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 416
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x90c0191

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 417
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mSosStatusBar:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 419
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mSosStatusBar:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->updateNotchPromptViewLayout(Landroid/view/View;)V

    .line 408
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-void

    .line 421
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mSosStatusBar:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
