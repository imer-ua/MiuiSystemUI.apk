.class public Lcom/android/keyguard/KeyguardPasswordView;
.super Lcom/android/keyguard/KeyguardAbsKeyInputView;
.source "KeyguardPasswordView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;
.implements Lcom/android/keyguard/BackButton$BackButtonCallback;


# instance fields
.field private mBackButton:Lcom/android/keyguard/BackButton;

.field private final mDisappearYTranslation:I

.field private mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

.field private mEmergencyCarrierArea:Lcom/android/keyguard/EmergencyCarrierArea;

.field private mEmptySpace:Landroid/widget/Space;

.field private mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field private mFontScale:F

.field private mKeyboardView:Lmiui/view/MiuiKeyBoardView;

.field private mKeyboardViewLayout:Landroid/view/ViewGroup;

.field private mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mOrientation:I

.field private mPasswordEntry:Landroid/widget/EditText;

.field private mPasswordEntryDisabler:Lcom/android/internal/widget/TextViewInputDisabler;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/KeyguardPasswordView;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/EditText;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardPasswordView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 82
    const v1, 0x90f02d9

    .line 81
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mDisappearYTranslation:I

    .line 84
    const v0, 0x10c000e

    .line 83
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 86
    const v0, 0x10c000f

    .line 85
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 79
    return-void
.end method


# virtual methods
.method protected getPasswordText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPasswordTextViewId()I
    .locals 1

    .prologue
    .line 97
    const v0, 0x9120137

    return v0
.end method

