.class public Lcom/android/systemui/statusbar/phone/NavigationBarView;
.super Landroid/widget/LinearLayout;
.source "NavigationBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NavigationBarView$1;,
        Lcom/android/systemui/statusbar/phone/NavigationBarView$2;,
        Lcom/android/systemui/statusbar/phone/NavigationBarView$3;,
        Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit;,
        Lcom/android/systemui/statusbar/phone/NavigationBarView$H;,
        Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;,
        Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;
    }
.end annotation


# static fields
.field private static sFilterColor:I

.field private static sKeyIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBackAltIcon:Landroid/graphics/drawable/Drawable;

.field private mBackAltLandIcon:Landroid/graphics/drawable/Drawable;

.field private mBackIcon:Landroid/graphics/drawable/Drawable;

.field private mBackLandIcon:Landroid/graphics/drawable/Drawable;

.field private mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field mBarSize:I

.field private final mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

.field mCurrentView:Landroid/view/View;

.field private mDarkSuit:Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit;

.field private mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

.field mDisabledFlags:I

.field final mDisplay:Landroid/view/Display;

.field private mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mForceHide:Z

.field private mHandler:Lcom/android/systemui/statusbar/phone/NavigationBarView$H;

.field private mHomeIcon:Landroid/graphics/drawable/Drawable;

.field private final mImeSwitcherClickListener:Landroid/view/View$OnClickListener;

.field private mIsLayoutRtl:Z

.field private mKeyOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLayoutTransitionsEnabled:Z

.field private mLightSuit:Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit;

.field mNavigationIconHints:I

.field private mOnVerticalChangedListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;

.field private mRecentIcon:Landroid/graphics/drawable/Drawable;

.field private mRecentLandIcon:Landroid/graphics/drawable/Drawable;

