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


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/view/View;I)V
    .locals 4
    .param p1, "statusBar"    # Lcom/android/systemui/statusbar/phone/StatusBar;
    .param p2, "parent"    # Landroid/view/View;
    .param p3, "disableFlags"    # I

    .prologue
    const v3, 0x91201b3

    const v2, 0x9120076

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mClickActionType:I

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mDisableFlags:I

    .line 73
    iput-object p1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 74
    iput p3, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mDisableFlags:I

    .line 75
    iput-object p2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mParentView:Landroid/view/View;

    .line 76
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mContext:Landroid/content/Context;

    .line 78
    sget-boolean v0, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v0, :cond_1

    .line 79
    const v0, 0x91201b5

    invoke-direct {p0, v0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToInCallScreenButton:Landroid/view/View;

    .line 80
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToInCallScreenButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mCallStateIcon:Landroid/widget/ImageView;

    .line 81
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToInCallScreenButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Chronometer;

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mCallTimer:Landroid/widget/Chronometer;

    .line 88
    :goto_0
    sget-boolean v0, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v0, :cond_2

    .line 89
    const v0, 0x91201b0

    invoke-direct {p0, v0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToDriveModeView:Landroid/view/View;

    .line 90
    const v0, 0x91201b1

    invoke-direct {p0, v0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mDriveModeTextView:Landroid/widget/TextView;

    .line 96
    :goto_1
    sget-boolean v0, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v0, :cond_3

    .line 97
    const v0, 0x91201b6

    invoke-direct {p0, v0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToMultiModeView:Landroid/widget/TextView;

    .line 101
    :goto_2
    const v0, 0x91202c7

    invoke-direct {p0, v0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mDriveModeBg:Landroid/view/View;

    .line 103
    sget-boolean v0, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v0, :cond_4

    .line 104
    const v0, 0x91201b2

    invoke-direct {p0, v0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToRecorderView:Landroid/view/View;

    .line 105
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToRecorderView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mNotchRecorderImage:Landroid/widget/ImageView;

    .line 106
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToRecorderView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Chronometer;

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mRecordTimer:Landroid/widget/Chronometer;

    .line 112
    :goto_3
    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->isSafePayDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    sget-boolean v0, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v0, :cond_5

    .line 114
    const v0, 0x91201b4

    invoke-direct {p0, v0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mSafepayStatusBar:Landroid/view/View;

    .line 115
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mSafepayStatusBar:Landroid/view/View;

    const v1, 0x912007a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mSafepayStatusBarText:Landroid/widget/TextView;

    .line 72
    :cond_0
    :goto_4
    return-void

    .line 83
    :cond_1
    const v0, 0x91201bf

    invoke-direct {p0, v0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToInCallScreenButton:Landroid/view/View;

    .line 84
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToInCallScreenButton:Landroid/view/View;

    const v1, 0x91201c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mCallStateIcon:Landroid/widget/ImageView;

    .line 85
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToInCallScreenButton:Landroid/view/View;

    const v1, 0x91201c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Chronometer;

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mCallTimer:Landroid/widget/Chronometer;

    goto/16 :goto_0

    .line 92
    :cond_2
    const v0, 0x91201b7

    invoke-direct {p0, v0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToDriveModeView:Landroid/view/View;

    .line 93
    const v0, 0x91201b8

    invoke-direct {p0, v0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mDriveModeTextView:Landroid/widget/TextView;

    goto/16 :goto_1

    .line 99
    :cond_3
    const v0, 0x91201c3

    invoke-direct {p0, v0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToMultiModeView:Landroid/widget/TextView;

    goto/16 :goto_2

    .line 108
    :cond_4
    const v0, 0x91201b9

    invoke-direct {p0, v0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToRecorderView:Landroid/view/View;

    .line 109
    const v0, 0x91201bc

    invoke-direct {p0, v0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Chronometer;

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mRecordTimer:Landroid/widget/Chronometer;

    goto :goto_3

    .line 117
    :cond_5
    const v0, 0x91201bd

    invoke-direct {p0, v0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mSafepayStatusBar:Landroid/view/View;

    .line 118
    const v0, 0x91201be

    invoke-direct {p0, v0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mSafepayStatusBarText:Landroid/widget/TextView;

    goto :goto_4
.end method

.method private clearReturnToInCallScreenButtonIcons()V
    .locals 0

    .prologue
    .line 202
    return-void
.end method

.method private findViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 465
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private isDriveModeDisabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 469
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

    .line 477
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

    .line 473
    iget v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mDisableFlags:I

    and-int/lit8 v1, v1, 0x2

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

    .line 277
    if-eqz p1, :cond_1

    .line 278
    const/4 v0, 0x0

    .line 279
    .local v0, "center":Z
    sget-boolean v3, Lcom/android/systemui/Constants;->IS_NARROW_NOTCH:Z

    if-nez v3, :cond_0

    .line 280
    const/4 v0, 0x1

    .line 283
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 284
    .local v2, "mlp":Landroid/widget/FrameLayout$LayoutParams;
    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-ne v3, v4, :cond_2

    const/4 v1, 0x1

    .line 285
    .local v1, "centerValueOld":Z
    :goto_0
    if-eq v1, v0, :cond_1

    .line 286
    if-eqz v0, :cond_3

    .line 287
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 291
    :goto_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
    .end local v0    # "center":Z
    .end local v1    # "centerValueOld":Z
    .end local v2    # "mlp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    return-void

    .line 284
    .restart local v0    # "center":Z
    .restart local v2    # "mlp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 289
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

    .line 400
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 401
    return v1

    .line 404
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

    .line 405
    iput v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mClickActionType:I

    .line 406
    return v2

    .line 408
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToInCallScreenButton:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToInCallScreenButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 409
    iput v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mClickActionType:I

    .line 410
    return v2

    .line 412
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

    .line 413
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mClickActionType:I

    .line 414
    return v2

    .line 416
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToRecorderView:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToRecorderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 417
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mClickActionType:I

    .line 418
    return v2

    .line 420
    :cond_4
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mClickActionType:I

    .line 421
    return v1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public handleClickAction()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x3

    .line 426
    iget v5, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mClickActionType:I

    if-nez v5, :cond_1

    .line 429
    const/4 v5, 0x3

    const/4 v6, 0x3

    const/4 v7, 0x0

    .line 428
    :try_start_0
    invoke-static {v5, v6, v7}, Landroid/app/ActivityManagerCompat;->getStackInfo(III)Landroid/app/ActivityManager$StackInfo;

    move-result-object v0

    .line 430
    .local v0, "dockStackInfo":Landroid/app/ActivityManager$StackInfo;
    if-eqz v0, :cond_0

    iget-object v5, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v5, :cond_0

    .line 431
    iget-object v5, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/statusbar/phone/StatusBar;->showRecentApps(ZZ)V

    .line 432
    const-string/jumbo v5, "clickStatusBarToReturnMultiWindow"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/systemui/recents/misc/RecentsPushEventHelper;->sendMultiWindowEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    .end local v0    # "dockStackInfo":Landroid/app/ActivityManager$StackInfo;
    :cond_0
    :goto_0
    return-void

    .line 438
    :cond_1
    iget v5, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mClickActionType:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 439
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v4

    .line 440
    .local v4, "telephonyManager":Lmiui/telephony/TelephonyManager;
    iget-object v5, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/miui/voiptalk/service/MiuiVoipManager;->getInstance(Landroid/content/Context;)Lcom/miui/voiptalk/service/MiuiVoipManager;

    move-result-object v3

    .line 441
    .local v3, "miuiVoipManager":Lcom/miui/voiptalk/service/MiuiVoipManager;
    invoke-virtual {v4}, Lmiui/telephony/TelephonyManager;->getCallState()I

    move-result v5

    if-nez v5, :cond_2

    .line 442
    invoke-virtual {v3}, Lcom/miui/voiptalk/service/MiuiVoipManager;->getCallState()I

    move-result v5

    if-nez v5, :cond_2

    .line 443
    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->hideReturnToInCallScreenButton()V

    .line 444
    return-void

    .line 446
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/miui/statusbar/InCallUtils;->goInCallScreen(Landroid/content/Context;)V

    .line 447
    return-void

    .line 449
    .end local v3    # "miuiVoipManager":Lcom/miui/voiptalk/service/MiuiVoipManager;
    .end local v4    # "telephonyManager":Lmiui/telephony/TelephonyManager;
    :cond_3
    iget v5, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mClickActionType:I

    if-ne v5, v7, :cond_4

    .line 450
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.MAIN"

    invoke-direct {v2, v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 451
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v5, 0x14040000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 454
    const-string/jumbo v5, "com.android.soundrecorder"

    const-string/jumbo v6, "com.android.soundrecorder.SoundRecorder"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 455
    iget-object v5, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v5, v2, v6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 425
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_4
    return-void

    .line 434
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public hideReturnToInCallScreenButton()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mCallTimer:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->stop()V

    .line 184
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToInCallScreenButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 185
    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->clearReturnToInCallScreenButtonIcons()V

    .line 182
    return-void
.end method

.method public hideReturnToRecorderView()V
    .locals 2

    .prologue
    .line 303
    sget-boolean v0, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mNotchRecorderImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 308
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mRecordTimer:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->stop()V

    .line 302
    return-void

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToRecorderView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public hideSafePayStatusBar()V
    .locals 2

    .prologue
    .line 391
    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->isSafePayDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    return-void

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mSafepayStatusBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 390
    return-void
.end method

.method public initReturnToInCallScreenButtonIcons()V
    .locals 0

    .prologue
    .line 198
    return-void
.end method

.method public makeReturnToInCallScreenButtonGone()V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToInCallScreenButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 194
    return-void
.end method

.method public makeReturnToInCallScreenButtonVisible()V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToInCallScreenButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 189
    return-void
.end method

.method public showReturnToDriveMode(Z)V
    .locals 3
    .param p1, "isShowReturnToDriveMode"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 236
    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->isDriveModeDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    return-void

    .line 240
    :cond_0
    if-eqz p1, :cond_1

    .line 241
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToDriveModeView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mDriveModeBg:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 235
    :goto_0
    return-void

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToDriveModeView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 245
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

    .line 251
    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->isDriveModeDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    return-void

    .line 255
    :cond_0
    iput-boolean p2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mDriveModeMask:Z

    .line 256
    if-eqz p2, :cond_3

    .line 257
    sget-boolean v0, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v0, :cond_2

    .line 258
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mDriveModeTextView:Landroid/widget/TextView;

    const v3, 0x91004f3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 269
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToDriveModeView:Landroid/view/View;

    if-eqz p1, :cond_5

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 270
    sget-boolean v0, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 271
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToDriveModeView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->updateNotchPromptViewLayout(Landroid/view/View;)V

    .line 272
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mDriveModeBg:Landroid/view/View;

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 250
    :cond_1
    return-void

    .line 260
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mDriveModeTextView:Landroid/widget/TextView;

    const v3, 0x91004f1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 263
    :cond_3
    sget-boolean v0, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v0, :cond_4

    .line 264
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mDriveModeTextView:Landroid/widget/TextView;

    const v3, 0x91004f2

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 266
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mDriveModeTextView:Landroid/widget/TextView;

    const v3, 0x91004f0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_5
    move v0, v2

    .line 269
    goto :goto_1

    :cond_6
    move v1, v2

    .line 272
    goto :goto_2
.end method

.method public showReturnToInCall(Z)V
    .locals 2
    .param p1, "isShowReturnToIncall"    # Z

    .prologue
    .line 227
    if-eqz p1, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToInCallScreenButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 226
    :goto_0
    return-void

    .line 230
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
    .line 125
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToInCallScreenButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 126
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 127
    sget-boolean v1, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v1, :cond_2

    .line 128
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x90c00d6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 129
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToInCallScreenButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 133
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mCallStateIcon:Landroid/widget/ImageView;

    const v2, 0x9020600

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 144
    :goto_1
    sget-boolean v1, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-nez v1, :cond_8

    .line 145
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 146
    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 147
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mCallTimer:Landroid/widget/Chronometer;

    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mContext:Landroid/content/Context;

    const v3, 0x91004b0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Chronometer;->setFormat(Ljava/lang/String;)V

    .line 156
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mCallTimer:Landroid/widget/Chronometer;

    invoke-virtual {v1, p2, p3}, Landroid/widget/Chronometer;->setBase(J)V

    .line 157
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mCallTimer:Landroid/widget/Chronometer;

    invoke-virtual {v1}, Landroid/widget/Chronometer;->start()V

    .line 172
    :goto_3
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToInCallScreenButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->initReturnToInCallScreenButtonIcons()V

    .line 175
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToInCallScreenButton:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 176
    sget-boolean v1, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v1, :cond_1

    .line 177
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToInCallScreenButton:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->updateNotchPromptViewLayout(Landroid/view/View;)V

    .line 124
    :cond_1
    return-void

    .line 131
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToInCallScreenButton:Landroid/view/View;

    const v2, 0x9020604

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 135
    :cond_3
    sget-boolean v1, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v1, :cond_4

    .line 136
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x90c00d5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 137
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToInCallScreenButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 141
    :goto_4
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mCallStateIcon:Landroid/widget/ImageView;

    const v2, 0x90205ff    # 1.5651E-33f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 139
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToInCallScreenButton:Landroid/view/View;

    const v2, 0x90205fe

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4

    .line 148
    :cond_5
    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 149
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mCallTimer:Landroid/widget/Chronometer;

    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mContext:Landroid/content/Context;

    const v3, 0x91004b2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Chronometer;->setFormat(Ljava/lang/String;)V

    goto :goto_2

    .line 151
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mCallTimer:Landroid/widget/Chronometer;

    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mContext:Landroid/content/Context;

    const v3, 0x91004b1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Chronometer;->setFormat(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 154
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mCallTimer:Landroid/widget/Chronometer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Chronometer;->setFormat(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 159
    :cond_8
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 160
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mCallTimer:Landroid/widget/Chronometer;

    invoke-virtual {v1}, Landroid/widget/Chronometer;->stop()V

    .line 161
    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 162
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mCallTimer:Landroid/widget/Chronometer;

    invoke-virtual {v1, p2, p3}, Landroid/widget/Chronometer;->setBase(J)V

    goto/16 :goto_3

    .line 164
    :cond_9
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mCallTimer:Landroid/widget/Chronometer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/Chronometer;->setBase(J)V

    goto/16 :goto_3

    .line 167
    :cond_a
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mCallTimer:Landroid/widget/Chronometer;

    invoke-virtual {v1, p2, p3}, Landroid/widget/Chronometer;->setBase(J)V

    .line 168
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mCallTimer:Landroid/widget/Chronometer;

    invoke-virtual {v1}, Landroid/widget/Chronometer;->start()V

    goto/16 :goto_3
.end method

.method public showReturnToMulti(Z)V
    .locals 3
    .param p1, "isShowReturnToMulti"    # Z

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->isMultiWindowDisabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    return-void

    .line 212
    :cond_0
    if-eqz p1, :cond_2

    .line 213
    sget-boolean v1, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v1, :cond_1

    .line 214
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToMultiModeView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 215
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x90c00d9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 216
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToMultiModeView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 217
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToMultiModeView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->updateNotchPromptViewLayout(Landroid/view/View;)V

    .line 219
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToMultiModeView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 207
    :goto_0
    return-void

    .line 221
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
    .line 313
    sget-boolean v4, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v4, :cond_1

    .line 314
    iget-object v4, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToRecorderView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 315
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mContext:Landroid/content/Context;

    const v5, 0x90c0180

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 316
    iget-object v4, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToRecorderView:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 317
    iget-object v4, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mNotchRecorderImage:Landroid/widget/ImageView;

    const v5, 0x9020602

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 318
    iget-object v4, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToRecorderView:Landroid/view/View;

    invoke-direct {p0, v4}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->updateNotchPromptViewLayout(Landroid/view/View;)V

    .line 324
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v0, v4, p3

    .line 325
    .local v0, "baseTime":J
    iget-object v4, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mRecordTimer:Landroid/widget/Chronometer;

    invoke-virtual {v4}, Landroid/widget/Chronometer;->stop()V

    .line 326
    iget-object v4, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mRecordTimer:Landroid/widget/Chronometer;

    invoke-virtual {v4, v0, v1}, Landroid/widget/Chronometer;->setBase(J)V

    .line 327
    if-eqz p2, :cond_0

    .line 328
    iget-object v4, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mRecordTimer:Landroid/widget/Chronometer;

    invoke-virtual {v4}, Landroid/widget/Chronometer;->start()V

    .line 312
    :cond_0
    return-void

    .line 320
    .end local v0    # "baseTime":J
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToRecorderView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 321
    iget-object v4, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToRecorderView:Landroid/view/View;

    const v5, 0x91201bb

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 322
    .local v3, "titleView":Landroid/widget/TextView;
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public showReturnToRecorderView(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 298
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mReturnToRecorderView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 297
    return-void

    .line 298
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showReturnToSafeBar(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 334
    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->isSafePayDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    return-void

    .line 337
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mSafepayStatusBar:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 333
    return-void

    .line 337
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showSafePayStatusBar(ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "ext"    # Landroid/os/Bundle;

    .prologue
    .line 343
    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->isSafePayDisabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 344
    return-void

    .line 347
    :cond_0
    sget-boolean v2, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v2, :cond_2

    .line 348
    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mSafepayStatusBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 349
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v0, -0x1

    .line 351
    .local v0, "colorId":I
    packed-switch p1, :pswitch_data_0

    .line 365
    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 366
    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 367
    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mSafepayStatusBar:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 369
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mSafepayStatusBar:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->updateNotchPromptViewLayout(Landroid/view/View;)V

    .line 342
    .end local v0    # "colorId":I
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_1
    return-void

    .line 353
    .restart local v0    # "colorId":I
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :pswitch_0
    const v0, 0x90c0182

    .line 354
    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mSafepayStatusBarText:Landroid/widget/TextView;

    const v3, 0x91005a8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 357
    :pswitch_1
    const v0, 0x90c0183

    .line 358
    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mSafepayStatusBarText:Landroid/widget/TextView;

    const v3, 0x91005a9

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 361
    :pswitch_2
    const v0, 0x90c0184

    .line 362
    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mSafepayStatusBarText:Landroid/widget/TextView;

    const v3, 0x91005aa

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 371
    .end local v0    # "colorId":I
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mSafepayStatusBar:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 372
    packed-switch p1, :pswitch_data_1

    goto :goto_1

    .line 374
    :pswitch_3
    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mSafepayStatusBar:Landroid/view/View;

    const v3, 0x9020311

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 375
    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mSafepayStatusBarText:Landroid/widget/TextView;

    const v3, 0x91005ac

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 378
    :pswitch_4
    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mSafepayStatusBar:Landroid/view/View;

    const v3, 0x9020312

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 379
    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mSafepayStatusBarText:Landroid/widget/TextView;

    const v3, 0x91005ad

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 382
    :pswitch_5
    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mSafepayStatusBar:Landroid/view/View;

    const v3, 0x9020313

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 383
    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;->mSafepayStatusBarText:Landroid/widget/TextView;

    const v3, 0x91005ae

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 351
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 372
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