.method protected getPromtReasonStringRes(I)I
    .locals 1
    .param p1, "reason"    # I

    .prologue
    const v0, 0x910039c

    .line 123
    packed-switch p1, :pswitch_data_0

    .line 135
    return v0

    .line 125
    :pswitch_0
    const v0, 0x91003db

    return v0

    .line 127
    :pswitch_1
    return v0

    .line 129
    :pswitch_2
    const v0, 0x91003a0

    return v0

    .line 131
    :pswitch_3
    const v0, 0x91003a1

    return v0

    .line 133
    :pswitch_4
    const/4 v0, 0x0

    return v0

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public onBackButtonClicked()V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->reset()V

    .line 216
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 214
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 11
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v10, 0x0

    .line 298
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 299
    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 300
    .local v1, "fontScale":F
    iget v8, p0, Lcom/android/keyguard/KeyguardPasswordView;->mFontScale:F

    cmpl-float v8, v8, v1

    if-eqz v8, :cond_0

    .line 301
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 303
    .local v6, "resources":Landroid/content/res/Resources;
    const v8, 0x90f03af

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 304
    .local v7, "textSize":I
    iget-object v8, p0, Lcom/android/keyguard/KeyguardPasswordView;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    int-to-float v9, v7

    invoke-virtual {v8, v10, v9}, Lcom/android/keyguard/EmergencyButton;->setTextSize(IF)V

    .line 305
    iget-object v8, p0, Lcom/android/keyguard/KeyguardPasswordView;->mBackButton:Lcom/android/keyguard/BackButton;

    int-to-float v9, v7

    invoke-virtual {v8, v10, v9}, Lcom/android/keyguard/BackButton;->setTextSize(IF)V

    .line 306
    iput v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mFontScale:F

    .line 308
    .end local v6    # "resources":Landroid/content/res/Resources;
    .end local v7    # "textSize":I
    :cond_0
    iget v5, p1, Landroid/content/res/Configuration;->orientation:I

    .line 309
    .local v5, "orientation":I
    iget v8, p0, Lcom/android/keyguard/KeyguardPasswordView;->mOrientation:I

    if-eq v8, v5, :cond_1

    .line 311
    iget-object v8, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 312
    .local v0, "entryLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 313
    const v9, 0x90f039e

    .line 312
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    iput v8, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 314
    iget-object v8, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 317
    iget-object v8, p0, Lcom/android/keyguard/KeyguardPasswordView;->mKeyguardBouncerMessageView:Lcom/android/keyguard/KeyguardBouncerMessageView;

    invoke-virtual {v8}, Lcom/android/keyguard/KeyguardBouncerMessageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 318
    .local v4, "messageLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 319
    const v9, 0x90f03b0

    .line 318
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    iput v8, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 320
    iget-object v8, p0, Lcom/android/keyguard/KeyguardPasswordView;->mKeyguardBouncerMessageView:Lcom/android/keyguard/KeyguardBouncerMessageView;

    invoke-virtual {v8, v4}, Lcom/android/keyguard/KeyguardBouncerMessageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 323
    iget-object v8, p0, Lcom/android/keyguard/KeyguardPasswordView;->mKeyboardViewLayout:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 324
    .local v2, "keyboardContainerLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 325
    const v9, 0x90f03a4

    .line 324
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    iput v8, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 326
    iget-object v8, p0, Lcom/android/keyguard/KeyguardPasswordView;->mKeyboardViewLayout:Landroid/view/ViewGroup;

    invoke-virtual {v8, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 329
    iget-object v8, p0, Lcom/android/keyguard/KeyguardPasswordView;->mKeyboardView:Lmiui/view/MiuiKeyBoardView;

    invoke-virtual {v8}, Lmiui/view/MiuiKeyBoardView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 330
    .local v3, "keyboardLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 331
    const v9, 0x90f03a3

    .line 330
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 332
    iget-object v8, p0, Lcom/android/keyguard/KeyguardPasswordView;->mKeyboardView:Lmiui/view/MiuiKeyBoardView;

    invoke-virtual {v8, v3}, Lmiui/view/MiuiKeyBoardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 297
    .end local v0    # "entryLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v2    # "keyboardContainerLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "keyboardLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "messageLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 152
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onFinishInflate()V

    .line 154
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordView;->getPasswordTextViewId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/EditText;

    .line 155
    new-instance v0, Lcom/android/internal/widget/TextViewInputDisabler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/EditText;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/TextViewInputDisabler;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntryDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    .line 156
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 157
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 160
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/EditText;

    new-instance v1, Lcom/android/keyguard/KeyguardPasswordView$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardPasswordView$2;-><init>(Lcom/android/keyguard/KeyguardPasswordView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelected(Z)V

    .line 169
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 171
    const v0, 0x9120139

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/view/MiuiKeyBoardView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mKeyboardView:Lmiui/view/MiuiKeyBoardView;

    .line 172
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mKeyboardView:Lmiui/view/MiuiKeyBoardView;

    new-instance v1, Lcom/android/keyguard/KeyguardPasswordView$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardPasswordView$3;-><init>(Lcom/android/keyguard/KeyguardPasswordView;)V

    invoke-virtual {v0, v1}, Lmiui/view/MiuiKeyBoardView;->addKeyboardListener(Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;)V

    .line 198
    const v0, 0x9120123

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/EmergencyCarrierArea;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mEmergencyCarrierArea:Lcom/android/keyguard/EmergencyCarrierArea;

    .line 200
    const v0, 0x912012c

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/EmergencyButton;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    .line 202
    const v0, 0x912012e

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/BackButton;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mBackButton:Lcom/android/keyguard/BackButton;

    .line 203
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mBackButton:Lcom/android/keyguard/BackButton;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mBackButton:Lcom/android/keyguard/BackButton;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/BackButton;->setCallback(Lcom/android/keyguard/BackButton$BackButtonCallback;)V

    .line 207
    :cond_0
    const v0, 0x912012d

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Space;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mEmptySpace:Landroid/widget/Space;

    .line 208
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mEmptySpace:Landroid/widget/Space;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Space;->setVisibility(I)V

    .line 210
    const v0, 0x9120138

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mKeyboardViewLayout:Landroid/view/ViewGroup;

    .line 151
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 141
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onPause()V

    .line 140
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public onResume(I)V
    .locals 2
    .param p1, "reason"    # I

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onResume(I)V

    .line 110
    new-instance v0, Lcom/android/keyguard/KeyguardPasswordView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardPasswordView$1;-><init>(Lcom/android/keyguard/KeyguardPasswordView;)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPasswordView;->post(Ljava/lang/Runnable;)Z

    .line 118
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/EditText;

    const v1, 0x91003d9

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 106
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 146
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->reset()V

    .line 147
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 145
    return-void
.end method

.method protected resetPasswordText(ZZ)V
    .locals 2
    .param p1, "animate"    # Z
    .param p2, "announce"    # Z

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 228
    if-eqz p2, :cond_0

    .line 229
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/EditText;

    const v1, 0x91003c7

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 226
    :cond_0
    return-void
.end method

.method protected resetState()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 91
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPasswordView;->setPasswordEntryEnabled(Z)V

    .line 92
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPasswordView;->setPasswordEntryInputEnabled(Z)V

    .line 90
    return-void
.end method

.method protected setMessage(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mKeyguardBouncerMessageView:Lcom/android/keyguard/KeyguardBouncerMessageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/keyguard/KeyguardBouncerMessageView;->showMessage(II)V

    .line 336
    return-void
.end method

.method protected setPasswordEntryEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 239
    return-void
.end method

.method protected setPasswordEntryInputEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntryDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    .line 244
    return-void
.end method

.method public startAppearAnimation()V
    .locals 14

    .prologue
    const/4 v3, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 259
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPasswordView;->mKeyguardBouncerMessageView:Lcom/android/keyguard/KeyguardBouncerMessageView;

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardBouncerMessageView;->setVisibility(I)V

    .line 260
    new-instance v13, Landroid/view/animation/AnimationSet;

    invoke-direct {v13, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 262
    .local v13, "animSet":Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x40000000    # 2.0f

    move v2, v1

    move v4, v1

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 263
    .local v0, "scaleAnim":Landroid/view/animation/ScaleAnimation;
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    move v7, v5

    move v8, v6

    move v9, v5

    move v10, v1

    move v11, v5

    move v12, v6

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 266
    .local v4, "transAnim":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v13, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 267
    invoke-virtual {v13, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 268
    const-wide/16 v2, 0x1f4

    invoke-virtual {v13, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 270
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mKeyboardView:Lmiui/view/MiuiKeyBoardView;

    invoke-virtual {v1, v13}, Lmiui/view/MiuiKeyBoardView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 271
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mEmergencyCarrierArea:Lcom/android/keyguard/EmergencyCarrierArea;

    invoke-virtual {v1, v13}, Lcom/android/keyguard/EmergencyCarrierArea;->startAnimation(Landroid/view/animation/Animation;)V

    .line 258
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 4
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mKeyguardBouncerMessageView:Lcom/android/keyguard/KeyguardBouncerMessageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardBouncerMessageView;->setVisibility(I)V

    .line 277
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 278
    const/4 v1, 0x0

    .line 277
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 279
    iget v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mDisappearYTranslation:I

    int-to-float v1, v1

    .line 277
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 280
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 277
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 281
    const-wide/16 v2, 0x64

    .line 277
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 282
    new-instance v1, Lcom/android/keyguard/KeyguardPasswordView$4;

    invoke-direct {v1, p0, p1}, Lcom/android/keyguard/KeyguardPasswordView$4;-><init>(Lcom/android/keyguard/KeyguardPasswordView;Ljava/lang/Runnable;)V

    .line 277
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 293
    const/4 v0, 0x1

    return v0
.end method
