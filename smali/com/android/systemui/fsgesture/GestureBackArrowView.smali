.class public Lcom/android/systemui/fsgesture/GestureBackArrowView;
.super Landroid/view/View;
.source "GestureBackArrowView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;
    }
.end annotation


# static fields
.field private static final ACCELERATE_DECELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final CUBIC_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final QUAD_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private mArrow:Landroid/graphics/Bitmap;

.field private mArrowAnimator:Landroid/animation/ValueAnimator;

.field private mArrowDstRect:Landroid/graphics/Rect;

.field private mArrowHeight:I

.field private mArrowPaint:Landroid/graphics/Paint;

.field private mArrowShown:Z

.field private mArrowWidth:I

.field private mBackDstRect:Landroid/graphics/Rect;

.field private mBackHeight:I

.field private mBackWidth:I

.field private mBgPaint:Landroid/graphics/Paint;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCurArrowAlpha:I

.field private mCurrentY:F

.field private mDisplayWidth:I

.field private mExpectBackHeight:F

.field private mIconHeight:I

.field private mIconNeedDraw:Z

.field private mIconScale:F

.field private mIconWidth:I

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLastIconAnimator:Landroid/animation/ValueAnimator;

.field private mLeftBackground:Landroid/graphics/Bitmap;

.field private mNoneTaskIcon:Landroid/graphics/drawable/Drawable;

.field private mPosition:I

.field private mReadyState:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

.field private mRecentTaskIcon:Landroid/graphics/drawable/Drawable;

.field private mRightBackground:Landroid/graphics/Bitmap;

.field private mScale:F

.field private mStartX:F

.field private mVibrator:Landroid/os/Vibrator;

.field private mWaveChangeAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/fsgesture/GestureBackArrowView;)Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/fsgesture/GestureBackArrowView;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mLastIconAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/fsgesture/GestureBackArrowView;)Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mReadyState:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/fsgesture/GestureBackArrowView;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mWaveChangeAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/fsgesture/GestureBackArrowView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowShown:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/fsgesture/GestureBackArrowView;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mCurArrowAlpha:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/fsgesture/GestureBackArrowView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mIconNeedDraw:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/fsgesture/GestureBackArrowView;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mIconScale:F

    return p1
.end method

