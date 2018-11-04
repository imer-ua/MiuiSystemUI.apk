.class public Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;
.super Landroid/widget/RelativeLayout;
.source "MiuiKeyguardChargingContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$1;
    }
.end annotation


# instance fields
.field private mBatteryLevel:I

.field private mBgView:Landroid/view/View;

.field private mCanShowGxzw:Z

.field public mChargeHandler:Landroid/os/Handler;

.field private mChargingAnimationInDeclining:Z

.field private mChargingCicleView:Landroid/view/View;

.field private mChargingHintView:Landroid/widget/TextView;

.field private mChargingInfoBackArrow:Landroid/widget/ImageView;

.field private mChargingListAndBackArrow:Landroid/view/View;

.field private mChargingListTopMargin:I

.field private mChargingTip:Landroid/widget/TextView;

.field private mChargingTips:[Ljava/lang/String;

.field private mChargingView:Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

.field private mChargingViewBottomMarginDown:I

.field private mChargingViewBottomMarginUp:I

.field private mChargingViewHeight:I

.field private mChargingViewHeightAfterScale:I

.field private mChargingViewTopAfterScale:I

.field private mCharingFirstListHeight:I

.field private mCharingSecondListHeight:I

.field private mCharingThirdListHeight:I

.field private mContext:Landroid/content/Context;

.field private mDensityDpi:I

.field private mDrainedPowerPercent:Landroid/widget/TextView;

.field private mFontScale:F

.field private mHeight:I

.field private mInitY:I

.field mIsTempHigh:Z

.field private mLastChargeTime:Landroid/widget/TextView;

.field private mNeedRepositionDevice:Z

.field private mResources:Landroid/content/res/Resources;

.field private mScreenHeight:I

.field private mUsedTime:Landroid/widget/TextView;

.field private mWidth:I


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mBatteryLevel:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mBgView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mHeight:I

    return v0
.end method

.method static synthetic -get11(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mLastChargeTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mNeedRepositionDevice:Z

    return v0
.end method

.method static synthetic -get13(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mUsedTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mWidth:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingCicleView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingHintView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingListAndBackArrow:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingTip:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingTips:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)Lcom/android/keyguard/charge/MiuiKeyguardChargingView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingView:Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mDrainedPowerPercent:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingAnimationInDeclining:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;J)Ljava/lang/String;
    .locals 1
    .param p1, "time"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->getLastChargeFormat(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;I)V
    .locals 0
    .param p1, "itemId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->updateContentDescription(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 97
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingAnimationInDeclining:Z

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mCanShowGxzw:Z

    .line 640
    new-instance v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$1;-><init>(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)V

    iput-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargeHandler:Landroid/os/Handler;

    .line 98
    invoke-direct {p0, p1}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->init(Landroid/content/Context;)V

    .line 96
    return-void
.end method

.method private getLastChargeFormat(J)Ljava/lang/String;
    .locals 13
    .param p1, "time"    # J

    .prologue
    const/16 v11, 0xb

    const/4 v10, 0x5

    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 673
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 675
    .local v1, "current":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 676
    .local v4, "today":Ljava/util/Calendar;
    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v4, v9, v6}, Ljava/util/Calendar;->set(II)V

    .line 677
    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v4, v7, v6}, Ljava/util/Calendar;->set(II)V

    .line 678
    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v4, v10, v6}, Ljava/util/Calendar;->set(II)V

    .line 679
    invoke-virtual {v4, v11, v8}, Ljava/util/Calendar;->set(II)V

    .line 680
    const/16 v6, 0xc

    invoke-virtual {v4, v6, v8}, Ljava/util/Calendar;->set(II)V

    .line 681
    const/16 v6, 0xd

    invoke-virtual {v4, v6, v8}, Ljava/util/Calendar;->set(II)V

    .line 683
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 684
    .local v5, "yesterday":Ljava/util/Calendar;
    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v5, v9, v6}, Ljava/util/Calendar;->set(II)V

    .line 685
    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v5, v7, v6}, Ljava/util/Calendar;->set(II)V

    .line 686
    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v10, v6}, Ljava/util/Calendar;->set(II)V

    .line 687
    invoke-virtual {v5, v11, v8}, Ljava/util/Calendar;->set(II)V

    .line 688
    const/16 v6, 0xc

    invoke-virtual {v5, v6, v8}, Ljava/util/Calendar;->set(II)V

    .line 689
    const/16 v6, 0xd

    invoke-virtual {v5, v6, v8}, Ljava/util/Calendar;->set(II)V

    .line 691
    iget-object v6, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mContext:Landroid/content/Context;

    const/4 v7, -0x2

    invoke-static {v6, v7}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v2, 0x20

    .line 692
    .local v2, "flags":I
    :goto_0
    or-int/lit8 v6, v2, 0xc

    invoke-static {p1, p2, v6}, Lmiui/date/DateUtils;->formatDateTime(JI)Ljava/lang/String;

    move-result-object v0

    .line 693
    .local v0, "chargeTime":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    cmp-long v6, p1, v6

    if-lez v6, :cond_1

    .line 694
    iget-object v6, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mResources:Landroid/content/res/Resources;

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v0, v7, v8

    const v8, 0x91003ec

    invoke-virtual {v6, v8, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 691
    .end local v0    # "chargeTime":Ljava/lang/String;
    .end local v2    # "flags":I
    :cond_0
    const/16 v2, 0x10

    goto :goto_0

    .line 696
    .restart local v0    # "chargeTime":Ljava/lang/String;
    .restart local v2    # "flags":I
    :cond_1
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    cmp-long v6, p1, v6

    if-lez v6, :cond_2

    .line 697
    iget-object v6, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mResources:Landroid/content/res/Resources;

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v0, v7, v8

    const v8, 0x91003ed

    invoke-virtual {v6, v8, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 700
    :cond_2
    new-instance v3, Ljava/text/SimpleDateFormat;

    iget-object v6, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mResources:Landroid/content/res/Resources;

    const v7, 0x91003ee

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 701
    .local v3, "lastChargedTimeFormat":Ljava/text/SimpleDateFormat;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mContext:Landroid/content/Context;

    .line 103
    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mResources:Landroid/content/res/Resources;

    .line 105
    invoke-direct {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->refreshScreenSize()V

    .line 101
    return-void
.end method

.method private initChargingInfoDes(IIII)V
    .locals 6
    .param p1, "itemId"    # I
    .param p2, "imageId"    # I
    .param p3, "desId"    # I
    .param p4, "bgId"    # I

    .prologue
    .line 258
    invoke-virtual {p0, p1}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 259
    .local v1, "item":Landroid/view/View;
    invoke-virtual {v1, p4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 260
    const v3, 0x9120178

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 261
    iget-object v4, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 260
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 262
    const v3, 0x9120179

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 263
    .local v0, "des":Landroid/widget/TextView;
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(I)V

    .line 264
    const v3, 0x912017a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 265
    .local v2, "view":Landroid/widget/TextView;
    packed-switch p1, :pswitch_data_0

    .line 257
    :goto_0
    return-void

    .line 267
    :pswitch_0
    iput-object v2, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mLastChargeTime:Landroid/widget/TextView;

    goto :goto_0

    .line 270
    :pswitch_1
    iput-object v2, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mUsedTime:Landroid/widget/TextView;

    goto :goto_0

    .line 273
    :pswitch_2
    iput-object v2, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mDrainedPowerPercent:Landroid/widget/TextView;

    goto :goto_0

    .line 276
    :pswitch_3
    iput-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingTip:Landroid/widget/TextView;

    .line 277
    iget-object v3, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingTip:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mResources:Landroid/content/res/Resources;

    const v5, 0x90f0367

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 278
    iget-object v3, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingTip:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mResources:Landroid/content/res/Resources;

    const v5, 0x90c0127

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 265
    :pswitch_data_0
    .packed-switch 0x9120180
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private initChargingInfosDes()V
    .locals 4

    .prologue
    .line 215
    const v0, 0x9120180

    .line 216
    const v1, 0x9020221

    .line 217
    const v2, 0x91003ef

    .line 218
    const v3, 0x9020223

    .line 215
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->initChargingInfoDes(IIII)V

    .line 220
    const v0, 0x9120181

    .line 221
    const v1, 0x9020227

    .line 222
    const v2, 0x91003f0

    .line 223
    const v3, 0x9020224

    .line 220
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->initChargingInfoDes(IIII)V

    .line 225
    const v0, 0x9120182

    .line 226
    const v1, 0x902021f

    .line 227
    const v2, 0x91003f1

    .line 228
    const v3, 0x9020225

    .line 225
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->initChargingInfoDes(IIII)V

    .line 230
    const v0, 0x9120183

    .line 231
    const v1, 0x9020226

    .line 232
    const v2, 0x91003f2

    .line 233
    const v3, 0x9020222

    .line 230
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->initChargingInfoDes(IIII)V

    .line 214
    return-void
.end method

.method private initDimension()V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mResources:Landroid/content/res/Resources;

    .line 238
    const v1, 0x90f0354

    .line 237
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingViewHeight:I

    .line 239
    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mResources:Landroid/content/res/Resources;

    .line 240
    const v1, 0x90f0357

    .line 239
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingViewHeightAfterScale:I

    .line 241
    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mResources:Landroid/content/res/Resources;

    .line 242
    const v1, 0x90f0358

    .line 241
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingViewTopAfterScale:I

    .line 243
    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mResources:Landroid/content/res/Resources;

    .line 244
    const v1, 0x90f0356

    .line 243
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingViewBottomMarginUp:I

    .line 245
    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mResources:Landroid/content/res/Resources;

    .line 246
    const v1, 0x90f0359

    .line 245
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingListTopMargin:I

    .line 247
    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mResources:Landroid/content/res/Resources;

    .line 248
    const v1, 0x90f0360

    .line 247
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mCharingFirstListHeight:I

    .line 249
    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mResources:Landroid/content/res/Resources;

    .line 250
    const v1, 0x90f0361

    .line 249
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mCharingSecondListHeight:I

    .line 251
    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mResources:Landroid/content/res/Resources;

    .line 252
    const v1, 0x90f0363

    .line 251
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mCharingThirdListHeight:I

    .line 254
    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mResources:Landroid/content/res/Resources;

    const v1, 0x90f0333

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingViewBottomMarginDown:I

    .line 236
    return-void
.end method

.method private refreshScreenSize()V
    .locals 4

    .prologue
    .line 174
    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 175
    .local v1, "wm":Landroid/view/WindowManager;
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 176
    .local v0, "screenSize":Landroid/graphics/Point;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 177
    const-string/jumbo v2, "is_pad"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 178
    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 179
    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mScreenHeight:I

    .line 173
    :goto_0
    return-void

    .line 181
    :cond_0
    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mScreenHeight:I

    goto :goto_0

    .line 185
    :cond_1
    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mScreenHeight:I

    goto :goto_0
.end method

.method private setCanShowGxzw(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 731
    iput-boolean p1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mCanShowGxzw:Z

    .line 732
    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardUtils;->isGxzwSensor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 733
    invoke-static {}, Lcom/android/keyguard/fod/MiuiGxzwManager;->getInstance()Lcom/android/keyguard/fod/MiuiGxzwManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/fod/MiuiGxzwManager;->updateGxzwState()V

    .line 730
    :cond_0
    return-void
.end method

.method private updateCharginInfoTextSize(I)V
    .locals 6
    .param p1, "itemId"    # I

    .prologue
    const/4 v5, 0x0

    .line 324
    invoke-virtual {p0, p1}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 325
    .local v2, "item":Landroid/view/View;
    const v3, 0x9120179

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 326
    .local v1, "desTextView":Landroid/widget/TextView;
    const v3, 0x912017a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 327
    .local v0, "dataTextView":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mResources:Landroid/content/res/Resources;

    .line 328
    const v4, 0x90f0368

    .line 327
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 329
    iget-object v3, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mResources:Landroid/content/res/Resources;

    .line 330
    const v4, 0x90f0369

    .line 329
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 323
    return-void
.end method

.method private updateCharginInfosTextSize()V
    .locals 3

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingHintView:Landroid/widget/TextView;

    .line 136
    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mResources:Landroid/content/res/Resources;

    .line 137
    const v2, 0x90f0311

    .line 136
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 135
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 138
    const v0, 0x9120180

    invoke-direct {p0, v0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->updateCharginInfoTextSize(I)V

    .line 139
    const v0, 0x9120181

    invoke-direct {p0, v0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->updateCharginInfoTextSize(I)V

    .line 140
    const v0, 0x9120182

    invoke-direct {p0, v0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->updateCharginInfoTextSize(I)V

    .line 141
    const v0, 0x9120183

    invoke-direct {p0, v0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->updateCharginInfoTextSize(I)V

    .line 134
    return-void
.end method

.method private updateChargingInfoViewLayout(I)V
    .locals 6
    .param p1, "itemId"    # I

    .prologue
    .line 294
    invoke-virtual {p0, p1}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 295
    .local v2, "item":Landroid/view/View;
    const v4, 0x9120178

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 297
    .local v0, "icon":Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 298
    .local v1, "iconLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mResources:Landroid/content/res/Resources;

    .line 299
    const v5, 0x90f0362

    .line 298
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 300
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 302
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 304
    .local v3, "itemLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    packed-switch p1, :pswitch_data_0

    .line 320
    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 293
    return-void

    .line 308
    :pswitch_0
    iget-object v4, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mResources:Landroid/content/res/Resources;

    .line 309
    const v5, 0x90f0361

    .line 308
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_0

    .line 312
    :pswitch_1
    iget-object v4, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mResources:Landroid/content/res/Resources;

    .line 313
    const v5, 0x90f0363

    .line 312
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 314
    iget-object v4, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mResources:Landroid/content/res/Resources;

    .line 315
    const v5, 0x90f035f

    .line 314
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 304
    :pswitch_data_0
    .packed-switch 0x9120180
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateChargingInfoViewsLayout()V
    .locals 1

    .prologue
    .line 128
    const v0, 0x9120183

    invoke-direct {p0, v0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->updateChargingInfoViewLayout(I)V

    .line 129
    const v0, 0x9120180

    invoke-direct {p0, v0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->updateChargingInfoViewLayout(I)V

    .line 130
    const v0, 0x9120181

    invoke-direct {p0, v0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->updateChargingInfoViewLayout(I)V

    .line 131
    const v0, 0x9120182

    invoke-direct {p0, v0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->updateChargingInfoViewLayout(I)V

    .line 127
    return-void
.end method

.method private updateContentDescription(I)V
    .locals 5
    .param p1, "itemId"    # I

    .prologue
    .line 287
    invoke-virtual {p0, p1}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 288
    .local v2, "item":Landroid/view/View;
    const v3, 0x9120179

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 289
    .local v1, "des":Landroid/widget/TextView;
    const v3, 0x912017a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 290
    .local v0, "data":Landroid/widget/TextView;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 286
    return-void
.end method

.method private updateViewsLayoutParams()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 146
    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingView:Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

    invoke-virtual {v2}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 148
    .local v1, "chargingViewlayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mResources:Landroid/content/res/Resources;

    const v3, 0x90f0333

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 147
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 150
    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mResources:Landroid/content/res/Resources;

    const v3, 0x90f0355

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 149
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 152
    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mResources:Landroid/content/res/Resources;

    const v3, 0x90f0354

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 151
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 153
    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingView:Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

    invoke-virtual {v2, v1}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    invoke-direct {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->updateChargingInfoViewsLayout()V

    .line 157
    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingListAndBackArrow:Landroid/view/View;

    iget-object v3, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mResources:Landroid/content/res/Resources;

    .line 158
    const v4, 0x90f035b

    .line 157
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 159
    iget-object v4, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mResources:Landroid/content/res/Resources;

    .line 160
    const v5, 0x90f035c

    .line 159
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 157
    invoke-virtual {v2, v3, v6, v4, v6}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 163
    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingInfoBackArrow:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 164
    .local v0, "chargingInfoBackArrowlayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mResources:Landroid/content/res/Resources;

    .line 165
    const v3, 0x90f0364

    .line 164
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 166
    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mResources:Landroid/content/res/Resources;

    .line 167
    const v3, 0x90f0365

    .line 166
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 168
    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingInfoBackArrow:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingInfoBackArrow:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mResources:Landroid/content/res/Resources;

    .line 170
    const v4, 0x902021b

    .line 169
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 144
    return-void
.end method


# virtual methods
.method public canShowGxzw()Z
    .locals 1

    .prologue
    .line 738
    iget-boolean v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mCanShowGxzw:Z

    return v0
.end method

.method public getScreenHeight()I
    .locals 1

    .prologue
    .line 720
    iget v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mScreenHeight:I

    return v0
.end method

.method public isChargingAnimationInDeclining()Z
    .locals 1

    .prologue
    .line 458
    iget-boolean v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingAnimationInDeclining:Z

    return v0
.end method

.method public isFullScreen()Z
    .locals 2

    .prologue
    .line 724
    invoke-virtual {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 725
    const/4 v0, 0x1

    return v0

    .line 727
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onCharingViewClick()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 334
    invoke-virtual {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 335
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 336
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 337
    invoke-virtual {p0, v0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 338
    invoke-virtual {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mWidth:I

    .line 339
    invoke-virtual {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mHeight:I

    .line 340
    invoke-virtual {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->setChargingInfo()V

    .line 342
    new-instance v1, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$2;-><init>(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)V

    invoke-virtual {p0, v1}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->post(Ljava/lang/Runnable;)Z

    .line 333
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 110
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 111
    invoke-direct {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->refreshScreenSize()V

    .line 112
    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 113
    .local v1, "fontScale":F
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 114
    .local v0, "densityDpi":I
    iget v2, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mFontScale:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_0

    .line 115
    invoke-direct {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->updateCharginInfosTextSize()V

    .line 116
    iput v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mFontScale:F

    .line 118
    :cond_0
    iget v2, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mDensityDpi:I

    if-eq v2, v0, :cond_1

    .line 119
    invoke-direct {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->initDimension()V

    .line 120
    invoke-direct {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->initChargingInfosDes()V

    .line 121
    invoke-direct {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->updateCharginInfosTextSize()V

    .line 122
    invoke-direct {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->updateViewsLayoutParams()V

    .line 123
    iput v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mDensityDpi:I

    .line 109
    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 190
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 191
    const v0, 0x9120121

    invoke-virtual {p0, v0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

    iput-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingView:Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

    .line 192
    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingView:Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->setChargingContainer(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)V

    .line 193
    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingView:Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

    iget-boolean v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mNeedRepositionDevice:Z

    invoke-virtual {v0, v1}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->setNeedRepositionDevice(Z)V

    .line 194
    const v0, 0x912017e

    invoke-virtual {p0, v0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingListAndBackArrow:Landroid/view/View;

    .line 195
    const v0, 0x9120184

    invoke-virtual {p0, v0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingInfoBackArrow:Landroid/widget/ImageView;

    .line 197
    invoke-direct {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->initDimension()V

    .line 199
    const v0, 0x912017b

    invoke-virtual {p0, v0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mBgView:Landroid/view/View;

    .line 200
    const v0, 0x912017c

    invoke-virtual {p0, v0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingCicleView:Landroid/view/View;

    .line 201
    const v0, 0x912017d

    invoke-virtual {p0, v0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingHintView:Landroid/widget/TextView;

    .line 202
    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingView:Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingHintView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->setChargingHint(Landroid/widget/TextView;)V

    .line 204
    invoke-direct {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->initChargingInfosDes()V

    .line 206
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mContext:Landroid/content/Context;

    const v2, 0x91003f2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 207
    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mContext:Landroid/content/Context;

    const v2, 0x91003f3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 208
    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mContext:Landroid/content/Context;

    const v2, 0x91003f4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 209
    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mContext:Landroid/content/Context;

    const v2, 0x91003f5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 210
    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mContext:Landroid/content/Context;

    const v2, 0x91003f6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 211
    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mContext:Landroid/content/Context;

    const v2, 0x91003f7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 206
    iput-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingTips:[Ljava/lang/String;

    .line 189
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 716
    invoke-virtual {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 707
    invoke-virtual {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 708
    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 709
    return v2

    .line 711
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setChargingInfo()V
    .locals 2

    .prologue
    .line 599
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$9;

    invoke-direct {v1, p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$9;-><init>(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 598
    return-void
.end method

.method public setChargingInfo(Ljava/lang/String;II)V
    .locals 6
    .param p1, "hint"    # Ljava/lang/String;
    .param p2, "temperature"    # I
    .param p3, "level"    # I

    .prologue
    const/high16 v3, 0x41200000    # 10.0f

    .line 358
    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingHintView:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    int-to-float v2, p2

    div-float/2addr v2, v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    div-double v0, v2, v4

    .line 361
    .local v0, "temp":D
    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mResources:Landroid/content/res/Resources;

    const v3, 0x90e004b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-double v2, v2

    cmpl-double v2, v0, v2

    if-lez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mIsTempHigh:Z

    .line 363
    iget-boolean v2, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mNeedRepositionDevice:Z

    if-eqz v2, :cond_2

    .line 364
    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingTip:Landroid/widget/TextView;

    const v3, 0x910045f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 369
    :cond_0
    :goto_1
    iput p3, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mBatteryLevel:I

    .line 357
    return-void

    .line 361
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 366
    :cond_2
    iget-boolean v2, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mIsTempHigh:Z

    if-eqz v2, :cond_0

    .line 367
    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingTip:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingTips:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingTips:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public setDarkMode(Z)V
    .locals 2
    .param p1, "dark"    # Z

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingView:Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingHintView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->setChargingHint(Landroid/widget/TextView;)V

    .line 353
    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingView:Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->setDarkMode(Z)V

    .line 351
    return-void
.end method

.method public setNeedRepositionDevice(Z)V
    .locals 1
    .param p1, "needRepositionDevice"    # Z

    .prologue
    .line 374
    iput-boolean p1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mNeedRepositionDevice:Z

    .line 375
    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingView:Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingView:Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->setNeedRepositionDevice(Z)V

    .line 373
    :cond_0
    return-void
.end method

.method public startDownAnim()V
    .locals 13

    .prologue
    .line 462
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingAnimationInDeclining:Z

    .line 463
    iget-object v8, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingView:Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

    sget-object v9, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->Y:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [F

    .line 464
    iget-object v11, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingView:Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

    invoke-virtual {v11}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getY()F

    move-result v11

    const/4 v12, 0x0

    aput v11, v10, v12

    iget v11, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mInitY:I

    int-to-float v11, v11

    const/4 v12, 0x1

    aput v11, v10, v12

    .line 463
    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 466
    .local v7, "chargingViewYAnim":Landroid/animation/ObjectAnimator;
    iget-object v8, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingHintView:Landroid/widget/TextView;

    sget-object v9, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->Y:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [F

    .line 467
    iget-object v11, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingHintView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getY()F

    move-result v11

    const/4 v12, 0x0

    aput v11, v10, v12

    iget v11, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mInitY:I

    iget v12, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingViewHeight:I

    add-int/2addr v11, v12

    int-to-float v11, v11

    const/4 v12, 0x1

    aput v11, v10, v12

    .line 466
    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 468
    .local v3, "chargingHintYAnim":Landroid/animation/ObjectAnimator;
    iget-object v8, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingHintView:Landroid/widget/TextView;

    sget-object v9, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->ALPHA:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    aput v11, v10, v12

    const/4 v11, 0x0

    const/4 v12, 0x1

    aput v11, v10, v12

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 469
    .local v2, "chargingHintAlphaAnim":Landroid/animation/ObjectAnimator;
    const-wide/16 v8, 0x64

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 472
    iget-object v8, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingListAndBackArrow:Landroid/view/View;

    sget-object v9, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->Y:Landroid/util/Property;

    .line 471
    const/4 v10, 0x2

    new-array v10, v10, [F

    .line 472
    iget-object v11, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingListAndBackArrow:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getY()F

    move-result v11

    const/4 v12, 0x0

    aput v11, v10, v12

    iget v11, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mScreenHeight:I

    int-to-float v11, v11

    const/4 v12, 0x1

    aput v11, v10, v12

    .line 471
    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 473
    .local v5, "chargingListAndBackArrowUpAnim":Landroid/animation/ObjectAnimator;
    iget-object v8, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingListAndBackArrow:Landroid/view/View;

    sget-object v9, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->ALPHA:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    aput v11, v10, v12

    const/4 v11, 0x0

    const/4 v12, 0x1

    aput v11, v10, v12

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 475
    .local v4, "chargingListAlphaAnim":Landroid/animation/ObjectAnimator;
    iget-object v8, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mBgView:Landroid/view/View;

    sget-object v9, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->ALPHA:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    aput v11, v10, v12

    const/4 v11, 0x0

    const/4 v12, 0x1

    aput v11, v10, v12

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 476
    .local v1, "bgAnim":Landroid/animation/ObjectAnimator;
    new-instance v8, Lmiui/maml/animation/interpolater/CubicEaseOutInterpolater;

    invoke-direct {v8}, Lmiui/maml/animation/interpolater/CubicEaseOutInterpolater;-><init>()V

    invoke-virtual {v1, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 477
    const-wide/16 v8, 0x12c

    invoke-virtual {v1, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 478
    new-instance v8, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$5;

    invoke-direct {v8, p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$5;-><init>(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)V

    invoke-virtual {v1, v8}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 486
    const/4 v8, 0x2

    new-array v8, v8, [I

    iget v9, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingViewHeightAfterScale:I

    const/4 v10, 0x0

    aput v9, v8, v10

    .line 487
    iget v9, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingViewHeight:I

    const/4 v10, 0x1

    aput v9, v8, v10

    .line 486
    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 488
    .local v6, "chargingViewValueAnimator":Landroid/animation/ValueAnimator;
    const-wide/16 v8, 0x12c

    invoke-virtual {v6, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 489
    new-instance v8, Lmiui/maml/animation/interpolater/CubicEaseOutInterpolater;

    invoke-direct {v8}, Lmiui/maml/animation/interpolater/CubicEaseOutInterpolater;-><init>()V

    invoke-virtual {v6, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 490
    new-instance v8, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$6;

    invoke-direct {v8, p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$6;-><init>(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)V

    invoke-virtual {v6, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 502
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 503
    .local v0, "animatiorSet":Landroid/animation/AnimatorSet;
    const-wide/16 v8, 0x12c

    invoke-virtual {v0, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 504
    new-instance v8, Lmiui/maml/animation/interpolater/CubicEaseOutInterpolater;

    invoke-direct {v8}, Lmiui/maml/animation/interpolater/CubicEaseOutInterpolater;-><init>()V

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 505
    const/4 v8, 0x7

    new-array v8, v8, [Landroid/animation/Animator;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    const/4 v9, 0x1

    aput-object v4, v8, v9

    .line 506
    const/4 v9, 0x2

    aput-object v7, v8, v9

    const/4 v9, 0x3

    aput-object v3, v8, v9

    const/4 v9, 0x4

    aput-object v2, v8, v9

    .line 507
    const/4 v9, 0x5

    aput-object v6, v8, v9

    const/4 v9, 0x6

    aput-object v1, v8, v9

    .line 505
    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 508
    new-instance v8, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$7;

    invoke-direct {v8, p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$7;-><init>(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)V

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 521
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 523
    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardUtils;->isGxzwSensor()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 524
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->setCanShowGxzw(Z)V

    .line 461
    :cond_0
    return-void
.end method

.method public startEnterAnim(Z)V
    .locals 13
    .param p1, "quickCharging"    # Z

    .prologue
    .line 529
    iget-object v8, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingCicleView:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 531
    iget-object v8, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingCicleView:Landroid/view/View;

    sget-object v9, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->Y:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [F

    invoke-virtual {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->getHeight()I

    move-result v11

    int-to-float v11, v11

    const/4 v12, 0x0

    aput v11, v10, v12

    .line 532
    iget-object v11, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingView:Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

    invoke-virtual {v11}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getY()F

    move-result v11

    iget v12, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingViewHeight:I

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    add-float/2addr v11, v12

    iget-object v12, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingCicleView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    sub-float/2addr v11, v12

    const/4 v12, 0x1

    aput v11, v10, v12

    .line 531
    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 533
    .local v7, "cicleYAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v8, 0xc8

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 535
    iget-object v8, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingCicleView:Landroid/view/View;

    sget-object v9, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->SCALE_X:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    aput v11, v10, v12

    const/high16 v11, 0x40800000    # 4.0f

    const/4 v12, 0x1

    aput v11, v10, v12

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 536
    .local v5, "cicleScaleXAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v8, 0x12c

    invoke-virtual {v5, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 538
    iget-object v8, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingCicleView:Landroid/view/View;

    sget-object v9, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->SCALE_Y:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    aput v11, v10, v12

    const/high16 v11, 0x40800000    # 4.0f

    const/4 v12, 0x1

    aput v11, v10, v12

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 539
    .local v6, "cicleScaleYAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v8, 0x12c

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 541
    iget-object v8, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingCicleView:Landroid/view/View;

    sget-object v9, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->ALPHA:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    aput v11, v10, v12

    const/4 v11, 0x0

    const/4 v12, 0x1

    aput v11, v10, v12

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 542
    .local v4, "cicleAlphaAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v8, 0xc8

    invoke-virtual {v4, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 544
    iget-object v8, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingView:Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->setAlpha(F)V

    .line 545
    iget-object v8, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingView:Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->setScaleX(F)V

    .line 546
    iget-object v8, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingView:Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->setScaleY(F)V

    .line 547
    iget-object v8, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingView:Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->setVisibility(I)V

    .line 548
    iget-object v8, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingView:Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, p1}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->setChargingLevelForAnima(IZ)V

    .line 550
    iget-object v8, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingView:Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

    sget-object v9, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->SCALE_X:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_0

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 551
    .local v2, "chargingViewScaleXAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v8, 0x12c

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 553
    iget-object v8, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingView:Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

    sget-object v9, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->SCALE_Y:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_1

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 554
    .local v3, "chargingViewScaleYAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v8, 0x12c

    invoke-virtual {v3, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 556
    iget-object v8, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingView:Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

    sget-object v9, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->ALPHA:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_2

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 557
    .local v1, "chargingViewAlphaAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v8, 0x12c

    invoke-virtual {v3, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 559
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 560
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    new-instance v8, Lmiui/maml/animation/interpolater/CubicEaseOutInterpolater;

    invoke-direct {v8}, Lmiui/maml/animation/interpolater/CubicEaseOutInterpolater;-><init>()V

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 561
    const/4 v8, 0x5

    new-array v8, v8, [Landroid/animation/Animator;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    const/4 v9, 0x1

    aput-object v6, v8, v9

    .line 562
    const/4 v9, 0x2

    aput-object v2, v8, v9

    const/4 v9, 0x3

    aput-object v3, v8, v9

    const/4 v9, 0x4

    aput-object v1, v8, v9

    .line 561
    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 563
    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 564
    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v8

    const-wide/16 v10, 0xc8

    invoke-virtual {v8, v10, v11}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    .line 565
    new-instance v8, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$8;

    invoke-direct {v8, p0, p1}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$8;-><init>(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;Z)V

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 595
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 528
    return-void

    .line 550
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 553
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 556
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public startUpAnim()V
    .locals 15

    .prologue
    .line 381
    iget v10, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingViewTopAfterScale:I

    iget v11, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingViewHeightAfterScale:I

    add-int/2addr v10, v11

    .line 382
    iget v11, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingViewBottomMarginUp:I

    .line 381
    add-int/2addr v10, v11

    .line 382
    iget-object v11, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingHintView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getHeight()I

    move-result v11

    .line 381
    add-int/2addr v10, v11

    .line 383
    iget v11, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingListTopMargin:I

    .line 381
    add-int v1, v10, v11

    .line 385
    .local v1, "backArrowUpY":I
    iget v10, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mScreenHeight:I

    iget v11, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingViewHeight:I

    sub-int/2addr v10, v11

    iget v11, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingViewBottomMarginDown:I

    sub-int/2addr v10, v11

    iput v10, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mInitY:I

    .line 387
    iget-object v10, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/keyguard/MiuiKeyguardUtils;->getLockWallpaperPreview(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 388
    .local v9, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v9, :cond_0

    .line 389
    check-cast v9, Landroid/graphics/drawable/BitmapDrawable;

    .end local v9    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 391
    .local v2, "backgroundOriginal":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    const v11, 0x3eaaaaab

    mul-float/2addr v10, v11

    float-to-int v10, v10

    .line 392
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-float v11, v11

    const v12, 0x3eaaaaab

    mul-float/2addr v11, v12

    float-to-int v11, v11

    .line 393
    const/4 v12, 0x1

    .line 390
    invoke-static {v2, v10, v11, v12}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 394
    iget-object v10, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mBgView:Landroid/view/View;

    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    .line 395
    const/4 v12, 0x0

    invoke-static {v2, v12}, Lmiui/util/ScreenshotUtils;->getBlurBackground(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 394
    invoke-direct {v11, v12}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 396
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 398
    .end local v2    # "backgroundOriginal":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v10, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mBgView:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 399
    iget-object v10, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mBgView:Landroid/view/View;

    sget-object v11, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput v13, v12, v14

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x1

    aput v13, v12, v14

    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 400
    .local v3, "bgAnim":Landroid/animation/ObjectAnimator;
    new-instance v10, Lmiui/maml/animation/interpolater/CubicEaseOutInterpolater;

    invoke-direct {v10}, Lmiui/maml/animation/interpolater/CubicEaseOutInterpolater;-><init>()V

    invoke-virtual {v3, v10}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 401
    const-wide/16 v10, 0xc8

    invoke-virtual {v3, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 403
    iget-object v10, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingHintView:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingView:Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

    invoke-virtual {v11}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getY()F

    move-result v11

    iget v12, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingViewHeight:I

    int-to-float v12, v12

    add-float/2addr v11, v12

    .line 404
    iget v12, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingViewBottomMarginUp:I

    int-to-float v12, v12

    .line 403
    add-float/2addr v11, v12

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setY(F)V

    .line 405
    iget-object v10, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingHintView:Landroid/widget/TextView;

    sget-object v11, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->Y:Landroid/util/Property;

    const/4 v12, 0x2

    new-array v12, v12, [F

    .line 406
    iget-object v13, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingHintView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getY()F

    move-result v13

    const/4 v14, 0x0

    aput v13, v12, v14

    iget v13, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingViewTopAfterScale:I

    .line 407
    iget v14, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingViewHeightAfterScale:I

    .line 406
    add-int/2addr v13, v14

    .line 407
    iget v14, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingViewBottomMarginUp:I

    .line 406
    add-int/2addr v13, v14

    int-to-float v13, v13

    const/4 v14, 0x1

    aput v13, v12, v14

    .line 405
    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 409
    .local v4, "chargingHintYAnim":Landroid/animation/ObjectAnimator;
    iget-object v10, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingView:Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

    sget-object v11, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->Y:Landroid/util/Property;

    const/4 v12, 0x2

    new-array v12, v12, [F

    .line 410
    iget-object v13, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingView:Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

    invoke-virtual {v13}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getY()F

    move-result v13

    const/4 v14, 0x0

    aput v13, v12, v14

    iget v13, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingViewTopAfterScale:I

    int-to-float v13, v13

    const/4 v14, 0x1

    aput v13, v12, v14

    .line 409
    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 413
    .local v8, "chargingViewYAnim":Landroid/animation/ObjectAnimator;
    iget-object v10, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingListAndBackArrow:Landroid/view/View;

    sget-object v11, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->Y:Landroid/util/Property;

    const/4 v12, 0x2

    new-array v12, v12, [F

    iget v13, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mScreenHeight:I

    int-to-float v13, v13

    const/4 v14, 0x0

    aput v13, v12, v14

    int-to-float v13, v1

    const/4 v14, 0x1

    aput v13, v12, v14

    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 415
    .local v6, "chargingListAndBackArrowYAnim":Landroid/animation/ObjectAnimator;
    iget-object v10, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingListAndBackArrow:Landroid/view/View;

    sget-object v11, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->ALPHA:Landroid/util/Property;

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput v13, v12, v14

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x1

    aput v13, v12, v14

    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 417
    .local v5, "chargingListAlphaAnim":Landroid/animation/ObjectAnimator;
    const/4 v10, 0x2

    new-array v10, v10, [I

    iget v11, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingViewHeight:I

    const/4 v12, 0x0

    aput v11, v10, v12

    .line 418
    iget v11, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingViewHeightAfterScale:I

    const/4 v12, 0x1

    aput v11, v10, v12

    .line 417
    invoke-static {v10}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 419
    .local v7, "chargingViewValueAnimator":Landroid/animation/ValueAnimator;
    const-wide/16 v10, 0x12c

    invoke-virtual {v7, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 420
    new-instance v10, Lmiui/maml/animation/interpolater/CubicEaseOutInterpolater;

    invoke-direct {v10}, Lmiui/maml/animation/interpolater/CubicEaseOutInterpolater;-><init>()V

    invoke-virtual {v7, v10}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 421
    new-instance v10, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$3;

    invoke-direct {v10, p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$3;-><init>(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)V

    invoke-virtual {v7, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 433
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 434
    .local v0, "animatiorSet":Landroid/animation/AnimatorSet;
    const-wide/16 v10, 0x12c

    invoke-virtual {v0, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 435
    new-instance v10, Lmiui/maml/animation/interpolater/CubicEaseOutInterpolater;

    invoke-direct {v10}, Lmiui/maml/animation/interpolater/CubicEaseOutInterpolater;-><init>()V

    invoke-virtual {v0, v10}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 436
    const/4 v10, 0x6

    new-array v10, v10, [Landroid/animation/Animator;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    const/4 v11, 0x1

    aput-object v5, v10, v11

    .line 437
    const/4 v11, 0x2

    aput-object v8, v10, v11

    const/4 v11, 0x3

    aput-object v4, v10, v11

    const/4 v11, 0x4

    aput-object v7, v10, v11

    const/4 v11, 0x5

    aput-object v3, v10, v11

    .line 436
    invoke-virtual {v0, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 438
    new-instance v10, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$4;

    invoke-direct {v10, p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$4;-><init>(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)V

    invoke-virtual {v0, v10}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 450
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 452
    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardUtils;->isGxzwSensor()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 453
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->setCanShowGxzw(Z)V

    .line 380
    :cond_1
    return-void
.end method
