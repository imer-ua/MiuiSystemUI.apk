.class public Lcom/android/systemui/fsgesture/NavStubDemoView;
.super Landroid/view/View;
.source "NavStubDemoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/fsgesture/NavStubDemoView$1;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private curActivity:Landroid/app/Activity;

.field private demoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

.field private demoType:Ljava/lang/String;

.field private fullyShowStep:I

.field private isFromPro:Z

.field private mAppBgView:Landroid/view/View;

.field private mAppCalculatorImg:Landroid/widget/ImageView;

.field private mAppIcon:Landroid/graphics/Bitmap;

.field private mAppNoteIconImg:Landroid/view/View;

.field private mAppNoteImg:Landroid/widget/ImageView;

.field private mBgView:Landroid/view/View;

.field private mBottomDec:I

.field private mCurAlpha:F

.field private mCurScale:F

.field private mCurrentY:F

.field private mDelta:F

.field private mDownNo:I

.field private mDownX:F

.field private mDragBitmap:Landroid/graphics/Bitmap;

.field private mDrawBmp:Landroid/graphics/Bitmap;

.field private mFakeBitmap:Landroid/graphics/Bitmap;

.field private mFollowTailX:F

.field private mFollowTailY:F

.field private mFrameHandler:Landroid/os/Handler;

.field private mHomeIconImg:Landroid/widget/ImageView;

.field private mIsAppToHome:Z

.field private mIsAppToRecents:Z

.field private mIsInFsgAnim:Z

.field private mLastDownNo:I

.field private mModeSrcIn:Landroid/graphics/Xfermode;

.field private mPaint:Landroid/graphics/Paint;

.field private mPivotLocX:I

.field private mPivotLocY:I

.field private mRecentsAnimator:Landroid/animation/ValueAnimator;

.field private mRecentsBgView:Landroid/view/View;

.field private mRecentsClearImg:Landroid/view/View;

.field private mShowHeight:I

.field mShowRect:Landroid/graphics/Rect;

.field private mShowWidth:I

.field private mStateMode:I

.field private mTailCatcherTask:Ljava/lang/Runnable;

.field private mXScale:F

.field private mYScale:F

.field private swipeView:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/fsgesture/NavStubDemoView;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->curActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/fsgesture/NavStubDemoView;)Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->demoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/systemui/fsgesture/NavStubDemoView;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mFollowTailX:F

    return v0
.end method