.method static synthetic -set4(Lcom/android/systemui/fsgesture/GestureBackArrowView;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mScale:F

    return p1
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->CUBIC_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 37
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->QUAD_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 38
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->ACCELERATE_DECELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "position"    # I

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/systemui/fsgesture/GestureBackArrowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "position"    # I

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/systemui/fsgesture/GestureBackArrowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "position"    # I

    .prologue
    .line 88
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/fsgesture/GestureBackArrowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .param p5, "position"    # I

    .prologue
    const/4 v1, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mScale:F

    .line 43
    iput v3, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mIconScale:F

    .line 61
    sget-object v0, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;->READY_STATE_NONE:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    iput-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mReadyState:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    .line 95
    const-string/jumbo v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mContentResolver:Landroid/content/ContentResolver;

    .line 98
    iput p5, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mPosition:I

    .line 100
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mBgPaint:Landroid/graphics/Paint;

    .line 101
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 102
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setDither(Z)V

    .line 104
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowPaint:Landroid/graphics/Paint;

    .line 105
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 106
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setDither(Z)V

    .line 107
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 109
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 110
    const v2, 0x90200bd

    .line 109
    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mLeftBackground:Landroid/graphics/Bitmap;

    .line 112
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 113
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 114
    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 115
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mLeftBackground:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mLeftBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 116
    iget-object v2, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mLeftBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    .line 115
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mRightBackground:Landroid/graphics/Bitmap;

    .line 118
    const v0, 0x90201a6

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mNoneTaskIcon:Landroid/graphics/drawable/Drawable;

    .line 119
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mNoneTaskIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mIconWidth:I

    .line 120
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mNoneTaskIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mIconHeight:I

    .line 122
    iget v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mPosition:I

    packed-switch v0, :pswitch_data_0

    .line 136
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 137
    const v1, 0x90200bc

    .line 136
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrow:Landroid/graphics/Bitmap;

    .line 138
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrow:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowHeight:I

    .line 139
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrow:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowWidth:I

    .line 141
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mBackDstRect:Landroid/graphics/Rect;

    .line 142
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowDstRect:Landroid/graphics/Rect;

    .line 144
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mVibrator:Landroid/os/Vibrator;

    .line 92
    return-void

    .line 124
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mLeftBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mBackHeight:I

    .line 125
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mLeftBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mBackWidth:I

    goto :goto_0

    .line 128
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mRightBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mBackHeight:I

    .line 129
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mRightBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mBackWidth:I

    goto :goto_0

    .line 122
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private changeScale(FFI)V
    .locals 7
    .param p1, "start"    # F
    .param p2, "end"    # F
    .param p3, "time"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 258
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mWaveChangeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mWaveChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 261
    :cond_0
    new-array v0, v6, [F

    aput p1, v0, v4

    aput p2, v0, v5

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mWaveChangeAnimator:Landroid/animation/ValueAnimator;

    .line 262
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mWaveChangeAnimator:Landroid/animation/ValueAnimator;

    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 263
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mWaveChangeAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/systemui/fsgesture/GestureBackArrowView;->CUBIC_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 264
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mWaveChangeAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/fsgesture/GestureBackArrowView$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/fsgesture/GestureBackArrowView$2;-><init>(Lcom/android/systemui/fsgesture/GestureBackArrowView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 274
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mWaveChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 276
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mLastIconAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mLastIconAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 279
    :cond_1
    new-array v0, v6, [F

    const/4 v1, 0x0

    aput v1, v0, v4

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v0, v5

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mLastIconAnimator:Landroid/animation/ValueAnimator;

    .line 280
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mLastIconAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 281
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mLastIconAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/systemui/fsgesture/GestureBackArrowView;->QUAD_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 282
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mLastIconAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/fsgesture/GestureBackArrowView$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/fsgesture/GestureBackArrowView$3;-><init>(Lcom/android/systemui/fsgesture/GestureBackArrowView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 291
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mLastIconAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 257
    return-void
.end method

.method private loadRecentTaskIcon()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 295
    iget-object v1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mKeyguardManager:Landroid/app/KeyguardManager;

    iget-object v2, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v2}, Lcom/android/systemui/fsgesture/GestureStubView;->supportNextTask(Landroid/app/KeyguardManager;Landroid/content/ContentResolver;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mNoneTaskIcon:Landroid/graphics/drawable/Drawable;

    return-object v1

    .line 296
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/android/systemui/fsgesture/GestureStubView;->getNextTask(Landroid/content/Context;ZI)Lcom/android/systemui/recents/model/Task;

    move-result-object v0

    .line 297
    .local v0, "task":Lcom/android/systemui/recents/model/Task;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/systemui/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/systemui/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mNoneTaskIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private startArrowAnimating(ZI)V
    .locals 4
    .param p1, "show"    # Z
    .param p2, "duration"    # I

    .prologue
    const/4 v0, 0x0

    .line 212
    iget-object v1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 213
    iget-object v1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 216
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [I

    iget v2, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mCurArrowAlpha:I

    aput v2, v1, v0

    if-eqz p1, :cond_1

    const/16 v0, 0xff

    :cond_1
    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowAnimator:Landroid/animation/ValueAnimator;

    .line 217
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowAnimator:Landroid/animation/ValueAnimator;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 218
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/systemui/fsgesture/GestureBackArrowView;->CUBIC_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 219
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/fsgesture/GestureBackArrowView$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/fsgesture/GestureBackArrowView$1;-><init>(Lcom/android/systemui/fsgesture/GestureBackArrowView;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 231
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 211
    return-void
.end method


# virtual methods
.method getCurrentState()Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mReadyState:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    return-object v0
.end method

.method onActionDown(FFF)V
    .locals 2
    .param p1, "y"    # F
    .param p2, "startX"    # F
    .param p3, "expectBackHeight"    # F

    .prologue
    const/4 v1, 0x0

    .line 306
    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-lez v0, :cond_0

    .line 307
    iput p3, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mExpectBackHeight:F

    .line 308
    iput p1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mCurrentY:F

    .line 313
    :goto_0
    iput p2, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mStartX:F

    .line 314
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 315
    iput-boolean v1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowShown:Z

    .line 316
    iput-boolean v1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mIconNeedDraw:Z

    .line 304
    return-void

    .line 310
    :cond_0
    iget v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mBackHeight:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mExpectBackHeight:F

    .line 311
    const/high16 v0, 0x41a00000    # 20.0f

    sub-float v0, p1, v0

    iput v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mCurrentY:F

    goto :goto_0
.end method

.method onActionMove(F)V
    .locals 2
    .param p1, "x"    # F

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mReadyState:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    sget-object v1, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;->READY_STATE_RECENT:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    if-eq v0, v1, :cond_1

    .line 321
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mWaveChangeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mWaveChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 324
    :cond_0
    invoke-static {p1}, Lcom/android/systemui/fsgesture/GesturesBackController;->convertOffset(F)F

    move-result v0

    const/high16 v1, 0x41a00000    # 20.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mScale:F

    .line 326
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->invalidate()V

    .line 319
    return-void
.end method

.method onActionUp(FLandroid/animation/Animator$AnimatorListener;)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 330
    iget-object v1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 331
    iget-object v1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 333
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mWaveChangeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    .line 334
    iget-object v1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mWaveChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 336
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mLastIconAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_2

    .line 337
    iget-object v1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mLastIconAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 339
    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mIconScale:F

    .line 340
    const/high16 v1, 0x41a00000    # 20.0f

    div-float v1, p1, v1

    iput v1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mScale:F

    .line 341
    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v2, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mScale:F

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 342
    .local v0, "valueAnimator":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 343
    sget-object v1, Lcom/android/systemui/fsgesture/GestureBackArrowView;->QUAD_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 344
    new-instance v1, Lcom/android/systemui/fsgesture/GestureBackArrowView$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/fsgesture/GestureBackArrowView$4;-><init>(Lcom/android/systemui/fsgesture/GestureBackArrowView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 355
    if-eqz p2, :cond_3

    .line 356
    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 358
    :cond_3
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 359
    sget-object v1, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;->READY_STATE_NONE:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    iput-object v1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mReadyState:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    .line 329
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 149
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 150
    const/4 v2, 0x0

    .line 151
    .local v2, "bgLeft":I
    const/4 v3, 0x0

    .line 152
    .local v3, "bgRight":I
    const/4 v0, 0x0

    .line 153
    .local v0, "arrowLeft":I
    const/4 v1, 0x0

    .line 154
    .local v1, "arrowRight":I
    const/4 v6, 0x0

    .line 155
    .local v6, "iconLeft":I
    const/4 v7, 0x0

    .line 156
    .local v7, "iconRight":I
    iget-object v4, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mLeftBackground:Landroid/graphics/Bitmap;

    .line 157
    .local v4, "curBitmap":Landroid/graphics/Bitmap;
    iget v8, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mBackWidth:I

    int-to-float v8, v8

    iget v9, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mScale:F

    mul-float v5, v8, v9

    .line 158
    .local v5, "currentWidth":F
    iget v8, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mPosition:I

    packed-switch v8, :pswitch_data_0

    .line 182
    :goto_0
    iget-object v8, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mBackDstRect:Landroid/graphics/Rect;

    iget v9, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mCurrentY:F

    iget v10, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mExpectBackHeight:F

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    sub-float/2addr v9, v10

    float-to-int v9, v9

    .line 183
    iget v10, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mCurrentY:F

    iget v11, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mExpectBackHeight:F

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    add-float/2addr v10, v11

    float-to-int v10, v10

    .line 182
    invoke-virtual {v8, v2, v9, v3, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 184
    iget-object v8, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mBackDstRect:Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mBgPaint:Landroid/graphics/Paint;

    const/4 v10, 0x0

    invoke-virtual {p1, v4, v10, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 185
    iget-object v8, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mReadyState:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    sget-object v9, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;->READY_STATE_BACK:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    if-eq v8, v9, :cond_0

    .line 186
    iget-object v8, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mReadyState:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    sget-object v9, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;->READY_STATE_RECENT:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    if-ne v8, v9, :cond_5

    .line 187
    :cond_0
    iget-boolean v8, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowShown:Z

    if-nez v8, :cond_1

    .line 188
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mIconNeedDraw:Z

    .line 189
    const/4 v8, 0x1

    const/16 v9, 0x64

    invoke-direct {p0, v8, v9}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->startArrowAnimating(ZI)V

    .line 190
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowShown:Z

    .line 198
    :cond_1
    :goto_1
    iget-boolean v8, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mIconNeedDraw:Z

    if-eqz v8, :cond_2

    iget v8, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mScale:F

    float-to-double v8, v8

    const-wide v10, 0x3fb999999999999aL    # 0.1

    cmpl-double v8, v8, v10

    if-lez v8, :cond_2

    .line 199
    iget-object v8, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mReadyState:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    sget-object v9, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;->READY_STATE_BACK:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    if-ne v8, v9, :cond_6

    .line 200
    iget-object v8, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowDstRect:Landroid/graphics/Rect;

    iget v9, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mCurrentY:F

    iget v10, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowHeight:I

    int-to-float v10, v10

    iget v11, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mIconScale:F

    mul-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    sub-float/2addr v9, v10

    float-to-int v9, v9

    .line 201
    iget v10, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mCurrentY:F

    iget v11, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowHeight:I

    int-to-float v11, v11

    iget v12, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mIconScale:F

    mul-float/2addr v11, v12

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    add-float/2addr v10, v11

    float-to-int v10, v10

    .line 200
    invoke-virtual {v8, v0, v9, v1, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 202
    iget-object v8, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrow:Landroid/graphics/Bitmap;

    iget-object v9, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowDstRect:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowPaint:Landroid/graphics/Paint;

    const/4 v11, 0x0

    invoke-virtual {p1, v8, v11, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 148
    :cond_2
    :goto_2
    return-void

    .line 160
    :pswitch_0
    iget v8, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mStartX:F

    float-to-int v2, v8

    .line 161
    iget v8, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mStartX:F

    add-float/2addr v8, v5

    float-to-int v3, v8

    .line 162
    iget v8, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mStartX:F

    iget v9, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowWidth:I

    int-to-float v9, v9

    iget v10, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mIconScale:F

    mul-float/2addr v9, v10

    sub-float v9, v5, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-int v0, v8

    .line 163
    iget v8, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mStartX:F

    iget v9, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowWidth:I

    int-to-float v9, v9

    iget v10, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mIconScale:F

    mul-float/2addr v9, v10

    add-float/2addr v9, v5

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-int v1, v8

    .line 164
    iget v8, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mIconWidth:I

    int-to-float v8, v8

    iget v9, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mIconScale:F

    mul-float/2addr v8, v9

    cmpg-float v8, v5, v8

    if-gez v8, :cond_3

    iget v8, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mStartX:F

    add-float/2addr v8, v5

    float-to-int v7, v8

    .line 166
    :goto_3
    int-to-float v8, v7

    iget v9, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mIconWidth:I

    int-to-float v9, v9

    iget v10, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mIconScale:F

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    float-to-int v6, v8

    .line 167
    goto/16 :goto_0

    .line 165
    :cond_3
    iget v8, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mStartX:F

    iget v9, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mIconWidth:I

    int-to-float v9, v9

    iget v10, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mIconScale:F

    mul-float/2addr v9, v10

    add-float/2addr v9, v5

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-int v7, v8

    goto :goto_3

    .line 169
    :pswitch_1
    iget-object v4, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mRightBackground:Landroid/graphics/Bitmap;

    .line 170
    iget v8, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mDisplayWidth:I

    iget v9, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mBackWidth:I

    int-to-float v9, v9

    iget v10, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mScale:F

    mul-float/2addr v9, v10

    iget v10, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mStartX:F

    add-float/2addr v9, v10

    float-to-int v9, v9

    sub-int v2, v8, v9

    .line 171
    iget v8, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mDisplayWidth:I

    iget v9, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mStartX:F

    float-to-int v9, v9

    sub-int v3, v8, v9

    .line 172
    iget v8, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mDisplayWidth:I

    iget v9, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mStartX:F

    iget v10, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowWidth:I

    int-to-float v10, v10

    iget v11, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mIconScale:F

    mul-float/2addr v10, v11

    add-float/2addr v10, v5

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    add-float/2addr v9, v10

    float-to-int v9, v9

    sub-int v0, v8, v9

    .line 173
    iget v8, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mDisplayWidth:I

    iget v9, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mStartX:F

    iget v10, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowWidth:I

    int-to-float v10, v10

    iget v11, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mIconScale:F

    mul-float/2addr v10, v11

    sub-float v10, v5, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    add-float/2addr v9, v10

    float-to-int v9, v9

    sub-int v1, v8, v9

    .line 174
    iget v9, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mDisplayWidth:I

    iget v8, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mIconWidth:I

    int-to-float v8, v8

    iget v10, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mIconScale:F

    mul-float/2addr v8, v10

    cmpg-float v8, v5, v8

    if-gez v8, :cond_4

    iget v8, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mStartX:F

    add-float/2addr v8, v5

    float-to-int v8, v8

    :goto_4
    sub-int v6, v9, v8

    .line 176
    int-to-float v8, v6

    iget v9, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mIconWidth:I

    int-to-float v9, v9

    iget v10, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mIconScale:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-int v7, v8

    .line 177
    goto/16 :goto_0

    .line 175
    :cond_4
    iget v8, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mStartX:F

    iget v10, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mIconWidth:I

    int-to-float v10, v10

    iget v11, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mIconScale:F

    mul-float/2addr v10, v11

    add-float/2addr v10, v5

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    add-float/2addr v8, v10

    float-to-int v8, v8

    goto :goto_4

    .line 192
    :cond_5
    iget-boolean v8, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowShown:Z

    if-eqz v8, :cond_1

    .line 193
    const/4 v8, 0x0

    const/16 v9, 0x32

    invoke-direct {p0, v8, v9}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->startArrowAnimating(ZI)V

    .line 194
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowShown:Z

    goto/16 :goto_1

    .line 203
    :cond_6
    iget-object v8, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mRecentTaskIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_2

    iget v8, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mScale:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_2

    .line 204
    iget-object v8, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mRecentTaskIcon:Landroid/graphics/drawable/Drawable;

    iget v9, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mCurrentY:F

    iget v10, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mIconHeight:I

    int-to-float v10, v10

    iget v11, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mIconScale:F

    mul-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    sub-float/2addr v9, v10

    float-to-int v9, v9

    .line 205
    iget v10, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mCurrentY:F

    iget v11, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mIconHeight:I

    int-to-float v11, v11

    iget v12, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mIconScale:F

    mul-float/2addr v11, v12

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    add-float/2addr v10, v11

    float-to-int v10, v10

    .line 204
    invoke-virtual {v8, v6, v9, v7, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 206
    iget-object v8, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mRecentTaskIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_2

    .line 158
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 363
    iput v2, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mScale:F

    .line 364
    const/high16 v0, -0x3b860000    # -1000.0f

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->onActionDown(FFF)V

    .line 365
    sget-object v0, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;->READY_STATE_NONE:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    iput-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mReadyState:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    .line 366
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->invalidate()V

    .line 362
    return-void
.end method

.method setDisplayWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 301
    iput p1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mDisplayWidth:I

    .line 300
    return-void
.end method

.method setReadyFinish(Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;)V
    .locals 4
    .param p1, "nextState"    # Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0xc8

    .line 235
    sget-object v0, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;->READY_STATE_RECENT:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    if-ne p1, v0, :cond_4

    .line 236
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mRecentTaskIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mRecentTaskIcon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mNoneTaskIcon:Landroid/graphics/drawable/Drawable;

    if-ne v0, v1, :cond_1

    .line 237
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->loadRecentTaskIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mRecentTaskIcon:Landroid/graphics/drawable/Drawable;

    .line 242
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mReadyState:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    if-eq p1, v0, :cond_3

    .line 243
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mReadyState:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    sget-object v1, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;->READY_STATE_BACK:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    if-ne v0, v1, :cond_5

    sget-object v0, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;->READY_STATE_RECENT:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    if-ne p1, v0, :cond_5

    .line 244
    iget v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mScale:F

    const v1, 0x3f95c28f    # 1.17f

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->changeScale(FFI)V

    .line 245
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 249
    :cond_2
    :goto_1
    iput-object p1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mReadyState:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    .line 234
    :cond_3
    return-void

    .line 240
    :cond_4
    iput-object v1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mRecentTaskIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 246
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mReadyState:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    sget-object v1, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;->READY_STATE_RECENT:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;->READY_STATE_BACK:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    if-ne p1, v0, :cond_2

    .line 247
    iget v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->changeScale(FFI)V

    goto :goto_1
.end method