.field mRotatedViews:[Landroid/view/View;

.field private final mScreenKeyOrderObserver:Landroid/database/ContentObserver;

.field mShowMenu:Z

.field private mTaskSwitchHelper:Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;

.field private final mTransitionListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;

.field mVertical:Z

.field private mWakeAndUnlocking:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/NavigationBarView;)Lcom/android/systemui/statusbar/phone/StatusBar;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/NavigationBarView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->adjustKeyOrder()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/phone/NavigationBarView;Landroid/content/res/Resources;)V
    .locals 0
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getIcons(Landroid/content/res/Resources;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 400
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->sKeyIdMap:Ljava/util/HashMap;

    .line 402
    sget-object v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->sKeyIdMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x912016d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    sget-object v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->sKeyIdMap:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x9120001

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    sget-object v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->sKeyIdMap:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x9120203

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    sget-object v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->sKeyIdMap:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x91200b2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    sput v3, Lcom/android/systemui/statusbar/phone/NavigationBarView;->sFilterColor:I

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 304
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 89
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    .line 90
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/view/View;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    .line 97
    iput v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    .line 98
    iput v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    .line 120
    new-instance v1, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTransitionListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;

    .line 124
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLayoutTransitionsEnabled:Z

    .line 272
    new-instance v1, Lcom/android/systemui/statusbar/phone/NavigationBarView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView$1;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mImeSwitcherClickListener:Landroid/view/View$OnClickListener;

    .line 384
    new-instance v1, Lcom/android/systemui/statusbar/phone/NavigationBarView$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView$2;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 408
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mKeyOrder:Ljava/util/ArrayList;

    .line 528
    new-instance v1, Lcom/android/systemui/statusbar/phone/NavigationBarView$H;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView$H;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;Lcom/android/systemui/statusbar/phone/NavigationBarView$H;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHandler:Lcom/android/systemui/statusbar/phone/NavigationBarView$H;

    .line 530
    new-instance v1, Lcom/android/systemui/statusbar/phone/NavigationBarView$3;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHandler:Lcom/android/systemui/statusbar/phone/NavigationBarView$H;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView$3;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mScreenKeyOrderObserver:Landroid/database/ContentObserver;

    .line 307
    const-string/jumbo v1, "window"

    .line 306
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisplay:Landroid/view/Display;

    .line 309
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 310
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x90f008f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarSize:I

    .line 311
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    .line 312
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    .line 313
    new-instance v1, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;

    invoke-direct {v1, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTaskSwitchHelper:Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;

    .line 315
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getIcons(Landroid/content/res/Resources;)V

    .line 317
    new-instance v1, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    .line 318
    new-instance v1, Lcom/android/systemui/statusbar/phone/NavigationBarView$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView$4;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 335
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "display"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 303
    return-void
.end method

.method private adjustExtraKeyGravity(Landroid/view/View;Z)V
    .locals 6
    .param p1, "navBar"    # Landroid/view/View;
    .param p2, "isLayoutRtl"    # Z

    .prologue
    const/16 v4, 0x50

    const/16 v5, 0x30

    .line 984
    const v3, 0x912016d

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 985
    .local v2, "menu":Landroid/view/View;
    const v3, 0x912016e

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 986
    .local v0, "imeSwitcher":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 987
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 988
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz p2, :cond_2

    move v3, v4

    :goto_0
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 989
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 991
    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    if-eqz v0, :cond_1

    .line 992
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 993
    .restart local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz p2, :cond_3

    :goto_1
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 994
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 983
    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    return-void

    .restart local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    move v3, v5

    .line 988
    goto :goto_0

    :cond_3
    move v4, v5

    .line 993
    goto :goto_1
.end method

.method private adjustKeyOrder()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 411
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mKeyOrder:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 412
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getScreenKeyOrder(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    .line 413
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 414
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mKeyOrder:Ljava/util/ArrayList;

    sget-object v2, Lcom/android/systemui/statusbar/phone/NavigationBarView;->sKeyIdMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 417
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 418
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    aget-object v2, v2, v0

    const v3, 0x91200be

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eq v0, v4, :cond_1

    .line 419
    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    move v3, v4

    .line 418
    :goto_2
    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->adjustKeyOrder(Landroid/view/ViewGroup;Z)V

    .line 417
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v3, v4

    .line 418
    goto :goto_2

    .line 419
    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 410
    :cond_3
    return-void
.end method

.method private adjustKeyOrder(Landroid/view/ViewGroup;Z)V
    .locals 9
    .param p1, "view"    # Landroid/view/ViewGroup;
    .param p2, "revert"    # Z

    .prologue
    const/4 v8, 0x0

    .line 424
    const-string/jumbo v6, "PhoneStatusBar/NavigationBarView"

    const-string/jumbo v7, "adjustKeyOrder"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 426
    .local v5, "positions":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 429
    .local v4, "keyViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/view/View;>;"
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 430
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 431
    .local v0, "child":Landroid/view/View;
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mKeyOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 432
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v8, v6}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 433
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 434
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 439
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mKeyOrder:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 440
    .local v1, "count":I
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_4

    .line 441
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mKeyOrder:Ljava/util/ArrayList;

    if-eqz p2, :cond_3

    add-int/lit8 v6, v1, -0x1

    sub-int/2addr v6, v2

    :goto_2
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 442
    .local v3, "key":Landroid/view/View;
    if-eqz v3, :cond_2

    .line 443
    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p1, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 440
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v3    # "key":Landroid/view/View;
    :cond_3
    move v6, v2

    .line 441
    goto :goto_2

    .line 423
    :cond_4
    return-void
.end method

.method private getIcons(Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 566
    const v0, 0x90201ca

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackIcon:Landroid/graphics/drawable/Drawable;

    .line 567
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackLandIcon:Landroid/graphics/drawable/Drawable;

    .line 568
    const v0, 0x90201ce

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackAltIcon:Landroid/graphics/drawable/Drawable;

    .line 569
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackAltIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackAltLandIcon:Landroid/graphics/drawable/Drawable;

    .line 570
    const v0, 0x90201ea

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentIcon:Landroid/graphics/drawable/Drawable;

    .line 571
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentLandIcon:Landroid/graphics/drawable/Drawable;

    .line 572
    const v0, 0x90201df

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHomeIcon:Landroid/graphics/drawable/Drawable;

    .line 574
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;-><init>(Landroid/content/Context;)V

    .line 575
    const v1, 0x90201cd

    .line 574
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->setBack(I)Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;

    move-result-object v0

    .line 576
    const v1, 0x90201d1

    .line 574
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->setBackAlt(I)Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;

    move-result-object v0

    .line 577
    const v1, 0x90201e2

    .line 574
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->setHome(I)Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;

    move-result-object v0

    .line 578
    const v1, 0x90201ec

    .line 574
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->setRecent(I)Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;

    move-result-object v0

    .line 579
    const v1, 0x90201d5

    .line 574
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->setBgPort(I)Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;

    move-result-object v0

    .line 580
    const v1, 0x90201d6

    .line 574
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->setBgPortCTS(I)Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;

    move-result-object v0

    .line 581
    const v1, 0x90201d8

    .line 574
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->setBgLand(I)Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;

    move-result-object v0

    .line 582
    const v1, 0x90201d9

    .line 574
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->setBgLandCTS(I)Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;

    move-result-object v0

    .line 583
    const v1, 0x90c00d4

    .line 574
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->setBgColorRes(I)Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->build()Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDarkSuit:Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit;

    .line 586
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->build()Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLightSuit:Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit;

    .line 565
    return-void
.end method

.method public static getScreenKeyOrder(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 449
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 450
    .local v7, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 451
    const-string/jumbo v9, "screen_key_order"

    .line 452
    const/4 v10, -0x2

    .line 450
    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 453
    .local v5, "keyList":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 454
    const-string/jumbo v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 455
    .local v6, "keys":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v8, v6

    if-ge v1, v8, :cond_1

    .line 457
    :try_start_0
    aget-object v8, v6, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 458
    .local v2, "id":I
    sget-object v8, Landroid/provider/MiuiSettings$System;->screenKeys:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 459
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 461
    .end local v2    # "id":I
    :catch_0
    move-exception v0

    .line 462
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 468
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "i":I
    .end local v6    # "keys":[Ljava/lang/String;
    :cond_1
    sget-object v8, Landroid/provider/MiuiSettings$System;->screenKeys:Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "id$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 469
    .local v3, "id":Ljava/lang/Integer;
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 470
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 474
    .end local v3    # "id":Ljava/lang/Integer;
    :cond_3
    return-object v7
.end method

.method private inLockTask()Z
    .locals 2

    .prologue
    .line 749
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->isInLockTaskMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 750
    :catch_0
    move-exception v0

    .line 751
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method private isScreenPinningActive()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 760
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getLockTaskModeState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 761
    :catch_0
    move-exception v0

    .line 762
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method private notifyVerticalChangedListener(Z)V
    .locals 1
    .param p1, "newVertical"    # Z

    .prologue
    .line 948
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOnVerticalChangedListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;

    if-eqz v0, :cond_0

    .line 949
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOnVerticalChangedListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;->onVerticalChanged(Z)V

    .line 947
    :cond_0
    return-void
.end method

.method private postCheckForInvalidLayout(Ljava/lang/String;)V
    .locals 3
    .param p1, "how"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1034
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHandler:Lcom/android/systemui/statusbar/phone/NavigationBarView$H;

    const/16 v1, 0x21ee

    invoke-virtual {v0, v1, v2, v2, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1033
    return-void
.end method

.method private setNotTouchable(Z)V
    .locals 5
    .param p1, "newNotTouchable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 841
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 842
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    if-eqz v0, :cond_1

    .line 843
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    .line 844
    .local v1, "oldNotTouchable":Z
    :cond_0
    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    .line 845
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 851
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 852
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isAttachedToWindow()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 853
    invoke-interface {v2, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 840
    .end local v1    # "oldNotTouchable":Z
    .end local v2    # "wm":Landroid/view/WindowManager;
    :cond_1
    return-void

    .line 846
    .restart local v1    # "oldNotTouchable":Z
    :cond_2
    if-eqz v1, :cond_3

    if-eqz p1, :cond_4

    .line 849
    :cond_3
    return-void

    .line 847
    :cond_4
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v3, v3, -0x11

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method

.method private setUseFadingAnimations(Z)V
    .locals 5
    .param p1, "useFadingAnimations"    # Z

    .prologue
    const/4 v3, 0x0

    .line 804
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 805
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    if-eqz v0, :cond_0

    .line 806
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    .line 807
    .local v1, "old":Z
    :goto_0
    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    .line 808
    const v3, 0x91101b7

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 814
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 815
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isAttachedToWindow()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 816
    invoke-interface {v2, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 803
    .end local v1    # "old":Z
    .end local v2    # "wm":Landroid/view/WindowManager;
    :cond_0
    return-void

    :cond_1
    move v1, v3

    .line 806
    goto :goto_0

    .line 809
    .restart local v1    # "old":Z
    :cond_2
    if-eqz v1, :cond_3

    if-eqz p1, :cond_4

    .line 812
    :cond_3
    return-void

    .line 810
    :cond_4
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    goto :goto_1
.end method

.method private swapChildrenOrderIfVertical(Landroid/view/View;)V
    .locals 6
    .param p1, "group"    # Landroid/view/View;

    .prologue
    .line 1004
    instance-of v4, p1, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_1

    move-object v3, p1

    .line 1005
    check-cast v3, Landroid/widget/LinearLayout;

    .line 1006
    .local v3, "linearLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 1007
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 1008
    .local v0, "childCount":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1009
    .local v1, "childList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1010
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1009
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1012
    :cond_0
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1013
    add-int/lit8 v2, v0, -0x1

    :goto_1
    if-ltz v2, :cond_1

    .line 1014
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1013
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1003
    .end local v0    # "childCount":I
    .end local v1    # "childList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v2    # "i":I
    .end local v3    # "linearLayout":Landroid/widget/LinearLayout;
    :cond_1
    return-void
.end method

.method private updateIcon(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Z)V
    .locals 2
    .param p1, "icon"    # Landroid/widget/ImageView;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "isDarkMode"    # Z

    .prologue
    const/4 v1, 0x0

    .line 735
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return-void

    .line 736
    :cond_1
    if-eqz p3, :cond_3

    invoke-static {}, Lcom/android/systemui/Util;->showCtsSpecifiedColor()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 737
    sget v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->sFilterColor:I

    if-nez v0, :cond_2

    .line 738
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x90c009c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->sFilterColor:I

    .line 740
    :cond_2
    sget v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->sFilterColor:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 744
    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 734
    return-void

    .line 742
    :cond_3
    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method

.method private updateLayoutTransitionsEnabled()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 785
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mWakeAndUnlocking:Z

    if-nez v3, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLayoutTransitionsEnabled:Z

    .line 786
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v4, 0x91200be

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 787
    .local v2, "navButtons":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v1

    .line 788
    .local v1, "lt":Landroid/animation/LayoutTransition;
    if-eqz v1, :cond_0

    .line 789
    if-eqz v0, :cond_2

    .line 790
    invoke-virtual {v1, v7}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 791
    invoke-virtual {v1, v8}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 792
    invoke-virtual {v1, v5}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 793
    invoke-virtual {v1, v6}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 784
    :cond_0
    :goto_1
    return-void

    .line 785
    .end local v1    # "lt":Landroid/animation/LayoutTransition;
    .end local v2    # "navButtons":Landroid/view/ViewGroup;
    :cond_1
    const/4 v0, 0x0

    .local v0, "enabled":Z
    goto :goto_0

    .line 795
    .end local v0    # "enabled":Z
    .restart local v1    # "lt":Landroid/animation/LayoutTransition;
    .restart local v2    # "navButtons":Landroid/view/ViewGroup;
    :cond_2
    invoke-virtual {v1, v7}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 796
    invoke-virtual {v1, v8}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 797
    invoke-virtual {v1, v5}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 798
    invoke-virtual {v1, v6}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    goto :goto_1
.end method

.method private updateRTLOrder()V
    .locals 6

    .prologue
    const v5, 0x91200be

    const/4 v4, 0x1

    .line 965
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    if-ne v3, v4, :cond_2

    const/4 v0, 0x1

    .line 967
    .local v0, "isLayoutRtl":Z
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsLayoutRtl:Z

    if-eq v3, v0, :cond_1

    .line 970
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    aget-object v2, v3, v4

    .line 971
    .local v2, "rotation90":Landroid/view/View;
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->swapChildrenOrderIfVertical(Landroid/view/View;)V

    .line 972
    invoke-direct {p0, v2, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->adjustExtraKeyGravity(Landroid/view/View;Z)V

    .line 974
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    const/4 v4, 0x3

    aget-object v1, v3, v4

    .line 975
    .local v1, "rotation270":Landroid/view/View;
    if-eq v2, v1, :cond_0

    .line 976
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->swapChildrenOrderIfVertical(Landroid/view/View;)V

    .line 977
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->adjustExtraKeyGravity(Landroid/view/View;Z)V

    .line 979
    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsLayoutRtl:Z

    .line 964
    .end local v1    # "rotation270":Landroid/view/View;
    .end local v2    # "rotation90":Landroid/view/View;
    :cond_1
    return-void

    .line 965
    .end local v0    # "isLayoutRtl":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "isLayoutRtl":Z
    goto :goto_0
.end method

.method private updateTaskSwitchHelper()V
    .locals 3

    .prologue
    .line 926
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 927
    .local v0, "isRtl":Z
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTaskSwitchHelper:Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->setBarState(ZZ)V

    .line 925
    return-void

    .line 926
    .end local v0    # "isRtl":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "isRtl":Z
    goto :goto_0
.end method


# virtual methods
.method public disableChangeBg(Z)V
    .locals 1
    .param p1, "disable"    # Z

    .prologue
    .line 638
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->disableChangeBg(Z)V

    .line 637
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 516
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->resumeSuspendedNavBarAutohide()V

    .line 521
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 518
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 519
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->suspendNavBarAutohide()V

    goto :goto_0
.end method

.method public getBackButton()Landroid/view/View;
    .locals 2

    .prologue
    .line 550
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v1, 0x91200b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    return-object v0
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    return-object v0
.end method

.method public getHomeButton()Lcom/android/systemui/statusbar/policy/KeyButtonView;
    .locals 2

    .prologue
    .line 554
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v1, 0x9120001

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    return-object v0
.end method

.method public getImeSwitchButton()Landroid/view/View;
    .locals 2

    .prologue
    .line 558
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v1, 0x912016e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getMenuButton()Landroid/view/View;
    .locals 2

    .prologue
    .line 546
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v1, 0x912016d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getRecentsButton()Landroid/view/View;
    .locals 2

    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v1, 0x9120203

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isForceImmersive()Z
    .locals 1

    .prologue
    .line 478
    const/4 v0, 0x0

    return v0
.end method

.method public isOverviewEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 562
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    const/high16 v2, 0x1000000

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 340
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 341
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHandler:Lcom/android/systemui/statusbar/phone/NavigationBarView$H;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 342
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v6

    .line 343
    .local v6, "root":Landroid/view/ViewRootImpl;
    if-eqz v6, :cond_0

    .line 344
    invoke-static {v6}, Landroid/view/ViewRootImplCompat;->setDrawDuringWindowsAnimating(Landroid/view/ViewRootImpl;)V

    .line 346
    :cond_0
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 347
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "miui.intent.TAKE_SCREENSHOT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 349
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 350
    const-string/jumbo v1, "screen_key_order"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 352
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mScreenKeyOrderObserver:Landroid/database/ContentObserver;

    .line 353
    const/4 v4, -0x1

    .line 349
    invoke-virtual {v0, v1, v7, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 354
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mScreenKeyOrderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v7}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 356
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->postInvalidate()V

    .line 357
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_1

    .line 358
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateStatusBarPading()V

    .line 361
    :cond_1
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarView$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView$5;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    .line 372
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->addCallback(Ljava/lang/Object;)V

    .line 339
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 955
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 956
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateRTLOrder()V

    .line 957
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateTaskSwitchHelper()V

    .line 954
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 377
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 378
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 379
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 380
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mScreenKeyOrderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 381
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->removeCallback(Ljava/lang/Object;)V

    .line 376
    return-void
.end method

.method public onFinishInflate()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 880
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    .line 881
    const v1, 0x9120202

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    const/4 v3, 0x2

    aput-object v1, v2, v3

    .line 880
    aput-object v1, v0, v4

    .line 883
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    const v1, 0x9120205

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, v5

    .line 885
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    aget-object v1, v1, v5

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 887
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    aget-object v0, v0, v4

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    .line 889
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getImeSwitchButton()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mImeSwitcherClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 891
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateRTLOrder()V

    .line 879
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 511
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTaskSwitchHelper:Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 935
    if-lez p2, :cond_1

    if-le p2, p1, :cond_1

    const/4 v0, 0x1

    .line 936
    .local v0, "newVertical":Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    if-eq v0, v1, :cond_0

    .line 937
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    .line 939
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->reorient()V

    .line 940
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->notifyVerticalChangedListener(Z)V

    .line 943
    :cond_0
    const-string/jumbo v1, "sizeChanged"

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->postCheckForInvalidLayout(Ljava/lang/String;)V

    .line 944
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 931
    return-void

    .line 935
    .end local v0    # "newVertical":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "newVertical":Z
    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTaskSwitchHelper:Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    const/4 v0, 0x1

    return v0

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 504
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/DeadZone;->poke(Landroid/view/MotionEvent;)V

    .line 506
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public reorient()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 899
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 900
    .local v1, "rot":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 901
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    aget-object v2, v2, v0

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 900
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 903
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    aget-object v2, v2, v1

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    .line 904
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 905
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateLayoutTransitionsEnabled()V

    .line 907
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getImeSwitchButton()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mImeSwitcherClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 909
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v3, 0x9120204

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/DeadZone;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

    .line 912
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->init()V

    .line 913
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    invoke-virtual {p0, v2, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(IZ)V

    .line 914
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    invoke-virtual {p0, v2, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setMenuVisibility(ZZ)V

    .line 920
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateTaskSwitchHelper()V

    .line 922
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    invoke-virtual {p0, v2, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setNavigationIconHints(IZ)V

    .line 898
    return-void
.end method

.method public setBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 1
    .param p1, "statusBar"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .prologue
    .line 486
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 487
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTaskSwitchHelper:Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->setBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 485
    return-void
.end method

.method public setDisabledFlags(I)V
    .locals 1
    .param p1, "disabledFlags"    # I

    .prologue
    .line 642
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(IZ)V

    .line 641
    return-void
.end method

.method public setDisabledFlags(IZ)V
    .locals 11
    .param p1, "disabledFlags"    # I
    .param p2, "force"    # Z

    .prologue
    .line 646
    if-nez p2, :cond_0

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    if-ne v8, p1, :cond_0

    return-void

    .line 648
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    .line 650
    const/high16 v8, 0x200000

    and-int/2addr v8, p1

    if-eqz v8, :cond_5

    const/4 v2, 0x1

    .line 651
    .local v2, "disableHome":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isOverviewEnabled()Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v3, 0x0

    .line 652
    .local v3, "disableRecent":Z
    :goto_1
    const/high16 v8, 0x400000

    and-int/2addr v8, p1

    if-eqz v8, :cond_8

    .line 653
    iget v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    and-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_7

    const/4 v1, 0x1

    .line 654
    .local v1, "disableBack":Z
    :goto_2
    const/high16 v8, 0x2000000

    and-int/2addr v8, p1

    if-eqz v8, :cond_9

    const/4 v4, 0x1

    .line 655
    .local v4, "disableSearch":Z
    :goto_3
    and-int/lit16 v8, p1, 0x200

    if-eqz v8, :cond_a

    const/4 v0, 0x1

    .line 656
    .local v0, "darkMode":Z
    :goto_4
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->getMode()I

    move-result v6

    .line 657
    .local v6, "mode":I
    if-eqz v0, :cond_b

    const/4 v8, 0x4

    if-eq v6, v8, :cond_1

    const/4 v8, 0x6

    if-ne v6, v8, :cond_b

    .line 659
    :cond_1
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDarkSuit:Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit;

    const/4 v9, 0x1

    invoke-virtual {p0, v8, v9}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->switchSuit(Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit;Z)V

    .line 665
    :goto_5
    if-eqz v2, :cond_c

    if-eqz v3, :cond_c

    move v8, v1

    :goto_6
    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setSlippery(Z)V

    .line 667
    if-eqz v2, :cond_d

    if-eqz v3, :cond_d

    move v8, v1

    :goto_7
    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setNotTouchable(Z)V

    .line 669
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v9, 0x91200be

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 670
    .local v7, "navButtons":Landroid/view/ViewGroup;
    if-eqz v7, :cond_2

    .line 671
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v5

    .line 672
    .local v5, "lt":Landroid/animation/LayoutTransition;
    if-eqz v5, :cond_2

    .line 673
    invoke-virtual {v5}, Landroid/animation/LayoutTransition;->getTransitionListeners()Ljava/util/List;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTransitionListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 674
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTransitionListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;

    invoke-virtual {v5, v8}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 678
    .end local v5    # "lt":Landroid/animation/LayoutTransition;
    :cond_2
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1c

    if-lt v8, v9, :cond_e

    .line 679
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isScreenPinningActive()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 680
    const/4 v3, 0x0

    .line 690
    :cond_3
    :goto_8
    const-string/jumbo v8, "PhoneStatusBar/NavigationBarView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setDisabledFlags back:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " home:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " recent:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setLayoutTransitionsEnabled(Z)V

    .line 692
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Landroid/view/View;

    move-result-object v9

    if-eqz v1, :cond_f

    const/4 v8, 0x4

    :goto_9
    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    .line 693
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/policy/KeyButtonView;

    move-result-object v9

    if-eqz v2, :cond_10

    const/4 v8, 0x4

    :goto_a
    invoke-virtual {v9, v8}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setVisibility(I)V

    .line 694
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v9

    if-eqz v3, :cond_11

    const/4 v8, 0x4

    :goto_b
    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    .line 695
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mForceHide:Z

    if-nez v8, :cond_4

    if-eqz v1, :cond_12

    if-eqz v2, :cond_12

    if-eqz v3, :cond_12

    :cond_4
    const/4 v8, 0x0

    :goto_c
    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setAlpha(F)V

    .line 696
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setLayoutTransitionsEnabled(Z)V

    .line 645
    return-void

    .line 650
    .end local v0    # "darkMode":Z
    .end local v1    # "disableBack":Z
    .end local v2    # "disableHome":Z
    .end local v3    # "disableRecent":Z
    .end local v4    # "disableSearch":Z
    .end local v6    # "mode":I
    .end local v7    # "navButtons":Landroid/view/ViewGroup;
    :cond_5
    const/4 v2, 0x0

    .restart local v2    # "disableHome":Z
    goto/16 :goto_0

    .line 651
    :cond_6
    const/4 v3, 0x1

    .restart local v3    # "disableRecent":Z
    goto/16 :goto_1

    .line 653
    :cond_7
    const/4 v1, 0x0

    .restart local v1    # "disableBack":Z
    goto/16 :goto_2

    .line 652
    .end local v1    # "disableBack":Z
    :cond_8
    const/4 v1, 0x0

    .restart local v1    # "disableBack":Z
    goto/16 :goto_2

    .line 654
    :cond_9
    const/4 v4, 0x0

    .restart local v4    # "disableSearch":Z
    goto/16 :goto_3

    .line 655
    :cond_a
    const/4 v0, 0x0

    .restart local v0    # "darkMode":Z
    goto/16 :goto_4

    .line 658
    .restart local v6    # "mode":I
    :cond_b
    if-eqz v6, :cond_1

    const/4 v8, 0x3

    if-eq v6, v8, :cond_1

    .line 661
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLightSuit:Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit;

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->switchSuit(Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit;Z)V

    goto/16 :goto_5

    .line 665
    :cond_c
    const/4 v8, 0x0

    goto/16 :goto_6

    .line 667
    :cond_d
    const/4 v8, 0x0

    goto/16 :goto_7

    .line 683
    .restart local v7    # "navButtons":Landroid/view/ViewGroup;
    :cond_e
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->inLockTask()Z

    move-result v8

    if-eqz v8, :cond_3

    if-eqz v3, :cond_3

    if-nez v2, :cond_3

    .line 686
    const/4 v3, 0x0

    goto/16 :goto_8

    .line 692
    :cond_f
    const/4 v8, 0x0

    goto :goto_9

    .line 693
    :cond_10
    const/4 v8, 0x0

    goto :goto_a

    .line 694
    :cond_11
    const/4 v8, 0x0

    goto :goto_b

    .line 695
    :cond_12
    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_c
.end method

.method public setLayoutDirection(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 592
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getIcons(Landroid/content/res/Resources;)V

    .line 594
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 591
    return-void
.end method

.method public setLayoutTransitionsEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 774
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLayoutTransitionsEnabled:Z

    .line 775
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateLayoutTransitionsEnabled()V

    .line 773
    return-void
.end method

.method public setMenuVisibility(ZZ)V
    .locals 3
    .param p1, "show"    # Z
    .param p2, "force"    # Z

    .prologue
    .line 863
    if-nez p2, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    if-ne v1, p1, :cond_0

    return-void

    .line 865
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    .line 868
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    if-eqz v1, :cond_3

    .line 869
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 870
    .local v0, "shouldShow":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getMenuButton()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 872
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->postInvalidate()V

    .line 873
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v1, :cond_1

    .line 874
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateStatusBarPading()V

    .line 862
    :cond_1
    return-void

    .line 869
    .end local v0    # "shouldShow":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "shouldShow":Z
    goto :goto_0

    .line 868
    .end local v0    # "shouldShow":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "shouldShow":Z
    goto :goto_0
.end method

.method public setNavigationIconHints(IZ)V
    .locals 5
    .param p1, "hints"    # I
    .param p2, "force"    # Z

    .prologue
    const/4 v4, 0x1

    .line 607
    if-nez p2, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    if-ne p1, v2, :cond_0

    return-void

    .line 608
    :cond_0
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    .line 609
    .local v0, "backAlt":Z
    :goto_0
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    if-eqz v0, :cond_3

    .line 618
    :cond_1
    :goto_1
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    .line 620
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 621
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackAltLandIcon:Landroid/graphics/drawable/Drawable;

    .line 620
    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 624
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentLandIcon:Landroid/graphics/drawable/Drawable;

    :goto_3
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 626
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/policy/KeyButtonView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHomeIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 628
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_8

    const/4 v1, 0x1

    .line 629
    .local v1, "showImeButton":Z
    :goto_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getImeSwitchButton()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 631
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    invoke-virtual {p0, v2, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setMenuVisibility(ZZ)V

    .line 634
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    invoke-virtual {p0, v2, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(IZ)V

    .line 606
    return-void

    .line 608
    .end local v0    # "backAlt":Z
    .end local v1    # "showImeButton":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "backAlt":Z
    goto :goto_0

    .line 610
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTransitionListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;->onBackAltCleared()V

    goto :goto_1

    .line 621
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackAltIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 622
    :cond_5
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackLandIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 624
    :cond_7
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    .line 628
    :cond_8
    const/4 v1, 0x0

    .restart local v1    # "showImeButton":Z
    goto :goto_4
.end method

.method public setSlippery(Z)V
    .locals 5
    .param p1, "newSlippery"    # Z

    .prologue
    const/high16 v4, 0x20000000

    const/4 v1, 0x0

    .line 822
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 823
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    if-eqz v0, :cond_1

    .line 824
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    .line 825
    .local v1, "oldSlippery":Z
    :cond_0
    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    .line 826
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v3, v4

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 833
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 834
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isAttachedToWindow()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 835
    invoke-interface {v2, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 821
    .end local v1    # "oldSlippery":Z
    .end local v2    # "wm":Landroid/view/WindowManager;
    :cond_1
    return-void

    .line 827
    .restart local v1    # "oldSlippery":Z
    :cond_2
    if-eqz v1, :cond_3

    if-eqz p1, :cond_4

    .line 830
    :cond_3
    return-void

    .line 828
    :cond_4
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v4, -0x20000001

    and-int/2addr v3, v4

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method

.method public setWakeAndUnlocking(Z)V
    .locals 0
    .param p1, "wakeAndUnlocking"    # Z

    .prologue
    .line 779
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setUseFadingAnimations(Z)V

    .line 780
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mWakeAndUnlocking:Z

    .line 781
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateLayoutTransitionsEnabled()V

    .line 778
    return-void
.end method

.method public switchSuit(Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit;Z)V
    .locals 5
    .param p1, "suit"    # Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit;
    .param p2, "isDarkMode"    # Z

    .prologue
    const/4 v4, 0x0

    .line 711
    iget-object v2, p1, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit;->mBack:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackLandIcon:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackIcon:Landroid/graphics/drawable/Drawable;

    .line 712
    iget-object v2, p1, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit;->mBackAlt:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackAltLandIcon:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackAltIcon:Landroid/graphics/drawable/Drawable;

    .line 713
    iget-object v2, p1, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit;->mRecent:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentLandIcon:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentIcon:Landroid/graphics/drawable/Drawable;

    .line 714
    iget-object v2, p1, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit;->mHome:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHomeIcon:Landroid/graphics/drawable/Drawable;

    .line 715
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 717
    .local v0, "backAlt":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 718
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackAltLandIcon:Landroid/graphics/drawable/Drawable;

    .line 717
    :goto_1
    invoke-direct {p0, v2, v3, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateIcon(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Z)V

    .line 722
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    if-eqz v3, :cond_4

    .line 723
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentLandIcon:Landroid/graphics/drawable/Drawable;

    .line 722
    :goto_2
    invoke-direct {p0, v2, v3, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateIcon(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Z)V

    .line 724
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/policy/KeyButtonView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHomeIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v2, v3, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateIcon(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Z)V

    .line 726
    if-eqz p2, :cond_5

    invoke-static {}, Lcom/android/systemui/Util;->showCtsSpecifiedColor()Z

    move-result v1

    .line 727
    :goto_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    aget-object v3, v2, v4

    if-eqz v1, :cond_6

    iget-object v2, p1, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit;->mBgPortCTS:Landroid/graphics/drawable/Drawable;

    :goto_4
    invoke-virtual {v3, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 728
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    const/4 v3, 0x1

    aget-object v3, v2, v3

    if-eqz v1, :cond_7

    iget-object v2, p1, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit;->mBgLandCTS:Landroid/graphics/drawable/Drawable;

    :goto_5
    invoke-virtual {v3, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 729
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    iget v3, p1, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit;->mBgColor:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->setForceBgColor(I)V

    .line 710
    return-void

    .line 715
    .end local v0    # "backAlt":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "backAlt":Z
    goto :goto_0

    .line 718
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackAltIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 719
    :cond_2
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackLandIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 723
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 726
    :cond_5
    const/4 v1, 0x0

    .local v1, "isCTSValid":Z
    goto :goto_3

    .line 727
    .end local v1    # "isCTSValid":Z
    :cond_6
    iget-object v2, p1, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit;->mBgPort:Landroid/graphics/drawable/Drawable;

    goto :goto_4

    .line 728
    :cond_7
    iget-object v2, p1, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit;->mBgLand:Landroid/graphics/drawable/Drawable;

    goto :goto_5
.end method
