.class Lcom/android/systemui/statusbar/phone/StatusBarWindowView$1;
.super Landroid/view/Window;
.source "StatusBarWindowView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBarWindowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowView;
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 525
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-direct {p0, p2}, Landroid/view/Window;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 548
    return-void
.end method

.method public alwaysReadCloseOnTouchAttr()V
    .locals 0

    .prologue
    .line 536
    return-void
.end method

.method public clearContentView()V
    .locals 0

    .prologue
    .line 551
    return-void
.end method

.method public closeAllPanels()V
    .locals 0

    .prologue
    .line 588
    return-void
.end method

.method public closePanel(I)V
    .locals 0
    .param p1, "featureId"    # I

    .prologue
    .line 571
    return-void
.end method

.method public getCurrentFocus()Landroid/view/View;
    .locals 1

    .prologue
    .line 555
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDecorView()Landroid/view/View;
    .locals 1

    .prologue
    .line 640
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    return-object v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 559
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNavigationBarColor()I
    .locals 1

    .prologue
    .line 682
    const/4 v0, 0x0

    return v0
.end method

.method public getStatusBarColor()I
    .locals 1

    .prologue
    .line 675
    const/4 v0, 0x0

    return v0
.end method

.method public getVolumeControlStream()I
    .locals 1

    .prologue
    .line 671
    const/4 v0, 0x0

    return v0
.end method

.method public invalidatePanelMenu(I)V
    .locals 0
    .param p1, "featureId"    # I

    .prologue
    .line 577
    return-void
.end method

.method public isFloating()Z
    .locals 1

    .prologue
    .line 533
    const/4 v0, 0x0

    return v0
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 664
    const/4 v0, 0x0

    return v0
.end method

.method protected onActive()V
    .locals 0

    .prologue
    .line 654
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 595
    return-void
.end method

.method public onMultiWindowModeChanged()V
    .locals 0

    .prologue
    .line 694
    return-void
.end method

.method public openPanel(ILandroid/view/KeyEvent;)V
    .locals 0
    .param p1, "featureId"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 568
    return-void
.end method

.method public peekDecorView()Landroid/view/View;
    .locals 1

    .prologue
    .line 644
    const/4 v0, 0x0

    return-object v0
.end method

.method public performContextMenuIdentifierAction(II)Z
    .locals 1
    .param p1, "id"    # I
    .param p2, "flags"    # I

    .prologue
    .line 592
    const/4 v0, 0x0

    return v0
.end method

.method public performPanelIdentifierAction(III)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "id"    # I
    .param p3, "flags"    # I

    .prologue
    .line 585
    const/4 v0, 0x0

    return v0
.end method

.method public performPanelShortcut(IILandroid/view/KeyEvent;I)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;
    .param p4, "flags"    # I

    .prologue
    .line 581
    const/4 v0, 0x0

    return v0
.end method

.method public reportActivityRelaunched()V
    .locals 0

    .prologue
    .line 700
    return-void
.end method

.method public restoreHierarchyState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 651
    return-void
.end method

.method public saveHierarchyState()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 648
    const/4 v0, 0x0

    return-object v0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 598
    return-void
.end method

.method public setChildDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "featureId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 657
    return-void
.end method

.method public setChildInt(II)V
    .locals 0
    .param p1, "featureId"    # I
    .param p2, "value"    # I

    .prologue
    .line 660
    return-void
.end method

.method public setContentView(I)V
    .locals 0
    .param p1, "layoutResID"    # I

    .prologue
    .line 539
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 542
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 545
    return-void
.end method

.method public setDecorCaptionShade(I)V
    .locals 0
    .param p1, "decorCaptionShade"    # I

    .prologue
    .line 688
    return-void
.end method

.method public setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "featureId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 607
    return-void
.end method

.method public setFeatureDrawableAlpha(II)V
    .locals 0
    .param p1, "featureId"    # I
    .param p2, "alpha"    # I

    .prologue
    .line 610
    return-void
.end method

.method public setFeatureDrawableResource(II)V
    .locals 0
    .param p1, "featureId"    # I
    .param p2, "resId"    # I

    .prologue
    .line 601
    return-void
.end method

.method public setFeatureDrawableUri(ILandroid/net/Uri;)V
    .locals 0
    .param p1, "featureId"    # I
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 604
    return-void
.end method

.method public setFeatureInt(II)V
    .locals 0
    .param p1, "featureId"    # I
    .param p2, "value"    # I

    .prologue
    .line 613
    return-void
.end method

.method public setNavigationBarColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 685
    return-void
.end method

.method public setResizingCaptionDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 691
    return-void
.end method

.method public setStatusBarColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 678
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 562
    return-void
.end method

.method public setTitleColor(I)V
    .locals 0
    .param p1, "textColor"    # I

    .prologue
    .line 565
    return-void
.end method

.method public setVolumeControlStream(I)V
    .locals 0
    .param p1, "streamType"    # I

    .prologue
    .line 667
    return-void
.end method

.method public superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 636
    const/4 v0, 0x0

    return v0
.end method

.method public superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 620
    const/4 v0, 0x0

    return v0
.end method

.method public superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 624
    const/4 v0, 0x0

    return v0
.end method

.method public superDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 628
    const/4 v0, 0x0

    return v0
.end method

.method public superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 632
    const/4 v0, 0x0

    return v0
.end method

.method public takeInputQueue(Landroid/view/InputQueue$Callback;)V
    .locals 0
    .param p1, "callback"    # Landroid/view/InputQueue$Callback;

    .prologue
    .line 529
    return-void
.end method

.method public takeKeyEvents(Z)V
    .locals 0
    .param p1, "get"    # Z

    .prologue
    .line 616
    return-void
.end method

.method public takeSurface(Landroid/view/SurfaceHolder$Callback2;)V
    .locals 0
    .param p1, "callback"    # Landroid/view/SurfaceHolder$Callback2;

    .prologue
    .line 526
    return-void
.end method

.method public togglePanel(ILandroid/view/KeyEvent;)V
    .locals 0
    .param p1, "featureId"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 574
    return-void
.end method
