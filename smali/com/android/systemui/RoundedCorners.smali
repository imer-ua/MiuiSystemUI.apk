.class public Lcom/android/systemui/RoundedCorners;
.super Lcom/android/systemui/SystemUI;
.source "RoundedCorners.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/RoundedCorners$1;,
        Lcom/android/systemui/RoundedCorners$RoundCornerData;
    }
.end annotation


# static fields
.field private static sIsRoundCorner:Z


# instance fields
.field mBottomCorner:[Lcom/android/systemui/RoundedCorners$RoundCornerData;

.field private mCurrentSize:Landroid/graphics/Point;

.field private mDisplay:Landroid/view/Display;

.field private mDriveMode:Z

.field private mDriveModeObserver:Landroid/database/ContentObserver;

.field private mEnableNotchConfig:Z

.field private mForceBlack:Z

.field private mForceBlackObserver:Landroid/database/ContentObserver;

.field private mHandler:Landroid/os/Handler;

.field private mHandyMode:Z

.field private mInitialSize:Landroid/graphics/Point;

.field mNotchCorner:[Lcom/android/systemui/RoundedCorners$RoundCornerData;

.field private mNotchRoundCornerView:Landroid/widget/ImageView;

.field private mRoundCornerRotation:I

.field private mRoundCornerViewBottom:Landroid/widget/ImageView;

.field private mRoundCornerViewTop:Landroid/widget/ImageView;

.field private mSettings:Lcom/android/systemui/qs/SecureSetting;

.field mTopCorner:[Lcom/android/systemui/RoundedCorners$RoundCornerData;

.field mUpdateRoundCornerRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/RoundedCorners;)Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/RoundedCorners;->mCurrentSize:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/RoundedCorners;)Landroid/view/Display;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/RoundedCorners;->mDisplay:Landroid/view/Display;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/RoundedCorners;)Landroid/database/ContentObserver;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/RoundedCorners;->mDriveModeObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/RoundedCorners;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/RoundedCorners;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/RoundedCorners;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/RoundedCorners;->mHandyMode:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/RoundedCorners;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/RoundedCorners;->mNotchRoundCornerView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/RoundedCorners;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/RoundedCorners;->mRoundCornerRotation:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/RoundedCorners;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/RoundedCorners;->mRoundCornerViewBottom:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/RoundedCorners;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/RoundedCorners;->mRoundCornerViewTop:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/RoundedCorners;)Lcom/android/systemui/qs/SecureSetting;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/RoundedCorners;->mSettings:Lcom/android/systemui/qs/SecureSetting;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/RoundedCorners;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/RoundedCorners;->mDriveMode:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/RoundedCorners;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/RoundedCorners;->mForceBlack:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/RoundedCorners;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/RoundedCorners;->mHandyMode:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/RoundedCorners;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/RoundedCorners;->mRoundCornerRotation:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/RoundedCorners;I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/RoundedCorners;->handleStateChange(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/RoundedCorners;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/RoundedCorners;->updateNotchRoundCornerVisibility()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/RoundedCorners;Landroid/view/View;Lcom/android/systemui/RoundedCorners$RoundCornerData;Z)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "data"    # Lcom/android/systemui/RoundedCorners$RoundCornerData;
    .param p3, "notch"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/RoundedCorners;->updateRoundCornerViewAt(Landroid/view/View;Lcom/android/systemui/RoundedCorners$RoundCornerData;Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 90
    const-string/jumbo v1, "sys.miui.show_round_corner"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    const-string/jumbo v1, "support_round_corner"

    invoke-static {v1, v0}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 89
    :cond_0
    sput-boolean v0, Lcom/android/systemui/RoundedCorners;->sIsRoundCorner:Z

    .line 69
    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, -0x1

    const/4 v4, -0x2

    .line 69
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 79
    iput-boolean v7, p0, Lcom/android/systemui/RoundedCorners;->mForceBlack:Z

    .line 166
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/systemui/RoundedCorners$RoundCornerData;

    .line 167
    new-instance v1, Lcom/android/systemui/RoundedCorners$RoundCornerData;

    const/16 v2, 0x30

    .line 170
    const v3, 0x902031b

    .line 167
    invoke-direct {v1, v2, v5, v4, v3}, Lcom/android/systemui/RoundedCorners$RoundCornerData;-><init>(IIII)V

    aput-object v1, v0, v7

    .line 172
    new-instance v1, Lcom/android/systemui/RoundedCorners$RoundCornerData;

    .line 175
    const v2, 0x90206f5

    .line 172
    invoke-direct {v1, v6, v4, v5, v2}, Lcom/android/systemui/RoundedCorners$RoundCornerData;-><init>(IIII)V

    aput-object v1, v0, v8

    .line 177
    new-instance v1, Lcom/android/systemui/RoundedCorners$RoundCornerData;

    const/16 v2, 0x50

    .line 180
    const v3, 0x90206f6

    .line 177
    invoke-direct {v1, v2, v5, v4, v3}, Lcom/android/systemui/RoundedCorners$RoundCornerData;-><init>(IIII)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 182
    new-instance v1, Lcom/android/systemui/RoundedCorners$RoundCornerData;

    const/4 v2, 0x5

    .line 185
    const v3, 0x90206f7

    .line 182
    invoke-direct {v1, v2, v4, v5, v3}, Lcom/android/systemui/RoundedCorners$RoundCornerData;-><init>(IIII)V

    aput-object v1, v0, v6

    .line 166
    iput-object v0, p0, Lcom/android/systemui/RoundedCorners;->mTopCorner:[Lcom/android/systemui/RoundedCorners$RoundCornerData;

    .line 189
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/systemui/RoundedCorners$RoundCornerData;

    .line 190
    new-instance v1, Lcom/android/systemui/RoundedCorners$RoundCornerData;

    const/16 v2, 0x50

    .line 193
    const v3, 0x902031a

    .line 190
    invoke-direct {v1, v2, v5, v4, v3}, Lcom/android/systemui/RoundedCorners$RoundCornerData;-><init>(IIII)V

    aput-object v1, v0, v7

    .line 195
    new-instance v1, Lcom/android/systemui/RoundedCorners$RoundCornerData;

    const/4 v2, 0x5

    .line 198
    const v3, 0x90206f8

    .line 195
    invoke-direct {v1, v2, v4, v5, v3}, Lcom/android/systemui/RoundedCorners$RoundCornerData;-><init>(IIII)V

    aput-object v1, v0, v8

    .line 200
    new-instance v1, Lcom/android/systemui/RoundedCorners$RoundCornerData;

    const/16 v2, 0x30

    .line 203
    const v3, 0x90206f9

    .line 200
    invoke-direct {v1, v2, v5, v4, v3}, Lcom/android/systemui/RoundedCorners$RoundCornerData;-><init>(IIII)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 205
    new-instance v1, Lcom/android/systemui/RoundedCorners$RoundCornerData;

    .line 208
    const v2, 0x90206fa

    .line 205
    invoke-direct {v1, v6, v4, v5, v2}, Lcom/android/systemui/RoundedCorners$RoundCornerData;-><init>(IIII)V

    aput-object v1, v0, v6

    .line 189
    iput-object v0, p0, Lcom/android/systemui/RoundedCorners;->mBottomCorner:[Lcom/android/systemui/RoundedCorners$RoundCornerData;

    .line 212
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/systemui/RoundedCorners$RoundCornerData;

    .line 213
    new-instance v1, Lcom/android/systemui/RoundedCorners$RoundCornerData;

    const/16 v2, 0x30

    .line 216
    const v3, 0x90206fb

    .line 213
    invoke-direct {v1, v2, v5, v4, v3}, Lcom/android/systemui/RoundedCorners$RoundCornerData;-><init>(IIII)V

    aput-object v1, v0, v7

    .line 218
    new-instance v1, Lcom/android/systemui/RoundedCorners$RoundCornerData;

    .line 221
    const v2, 0x90206fc

    .line 218
    invoke-direct {v1, v6, v4, v5, v2}, Lcom/android/systemui/RoundedCorners$RoundCornerData;-><init>(IIII)V

    aput-object v1, v0, v8

    .line 223
    new-instance v1, Lcom/android/systemui/RoundedCorners$RoundCornerData;

    const/16 v2, 0x50

    .line 226
    const v3, 0x90206fd

    .line 223
    invoke-direct {v1, v2, v5, v4, v3}, Lcom/android/systemui/RoundedCorners$RoundCornerData;-><init>(IIII)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 228
    new-instance v1, Lcom/android/systemui/RoundedCorners$RoundCornerData;

    const/4 v2, 0x5

    .line 231
    const v3, 0x90206fe

    .line 228
    invoke-direct {v1, v2, v4, v5, v3}, Lcom/android/systemui/RoundedCorners$RoundCornerData;-><init>(IIII)V

    aput-object v1, v0, v6

    .line 212
    iput-object v0, p0, Lcom/android/systemui/RoundedCorners;->mNotchCorner:[Lcom/android/systemui/RoundedCorners$RoundCornerData;

    .line 318
    new-instance v0, Lcom/android/systemui/RoundedCorners$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/RoundedCorners$1;-><init>(Lcom/android/systemui/RoundedCorners;)V

    iput-object v0, p0, Lcom/android/systemui/RoundedCorners;->mUpdateRoundCornerRunnable:Ljava/lang/Runnable;

    .line 69
    return-void
.end method

.method private handleStateChange(I)V
    .locals 5
    .param p1, "value"    # I

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x0

    .line 310
    iget-object v0, p0, Lcom/android/systemui/RoundedCorners;->mRoundCornerViewTop:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/RoundedCorners;->mRoundCornerViewBottom:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/android/systemui/RoundedCorners;->mRoundCornerViewTop:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz p1, :cond_2

    .line 312
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v4, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 311
    :goto_0
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 313
    iget-object v0, p0, Lcom/android/systemui/RoundedCorners;->mRoundCornerViewBottom:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 314
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v4, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 313
    :cond_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 309
    :cond_1
    return-void

    :cond_2
    move-object v0, v1

    .line 312
    goto :goto_0
.end method

.method private setBackgroundResource(Landroid/view/View;IZ)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "res"    # I
    .param p3, "notch"    # Z

    .prologue
    .line 372
    if-eqz p3, :cond_0

    .line 373
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 371
    :goto_0
    return-void

    .line 375
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/RoundedCorners;->mInitialSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/android/systemui/RoundedCorners;->mInitialSize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 376
    .local v2, "initWidth":I
    iget-object v4, p0, Lcom/android/systemui/RoundedCorners;->mCurrentSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/android/systemui/RoundedCorners;->mCurrentSize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 377
    .local v0, "currentWidth":I
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 378
    .local v3, "value":Landroid/util/TypedValue;
    iget-object v4, p0, Lcom/android/systemui/RoundedCorners;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, p2, v3, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 379
    iget-object v4, p0, Lcom/android/systemui/RoundedCorners;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 380
    iget v5, v3, Landroid/util/TypedValue;->density:I

    mul-int/2addr v5, v0

    div-int/2addr v5, v2

    .line 379
    invoke-virtual {v4, p2, v5}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 381
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private showRoundCornerViewAt(II)Landroid/widget/ImageView;
    .locals 1
    .param p1, "gravity"    # I
    .param p2, "roundCornerImgResId"    # I

    .prologue
    .line 346
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/RoundedCorners;->showRoundCornerViewAt(IIZ)Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method private showRoundCornerViewAt(IIZ)Landroid/widget/ImageView;
    .locals 8
    .param p1, "gravity"    # I
    .param p2, "roundCornerImgResId"    # I
    .param p3, "notch"    # Z

    .prologue
    .line 350
    iget-object v1, p0, Lcom/android/systemui/RoundedCorners;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    .line 351
    .local v7, "wm":Landroid/view/WindowManager;
    new-instance v6, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/RoundedCorners;->mContext:Landroid/content/Context;

    invoke-direct {v6, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 352
    .local v6, "view":Landroid/widget/ImageView;
    invoke-direct {p0, v6, p2, p3}, Lcom/android/systemui/RoundedCorners;->setBackgroundResource(Landroid/view/View;IZ)V

    .line 353
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 356
    if-eqz p3, :cond_0

    const/16 v3, 0x7e1

    .line 354
    :goto_0
    const/4 v1, -0x1

    .line 355
    const/4 v2, -0x2

    .line 357
    const/16 v4, 0x518

    .line 361
    const/4 v5, -0x3

    .line 353
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 362
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const v1, 0x100010

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 363
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 364
    const-string/jumbo v1, "RoundCorner"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 366
    const/4 v1, 0x1

    .line 365
    invoke-static {v0, v1}, Landroid/view/WindowManagerCompat;->setLayoutInDisplayCutoutMode(Landroid/view/WindowManager$LayoutParams;I)V

    .line 367
    invoke-interface {v7, v6, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 368
    return-object v6

    .line 356
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    const/16 v3, 0x7df

    goto :goto_0
.end method

.method private updateNotchRoundCornerVisibility()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 386
    iget-object v1, p0, Lcom/android/systemui/RoundedCorners;->mNotchRoundCornerView:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 387
    iget-object v1, p0, Lcom/android/systemui/RoundedCorners;->mNotchRoundCornerView:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/systemui/RoundedCorners;->mRoundCornerRotation:I

    if-eqz v2, :cond_2

    .line 388
    iget-boolean v2, p0, Lcom/android/systemui/RoundedCorners;->mEnableNotchConfig:Z

    if-eqz v2, :cond_2

    .line 389
    :cond_0
    const/16 v0, 0x8

    .line 387
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 385
    :cond_1
    return-void

    .line 388
    :cond_2
    iget-boolean v2, p0, Lcom/android/systemui/RoundedCorners;->mDriveMode:Z

    if-nez v2, :cond_0

    .line 389
    iget-boolean v2, p0, Lcom/android/systemui/RoundedCorners;->mForceBlack:Z

    .line 387
    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method private updateRoundCornerViewAt(Landroid/view/View;Lcom/android/systemui/RoundedCorners$RoundCornerData;Z)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "data"    # Lcom/android/systemui/RoundedCorners$RoundCornerData;
    .param p3, "notch"    # Z

    .prologue
    .line 333
    if-nez p1, :cond_0

    .line 334
    return-void

    .line 336
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/RoundedCorners;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 337
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 338
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v2, p2, Lcom/android/systemui/RoundedCorners$RoundCornerData;->gravity:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 339
    iget v2, p2, Lcom/android/systemui/RoundedCorners$RoundCornerData;->width:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 340
    iget v2, p2, Lcom/android/systemui/RoundedCorners$RoundCornerData;->height:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 341
    iget v2, p2, Lcom/android/systemui/RoundedCorners$RoundCornerData;->backgroundRes:I

    invoke-direct {p0, p1, v2, p3}, Lcom/android/systemui/RoundedCorners;->setBackgroundResource(Landroid/view/View;IZ)V

    .line 342
    invoke-interface {v1, p1, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 332
    return-void
.end method


# virtual methods
.method public addQsTile(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "tile"    # Landroid/content/ComponentName;

    .prologue
    .line 532
    return-void
.end method

.method public animateCollapsePanels(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 431
    return-void
.end method

.method public animateExpandNotificationsPanel()V
    .locals 0

    .prologue
    .line 427
    return-void
.end method

.method public animateExpandSettingsPanel(Ljava/lang/String;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/String;

    .prologue
    .line 435
    return-void
.end method

.method public appTransitionCancelled()V
    .locals 0

    .prologue
    .line 499
    return-void
.end method

.method public appTransitionFinished()V
    .locals 0

    .prologue
    .line 508
    return-void
.end method

.method public appTransitionPending(Z)V
    .locals 0
    .param p1, "forced"    # Z

    .prologue
    .line 495
    return-void
.end method

.method public appTransitionStarting(JJZ)V
    .locals 0
    .param p1, "startTime"    # J
    .param p3, "duration"    # J
    .param p5, "forced"    # Z

    .prologue
    .line 504
    return-void
.end method

.method public cancelPreloadRecentApps()V
    .locals 0

    .prologue
    .line 483
    return-void
.end method

.method public clickTile(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "tile"    # Landroid/content/ComponentName;

    .prologue
    .line 540
    return-void
.end method

.method public disable(IIZ)V
    .locals 0
    .param p1, "state1"    # I
    .param p2, "state2"    # I
    .param p3, "animate"    # Z

    .prologue
    .line 423
    return-void
.end method

.method public dismissKeyboardShortcutsMenu()V
    .locals 0

    .prologue
    .line 475
    return-void
.end method

.method public handleShowGlobalActionsMenu()V
    .locals 0

    .prologue
    .line 573
    return-void
.end method

.method public handleSystemNavigationKey(I)V
    .locals 0
    .param p1, "arg1"    # I

    .prologue
    .line 569
    return-void
.end method

.method public hideFingerprintDialog()V
    .locals 0

    .prologue
    .line 564
    return-void
.end method

.method public hideRecentApps(ZZ)V
    .locals 0
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHomeKey"    # Z

    .prologue
    .line 459
    return-void
.end method

.method public initRoundCornerWindows()V
    .locals 7

    .prologue
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "my.settings.ROUND"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/RoundedCorners;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/systemui/RoundedCorners$Receive;

    invoke-direct {v3, p0}, Lcom/android/systemui/RoundedCorners$Receive;-><init>(Lcom/android/systemui/RoundedCorners;)V

    iget-object v4, p0, Lcom/android/systemui/RoundedCorners;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const/16 v4, 0x33

    const/4 v6, 0x1

    .line 236
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v1, "round_toggle"

    invoke-static {v1, v0}, Landroid/preference/MiuiCoreSettingsPreference;->gKP(Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    :cond_0
    sput-boolean v2, Lcom/android/systemui/RoundedCorners;->sIsRoundCorner:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lmiui/util/CustomizeUtil;->HAS_NOTCH:Z

    if-eqz v2, :cond_5

    .line 238
    :cond_1
    sget-boolean v2, Lcom/android/systemui/RoundedCorners;->sIsRoundCorner:Z

    if-eqz v2, :cond_2

    .line 239
    const v2, 0x902031b

    invoke-direct {p0, v4, v2}, Lcom/android/systemui/RoundedCorners;->showRoundCornerViewAt(II)Landroid/widget/ImageView;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/RoundedCorners;->mRoundCornerViewTop:Landroid/widget/ImageView;

    .line 240
    const/16 v2, 0x53

    const v3, 0x902031a

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/RoundedCorners;->showRoundCornerViewAt(II)Landroid/widget/ImageView;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/RoundedCorners;->mRoundCornerViewBottom:Landroid/widget/ImageView;

    .line 242
    :cond_2
    sget-boolean v2, Lmiui/util/CustomizeUtil;->HAS_NOTCH:Z

    if-eqz v2, :cond_4

    .line 243
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-ge v2, v3, :cond_3

    .line 244
    const v2, 0x90206fb

    invoke-direct {p0, v4, v2, v6}, Lcom/android/systemui/RoundedCorners;->showRoundCornerViewAt(IIZ)Landroid/widget/ImageView;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/RoundedCorners;->mNotchRoundCornerView:Landroid/widget/ImageView;

    .line 245
    invoke-direct {p0}, Lcom/android/systemui/RoundedCorners;->updateNotchRoundCornerVisibility()V

    .line 247
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/RoundedCorners;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/RoundedCorners;->mRoundCornerRotation:I

    .line 248
    iget-object v2, p0, Lcom/android/systemui/RoundedCorners;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "display"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 249
    .local v0, "dm":Landroid/hardware/display/DisplayManager;
    new-instance v2, Lcom/android/systemui/RoundedCorners$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/RoundedCorners$4;-><init>(Lcom/android/systemui/RoundedCorners;)V

    .line 269
    iget-object v3, p0, Lcom/android/systemui/RoundedCorners;->mHandler:Landroid/os/Handler;

    .line 249
    invoke-virtual {v0, v2, v3}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 273
    .end local v0    # "dm":Landroid/hardware/display/DisplayManager;
    :cond_4
    new-instance v2, Lcom/android/systemui/RoundedCorners$5;

    iget-object v3, p0, Lcom/android/systemui/RoundedCorners;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/RoundedCorners;->mHandler:Landroid/os/Handler;

    .line 274
    const-string/jumbo v5, "accessibility_display_inversion_enabled"

    .line 273
    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/systemui/RoundedCorners$5;-><init>(Lcom/android/systemui/RoundedCorners;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/systemui/RoundedCorners;->mSettings:Lcom/android/systemui/qs/SecureSetting;

    .line 280
    iget-object v2, p0, Lcom/android/systemui/RoundedCorners;->mSettings:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v2, v6}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    .line 281
    iget-object v2, p0, Lcom/android/systemui/RoundedCorners;->mSettings:Lcom/android/systemui/qs/SecureSetting;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/SecureSetting;->onChange(Z)V

    .line 283
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 284
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 285
    const-string/jumbo v2, "miui.action.handymode_change"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 286
    iget-object v2, p0, Lcom/android/systemui/RoundedCorners;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/systemui/RoundedCorners$6;

    invoke-direct {v3, p0}, Lcom/android/systemui/RoundedCorners$6;-><init>(Lcom/android/systemui/RoundedCorners;)V

    .line 306
    iget-object v4, p0, Lcom/android/systemui/RoundedCorners;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    .line 286
    invoke-virtual {v2, v3, v1, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 235
    return-void

    .line 236
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_5
    return-void
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 401
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 3

    .prologue
    .line 406
    iget-object v1, p0, Lcom/android/systemui/RoundedCorners;->mNotchRoundCornerView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 407
    iget-object v1, p0, Lcom/android/systemui/RoundedCorners;->mNotchRoundCornerView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 409
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/RoundedCorners;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/RoundedCorners;->mUpdateRoundCornerRunnable:Ljava/lang/Runnable;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    .line 410
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 411
    iget-object v1, p0, Lcom/android/systemui/RoundedCorners;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 405
    return-void
.end method

.method public onFingerprintAuthenticated()V
    .locals 0

    .prologue
    .line 549
    return-void
.end method

.method public onFingerprintError(Ljava/lang/String;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 559
    return-void
.end method

.method public onFingerprintHelp(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 554
    return-void
.end method

.method public preloadRecentApps()V
    .locals 0

    .prologue
    .line 471
    return-void
.end method

.method public remQsTile(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "tile"    # Landroid/content/ComponentName;

    .prologue
    .line 536
    return-void
.end method

.method public removeIcon(Ljava/lang/String;)V
    .locals 0
    .param p1, "slot"    # Ljava/lang/String;

    .prologue
    .line 419
    return-void
.end method

.method public setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 0
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .prologue
    .line 415
    return-void
.end method

.method public setImeWindowStatus(Landroid/os/IBinder;IIZ)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "vis"    # I
    .param p3, "backDisposition"    # I
    .param p4, "showImeSwitcher"    # Z

    .prologue
    .line 450
    return-void
.end method

.method public setStatus(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "ext"    # Landroid/os/Bundle;

    .prologue
    .line 394
    sget-boolean v0, Lmiui/util/CustomizeUtil;->HAS_NOTCH:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "upate_specail_mode"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    const-string/jumbo v0, "enable_config"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/RoundedCorners;->mEnableNotchConfig:Z

    .line 396
    invoke-direct {p0}, Lcom/android/systemui/RoundedCorners;->updateNotchRoundCornerVisibility()V

    .line 393
    :cond_0
    return-void
.end method

.method public setSystemUiVisibility(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "vis"    # I
    .param p2, "fullscreenStackVis"    # I
    .param p3, "dockedStackVis"    # I
    .param p4, "mask"    # I
    .param p5, "fullscreenStackBounds"    # Landroid/graphics/Rect;
    .param p6, "dockedStackBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 441
    return-void
.end method

.method public setWindowState(II)V
    .locals 0
    .param p1, "window"    # I
    .param p2, "state"    # I

    .prologue
    .line 487
    return-void
.end method

.method public showAssistDisclosure()V
    .locals 0

    .prologue
    .line 512
    return-void
.end method

.method public showFingerprintDialog(Lcom/android/internal/os/SomeArgs;)V
    .locals 0
    .param p1, "args"    # Lcom/android/internal/os/SomeArgs;

    .prologue
    .line 544
    return-void
.end method

.method public showPictureInPictureMenu()V
    .locals 0

    .prologue
    .line 524
    return-void
.end method

.method public showRecentApps(ZZ)V
    .locals 0
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "fromHome"    # Z

    .prologue
    .line 454
    return-void
.end method

.method public showScreenPinningRequest(I)V
    .locals 0
    .param p1, "taskId"    # I

    .prologue
    .line 491
    return-void
.end method

.method public start()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 98
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_0

    .line 99
    iget-object v2, p0, Lcom/android/systemui/RoundedCorners;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "force_black"

    invoke-static {v2, v3, v5}, Landroid/provider/MiuiSettings$Global;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 101
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/RoundedCorners;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/RoundedCorners;->mDisplay:Landroid/view/Display;

    .line 103
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/RoundedCorners;->mInitialSize:Landroid/graphics/Point;

    .line 104
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    .line 106
    .local v1, "wm":Landroid/view/IWindowManager;
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/RoundedCorners;->mInitialSize:Landroid/graphics/Point;

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Landroid/view/IWindowManager;->getInitialDisplaySize(ILandroid/graphics/Point;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_0
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/RoundedCorners;->mCurrentSize:Landroid/graphics/Point;

    .line 111
    iget-object v2, p0, Lcom/android/systemui/RoundedCorners;->mDisplay:Landroid/view/Display;

    iget-object v3, p0, Lcom/android/systemui/RoundedCorners;->mCurrentSize:Landroid/graphics/Point;

    invoke-virtual {v2, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 113
    sget-object v2, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    iput-object v2, p0, Lcom/android/systemui/RoundedCorners;->mHandler:Landroid/os/Handler;

    .line 114
    invoke-virtual {p0}, Lcom/android/systemui/RoundedCorners;->initRoundCornerWindows()V

    invoke-virtual {p0}, Lcom/android/systemui/RoundedCorners;->updateRoundVis()V

    .line 115
    sget-boolean v2, Lmiui/util/CustomizeUtil;->HAS_NOTCH:Z

    if-eqz v2, :cond_1

    .line 116
    iget-object v2, p0, Lcom/android/systemui/RoundedCorners;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2, v3}, Lcom/android/systemui/SystemUI;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v2, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 118
    new-instance v2, Lcom/android/systemui/RoundedCorners$2;

    iget-object v3, p0, Lcom/android/systemui/RoundedCorners;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/RoundedCorners$2;-><init>(Lcom/android/systemui/RoundedCorners;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/systemui/RoundedCorners;->mForceBlackObserver:Landroid/database/ContentObserver;

    .line 125
    iget-object v2, p0, Lcom/android/systemui/RoundedCorners;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 126
    const-string/jumbo v3, "force_black"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 128
    iget-object v4, p0, Lcom/android/systemui/RoundedCorners;->mForceBlackObserver:Landroid/database/ContentObserver;

    .line 125
    invoke-virtual {v2, v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 130
    iget-object v2, p0, Lcom/android/systemui/RoundedCorners;->mForceBlackObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v5}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 132
    new-instance v2, Lcom/android/systemui/RoundedCorners$3;

    iget-object v3, p0, Lcom/android/systemui/RoundedCorners;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/RoundedCorners$3;-><init>(Lcom/android/systemui/RoundedCorners;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/systemui/RoundedCorners;->mDriveModeObserver:Landroid/database/ContentObserver;

    .line 140
    iget-object v2, p0, Lcom/android/systemui/RoundedCorners;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 141
    const-string/jumbo v3, "drive_mode_drive_mode"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 143
    iget-object v4, p0, Lcom/android/systemui/RoundedCorners;->mDriveModeObserver:Landroid/database/ContentObserver;

    .line 140
    invoke-virtual {v2, v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 145
    iget-object v2, p0, Lcom/android/systemui/RoundedCorners;->mDriveModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v5}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 147
    :cond_1
    sget-boolean v2, Lmiui/util/CustomizeUtil;->HAS_NOTCH:Z

    if-nez v2, :cond_2

    sget-object v2, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v3, "perseus"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 148
    :cond_2
    const-class v2, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v2, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->addCallback(Ljava/lang/Object;)V

    .line 97
    :cond_3
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "RoundedCorners"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to get the display size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public startAssist(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 516
    return-void
.end method

.method public toggleKeyboardShortcutsMenu(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .prologue
    .line 479
    return-void
.end method

.method public toggleRecentApps()V
    .locals 0

    .prologue
    .line 463
    return-void
.end method

.method public toggleSplitScreen()V
    .locals 0

    .prologue
    .line 467
    return-void
.end method

.method public topAppWindowChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 445
    return-void
.end method

.method public updateRoundVis()V
    .locals 5

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/RoundedCorners;->mContext:Landroid/content/Context;

    const-string v1, "round_toggle"

    invoke-static {v1, v0}, Landroid/preference/MiuiCoreSettingsPreference;->gKP(Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/RoundedCorners;->mRoundCornerViewTop:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/android/systemui/RoundedCorners;->mRoundCornerViewTop:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/RoundedCorners;->mRoundCornerViewBottom:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/RoundedCorners;->mRoundCornerViewBottom:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1
.end method
