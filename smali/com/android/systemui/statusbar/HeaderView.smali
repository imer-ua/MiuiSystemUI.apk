.class public Lcom/android/systemui/statusbar/HeaderView;
.super Landroid/widget/RelativeLayout;
.source "HeaderView.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/HeaderView$1;
    }
.end annotation


# instance fields
.field private mActStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private mCarrierLayout:Landroid/widget/LinearLayout;

.field private mCarrierText:Lcom/android/keyguard/CarrierText;

.field private mCarrierTextLand:Lcom/android/keyguard/CarrierText;

.field private mClock:Lcom/android/systemui/statusbar/policy/Clock;

.field private mDateView:Lcom/android/systemui/statusbar/policy/Clock;

.field private mHasMobileDataFeature:Z

.field private mLastOrientation:I

.field mOnClickListener:Landroid/view/View$OnClickListener;

.field private mShortcut:Landroid/widget/ImageView;

.field private mShortcutDestination:I

.field private mSystemIcons:Landroid/widget/LinearLayout;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/HeaderView;)Lcom/android/systemui/plugins/ActivityStarter;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/HeaderView;->mActStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/HeaderView;)Lcom/android/systemui/statusbar/policy/Clock;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/HeaderView;->mClock:Lcom/android/systemui/statusbar/policy/Clock;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/HeaderView;)Lcom/android/systemui/statusbar/policy/Clock;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/HeaderView;->mDateView:Lcom/android/systemui/statusbar/policy/Clock;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/HeaderView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/HeaderView;->mShortcut:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/HeaderView;)Landroid/content/Intent;
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/HeaderView;->buildShortcutClickIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 255
    new-instance v1, Lcom/android/systemui/statusbar/HeaderView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/HeaderView$1;-><init>(Lcom/android/systemui/statusbar/HeaderView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/HeaderView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 64
    const-string/jumbo v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 65
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/HeaderView;->mHasMobileDataFeature:Z

    .line 61
    return-void
.end method

.method private buildShortcutClickIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 282
    const/4 v0, 0x0

    .line 283
    .local v0, "intent":Landroid/content/Intent;
    iget v1, p0, Lcom/android/systemui/statusbar/HeaderView;->mShortcutDestination:I

    packed-switch v1, :pswitch_data_0

    .line 302
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-object v0

    .line 285
    .restart local v0    # "intent":Landroid/content/Intent;
    :pswitch_0
    sget-boolean v1, Lcom/android/systemui/Constants;->IS_INTERNATIONAL:Z

    if-eqz v1, :cond_1

    .line 286
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/HeaderView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/Util;->isBrowserSearchExist(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 287
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.action.WEB_SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    goto :goto_0

    .line 289
    .local v0, "intent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.browser.browser_search"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 290
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.browser"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 293
    .local v0, "intent":Landroid/content/Intent;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.action.SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 294
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.quicksearchbox"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    const-string/jumbo v1, "qsb://query?close_web_page=true&ref=systemui10"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    .line 299
    .local v0, "intent":Landroid/content/Intent;
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 300
    .local v0, "intent":Landroid/content/Intent;
    goto :goto_0

    .line 283
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateCarrierText(I)V
    .locals 8
    .param p1, "newOrient"    # I

    .prologue
    const/16 v7, 0xc

    const/16 v6, 0x8

    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x6

    .line 178
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/HeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x90d0016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    if-ne p1, v4, :cond_1

    .line 180
    iget-object v1, p0, Lcom/android/systemui/statusbar/HeaderView;->mCarrierText:Lcom/android/keyguard/CarrierText;

    invoke-virtual {v1, v4}, Lcom/android/keyguard/CarrierText;->setShowStyle(I)V

    .line 181
    iget-object v1, p0, Lcom/android/systemui/statusbar/HeaderView;->mCarrierTextLand:Lcom/android/keyguard/CarrierText;

    invoke-virtual {v1, v5}, Lcom/android/keyguard/CarrierText;->setShowStyle(I)V

    .line 183
    iget-object v1, p0, Lcom/android/systemui/statusbar/HeaderView;->mDateView:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/Clock;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 184
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 185
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 186
    const v1, 0x9120272

    invoke-virtual {v0, v6, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 187
    iget-object v1, p0, Lcom/android/systemui/statusbar/HeaderView;->mDateView:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/Clock;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    iget-object v1, p0, Lcom/android/systemui/statusbar/HeaderView;->mCarrierLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 190
    .restart local v0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const v1, 0x912026e

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 191
    iget-object v1, p0, Lcom/android/systemui/statusbar/HeaderView;->mCarrierLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    iget-object v1, p0, Lcom/android/systemui/statusbar/HeaderView;->mSystemIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 194
    .restart local v0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0x11

    const v2, 0x912026d

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 195
    iget-object v1, p0, Lcom/android/systemui/statusbar/HeaderView;->mSystemIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    .end local v0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/HeaderView;->mCarrierText:Lcom/android/keyguard/CarrierText;

    invoke-virtual {v1, v5}, Lcom/android/keyguard/CarrierText;->setShowStyle(I)V

    .line 199
    iget-object v1, p0, Lcom/android/systemui/statusbar/HeaderView;->mCarrierTextLand:Lcom/android/keyguard/CarrierText;

    invoke-virtual {v1, v4}, Lcom/android/keyguard/CarrierText;->setShowStyle(I)V

    .line 201
    iget-object v1, p0, Lcom/android/systemui/statusbar/HeaderView;->mCarrierLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 202
    .restart local v0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 203
    iget-object v1, p0, Lcom/android/systemui/statusbar/HeaderView;->mCarrierLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    iget-object v1, p0, Lcom/android/systemui/statusbar/HeaderView;->mDateView:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/Clock;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 206
    .restart local v0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 207
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 208
    const v1, 0x912026e

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 209
    iget-object v1, p0, Lcom/android/systemui/statusbar/HeaderView;->mDateView:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/Clock;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    iget-object v1, p0, Lcom/android/systemui/statusbar/HeaderView;->mSystemIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 212
    .restart local v0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0x11

    const v2, 0x912026f

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 213
    iget-object v1, p0, Lcom/android/systemui/statusbar/HeaderView;->mSystemIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private updateResources(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, 0x1

    .line 161
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 162
    .local v1, "newOrient":I
    iget v4, p0, Lcom/android/systemui/statusbar/HeaderView;->mLastOrientation:I

    if-eq v1, v4, :cond_0

    sget-boolean v4, Lcom/android/systemui/Constants;->IS_TABLET:Z

    if-eqz v4, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    if-ne v1, v3, :cond_2

    const/4 v2, 0x0

    .line 164
    .local v2, "topVis":I
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/HeaderView;->mClock:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/policy/Clock;->setVisibility(I)V

    .line 165
    iget-object v4, p0, Lcom/android/systemui/statusbar/HeaderView;->mShortcut:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 166
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/HeaderView;->updateCarrierText(I)V

    .line 167
    iget-object v4, p0, Lcom/android/systemui/statusbar/HeaderView;->mDateView:Lcom/android/systemui/statusbar/policy/Clock;

    if-ne v1, v3, :cond_3

    :goto_2
    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/policy/Clock;->setClockMode(I)V

    .line 169
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/HeaderView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 170
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/HeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x90f0216

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 171
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/HeaderView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    iput v1, p0, Lcom/android/systemui/statusbar/HeaderView;->mLastOrientation:I

    goto :goto_0

    .line 163
    .end local v0    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v2    # "topVis":I
    :cond_2
    const/16 v2, 0x8

    .restart local v2    # "topVis":I
    goto :goto_1

    .line 167
    :cond_3
    const/4 v3, 0x2

    goto :goto_2
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 240
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 241
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/HeaderView;->isEnabled()Z

    move-result v0

    return v0
.end method

.method protected getShortcut()I
    .locals 3

    .prologue
    .line 153
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    .line 154
    const-string/jumbo v1, "status_bar_notification_shade_shortcut"

    .line 155
    iget v2, p0, Lcom/android/systemui/statusbar/HeaderView;->mShortcutDestination:I

    .line 153
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 116
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 117
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/HeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/HeaderView;->updateResources(Landroid/content/res/Configuration;)V

    .line 118
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 119
    const-string/jumbo v2, "status_bar_notification_shade_shortcut"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 118
    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 124
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 125
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/HeaderView;->updateResources(Landroid/content/res/Configuration;)V

    .line 123
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 148
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 149
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    .line 147
    return-void
.end method

.method protected onFinishInflate()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, -0x1

    .line 70
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 71
    const v3, 0x912026c

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/HeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/Clock;

    iput-object v3, p0, Lcom/android/systemui/statusbar/HeaderView;->mDateView:Lcom/android/systemui/statusbar/policy/Clock;

    .line 72
    iget-object v3, p0, Lcom/android/systemui/statusbar/HeaderView;->mDateView:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/policy/Clock;->setClockMode(I)V

    .line 73
    iget-object v3, p0, Lcom/android/systemui/statusbar/HeaderView;->mDateView:Lcom/android/systemui/statusbar/policy/Clock;

    iget-object v6, p0, Lcom/android/systemui/statusbar/HeaderView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/policy/Clock;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    const v3, 0x9120271

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/HeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/Clock;

    iput-object v3, p0, Lcom/android/systemui/statusbar/HeaderView;->mClock:Lcom/android/systemui/statusbar/policy/Clock;

    .line 76
    iget-object v3, p0, Lcom/android/systemui/statusbar/HeaderView;->mClock:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/policy/Clock;->setShowAmPm(Z)V

    .line 77
    iget-object v3, p0, Lcom/android/systemui/statusbar/HeaderView;->mClock:Lcom/android/systemui/statusbar/policy/Clock;

    iget-object v6, p0, Lcom/android/systemui/statusbar/HeaderView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/policy/Clock;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    const v3, 0x912026e

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/HeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/systemui/statusbar/HeaderView;->mSystemIcons:Landroid/widget/LinearLayout;

    .line 81
    const v3, 0x91201f5

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/HeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/CarrierText;

    iput-object v3, p0, Lcom/android/systemui/statusbar/HeaderView;->mCarrierText:Lcom/android/keyguard/CarrierText;

    .line 82
    const v3, 0x9120270

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/HeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/CarrierText;

    iput-object v3, p0, Lcom/android/systemui/statusbar/HeaderView;->mCarrierTextLand:Lcom/android/keyguard/CarrierText;

    .line 84
    const v3, 0x912026d

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/HeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/systemui/statusbar/HeaderView;->mCarrierLayout:Landroid/widget/LinearLayout;

    .line 86
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/HeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x90d0016

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 87
    iget-object v3, p0, Lcom/android/systemui/statusbar/HeaderView;->mCarrierText:Lcom/android/keyguard/CarrierText;

    invoke-virtual {v3, v7}, Lcom/android/keyguard/CarrierText;->setShowStyle(I)V

    .line 88
    iget-object v3, p0, Lcom/android/systemui/statusbar/HeaderView;->mCarrierTextLand:Lcom/android/keyguard/CarrierText;

    invoke-virtual {v3, v7}, Lcom/android/keyguard/CarrierText;->setShowStyle(I)V

    .line 91
    :cond_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/HeaderView;->mHasMobileDataFeature:Z

    if-nez v3, :cond_1

    .line 92
    iget-object v3, p0, Lcom/android/systemui/statusbar/HeaderView;->mDateView:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/Clock;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 93
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 94
    iget-object v3, p0, Lcom/android/systemui/statusbar/HeaderView;->mDateView:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/policy/Clock;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    iget-object v3, p0, Lcom/android/systemui/statusbar/HeaderView;->mSystemIcons:Landroid/widget/LinearLayout;

    const v6, 0x91202f7

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 97
    .local v2, "systemIcons":Landroid/widget/LinearLayout;
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 98
    .local v1, "layoutParams1":Landroid/widget/LinearLayout$LayoutParams;
    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 99
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    .end local v0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1    # "layoutParams1":Landroid/widget/LinearLayout$LayoutParams;
    .end local v2    # "systemIcons":Landroid/widget/LinearLayout;
    :cond_1
    const v3, 0x9120272

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/HeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/HeaderView;->mShortcut:Landroid/widget/ImageView;

    .line 103
    iget-object v3, p0, Lcom/android/systemui/statusbar/HeaderView;->mShortcut:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/HeaderView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    sget-boolean v3, Lcom/android/systemui/Constants;->IS_INTERNATIONAL:Z

    if-eqz v3, :cond_2

    move v3, v4

    :goto_0
    iput v3, p0, Lcom/android/systemui/statusbar/HeaderView;->mShortcutDestination:I

    .line 107
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/HeaderView;->getShortcut()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/HeaderView;->mShortcutDestination:I

    .line 108
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/HeaderView;->updateShortcut()V

    .line 110
    const-class v3, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/plugins/ActivityStarter;

    iput-object v3, p0, Lcom/android/systemui/statusbar/HeaderView;->mActStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 111
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/HeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/HeaderView;->updateCarrierText(I)V

    .line 69
    return-void

    :cond_2
    move v3, v5

    .line 106
    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/HeaderView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    .line 130
    const-string/jumbo v1, "status_bar_notification_shade_shortcut"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 133
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/HeaderView;->mShortcutDestination:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/HeaderView;->updateShortcut()V

    .line 129
    :cond_0
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .line 137
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    sget-boolean v1, Lcom/android/systemui/Constants;->IS_INTERNATIONAL:Z

    if-eqz v1, :cond_2

    .line 138
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/HeaderView;->mShortcutDestination:I

    goto :goto_0

    .line 140
    :cond_2
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/HeaderView;->mShortcutDestination:I

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 251
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 252
    iget-object v0, p0, Lcom/android/systemui/statusbar/HeaderView;->mDateView:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/Clock;->setEnabled(Z)V

    .line 250
    return-void
.end method

.method public updateShortcut()V
    .locals 3

    .prologue
    .line 219
    iget v0, p0, Lcom/android/systemui/statusbar/HeaderView;->mShortcutDestination:I

    packed-switch v0, :pswitch_data_0

    .line 218
    :goto_0
    return-void

    .line 221
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/HeaderView;->mShortcut:Landroid/widget/ImageView;

    const v1, 0x902028b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 222
    iget-object v0, p0, Lcom/android/systemui/statusbar/HeaderView;->mShortcut:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/HeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 223
    const v2, 0x9100089

    .line 222
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 226
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/HeaderView;->mShortcut:Landroid/widget/ImageView;

    const v1, 0x902028e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 227
    iget-object v0, p0, Lcom/android/systemui/statusbar/HeaderView;->mShortcut:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/HeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 228
    const v2, 0x9100558

    .line 227
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 219
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