.method static synthetic -get11(Lcom/android/systemui/fsgesture/NavStubDemoView;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mFollowTailY:F

    return v0
.end method

.method static synthetic -get12(Lcom/android/systemui/fsgesture/NavStubDemoView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mFrameHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/systemui/fsgesture/NavStubDemoView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mHomeIconImg:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/systemui/fsgesture/NavStubDemoView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocX:I

    return v0
.end method

.method static synthetic -get15(Lcom/android/systemui/fsgesture/NavStubDemoView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocY:I

    return v0
.end method

.method static synthetic -get16(Lcom/android/systemui/fsgesture/NavStubDemoView;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mRecentsAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/systemui/fsgesture/NavStubDemoView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mRecentsBgView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get18(Lcom/android/systemui/fsgesture/NavStubDemoView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mRecentsClearImg:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get19(Lcom/android/systemui/fsgesture/NavStubDemoView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowHeight:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/fsgesture/NavStubDemoView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->demoType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get20(Lcom/android/systemui/fsgesture/NavStubDemoView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowWidth:I

    return v0
.end method

.method static synthetic -get21(Lcom/android/systemui/fsgesture/NavStubDemoView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mStateMode:I

    return v0
.end method

.method static synthetic -get22(Lcom/android/systemui/fsgesture/NavStubDemoView;)Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->swipeView:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/fsgesture/NavStubDemoView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->isFromPro:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/fsgesture/NavStubDemoView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mAppBgView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/fsgesture/NavStubDemoView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mAppCalculatorImg:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/fsgesture/NavStubDemoView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mAppNoteIconImg:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/fsgesture/NavStubDemoView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mAppNoteImg:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/fsgesture/NavStubDemoView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mBgView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/fsgesture/NavStubDemoView;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mCurrentY:F

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/fsgesture/NavStubDemoView;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mBottomDec:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/fsgesture/NavStubDemoView;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mCurAlpha:F

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/fsgesture/NavStubDemoView;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mCurScale:F

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/fsgesture/NavStubDemoView;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mFollowTailX:F

    return p1
.end method

.method static synthetic -set4(Lcom/android/systemui/fsgesture/NavStubDemoView;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mFollowTailY:F

    return p1
.end method

.method static synthetic -set5(Lcom/android/systemui/fsgesture/NavStubDemoView;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocX:I

    return p1
.end method

.method static synthetic -set6(Lcom/android/systemui/fsgesture/NavStubDemoView;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocY:I

    return p1
.end method

.method static synthetic -set7(Lcom/android/systemui/fsgesture/NavStubDemoView;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mStateMode:I

    return p1
.end method

.method static synthetic -set8(Lcom/android/systemui/fsgesture/NavStubDemoView;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mXScale:F

    return p1
.end method

.method static synthetic -set9(Lcom/android/systemui/fsgesture/NavStubDemoView;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mYScale:F

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/fsgesture/NavStubDemoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->finalization()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/fsgesture/NavStubDemoView;->TAG:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 236
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/fsgesture/NavStubDemoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 235
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 240
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/fsgesture/NavStubDemoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 239
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 244
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/fsgesture/NavStubDemoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 243
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 248
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mFrameHandler:Landroid/os/Handler;

    .line 196
    new-instance v0, Lcom/android/systemui/fsgesture/NavStubDemoView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/fsgesture/NavStubDemoView$1;-><init>(Lcom/android/systemui/fsgesture/NavStubDemoView;)V

    iput-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mTailCatcherTask:Ljava/lang/Runnable;

    .line 295
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mModeSrcIn:Landroid/graphics/Xfermode;

    .line 308
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowRect:Landroid/graphics/Rect;

    .line 249
    invoke-direct {p0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->initInternal()V

    .line 247
    return-void
.end method

.method private createRoundCornerBmp(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "srcBmp"    # Landroid/graphics/Bitmap;

    .prologue
    const/high16 v7, 0x42480000    # 50.0f

    const/4 v6, 0x0

    .line 298
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 299
    .local v2, "target":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 300
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v1, v6, v6, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 301
    .local v1, "rectF":Landroid/graphics/RectF;
    iget-object v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v7, v7, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 302
    iget-object v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mModeSrcIn:Landroid/graphics/Xfermode;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 303
    iget-object v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v6, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 304
    iget-object v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 305
    return-object v2
.end method

.method private finalization()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 698
    iput-boolean v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mIsAppToRecents:Z

    .line 699
    iput-boolean v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mIsInFsgAnim:Z

    .line 700
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/systemui/fsgesture/NavStubDemoView;->setClickable(Z)V

    .line 701
    iput-boolean v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mIsAppToHome:Z

    .line 702
    iput v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocY:I

    iput v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocX:I

    .line 703
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mCurAlpha:F

    .line 704
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mCurScale:F

    .line 705
    iget-object v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 706
    const v2, 0x10001

    iput v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mStateMode:I

    .line 707
    iget-object v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mFakeBitmap:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mDrawBmp:Landroid/graphics/Bitmap;

    .line 708
    iget-object v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mHomeIconImg:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 709
    iget-object v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mRecentsBgView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 710
    iget-object v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mAppBgView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 711
    iget-object v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mAppNoteImg:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 713
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x41a00000    # 20.0f

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 714
    .local v1, "stubSize":I
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 715
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 716
    invoke-virtual {p0, v0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 717
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->invalidate()V

    .line 719
    iget-object v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mFrameHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 720
    iget-object v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mFrameHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 697
    :cond_0
    return-void
.end method

.method private initInternal()V
    .locals 9

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 255
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 256
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 257
    .local v3, "wm":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 258
    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowWidth:I

    .line 259
    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowHeight:I

    .line 261
    const v4, 0x10001

    iput v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mStateMode:I

    .line 263
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPaint:Landroid/graphics/Paint;

    .line 264
    iget-object v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 266
    const-string/jumbo v4, "scale"

    new-array v5, v7, [F

    fill-array-data v5, :array_0

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 267
    .local v2, "scaleHolder":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v4, "alpha"

    const/16 v5, 0xff

    filled-new-array {v8, v5}, [I

    move-result-object v5

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 268
    .local v0, "alphaHolder":Landroid/animation/PropertyValuesHolder;
    new-array v4, v7, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v4, v8

    aput-object v0, v4, v6

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mRecentsAnimator:Landroid/animation/ValueAnimator;

    .line 269
    iget-object v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mRecentsAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v6, 0x3fc00000    # 1.5f

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 270
    iget-object v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mRecentsAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/android/systemui/fsgesture/NavStubDemoView$2;

    invoke-direct {v5, p0}, Lcom/android/systemui/fsgesture/NavStubDemoView$2;-><init>(Lcom/android/systemui/fsgesture/NavStubDemoView;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 280
    iget-object v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mRecentsAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v6, 0x12c

    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 282
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x902005c

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mFakeBitmap:Landroid/graphics/Bitmap;

    .line 283
    iget-object v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mFakeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v8}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 284
    iget-object v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mFakeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 285
    iget-object v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mFakeBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v4}, Lcom/android/systemui/fsgesture/NavStubDemoView;->createRoundCornerBmp(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 286
    iget-object v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v8}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 287
    iget-object v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 289
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x9020292

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mAppIcon:Landroid/graphics/Bitmap;

    .line 254
    return-void

    .line 266
    :array_0
    .array-data 4
        0x3f8ccccd    # 1.1f
        0x3f866666    # 1.05f
    .end array-data
.end method

.method private linearToCubic(FFFF)F
    .locals 6
    .param p1, "now"    # F
    .param p2, "orignal"    # F
    .param p3, "end"    # F
    .param p4, "pow"    # F

    .prologue
    .line 728
    cmpl-float v2, p4, p2

    if-nez v2, :cond_0

    .line 729
    return p1

    .line 732
    :cond_0
    const/4 v1, 0x0

    .line 733
    .local v1, "percent":F
    const/4 v0, 0x0

    .line 735
    .local v0, "ease":F
    sub-float v2, p1, p2

    sub-float v3, p4, p2

    div-float v1, v2, v3

    .line 736
    const/4 v2, 0x0

    cmpl-float v2, p4, v2

    if-eqz v2, :cond_1

    .line 737
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    float-to-double v2, v2

    float-to-double v4, p4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v2, v4, v2

    double-to-float v0, v2

    .line 739
    :cond_1
    return v0
.end method

.method private startCancelAnim()V
    .locals 6

    .prologue
    .line 583
    const/4 v3, 0x2

    new-array v3, v3, [F

    iget v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mCurScale:F

    const/4 v5, 0x0

    aput v4, v3, v5

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    aput v4, v3, v5

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 585
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 587
    iget v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocX:I

    .line 588
    .local v1, "initX":I
    iget v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocY:I

    .line 589
    .local v2, "initY":I
    new-instance v3, Lcom/android/systemui/fsgesture/NavStubDemoView$8;

    invoke-direct {v3, p0, v1, v2}, Lcom/android/systemui/fsgesture/NavStubDemoView$8;-><init>(Lcom/android/systemui/fsgesture/NavStubDemoView;II)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 599
    new-instance v3, Lcom/android/systemui/fsgesture/NavStubDemoView$9;

    invoke-direct {v3, p0}, Lcom/android/systemui/fsgesture/NavStubDemoView$9;-><init>(Lcom/android/systemui/fsgesture/NavStubDemoView;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 612
    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 582
    return-void
.end method

.method private startRecentTaskAnim()V
    .locals 18

    .prologue
    .line 617
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowHeight:I

    sget-boolean v2, Lmiui/util/CustomizeUtil;->HAS_NOTCH:Z

    if-eqz v2, :cond_0

    .line 618
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v16, 0x90f02ae

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 617
    :goto_0
    sub-int v2, v3, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowHeight:I

    .line 619
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mIsAppToRecents:Z

    .line 620
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x90f028c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 621
    .local v11, "destHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x90f028b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 622
    .local v12, "destWidth":I
    int-to-float v2, v12

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowWidth:I

    int-to-float v3, v3

    div-float v13, v2, v3

    .line 623
    .local v13, "finalScale":F
    const-string/jumbo v2, "scale"

    const/4 v3, 0x2

    new-array v3, v3, [F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mCurScale:F

    move/from16 v16, v0

    const/16 v17, 0x0

    aput v16, v3, v17

    const/16 v16, 0x1

    aput v13, v3, v16

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v15

    .line 624
    .local v15, "scaleHolder":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v2, "bottomDec"

    const/4 v3, 0x2

    new-array v3, v3, [I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mCurScale:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    const/16 v17, 0x0

    aput v16, v3, v17

    int-to-float v0, v11

    move/from16 v16, v0

    div-float v16, v16, v13

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    const/16 v17, 0x1

    aput v16, v3, v17

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    .line 625
    .local v10, "bottomDecHolder":Landroid/animation/PropertyValuesHolder;
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    const/4 v3, 0x0

    aput-object v15, v2, v3

    const/4 v3, 0x1

    aput-object v10, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v9

    .line 626
    .local v9, "appAnimator":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/android/systemui/fsgesture/NavStubDemoView$10;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/systemui/fsgesture/NavStubDemoView$10;-><init>(Lcom/android/systemui/fsgesture/NavStubDemoView;)V

    invoke-virtual {v9, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 656
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v9, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 658
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocX:I

    .line 659
    .local v4, "initX":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocY:I

    .line 660
    .local v6, "initY":I
    div-int/lit8 v2, v12, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v16, 0x90f028d

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v5, v2

    .line 661
    .local v5, "destX":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowHeight:I

    mul-int/2addr v2, v12

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowWidth:I

    div-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v16, 0x90f028e    # 1.72142E-33f

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v7, v2

    .line 663
    .local v7, "destY":F
    new-instance v2, Lcom/android/systemui/fsgesture/NavStubDemoView$11;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/fsgesture/NavStubDemoView$11;-><init>(Lcom/android/systemui/fsgesture/NavStubDemoView;IFIF)V

    invoke-virtual {v9, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 675
    const-wide/16 v2, 0x12c

    invoke-virtual {v9, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 677
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v14

    .line 678
    .local v14, "recentsAnimator":Landroid/animation/ValueAnimator;
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v14, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 679
    new-instance v2, Lcom/android/systemui/fsgesture/NavStubDemoView$12;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/systemui/fsgesture/NavStubDemoView$12;-><init>(Lcom/android/systemui/fsgesture/NavStubDemoView;)V

    invoke-virtual {v14, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 687
    const-wide/16 v2, 0x12c

    invoke-virtual {v14, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 689
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    .line 690
    .local v8, "animatorSet":Landroid/animation/AnimatorSet;
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v9, v2, v3

    const/4 v3, 0x1

    aput-object v14, v2, v3

    invoke-virtual {v8, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 691
    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->start()V

    .line 616
    return-void

    .line 618
    .end local v4    # "initX":I
    .end local v5    # "destX":F
    .end local v6    # "initY":I
    .end local v7    # "destY":F
    .end local v8    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v9    # "appAnimator":Landroid/animation/ValueAnimator;
    .end local v10    # "bottomDecHolder":Landroid/animation/PropertyValuesHolder;
    .end local v11    # "destHeight":I
    .end local v12    # "destWidth":I
    .end local v13    # "finalScale":F
    .end local v14    # "recentsAnimator":Landroid/animation/ValueAnimator;
    .end local v15    # "scaleHolder":Landroid/animation/PropertyValuesHolder;
    :cond_0
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 677
    :array_0
    .array-data 4
        0x3f866666    # 1.05f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startToHomeAnim()V
    .locals 22

    .prologue
    .line 478
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/fsgesture/NavStubDemoView;->mIsAppToHome:Z

    .line 479
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x90f025b

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    .line 480
    sget-boolean v18, Lmiui/util/CustomizeUtil;->HAS_NOTCH:Z

    if-eqz v18, :cond_0

    .line 481
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v20, 0x90f02ae

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    .line 479
    :goto_0
    add-int v10, v19, v18

    .line 482
    .local v10, "destPivotY":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x90f025c

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 483
    .local v9, "destPivotX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mAppIcon:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x3f800000    # 1.0f

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v12, v18, v19

    .line 484
    .local v12, "destYScale":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mAppIcon:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x3f800000    # 1.0f

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v11, v18, v19

    .line 486
    .local v11, "destXScale":F
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mCurScale:F

    .line 487
    .local v8, "curScale":F
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocX:I

    .line 488
    .local v6, "curPivotX":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocY:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v8

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    sub-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v7, v0

    .line 490
    .local v7, "curPivotY":I
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 491
    .local v4, "animatorSet":Landroid/animation/AnimatorSet;
    new-instance v18, Lcom/android/systemui/fsgesture/NavStubDemoView$3;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/fsgesture/NavStubDemoView$3;-><init>(Lcom/android/systemui/fsgesture/NavStubDemoView;)V

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 529
    const-string/jumbo v18, "xScale"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mCurScale:F

    move/from16 v20, v0

    const/16 v21, 0x0

    aput v20, v19, v21

    const/16 v20, 0x1

    aput v11, v19, v20

    invoke-static/range {v18 .. v19}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v15

    .line 530
    .local v15, "xScaleHolder":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v18, "xPivot"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v6, v19, v20

    const/16 v20, 0x1

    aput v9, v19, v20

    invoke-static/range {v18 .. v19}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    .line 531
    .local v14, "xPivotHolder":Landroid/animation/PropertyValuesHolder;
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v15, v18, v19

    const/16 v19, 0x1

    aput-object v14, v18, v19

    invoke-static/range {v18 .. v18}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 532
    .local v5, "cubicAnimator":Landroid/animation/ValueAnimator;
    new-instance v18, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v19, 0x3fc00000    # 1.5f

    invoke-direct/range {v18 .. v19}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 533
    new-instance v18, Lcom/android/systemui/fsgesture/NavStubDemoView$4;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/fsgesture/NavStubDemoView$4;-><init>(Lcom/android/systemui/fsgesture/NavStubDemoView;)V

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 540
    const-wide/16 v18, 0x12c

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 542
    const-string/jumbo v18, "yScale"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mCurScale:F

    move/from16 v20, v0

    const/16 v21, 0x0

    aput v20, v19, v21

    const/16 v20, 0x1

    aput v12, v19, v20

    invoke-static/range {v18 .. v19}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v17

    .line 543
    .local v17, "yScaleHolder":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v18, "yPivot"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v7, v19, v20

    const/16 v20, 0x1

    aput v10, v19, v20

    invoke-static/range {v18 .. v19}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v16

    .line 544
    .local v16, "yPivotHolder":Landroid/animation/PropertyValuesHolder;
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v17, v18, v19

    const/16 v19, 0x1

    aput-object v16, v18, v19

    invoke-static/range {v18 .. v18}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v13

    .line 545
    .local v13, "quarterAnimator":Landroid/animation/ValueAnimator;
    new-instance v18, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v19, 0x40000000    # 2.0f

    invoke-direct/range {v18 .. v19}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 546
    new-instance v18, Lcom/android/systemui/fsgesture/NavStubDemoView$5;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/fsgesture/NavStubDemoView$5;-><init>(Lcom/android/systemui/fsgesture/NavStubDemoView;)V

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 553
    const-wide/16 v18, 0x12c

    move-wide/from16 v0, v18

    invoke-virtual {v13, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 555
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    const/high16 v19, 0x3f800000    # 1.0f

    const/16 v20, 0x0

    aput v19, v18, v20

    const/16 v19, 0x0

    const/16 v20, 0x1

    aput v19, v18, v20

    invoke-static/range {v18 .. v18}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 556
    .local v2, "alphaAnimator":Landroid/animation/ValueAnimator;
    new-instance v18, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v19, 0x3f800000    # 1.0f

    invoke-direct/range {v18 .. v19}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 557
    new-instance v18, Lcom/android/systemui/fsgesture/NavStubDemoView$6;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/fsgesture/NavStubDemoView$6;-><init>(Lcom/android/systemui/fsgesture/NavStubDemoView;)V

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 563
    const-wide/16 v18, 0xd2

    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 564
    const-wide/16 v18, 0x28

    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 566
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    aput v19, v18, v20

    const/high16 v19, 0x3f800000    # 1.0f

    const/16 v20, 0x1

    aput v19, v18, v20

    invoke-static/range {v18 .. v18}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 567
    .local v3, "animator":Landroid/animation/ValueAnimator;
    new-instance v18, Lcom/android/systemui/fsgesture/NavStubDemoView$7;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/fsgesture/NavStubDemoView$7;-><init>(Lcom/android/systemui/fsgesture/NavStubDemoView;)V

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 576
    const-wide/16 v18, 0x12c

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 578
    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v3, v18, v19

    const/16 v19, 0x1

    aput-object v13, v18, v19

    const/16 v19, 0x2

    aput-object v5, v18, v19

    const/16 v19, 0x3

    aput-object v2, v18, v19

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 579
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 477
    return-void

    .line 481
    .end local v2    # "alphaAnimator":Landroid/animation/ValueAnimator;
    .end local v3    # "animator":Landroid/animation/ValueAnimator;
    .end local v4    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v5    # "cubicAnimator":Landroid/animation/ValueAnimator;
    .end local v6    # "curPivotX":I
    .end local v7    # "curPivotY":I
    .end local v8    # "curScale":F
    .end local v9    # "destPivotX":I
    .end local v10    # "destPivotY":I
    .end local v11    # "destXScale":F
    .end local v12    # "destYScale":F
    .end local v13    # "quarterAnimator":Landroid/animation/ValueAnimator;
    .end local v14    # "xPivotHolder":Landroid/animation/PropertyValuesHolder;
    .end local v15    # "xScaleHolder":Landroid/animation/PropertyValuesHolder;
    .end local v16    # "yPivotHolder":Landroid/animation/PropertyValuesHolder;
    .end local v17    # "yScaleHolder":Landroid/animation/PropertyValuesHolder;
    :cond_0
    const/16 v18, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 312
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 313
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mDrawBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 314
    iget-boolean v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mIsAppToHome:Z

    if-nez v0, :cond_2

    .line 315
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 317
    iget v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 318
    iget v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mCurScale:F

    iget v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mCurScale:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 319
    iget v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocX:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocY:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 321
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocX:I

    iget v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 322
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocY:I

    iget v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowHeight:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 323
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowWidth:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 324
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowHeight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 325
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mCurScale:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v8, v0

    .line 326
    .local v8, "bottom":I
    iget-boolean v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mIsAppToRecents:Z

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mBottomDec:I

    add-int v8, v0, v1

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 331
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 332
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 333
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    int-to-float v4, v8

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-result v9

    .line 334
    .local v9, "saveLayer":I
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    int-to-float v4, v8

    .line 335
    const/high16 v5, 0x42480000    # 50.0f

    const/high16 v6, 0x42480000    # 50.0f

    iget-object v7, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 334
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 336
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mModeSrcIn:Landroid/graphics/Xfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 337
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mDrawBmp:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 338
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 339
    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 341
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 311
    .end local v8    # "bottom":I
    .end local v9    # "saveLayer":I
    :cond_1
    :goto_0
    return-void

    .line 343
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 344
    iget v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 345
    iget v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mXScale:F

    iget v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mYScale:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 346
    iget v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocX:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocY:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 350
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocX:I

    iget v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 351
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocY:I

    iget v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowHeight:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 352
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowWidth:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 353
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowHeight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 354
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mCurAlpha:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 355
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mAppIcon:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 356
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mCurAlpha:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 357
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mDrawBmp:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 358
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v9, 0x40400000    # 3.0f

    const/4 v8, 0x0

    const/16 v7, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 365
    iget-boolean v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mIsInFsgAnim:Z

    if-eqz v3, :cond_0

    .line 366
    return v6

    .line 368
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    .line 369
    iget v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mDownNo:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mDownNo:I

    .line 371
    :cond_1
    iget v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mDownNo:I

    iget v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mLastDownNo:I

    if-ne v3, v4, :cond_2

    .line 372
    return v6

    .line 374
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v5, v3, :cond_3

    .line 375
    iget v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mDownNo:I

    iput v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mLastDownNo:I

    .line 379
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iput v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mCurrentY:F

    .line 380
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 462
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    .line 382
    :pswitch_0
    iget-object v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->swipeView:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    invoke-virtual {v3}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->cancelAnimation()V

    .line 384
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iput v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mDownX:F

    .line 385
    iget v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowWidth:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mDownX:F

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mDelta:F

    .line 386
    iget v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowWidth:I

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocX:I

    int-to-float v3, v3

    iput v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mFollowTailX:F

    .line 387
    iget v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowHeight:I

    iput v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocY:I

    int-to-float v3, v3

    iput v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mFollowTailY:F

    .line 388
    iget-object v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mDragBitmap:Landroid/graphics/Bitmap;

    iput-object v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mDrawBmp:Landroid/graphics/Bitmap;

    .line 389
    iput-boolean v6, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mIsAppToHome:Z

    .line 390
    const v3, 0x10001

    iput v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mStateMode:I

    goto :goto_0

    .line 394
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iget v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mDownX:F

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mDelta:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocX:I

    .line 395
    iget v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mCurrentY:F

    iget v5, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowHeight:I

    int-to-float v5, v5

    invoke-direct {p0, v4, v5, v8, v9}, Lcom/android/systemui/fsgesture/NavStubDemoView;->linearToCubic(FFFF)F

    move-result v4

    const/high16 v5, 0x43de0000    # 444.0f

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocY:I

    .line 397
    iget v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mStateMode:I

    const v4, 0x10001

    if-ne v3, v4, :cond_4

    .line 398
    const v3, 0x10002

    iput v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mStateMode:I

    .line 401
    iget-object v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mFrameHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mTailCatcherTask:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 403
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 404
    .local v2, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0, v2}, Lcom/android/systemui/fsgesture/NavStubDemoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 405
    iget-object v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mAppCalculatorImg:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 406
    iget-object v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mAppNoteImg:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 407
    iget-object v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mHomeIconImg:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 408
    iget-object v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mAppNoteIconImg:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 409
    iget-object v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mRecentsClearImg:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 412
    .end local v2    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_4
    iget v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mCurrentY:F

    iget v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowHeight:I

    int-to-float v4, v4

    invoke-direct {p0, v3, v4, v8, v9}, Lcom/android/systemui/fsgesture/NavStubDemoView;->linearToCubic(FFFF)F

    move-result v3

    const v4, 0x3ec51eb8    # 0.385f

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v3, v4, v3

    iput v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mCurScale:F

    .line 413
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->invalidate()V

    goto/16 :goto_0

    .line 416
    :pswitch_2
    iput-boolean v5, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mIsInFsgAnim:Z

    .line 417
    invoke-virtual {p0, v6}, Lcom/android/systemui/fsgesture/NavStubDemoView;->setClickable(Z)V

    .line 418
    iget-object v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mFrameHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 419
    iget v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mStateMode:I

    const v4, 0x10002

    if-ne v3, v4, :cond_6

    const/4 v0, 0x1

    .line 420
    .local v0, "isOnDrag":Z
    :goto_1
    iget v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mStateMode:I

    const v4, 0x10003

    if-ne v3, v4, :cond_7

    const/4 v1, 0x1

    .line 421
    .local v1, "isTaskHold":Z
    :goto_2
    if-nez v0, :cond_5

    if-eqz v1, :cond_f

    .line 422
    :cond_5
    iget v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocY:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mFollowTailY:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x41a00000    # 20.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_8

    .line 424
    invoke-virtual {p0, v5}, Lcom/android/systemui/fsgesture/NavStubDemoView;->performHapticFeedback(I)Z

    .line 425
    invoke-direct {p0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->startCancelAnim()V

    goto/16 :goto_0

    .line 419
    .end local v0    # "isOnDrag":Z
    .end local v1    # "isTaskHold":Z
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "isOnDrag":Z
    goto :goto_1

    .line 420
    :cond_7
    const/4 v1, 0x0

    .restart local v1    # "isTaskHold":Z
    goto :goto_2

    .line 426
    :cond_8
    iget v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocY:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mFollowTailY:F

    sub-float/2addr v3, v4

    const/high16 v4, -0x3e600000    # -20.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_b

    .line 427
    const-string/jumbo v3, "DEMO_FULLY_SHOW"

    iget-object v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->demoType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->fullyShowStep:I

    if-ne v3, v5, :cond_9

    .line 428
    invoke-direct {p0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->startToHomeAnim()V

    goto/16 :goto_0

    .line 429
    :cond_9
    const-string/jumbo v3, "DEMO_TO_HOME"

    iget-object v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->demoType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 430
    invoke-direct {p0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->startToHomeAnim()V

    goto/16 :goto_0

    .line 433
    :cond_a
    invoke-virtual {p0, v5}, Lcom/android/systemui/fsgesture/NavStubDemoView;->performHapticFeedback(I)Z

    .line 434
    invoke-direct {p0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->startCancelAnim()V

    goto/16 :goto_0

    .line 437
    :cond_b
    if-eqz v0, :cond_c

    .line 439
    invoke-virtual {p0, v5}, Lcom/android/systemui/fsgesture/NavStubDemoView;->performHapticFeedback(I)Z

    .line 440
    invoke-direct {p0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->startCancelAnim()V

    goto/16 :goto_0

    .line 442
    :cond_c
    const-string/jumbo v3, "DEMO_FULLY_SHOW"

    iget-object v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->demoType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->fullyShowStep:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_d

    .line 443
    invoke-direct {p0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->startRecentTaskAnim()V

    goto/16 :goto_0

    .line 444
    :cond_d
    const-string/jumbo v3, "DEMO_TO_RECENTTASK"

    iget-object v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->demoType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 445
    invoke-direct {p0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->startRecentTaskAnim()V

    goto/16 :goto_0

    .line 448
    :cond_e
    invoke-virtual {p0, v5}, Lcom/android/systemui/fsgesture/NavStubDemoView;->performHapticFeedback(I)Z

    .line 449
    invoke-direct {p0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->startCancelAnim()V

    goto/16 :goto_0

    .line 454
    :cond_f
    invoke-direct {p0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->finalization()V

    goto/16 :goto_0

    .line 458
    .end local v0    # "isOnDrag":Z
    .end local v1    # "isTaskHold":Z
    :pswitch_3
    invoke-direct {p0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->finalization()V

    goto/16 :goto_0

    .line 380
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setAppBgView(Landroid/view/View;)V
    .locals 0
    .param p1, "appBgView"    # Landroid/view/View;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mAppBgView:Landroid/view/View;

    .line 109
    return-void
.end method

.method public setAppCalculatorImg(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "appCalculatorImg"    # Landroid/widget/ImageView;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mAppCalculatorImg:Landroid/widget/ImageView;

    .line 105
    return-void
.end method

.method public setAppNoteIconImg(Landroid/view/View;)V
    .locals 0
    .param p1, "appNoteIconImg"    # Landroid/view/View;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mAppNoteIconImg:Landroid/view/View;

    .line 150
    return-void
.end method

.method public setAppNoteImg(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "appNoteImg"    # Landroid/widget/ImageView;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mAppNoteImg:Landroid/widget/ImageView;

    .line 113
    return-void
.end method

.method public setBgView(Landroid/view/View;)V
    .locals 0
    .param p1, "bgView"    # Landroid/view/View;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mBgView:Landroid/view/View;

    .line 117
    return-void
.end method

.method public setCurActivity(Landroid/app/Activity;)V
    .locals 0
    .param p1, "curActivity"    # Landroid/app/Activity;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->curActivity:Landroid/app/Activity;

    .line 138
    return-void
.end method

.method public setDemoTitleView(Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;)V
    .locals 0
    .param p1, "demoTitleView"    # Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->demoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    .line 129
    return-void
.end method

.method public setDemoType(Ljava/lang/String;)V
    .locals 0
    .param p1, "demoType"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->demoType:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setFullyShowStep(I)V
    .locals 0
    .param p1, "fullyShowStep"    # I

    .prologue
    .line 126
    iput p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->fullyShowStep:I

    .line 125
    return-void
.end method

.method public setHomeIconImg(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "homeIconImg"    # Landroid/widget/ImageView;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mHomeIconImg:Landroid/widget/ImageView;

    .line 97
    return-void
.end method

.method public setIsFromPro(Z)V
    .locals 0
    .param p1, "isFromPro"    # Z

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->isFromPro:Z

    .line 142
    return-void
.end method

.method public setRecentsBgView(Landroid/view/View;)V
    .locals 0
    .param p1, "recentsBgView"    # Landroid/view/View;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mRecentsBgView:Landroid/view/View;

    .line 101
    return-void
.end method

.method public setRecentsClearImg(Landroid/view/View;)V
    .locals 0
    .param p1, "recentsClearImg"    # Landroid/view/View;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mRecentsClearImg:Landroid/view/View;

    .line 146
    return-void
.end method

.method public setSwipeView(Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;)V
    .locals 0
    .param p1, "swipeView"    # Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->swipeView:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    .line 134
    return-void
.end method
