.class public Lcom/android/keyguard/MiuiKeyguardMoveLeftView;
.super Landroid/widget/RelativeLayout;
.source "MiuiKeyguardMoveLeftView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/MiuiKeyguardMoveLeftView$1;,
        Lcom/android/keyguard/MiuiKeyguardMoveLeftView$2;
    }
.end annotation


# static fields
.field public static final DEFAULT_FASHIONGALLERY_PACKAGE_NAME:Ljava/lang/String;

.field private static final KEYGUARD_CONTROLLER_AUTHORITY:Landroid/net/Uri;

.field private static final KEYGUARD_MIPAY_AND_BUSCARD:Landroid/net/Uri;

.field private static final KEYGUARD_SMART_HOME:Landroid/net/Uri;

.field private static sRegionSupportMiHomeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAllFourLinearLayout:Landroid/widget/LinearLayout;

.field private mConsumerIrManager:Landroid/hardware/ConsumerIrManager;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mFontScale:F

.field private mFourOrThreeItemTopMargin:I

.field private mHasIrEmitter:Z

.field private mItemNums:I

.field mListener:Landroid/view/View$OnClickListener;

.field private mLocaleList:Ljava/lang/Object;

.field private mLockScreenMagazineLinearLayout:Landroid/widget/LinearLayout;

.field private mMiWalletCardItemUpdate:Z

.field private mMiWalletCardNum:Landroid/widget/TextView;

.field private mMiWalletCardNumInfo:Ljava/lang/String;

.field private mMiWalletLinearLayout:Landroid/widget/LinearLayout;

.field private mRemoteCenterLinearLayout:Landroid/widget/LinearLayout;

.field private mRemoteControllerItemUpdate:Z

.field private mRemoteControllerNum:Landroid/widget/TextView;

.field private mRemoteControllerNumInfo:Ljava/lang/String;

.field private mSmartHomeItemUpdate:Z

.field private mSmartHomeLinearLayout:Landroid/widget/LinearLayout;

.field private mSmartHomeNum:Landroid/widget/TextView;

.field private mSmartHomeNumnInfo:Ljava/lang/String;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mSupportTSMClient:Z

.field private mTorchLightImageView:Landroid/widget/ImageView;

.field private mTorchStateReceiver:Landroid/database/ContentObserver;

.field private mTwoOrOneItemLeftMargin:I

.field private mTwoOrOneItemRightMargin:I

.field private mTwoOrOneItemTopMargin:I


# direct methods
.method static synthetic -get0()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->KEYGUARD_CONTROLLER_AUTHORITY:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get1()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->KEYGUARD_MIPAY_AND_BUSCARD:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mLockScreenMagazineLinearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mMiWalletCardItemUpdate:Z

    return v0
.end method

