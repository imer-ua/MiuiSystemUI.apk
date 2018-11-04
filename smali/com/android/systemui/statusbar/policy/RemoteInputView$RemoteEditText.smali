.class public Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;
.super Landroid/widget/EditText;
.source "RemoteInputView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/RemoteInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoteEditText"
.end annotation


# instance fields
.field private final mBackground:Landroid/graphics/drawable/Drawable;

.field private mRemoteInputView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

.field mShowImeOnInputConnection:Z


# direct methods
.method static synthetic -set0(Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;Lcom/android/systemui/statusbar/policy/RemoteInputView;)Lcom/android/systemui/statusbar/policy/RemoteInputView;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mRemoteInputView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;Z)V
    .locals 0
    .param p1, "animate"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->defocusIfNeeded(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 490
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 491
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 489
    return-void
.end method

.method private defocusIfNeeded(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    const/4 v1, 0x0

    .line 495
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mRemoteInputView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mRemoteInputView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->-get1(Lcom/android/systemui/statusbar/policy/RemoteInputView;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChangingPosition()Z

    move-result v0

    if-nez v0, :cond_1

    .line 496
    :cond_0
    invoke-static {p0}, Landroid/view/ViewCompat;->isTemporarilyDetached(Landroid/view/View;)Z

    move-result v0

    .line 495
    if-eqz v0, :cond_3

    .line 497
    :cond_1
    invoke-static {p0}, Landroid/view/ViewCompat;->isTemporarilyDetached(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 500
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mRemoteInputView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_2

    .line 501
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mRemoteInputView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->-get1(Lcom/android/systemui/statusbar/policy/RemoteInputView;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->remoteInputText:Ljava/lang/CharSequence;

    .line 504
    :cond_2
    return-void

    .line 506
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 507
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->setInnerFocusable(Z)V

    .line 508
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mRemoteInputView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_4

    .line 509
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mRemoteInputView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->-wrap0(Lcom/android/systemui/statusbar/policy/RemoteInputView;Z)V

    .line 511
    :cond_4
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mShowImeOnInputConnection:Z

    .line 494
    :cond_5
    return-void
.end method


# virtual methods
.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 534
    invoke-super {p0, p1}, Landroid/widget/EditText;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 535
    iget v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mScrollY:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 536
    iget v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mScrollY:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mBottom:I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mTop:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 533
    return-void
.end method

.method public onCheckIsTextEditor()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 567
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mRemoteInputView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mRemoteInputView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->-get2(Lcom/android/systemui/statusbar/policy/RemoteInputView;)Z

    move-result v0

    .line 568
    .local v0, "flyingOut":Z
    :goto_0
    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/EditText;->onCheckIsTextEditor()Z

    move-result v1

    :cond_0
    return v1

    .end local v0    # "flyingOut":Z
    :cond_1
    move v0, v1

    .line 567
    goto :goto_0
.end method

.method public onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .locals 1
    .param p1, "text"    # Landroid/view/inputmethod/CompletionInfo;

    .prologue
    .line 596
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->clearComposingText()V

    .line 597
    invoke-virtual {p1}, Landroid/view/inputmethod/CompletionInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->setText(Ljava/lang/CharSequence;)V

    .line 598
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->setSelection(I)V

    .line 595
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 573
    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 575
    .local v1, "inputConnection":Landroid/view/inputmethod/InputConnection;
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mShowImeOnInputConnection:Z

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 576
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->getInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 577
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 581
    new-instance v2, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText$1;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText$1;-><init>(Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->post(Ljava/lang/Runnable;)Z

    .line 591
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-object v1
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 526
    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 527
    if-nez p1, :cond_0

    .line 528
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->defocusIfNeeded(Z)V

    .line 525
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 546
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 548
    const/4 v0, 0x1

    return v0

    .line 550
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 555
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 556
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->defocusIfNeeded(Z)V

    .line 557
    return v1

    .line 559
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 517
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onVisibilityChanged(Landroid/view/View;I)V

    .line 519
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 520
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->defocusIfNeeded(Z)V

    .line 516
    :cond_0
    return-void
.end method

.method public requestRectangleOnScreen(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "rectangle"    # Landroid/graphics/Rect;

    .prologue
    .line 541
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mRemoteInputView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->requestScrollTo()Z

    move-result v0

    return v0
.end method

.method setInnerFocusable(Z)V
    .locals 1
    .param p1, "focusable"    # Z

    .prologue
    .line 602
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->setFocusableInTouchMode(Z)V

    .line 603
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->setFocusable(Z)V

    .line 604
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->setCursorVisible(Z)V

    .line 606
    if-eqz p1, :cond_0

    .line 607
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->requestFocus()Z

    .line 608
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 601
    :goto_0
    return-void

    .line 610
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