.method static synthetic -get12(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mMiWalletCardNum:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mMiWalletCardNumInfo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mMiWalletLinearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mRemoteCenterLinearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mRemoteControllerItemUpdate:Z

    return v0
.end method

.method static synthetic -get17(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mRemoteControllerNum:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get18(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mRemoteControllerNumInfo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get19(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mSmartHomeItemUpdate:Z

    return v0
.end method

.method static synthetic -get2()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->KEYGUARD_SMART_HOME:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get20(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mSmartHomeLinearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get21(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mSmartHomeNum:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get22(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mSmartHomeNumnInfo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get23(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)Lcom/android/systemui/statusbar/phone/StatusBar;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-object v0
.end method

.method static synthetic -get24(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mSupportTSMClient:Z

    return v0
.end method

.method static synthetic -get25(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mTorchLightImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get26(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mTwoOrOneItemLeftMargin:I

    return v0
.end method

.method static synthetic -get27(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mTwoOrOneItemRightMargin:I

    return v0
.end method

.method static synthetic -get28(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mTwoOrOneItemTopMargin:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mAllFourLinearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)Landroid/hardware/ConsumerIrManager;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mConsumerIrManager:Landroid/hardware/ConsumerIrManager;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)Landroid/database/ContentObserver;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mContentObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mFourOrThreeItemTopMargin:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method static synthetic -get9(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mItemNums:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;Landroid/hardware/ConsumerIrManager;)Landroid/hardware/ConsumerIrManager;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mConsumerIrManager:Landroid/hardware/ConsumerIrManager;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mHasIrEmitter:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mItemNums:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mMiWalletCardNumInfo:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mRemoteControllerNumInfo:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mSmartHomeNumnInfo:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set6(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mSupportTSMClient:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->isRegionSupportMiHome()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->supportLockScreenMagazine()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->setPreviewButtonClicked()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;I)V
    .locals 0
    .param p1, "keyguardSmarthomeInfo"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->startAppStoreToDownload(I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->startToTSMClientActivity()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;I)V
    .locals 0
    .param p1, "itemid"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->updateItemNumString(I)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;ZLandroid/view/View;)V
    .locals 0
    .param p1, "show"    # Z
    .param p2, "item"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->updateItems(ZLandroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-string/jumbo v0, "content://com.xiaomi.smarthome.ext_cp"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->KEYGUARD_SMART_HOME:Landroid/net/Uri;

    .line 44
    const-string/jumbo v0, "content://com.xiaomi.mitv.phone.remotecontroller.provider.LockScreenProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->KEYGUARD_CONTROLLER_AUTHORITY:Landroid/net/Uri;

    .line 45
    const-string/jumbo v0, "content://com.miui.tsmclient.provider.public"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->KEYGUARD_MIPAY_AND_BUSCARD:Landroid/net/Uri;

    .line 46
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "com.mfashiongallery.emag"

    :goto_0
    sput-object v0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->DEFAULT_FASHIONGALLERY_PACKAGE_NAME:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->sRegionSupportMiHomeList:Ljava/util/List;

    .line 41
    return-void

    .line 46
    :cond_0
    const-string/jumbo v0, "com.mfashiongallery.emag"

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mConsumerIrManager:Landroid/hardware/ConsumerIrManager;

    .line 76
    iput-boolean v1, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mSmartHomeItemUpdate:Z

    .line 77
    iput-boolean v1, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mRemoteControllerItemUpdate:Z

    .line 78
    iput-boolean v1, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mMiWalletCardItemUpdate:Z

    .line 85
    iput v1, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mItemNums:I

    .line 174
    new-instance v0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$1;-><init>(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mTorchStateReceiver:Landroid/database/ContentObserver;

    .line 366
    new-instance v0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$2;-><init>(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)V

    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mListener:Landroid/view/View$OnClickListener;

    .line 94
    iput-object p1, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mContext:Landroid/content/Context;

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mConsumerIrManager:Landroid/hardware/ConsumerIrManager;

    .line 76
    iput-boolean v1, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mSmartHomeItemUpdate:Z

    .line 77
    iput-boolean v1, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mRemoteControllerItemUpdate:Z

    .line 78
    iput-boolean v1, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mMiWalletCardItemUpdate:Z

    .line 85
    iput v1, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mItemNums:I

    .line 174
    new-instance v0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$1;-><init>(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mTorchStateReceiver:Landroid/database/ContentObserver;

    .line 366
    new-instance v0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$2;-><init>(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)V

    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mListener:Landroid/view/View$OnClickListener;

    .line 99
    iput-object p1, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mContext:Landroid/content/Context;

    .line 97
    return-void
.end method

.method private initKeyguardLeftItemInfo(III)V
    .locals 5
    .param p1, "itemId"    # I
    .param p2, "imageId"    # I
    .param p3, "desId"    # I

    .prologue
    .line 331
    invoke-virtual {p0, p1}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 332
    .local v2, "item":Landroid/view/View;
    const v4, 0x9120198

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 333
    .local v1, "im":Landroid/widget/ImageView;
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 334
    const v4, 0x9120199

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 335
    .local v0, "des":Landroid/widget/TextView;
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(I)V

    .line 336
    const v4, 0x912019a

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 338
    .local v3, "view":Landroid/widget/TextView;
    invoke-direct {p0, v0, v3}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->updateItemInfoTextSize(Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 340
    packed-switch p1, :pswitch_data_0

    .line 330
    :goto_0
    return-void

    .line 342
    :pswitch_0
    iput-object v3, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mSmartHomeNum:Landroid/widget/TextView;

    goto :goto_0

    .line 345
    :pswitch_1
    iput-object v3, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mRemoteControllerNum:Landroid/widget/TextView;

    goto :goto_0

    .line 348
    :pswitch_2
    iput-object v3, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mMiWalletCardNum:Landroid/widget/TextView;

    goto :goto_0

    .line 340
    nop

    :pswitch_data_0
    .packed-switch 0x912019d
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private initKeyguardLeftItemInfos()V
    .locals 3

    .prologue
    .line 157
    const v0, 0x912019d

    .line 158
    const v1, 0x902022f

    .line 159
    const v2, 0x91003fd

    .line 157
    invoke-direct {p0, v0, v1, v2}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->initKeyguardLeftItemInfo(III)V

    .line 161
    const v0, 0x912019e

    .line 162
    const v1, 0x902022e

    .line 163
    const v2, 0x91003fe

    .line 161
    invoke-direct {p0, v0, v1, v2}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->initKeyguardLeftItemInfo(III)V

    .line 165
    const v0, 0x912019f

    .line 166
    const v1, 0x9020228

    .line 167
    const v2, 0x91003ff

    .line 165
    invoke-direct {p0, v0, v1, v2}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->initKeyguardLeftItemInfo(III)V

    .line 169
    const v0, 0x91201a0

    .line 170
    const v1, 0x902022c

    .line 171
    const v2, 0x910043b

    .line 169
    invoke-direct {p0, v0, v1, v2}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->initKeyguardLeftItemInfo(III)V

    .line 156
    return-void
.end method

.method private isRegionSupportMiHome()Z
    .locals 2

    .prologue
    .line 477
    sget-object v0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->sRegionSupportMiHomeList:Ljava/util/List;

    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private setPreviewButtonClicked()V
    .locals 4

    .prologue
    .line 481
    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 482
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "prfe_key_preview_button_clicked"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 480
    return-void
.end method

.method private startAppStoreToDownload(I)V
    .locals 4
    .param p1, "keyguardSmarthomeInfo"    # I

    .prologue
    .line 444
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 445
    .local v1, "intent":Landroid/content/Intent;
    const v2, 0x912019d

    if-ne p1, v2, :cond_1

    .line 446
    const-string/jumbo v2, "market://details?id=com.xiaomi.smarthome&back=true&ref=keyguard"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 454
    :cond_0
    :goto_0
    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 455
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 456
    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivity(Landroid/content/Intent;Z)V

    .line 442
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 448
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_1
    const v2, 0x912019e

    if-ne p1, v2, :cond_2

    .line 449
    const-string/jumbo v2, "market://details?id=com.duokan.phone.remotecontroller&back=true&ref=keyguard"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    .line 457
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_1

    .line 451
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_2
    const v2, 0x91201a0

    if-ne p1, v2, :cond_0

    .line 452
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "market://details?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->DEFAULT_FASHIONGALLERY_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "&back=true&ref=keyguard"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private startToTSMClientActivity()V
    .locals 4

    .prologue
    .line 463
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 464
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.miui.intent.action.DOUBLE_CLICK"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 465
    const-string/jumbo v2, "event_source"

    const-string/jumbo v3, "shortcut_of_all_cards"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 466
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 467
    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 468
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private supportLockScreenMagazine()Z
    .locals 2

    .prologue
    .line 486
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "IN"

    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateItemInfoTextSize(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 5
    .param p1, "des"    # Landroid/widget/TextView;
    .param p2, "view"    # Landroid/widget/TextView;

    .prologue
    const/4 v4, 0x0

    .line 356
    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 358
    .local v2, "resources":Landroid/content/res/Resources;
    const v3, 0x90f0375

    .line 357
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 360
    .local v0, "desTextSize":I
    const v3, 0x90f0376

    .line 359
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 361
    .local v1, "numberTextSize":I
    int-to-float v3, v0

    invoke-virtual {p1, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 362
    int-to-float v3, v1

    invoke-virtual {p2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 355
    return-void
.end method

.method private updateItemNumString(I)V
    .locals 1
    .param p1, "itemid"    # I

    .prologue
    return-void
.end method

.method private updateItems(ZLandroid/view/View;)V
    .locals 1
    .param p1, "show"    # Z
    .param p2, "item"    # Landroid/view/View;

    .prologue
    .line 235
    if-eqz p2, :cond_0

    .line 236
    if-eqz p1, :cond_1

    .line 237
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 238
    iget v0, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mItemNums:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mItemNums:I

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    const/16 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 491
    const/4 v0, 0x0

    return v0
.end method

.method public hideLockScreenInActivityManager()V
    .locals 3

    .prologue
    .line 433
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_0

    .line 435
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-static {v1, v2}, Landroid/app/ActivityManagerCompat;->setLockScreenShown(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 436
    :catch_0
    move-exception v0

    .line 437
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public initLeftView()V
    .locals 3

    .prologue
    .line 183
    new-instance v0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$4;-><init>(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)V

    .line 231
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 183
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$4;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 182
    return-void
.end method

.method public isSupportRightMove()Z
    .locals 1

    .prologue
    .line 473
    invoke-direct {p0}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->isRegionSupportMiHome()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mSupportTSMClient:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->supportLockScreenMagazine()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 260
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 261
    invoke-static {p1}, Lcom/android/systemui/SystemUICompat;->getLocales(Landroid/content/res/Configuration;)Ljava/lang/Object;

    move-result-object v1

    .line 262
    .local v1, "localeList":Ljava/lang/Object;
    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 263
    .local v0, "fontScale":F
    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mLocaleList:Ljava/lang/Object;

    if-eq v2, v1, :cond_0

    .line 264
    invoke-direct {p0}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->initKeyguardLeftItemInfos()V

    .line 265
    iput-object v1, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mLocaleList:Ljava/lang/Object;

    .line 267
    :cond_0
    iget v2, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mFontScale:F

    cmpl-float v2, v2, v0

    if-eqz v2, :cond_1

    .line 268
    invoke-direct {p0}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->initKeyguardLeftItemInfos()V

    .line 269
    iput v0, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mFontScale:F

    .line 259
    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 251
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 252
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 254
    iput-object v2, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mContentObserver:Landroid/database/ContentObserver;

    .line 250
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 108
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 109
    const v1, 0x912019d

    invoke-virtual {p0, v1}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mSmartHomeLinearLayout:Landroid/widget/LinearLayout;

    .line 110
    const v1, 0x912019e

    invoke-virtual {p0, v1}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mRemoteCenterLinearLayout:Landroid/widget/LinearLayout;

    .line 111
    const v1, 0x912019f

    invoke-virtual {p0, v1}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mMiWalletLinearLayout:Landroid/widget/LinearLayout;

    .line 112
    const v1, 0x91201a0

    invoke-virtual {p0, v1}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mLockScreenMagazineLinearLayout:Landroid/widget/LinearLayout;

    .line 113
    const v1, 0x912019c

    invoke-virtual {p0, v1}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mTorchLightImageView:Landroid/widget/ImageView;

    .line 114
    const v1, 0x912019b

    invoke-virtual {p0, v1}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mAllFourLinearLayout:Landroid/widget/LinearLayout;

    .line 115
    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mSmartHomeLinearLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mRemoteCenterLinearLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mMiWalletLinearLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mLockScreenMagazineLinearLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mTorchLightImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x90f036c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mTwoOrOneItemTopMargin:I

    .line 121
    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x90f036d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mTwoOrOneItemLeftMargin:I

    .line 122
    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x90f036e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mTwoOrOneItemRightMargin:I

    .line 123
    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x90f036b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mFourOrThreeItemTopMargin:I

    .line 125
    invoke-direct {p0}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->initKeyguardLeftItemInfos()V

    .line 127
    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x90b00f7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "regions":[Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->sRegionSupportMiHomeList:Ljava/util/List;

    .line 130
    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 131
    const-string/jumbo v2, "torch_state"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mTorchStateReceiver:Landroid/database/ContentObserver;

    .line 130
    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 132
    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mTorchStateReceiver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v4}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 134
    new-instance v1, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$3;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$3;-><init>(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mContentObserver:Landroid/database/ContentObserver;

    .line 152
    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->initLeftView()V

    .line 153
    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->uploadLeftItemData()V

    .line 107
    return-void
.end method

.method public setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0
    .param p1, "statusBar"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 102
    return-void
.end method

.method public uploadLeftItemData()V
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->updateItemNumString(I)V

    .line 245
    return-void
.end method
