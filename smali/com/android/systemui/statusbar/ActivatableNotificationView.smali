.class public abstract Lcom/android/systemui/statusbar/ActivatableNotificationView;
.super Lcom/android/systemui/statusbar/ExpandableOutlineView;
.source "ActivatableNotificationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/ActivatableNotificationView$1;,
        Lcom/android/systemui/statusbar/ActivatableNotificationView$2;,
        Lcom/android/systemui/statusbar/ActivatableNotificationView$3;,
        Lcom/android/systemui/statusbar/ActivatableNotificationView$4;,
        Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;
    }
.end annotation


# static fields
.field private static final ACTIVATE_INVERSE_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final ACTIVATE_INVERSE_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActivated:Z

.field private mAnimationTranslationY:F

.field private mAppearAnimationFraction:F

.field private mAppearAnimationRect:Landroid/graphics/RectF;

.field private mAppearAnimationTranslation:F

.field private mAppearAnimator:Landroid/animation/ValueAnimator;

.field private mBackgroundAnimator:Landroid/animation/ObjectAnimator;

.field private mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

.field protected mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

.field protected mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

.field private mBackgroundVisibilityUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mBgAlpha:F

.field protected mBgTint:I

.field private mCurrentAlphaInterpolator:Landroid/view/animation/Interpolator;

.field private mCurrentAppearInterpolator:Landroid/view/animation/Interpolator;

.field private mCurrentBackgroundTint:I

.field private mDark:Z

.field private mDimmed:Z

.field private mDimmedAlpha:I

.field private mDimmedBackgroundFadeInAmount:F

.field private final mDoubleTapHelper:Lcom/android/systemui/statusbar/phone/DoubleTapHelper;

.field private mDrawingAppearAnimation:Z

.field private mFadeInEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mFadeInFromDarkAnimator:Landroid/animation/ValueAnimator;

.field private mFakeShadow:Lcom/android/systemui/statusbar/notification/FakeShadowView;

.field private mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

.field private mIsBelowSpeedBump:Z

.field private final mLowPriorityColor:I

.field private final mLowPriorityRippleColor:I

.field private mNeedsDimming:Z

.field private mNormalBackgroundVisibilityAmount:F

.field private final mNormalColor:I

.field protected final mNormalRippleColor:I

.field private mOnActivatedListener:Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;

.field private mOverrideAmount:F

.field private mOverrideTint:I

.field private mShadowAlpha:F

.field private mShadowHidden:Z

.field private final mSlowOutFastInInterpolator:Landroid/view/animation/Interpolator;

.field private final mSlowOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field private mStartTint:I

.field private final mTapTimeoutRunnable:Ljava/lang/Runnable;

.field private mTargetTint:I

.field private final mTintedRippleColor:I

.field private mUpdateOutlineListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mWasActivatedOnDown:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/ActivatableNotificationView;)Lcom/android/systemui/classifier/FalsingManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/ActivatableNotificationView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mStartTint:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/ActivatableNotificationView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTargetTint:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/ActivatableNotificationView;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationFraction:F

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/ActivatableNotificationView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/ActivatableNotificationView;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmedBackgroundFadeInAmount:F

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/statusbar/ActivatableNotificationView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFadeInFromDarkAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/ActivatableNotificationView;Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->enableAppearDrawing(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->makeActive()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/ActivatableNotificationView;I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setBackgroundTintColor(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateAppearAnimationAlpha()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateAppearRect()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    .line 97
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f19999a    # 0.6f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 96
    sput-object v0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->ACTIVATE_INVERSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 99
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 98
    sput-object v0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->ACTIVATE_INVERSE_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v5, 0x3f4ccccd    # 0.8f

    const/4 v4, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 184
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/ExpandableOutlineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 109
    iput v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBgTint:I

    .line 110
    iput v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBgAlpha:F

    .line 128
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationRect:Landroid/graphics/RectF;

    .line 133
    iput v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationFraction:F

    .line 142
    iput v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmedBackgroundFadeInAmount:F

    .line 144
    new-instance v0, Lcom/android/systemui/statusbar/ActivatableNotificationView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView$1;-><init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    .line 143
    iput-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundVisibilityUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 151
    new-instance v0, Lcom/android/systemui/statusbar/ActivatableNotificationView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView$2;-><init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFadeInEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 161
    new-instance v0, Lcom/android/systemui/statusbar/ActivatableNotificationView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView$3;-><init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    .line 160
    iput-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mUpdateOutlineListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 167
    iput v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mShadowAlpha:F

    .line 246
    new-instance v0, Lcom/android/systemui/statusbar/ActivatableNotificationView$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView$4;-><init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 185
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f19999a    # 0.6f

    invoke-direct {v0, v5, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mSlowOutFastInInterpolator:Landroid/view/animation/Interpolator;

    .line 186
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v5, v4, v2, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mSlowOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 187
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setClipChildren(Z)V

    .line 188
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setClipToPadding(Z)V

    .line 189
    const v0, 0x90c0075

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mNormalColor:I

    .line 193
    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mNormalColor:I

    iput v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mLowPriorityColor:I

    .line 195
    const v0, 0x90c007c

    .line 194
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTintedRippleColor:I

    .line 197
    const v0, 0x90c007b

    .line 196
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mLowPriorityRippleColor:I

    .line 199
    const v0, 0x90c007a

    .line 198
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mNormalRippleColor:I

    .line 200
    invoke-static {p1}, Lcom/android/systemui/classifier/FalsingManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/classifier/FalsingManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    .line 201
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 203
    new-instance v0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;

    new-instance v2, Lcom/android/systemui/statusbar/ActivatableNotificationView$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView$5;-><init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    .line 212
    new-instance v3, Lcom/android/systemui/statusbar/ActivatableNotificationView$6;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView$6;-><init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    .line 217
    new-instance v4, Lcom/android/systemui/statusbar/ActivatableNotificationView$7;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView$7;-><init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    .line 222
    new-instance v5, Lcom/android/systemui/statusbar/ActivatableNotificationView$8;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView$8;-><init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    move-object v1, p0

    .line 203
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;-><init>(Landroid/view/View;Lcom/android/systemui/statusbar/phone/DoubleTapHelper$ActivationListener;Lcom/android/systemui/statusbar/phone/DoubleTapHelper$DoubleTapListener;Lcom/android/systemui/statusbar/phone/DoubleTapHelper$SlideBackListener;Lcom/android/systemui/statusbar/phone/DoubleTapHelper$DoubleTapLogListener;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDoubleTapHelper:Lcom/android/systemui/statusbar/phone/DoubleTapHelper;

    .line 183
    return-void
.end method

.method private calculateBgColor(ZZ)I
    .locals 3
    .param p1, "withTint"    # Z
    .param p2, "withOverRide"    # Z

    .prologue
    const/4 v2, 0x0

    .line 883
    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDark:Z

    if-eqz v1, :cond_0

    .line 884
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x90c0077

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    return v1

    .line 886
    :cond_0
    if-eqz p2, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mOverrideTint:I

    if-eqz v1, :cond_1

    .line 887
    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->calculateBgColor(ZZ)I

    move-result v0

    .line 888
    .local v0, "defaultTint":I
    iget v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mOverrideTint:I

    iget v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mOverrideAmount:F

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolateColors(IIF)I

    move-result v1

    return v1

    .line 890
    .end local v0    # "defaultTint":I
    :cond_1
    if-eqz p1, :cond_2

    iget v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBgTint:I

    if-eqz v1, :cond_2

    .line 891
    iget v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBgTint:I

    return v1

    .line 892
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mIsBelowSpeedBump:Z

    if-eqz v1, :cond_3

    .line 893
    iget v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mLowPriorityColor:I

    return v1

    .line 895
    :cond_3
    iget v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mNormalColor:I

    return v1
.end method

.method private cancelAppearAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 799
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 800
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 801
    iput-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    .line 798
    :cond_0
    return-void
.end method

.method private cancelFadeAnimations()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 661
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 664
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 665
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 666
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 667
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setScaleX(F)V

    .line 668
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setScaleY(F)V

    .line 660
    return-void
.end method

.method private enableAppearDrawing(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 917
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDrawingAppearAnimation:Z

    if-eq p1, v0, :cond_1

    .line 918
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDrawingAppearAnimation:Z

    .line 919
    if-nez p1, :cond_0

    .line 920
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getContentView()Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setAlphaWithLayer(Landroid/view/View;F)V

    .line 921
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationFraction:F

    .line 922
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setOutlineRect(Landroid/graphics/RectF;)V

    .line 924
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->invalidate()V

    .line 916
    :cond_1
    return-void
.end method

.method private fadeDimmedBackground()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 604
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 605
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 606
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mActivated:Z

    if-eqz v0, :cond_0

    .line 607
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackground()V

    .line 608
    return-void

    .line 610
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->shouldHideBackground()Z

    move-result v0

    if-nez v0, :cond_1

    .line 611
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-eqz v0, :cond_2

    .line 612
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    .line 603
    :cond_1
    :goto_0
    return-void

    .line 614
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    goto :goto_0
.end method

.method private fadeInFromDark(J)V
    .locals 7
    .param p1, "delay"    # J

    .prologue
    const-wide/16 v4, 0xc8

    .line 574
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    .line 575
    .local v0, "background":Landroid/view/View;
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 576
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundVisibilityUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/animation/ValueAnimator$AnimatorUpdateListener;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    .line 577
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 578
    const/high16 v2, 0x3f800000    # 1.0f

    .line 577
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 581
    sget-object v2, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 577
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 582
    new-instance v2, Lcom/android/systemui/statusbar/ActivatableNotificationView$12;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView$12;-><init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;Landroid/view/View;)V

    .line 577
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 589
    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundVisibilityUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 577
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 591
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/TimeAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFadeInFromDarkAnimator:Landroid/animation/ValueAnimator;

    .line 592
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFadeInFromDarkAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 593
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFadeInFromDarkAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 594
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFadeInFromDarkAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 595
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFadeInFromDarkAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFadeInEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 596
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFadeInFromDarkAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mUpdateOutlineListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 597
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFadeInFromDarkAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 573
    return-void

    .line 574
    .end local v0    # "background":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    goto :goto_0

    .line 591
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private handleTouchEventDimmed(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 320
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mNeedsDimming:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-eqz v0, :cond_1

    .line 324
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDoubleTapHelper:Lcom/android/systemui/statusbar/phone/DoubleTapHelper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getActualHeight()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->onTouchEvent(Landroid/view/MotionEvent;I)Z

    move-result v0

    return v0

    .line 322
    :cond_1
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0
.end method

.method private isTouchExplorationEnabled()Z
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    return v0
.end method

.method private makeActive()V
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingManager;->onNotificationActive()V

    .line 337
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->startActivateAnimation(Z)V

    .line 338
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mActivated:Z

    .line 339
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mOnActivatedListener:Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mOnActivatedListener:Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;->onActivated(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    .line 335
    :cond_0
    return-void
.end method

.method private setAlphaWithLayer(Landroid/view/View;F)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "contentAlpha"    # F

    .prologue
    .line 860
    invoke-virtual {p1}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 861
    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-eqz v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p2, v2

    if-nez v2, :cond_2

    :cond_0
    const/4 v1, 0x0

    .line 863
    .local v1, "layerType":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result v0

    .line 864
    .local v0, "currentLayerType":I
    if-eq v0, v1, :cond_1

    .line 865
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 868
    .end local v0    # "currentLayerType":I
    .end local v1    # "layerType":I
    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 859
    return-void

    .line 862
    :cond_2
    const/4 v1, 0x2

    .restart local v1    # "layerType":I
    goto :goto_0
.end method

.method private setBackgroundTintColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 559
    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mCurrentBackgroundTint:I

    if-eq p1, v0, :cond_1

    .line 560
    iput p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mCurrentBackgroundTint:I

    .line 561
    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mNormalColor:I

    if-ne p1, v0, :cond_0

    .line 563
    const/4 p1, 0x0

    .line 565
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setTint(I)V

    .line 566
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setTint(I)V

    .line 558
    :cond_1
    return-void
.end method

.method private startActivateAnimation(Z)V
    .locals 10
    .param p1, "reverse"    # Z

    .prologue
    const v9, 0x3f866666    # 1.05f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 345
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->isAttachedToWindow()Z

    move-result v4

    if-nez v4, :cond_0

    .line 346
    return-void

    .line 348
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->isDimmable()Z

    move-result v4

    if-nez v4, :cond_1

    .line 349
    return-void

    .line 352
    :cond_1
    if-eqz p1, :cond_2

    .line 353
    const-string/jumbo v4, "scaleX"

    new-array v5, v7, [F

    aput v8, v5, v6

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 354
    .local v2, "scaleX":Landroid/animation/ObjectAnimator;
    const-string/jumbo v4, "scaleY"

    new-array v5, v7, [F

    aput v8, v5, v6

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 355
    .local v3, "scaleY":Landroid/animation/ObjectAnimator;
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 356
    .local v0, "animator":Landroid/animation/AnimatorSet;
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 364
    :goto_0
    if-nez p1, :cond_3

    .line 365
    sget-object v1, Lcom/android/systemui/Interpolators;->MIUI_ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 369
    .local v1, "interpolator":Landroid/view/animation/Interpolator;
    :goto_1
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 370
    const-wide/16 v4, 0xb4

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 371
    if-eqz p1, :cond_4

    .line 372
    new-instance v4, Lcom/android/systemui/statusbar/ActivatableNotificationView$9;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView$9;-><init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 378
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 344
    :goto_2
    return-void

    .line 358
    .end local v0    # "animator":Landroid/animation/AnimatorSet;
    .end local v1    # "interpolator":Landroid/view/animation/Interpolator;
    .end local v2    # "scaleX":Landroid/animation/ObjectAnimator;
    .end local v3    # "scaleY":Landroid/animation/ObjectAnimator;
    :cond_2
    const-string/jumbo v4, "scaleX"

    new-array v5, v7, [F

    aput v9, v5, v6

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 359
    .restart local v2    # "scaleX":Landroid/animation/ObjectAnimator;
    const-string/jumbo v4, "scaleY"

    new-array v5, v7, [F

    aput v9, v5, v6

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 360
    .restart local v3    # "scaleY":Landroid/animation/ObjectAnimator;
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 361
    .restart local v0    # "animator":Landroid/animation/AnimatorSet;
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_0

    .line 367
    :cond_3
    sget-object v1, Lcom/android/systemui/Interpolators;->MIUI_ALPHA_OUT:Landroid/view/animation/Interpolator;

    .restart local v1    # "interpolator":Landroid/view/animation/Interpolator;
    goto :goto_1

    .line 380
    :cond_4
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_2
.end method

.method private startAppearAnimation(ZFJJLandroid/animation/AnimatorListenerAdapter;Ljava/lang/Runnable;)V
    .locals 5
    .param p1, "isAppearing"    # Z
    .param p2, "translationDirection"    # F
    .param p3, "delay"    # J
    .param p5, "duration"    # J
    .param p7, "globalListener"    # Landroid/animation/AnimatorListenerAdapter;
    .param p8, "onFinishedRunnable"    # Ljava/lang/Runnable;

    .prologue
    const/4 v3, 0x0

    .line 722
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->cancelAppearAnimation()V

    .line 723
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getActualHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    iput v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAnimationTranslationY:F

    .line 724
    iget v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationFraction:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 726
    if-eqz p1, :cond_3

    .line 727
    iput v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationFraction:F

    .line 728
    iget v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAnimationTranslationY:F

    iput v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationTranslation:F

    .line 736
    :cond_0
    :goto_0
    if-eqz p1, :cond_4

    .line 737
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mSlowOutFastInInterpolator:Landroid/view/animation/Interpolator;

    iput-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mCurrentAppearInterpolator:Landroid/view/animation/Interpolator;

    .line 738
    sget-object v1, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    iput-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mCurrentAlphaInterpolator:Landroid/view/animation/Interpolator;

    .line 739
    const/high16 v0, 0x3f800000    # 1.0f

    .line 745
    .local v0, "targetValue":F
    :goto_1
    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationFraction:F

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 746
    const/4 v2, 0x1

    aput v0, v1, v2

    .line 745
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    .line 747
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 748
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    .line 749
    long-to-float v2, p5

    iget v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationFraction:F

    sub-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-long v2, v2

    .line 748
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 750
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/systemui/statusbar/ActivatableNotificationView$13;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView$13;-><init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 759
    const-wide/16 v2, 0x0

    cmp-long v1, p3, v2

    if-lez v1, :cond_1

    .line 761
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateAppearAnimationAlpha()V

    .line 762
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateAppearRect()V

    .line 763
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, p3, p4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 765
    :cond_1
    if-eqz p7, :cond_2

    .line 766
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, p7}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 768
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/systemui/statusbar/ActivatableNotificationView$14;

    invoke-direct {v2, p0, p8, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView$14;-><init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;Ljava/lang/Runnable;Z)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 792
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 721
    return-void

    .line 730
    .end local v0    # "targetValue":F
    :cond_3
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationFraction:F

    .line 731
    iput v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationTranslation:F

    goto :goto_0

    .line 741
    :cond_4
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    iput-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mCurrentAppearInterpolator:Landroid/view/animation/Interpolator;

    .line 742
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mSlowOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    iput-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mCurrentAlphaInterpolator:Landroid/view/animation/Interpolator;

    .line 743
    const/4 v0, 0x0

    .restart local v0    # "targetValue":F
    goto :goto_1
.end method

.method private updateAppearAnimationAlpha()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 849
    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationFraction:F

    .line 850
    .local v0, "contentAlphaProgress":F
    div-float/2addr v0, v1

    .line 851
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 852
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mCurrentAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 853
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setAlphaWithLayer(Landroid/view/View;F)V

    .line 856
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setAlphaWithLayer(Landroid/view/View;F)V

    .line 848
    return-void
.end method

.method private updateAppearRect()V
    .locals 15

    .prologue
    const v14, 0x3dcccccd    # 0.1f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    .line 811
    iget v10, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationFraction:F

    sub-float v3, v13, v10

    .line 812
    .local v3, "inverseFraction":F
    iget-object v10, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mCurrentAppearInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v10, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v8

    .line 813
    .local v8, "translationFraction":F
    iget v10, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAnimationTranslationY:F

    mul-float v7, v8, v10

    .line 814
    .local v7, "translateYTotalAmount":F
    iput v7, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationTranslation:F

    .line 817
    sub-float v10, v3, v12

    .line 818
    const v11, 0x3f4ccccd    # 0.8f

    .line 817
    div-float v9, v10, v11

    .line 819
    .local v9, "widthFraction":F
    invoke-static {v12, v9}, Ljava/lang/Math;->max(FF)F

    move-result v10

    invoke-static {v13, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 820
    iget-object v10, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mCurrentAppearInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v10, v9}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v9

    .line 821
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getWidth()I

    move-result v10

    int-to-float v10, v10

    const v11, 0x3ef33333    # 0.475f

    mul-float/2addr v10, v11

    mul-float v4, v10, v9

    .line 823
    .local v4, "left":F
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getWidth()I

    move-result v10

    int-to-float v10, v10

    sub-float v5, v10, v4

    .line 826
    .local v5, "right":F
    sub-float v10, v3, v12

    div-float v2, v10, v13

    .line 828
    .local v2, "heightFraction":F
    invoke-static {v12, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 829
    iget-object v10, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mCurrentAppearInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v10, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 833
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getActualHeight()I

    move-result v0

    .line 834
    .local v0, "actualHeight":I
    iget v10, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAnimationTranslationY:F

    cmpl-float v10, v10, v12

    if-lez v10, :cond_0

    .line 835
    int-to-float v10, v0

    iget v11, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAnimationTranslationY:F

    mul-float/2addr v11, v2

    mul-float/2addr v11, v14

    sub-float/2addr v10, v11

    sub-float v1, v10, v7

    .line 837
    .local v1, "bottom":F
    mul-float v6, v1, v2

    .line 843
    .local v6, "top":F
    :goto_0
    iget-object v10, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationRect:Landroid/graphics/RectF;

    invoke-virtual {v10, v4, v6, v5, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 844
    iget v10, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationTranslation:F

    add-float/2addr v10, v6

    .line 845
    iget v11, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationTranslation:F

    add-float/2addr v11, v1

    .line 844
    invoke-virtual {p0, v4, v10, v5, v11}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setOutlineRect(FFFF)V

    .line 810
    return-void

    .line 839
    .end local v1    # "bottom":F
    .end local v6    # "top":F
    :cond_0
    int-to-float v10, v0

    iget v11, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAnimationTranslationY:F

    add-float/2addr v10, v11

    mul-float/2addr v10, v2

    mul-float/2addr v10, v14

    sub-float v6, v10, v7

    .line 841
    .restart local v6    # "top":F
    int-to-float v10, v0

    sub-float v11, v13, v2

    mul-float/2addr v10, v11

    mul-float v11, v6, v2

    add-float v1, v10, v11

    .restart local v1    # "bottom":F
    goto :goto_0
.end method

.method private updateBackgroundTint(Z)V
    .locals 6
    .param p1, "animated"    # Z

    .prologue
    .line 525
    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_0

    .line 526
    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 528
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getRippleColor()I

    move-result v1

    .line 529
    .local v1, "rippleColor":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setRippleColor(I)V

    .line 530
    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setRippleColor(I)V

    .line 531
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->calculateBgColor()I

    move-result v0

    .line 532
    .local v0, "color":I
    if-nez p1, :cond_2

    .line 533
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setBackgroundTintColor(I)V

    .line 524
    :cond_1
    :goto_0
    return-void

    .line 534
    :cond_2
    iget v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mCurrentBackgroundTint:I

    if-eq v0, v2, :cond_1

    .line 535
    iget v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mCurrentBackgroundTint:I

    iput v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mStartTint:I

    .line 536
    iput v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTargetTint:I

    .line 537
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    .line 538
    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/systemui/statusbar/ActivatableNotificationView$10;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView$10;-><init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 546
    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x168

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 547
    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    sget-object v3, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 548
    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/systemui/statusbar/ActivatableNotificationView$11;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView$11;-><init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 554
    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 537
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public calculateBgColor()I
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 874
    invoke-direct {p0, v0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->calculateBgColor(ZZ)I

    move-result v0

    return v0
.end method

.method protected disallowSingleClick(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 267
    const/4 v0, 0x0

    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 930
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDrawingAppearAnimation:Z

    if-eqz v0, :cond_0

    .line 931
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 932
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationTranslation:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 934
    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 935
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDrawingAppearAnimation:Z

    if-eqz v0, :cond_1

    .line 936
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 929
    :cond_1
    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 304
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-nez v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->drawableHotspotChanged(FF)V

    .line 303
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 311
    invoke-super {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->drawableStateChanged()V

    .line 312
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setState([I)V

    .line 310
    :goto_0
    return-void

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setState([I)V

    goto :goto_0
.end method

.method public getBackgroundColorWithoutTint()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 974
    invoke-direct {p0, v0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->calculateBgColor(ZZ)I

    move-result v0

    return v0
.end method

.method protected abstract getContentView()Landroid/view/View;
.end method

.method protected getRippleColor()I
    .locals 1

    .prologue
    .line 900
    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBgTint:I

    if-eqz v0, :cond_0

    .line 901
    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTintedRippleColor:I

    return v0

    .line 902
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mIsBelowSpeedBump:Z

    if-eqz v0, :cond_1

    .line 903
    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mLowPriorityRippleColor:I

    return v0

    .line 905
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mNormalRippleColor:I

    return v0
.end method

.method public getShadowAlpha()F
    .locals 1

    .prologue
    .line 950
    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mShadowAlpha:F

    return v0
.end method

.method protected handleSlideBack()Z
    .locals 1

    .prologue
    .line 271
    const/4 v0, 0x0

    return v0
.end method

.method public isBelowSpeedBump()Z
    .locals 1

    .prologue
    .line 472
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mIsBelowSpeedBump:Z

    return v0
.end method

.method public isDimmable()Z
    .locals 1

    .prologue
    .line 419
    const/4 v0, 0x1

    return v0
.end method

.method protected isInteractive()Z
    .locals 1

    .prologue
    .line 299
    const/4 v0, 0x1

    return v0
.end method

.method public makeInactive(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 388
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mActivated:Z

    if-eqz v0, :cond_0

    .line 389
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mActivated:Z

    .line 390
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-eqz v0, :cond_0

    .line 391
    if-eqz p1, :cond_2

    .line 392
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->startActivateAnimation(Z)V

    .line 398
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mOnActivatedListener:Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;

    if-eqz v0, :cond_1

    .line 399
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mOnActivatedListener:Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;->onActivationReset(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    .line 401
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 387
    return-void

    .line 394
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackground()V

    goto :goto_0
.end method

.method protected onAppearAnimationFinished(Z)V
    .locals 0
    .param p1, "wasAppearing"    # Z

    .prologue
    .line 795
    return-void
.end method

.method protected onBelowSpeedBumpChanged()V
    .locals 0

    .prologue
    .line 465
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 232
    invoke-super {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->onFinishInflate()V

    .line 233
    const v0, 0x91202e3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationBackgroundView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    .line 234
    const v0, 0x91202eb

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/FakeShadowView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFakeShadow:Lcom/android/systemui/statusbar/notification/FakeShadowView;

    .line 235
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFakeShadow:Lcom/android/systemui/statusbar/notification/FakeShadowView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/FakeShadowView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mShadowHidden:Z

    .line 236
    const v0, 0x91202e4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationBackgroundView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    .line 237
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    const v1, 0x90202ae

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setCustomBackground(I)V

    .line 238
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    const v1, 0x90202af

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setCustomBackground(I)V

    .line 239
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mContext:Landroid/content/Context;

    .line 240
    const v1, 0x90c0076

    .line 239
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmedAlpha:I

    .line 241
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackground()V

    .line 242
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackgroundTint()V

    .line 243
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateOutlineAlpha()V

    .line 231
    return-void

    :cond_0
    move v0, v1

    .line 235
    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 255
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mNeedsDimming:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mActivated:Z

    if-eqz v0, :cond_1

    .line 259
    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 255
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 256
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->disallowSingleClick(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 255
    if-eqz v0, :cond_0

    .line 256
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    const/4 v0, 0x1

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 673
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->onLayout(ZIIII)V

    .line 674
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setPivotX(F)V

    .line 672
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 277
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 278
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mActivated:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mWasActivatedOnDown:Z

    .line 280
    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mNeedsDimming:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mActivated:Z

    if-eqz v2, :cond_3

    .line 286
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->isSummaryWithChildren()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->isGroupExpanded()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 288
    const/4 v0, 0x1

    .line 292
    :cond_2
    :goto_0
    return v0

    .line 280
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->isTouchExplorationEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->isInteractive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 281
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mActivated:Z

    .line 282
    .local v1, "wasActivated":Z
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->handleTouchEventDimmed(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 283
    .local v0, "result":Z
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 284
    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 290
    .end local v0    # "result":Z
    .end local v1    # "wasActivated":Z
    :cond_4
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .restart local v0    # "result":Z
    goto :goto_0
.end method

.method public performAddAnimation(JJLandroid/animation/AnimatorListenerAdapter;)V
    .locals 11
    .param p1, "delay"    # J
    .param p3, "duration"    # J
    .param p5, "globalListener"    # Landroid/animation/AnimatorListenerAdapter;

    .prologue
    const/4 v2, 0x1

    .line 713
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->enableAppearDrawing(Z)V

    .line 714
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDrawingAppearAnimation:Z

    if-eqz v0, :cond_0

    .line 715
    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {v2, v0}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->getFoldTranslationDirection(ZF)F

    move-result v3

    .line 716
    .local v3, "translationDirection":F
    const/4 v9, 0x0

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    move-object/from16 v8, p5

    invoke-direct/range {v1 .. v9}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->startAppearAnimation(ZFJJLandroid/animation/AnimatorListenerAdapter;Ljava/lang/Runnable;)V

    .line 712
    .end local v3    # "translationDirection":F
    :cond_0
    return-void
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 329
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mWasActivatedOnDown:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mNeedsDimming:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 330
    :cond_0
    invoke-super {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->performClick()Z

    move-result v0

    return v0

    .line 332
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public performRemoveAnimation(JFLandroid/animation/AnimatorListenerAdapter;Ljava/lang/Runnable;)V
    .locals 11
    .param p1, "duration"    # J
    .param p3, "translationDirection"    # F
    .param p4, "globalListener"    # Landroid/animation/AnimatorListenerAdapter;
    .param p5, "onFinishedRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 702
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->enableAppearDrawing(Z)V

    .line 703
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDrawingAppearAnimation:Z

    if-eqz v0, :cond_1

    .line 705
    const-wide/16 v4, 0x0

    .line 704
    const/4 v2, 0x0

    move-object v1, p0

    move v3, p3

    move-wide v6, p1

    move-object v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v1 .. v9}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->startAppearAnimation(ZFJJLandroid/animation/AnimatorListenerAdapter;Ljava/lang/Runnable;)V

    .line 701
    :cond_0
    :goto_0
    return-void

    .line 706
    :cond_1
    if-eqz p5, :cond_0

    .line 707
    invoke-interface/range {p5 .. p5}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method protected resetBackgroundAlpha()V
    .locals 1

    .prologue
    .line 628
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackgroundAlpha(F)V

    .line 627
    return-void
.end method

.method public setActualHeight(IZ)V
    .locals 1
    .param p1, "actualHeight"    # I
    .param p2, "notifyListeners"    # Z

    .prologue
    .line 679
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->setActualHeight(IZ)V

    .line 680
    div-int/lit8 v0, p1, 0x2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setPivotY(F)V

    .line 681
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setActualHeight(I)V

    .line 682
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setActualHeight(I)V

    .line 678
    return-void
.end method

.method public setBelowSpeedBump(Z)V
    .locals 1
    .param p1, "below"    # Z

    .prologue
    .line 457
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->setBelowSpeedBump(Z)V

    .line 458
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mIsBelowSpeedBump:Z

    if-eq p1, v0, :cond_0

    .line 459
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mIsBelowSpeedBump:Z

    .line 460
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackgroundTint()V

    .line 461
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->onBelowSpeedBumpChanged()V

    .line 456
    :cond_0
    return-void
.end method

.method public setClipBottomAmount(I)V
    .locals 1
    .param p1, "clipBottomAmount"    # I

    .prologue
    .line 694
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->setClipBottomAmount(I)V

    .line 695
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setClipBottomAmount(I)V

    .line 696
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setClipBottomAmount(I)V

    .line 693
    return-void
.end method

.method public setClipTopAmount(I)V
    .locals 1
    .param p1, "clipTopAmount"    # I

    .prologue
    .line 687
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->setClipTopAmount(I)V

    .line 688
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setClipTopAmount(I)V

    .line 689
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setClipTopAmount(I)V

    .line 686
    return-void
.end method

.method public setDark(ZZJ)V
    .locals 1
    .param p1, "dark"    # Z
    .param p2, "fade"    # Z
    .param p3, "delay"    # J

    .prologue
    .line 423
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->setDark(ZZJ)V

    .line 424
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDark:Z

    if-ne v0, p1, :cond_0

    .line 425
    return-void

    .line 427
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDark:Z

    .line 428
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackground()V

    .line 429
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackgroundTint(Z)V

    .line 430
    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->shouldHideBackground()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 433
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateOutlineAlpha()V

    .line 422
    return-void

    .line 431
    :cond_2
    invoke-direct {p0, p3, p4}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->fadeInFromDark(J)V

    goto :goto_0
.end method

.method public setDimmed(ZZ)V
    .locals 1
    .param p1, "dimmed"    # Z
    .param p2, "fade"    # Z

    .prologue
    .line 405
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mNeedsDimming:Z

    .line 406
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->isDimmable()Z

    move-result v0

    and-int/2addr p1, v0

    .line 407
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-eq v0, p1, :cond_0

    .line 408
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    .line 409
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->resetBackgroundAlpha()V

    .line 410
    if-eqz p2, :cond_1

    .line 411
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->fadeDimmedBackground()V

    .line 404
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackground()V

    goto :goto_0
.end method

.method public setFakeShadowIntensity(FFII)V
    .locals 4
    .param p1, "shadowIntensity"    # F
    .param p2, "outlineAlpha"    # F
    .param p3, "shadowYEnd"    # I
    .param p4, "outlineTranslation"    # I

    .prologue
    .line 964
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mShadowHidden:Z

    .line 965
    .local v0, "hiddenBefore":Z
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mShadowHidden:Z

    .line 966
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mShadowHidden:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 963
    :goto_1
    return-void

    .line 965
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 967
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFakeShadow:Lcom/android/systemui/statusbar/notification/FakeShadowView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getTranslationZ()F

    move-result v2

    .line 968
    const v3, 0x3dcccccd    # 0.1f

    .line 967
    add-float/2addr v2, v3

    mul-float/2addr v2, p1

    invoke-virtual {v1, v2, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/FakeShadowView;->setFakeShadowTranslationZ(FFII)V

    goto :goto_1
.end method

.method public setNormalBackgroundVisibilityAmount(F)V
    .locals 0
    .param p1, "normalBackgroundVisibilityAmount"    # F

    .prologue
    .line 451
    iput p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mNormalBackgroundVisibilityAmount:F

    .line 452
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateOutlineAlpha()V

    .line 450
    return-void
.end method

.method public setOnActivatedListener(Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;)V
    .locals 0
    .param p1, "onActivatedListener"    # Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;

    .prologue
    .line 941
    iput-object p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mOnActivatedListener:Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;

    .line 940
    return-void
.end method

.method public setOverrideTintColor(IF)V
    .locals 4
    .param p1, "color"    # I
    .param p2, "overrideAmount"    # F

    .prologue
    .line 503
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDark:Z

    if-eqz v1, :cond_0

    .line 504
    const/4 p1, 0x0

    .line 505
    const/4 p2, 0x0

    .line 507
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mOverrideTint:I

    .line 508
    iput p2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mOverrideAmount:F

    .line 509
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->calculateBgColor()I

    move-result v0

    .line 510
    .local v0, "newColor":I
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setBackgroundTintColor(I)V

    .line 511
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->isDimmable()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mNeedsDimming:Z

    if-eqz v1, :cond_1

    .line 512
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    const/high16 v2, 0x437f0000    # 255.0f

    .line 513
    iget v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmedAlpha:I

    int-to-float v3, v3

    .line 512
    invoke-static {v2, v3, p2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setDrawableAlpha(I)V

    .line 502
    :goto_0
    return-void

    .line 516
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setDrawableAlpha(I)V

    goto :goto_0
.end method

.method public setShadowAlpha(F)V
    .locals 1
    .param p1, "shadowAlpha"    # F

    .prologue
    .line 955
    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mShadowAlpha:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 956
    iput p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mShadowAlpha:F

    .line 957
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateOutlineAlpha()V

    .line 954
    :cond_0
    return-void
.end method

.method public setTintColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 479
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setTintColor(IZ)V

    .line 478
    return-void
.end method

.method public setTintColor(IZ)V
    .locals 1
    .param p1, "color"    # I
    .param p2, "animated"    # Z

    .prologue
    .line 486
    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBgTint:I

    if-eq p1, v0, :cond_0

    .line 487
    iput p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBgTint:I

    .line 488
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackgroundTint(Z)V

    .line 485
    :cond_0
    return-void
.end method

.method protected shouldHideBackground()Z
    .locals 1

    .prologue
    .line 657
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDark:Z

    return v0
.end method

.method protected updateBackground()V
    .locals 6

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 632
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->cancelFadeAnimations()V

    .line 633
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->shouldHideBackground()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 634
    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    .line 635
    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mActivated:Z

    if-eqz v5, :cond_0

    :goto_0
    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    .line 653
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_7

    move v1, v4

    .line 652
    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setNormalBackgroundVisibilityAmount(F)V

    .line 631
    return-void

    :cond_0
    move v1, v2

    .line 635
    goto :goto_0

    .line 636
    :cond_1
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-eqz v3, :cond_6

    .line 639
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->isGroupExpansionChanging()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->isChildInGroup()Z

    move-result v0

    .line 640
    :goto_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    if-eqz v0, :cond_5

    move v3, v2

    :goto_4
    invoke-virtual {v5, v3}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    .line 641
    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mActivated:Z

    if-nez v5, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    move v2, v1

    :cond_3
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    goto :goto_1

    .line 639
    :cond_4
    const/4 v0, 0x0

    .local v0, "dontShowDimmed":Z
    goto :goto_3

    .end local v0    # "dontShowDimmed":Z
    :cond_5
    move v3, v1

    .line 640
    goto :goto_4

    .line 645
    :cond_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    .line 646
    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    .line 647
    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setAlpha(F)V

    .line 648
    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 650
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->makeInactive(Z)V

    goto :goto_1

    .line 653
    :cond_7
    const/4 v1, 0x0

    goto :goto_2
.end method

.method protected updateBackgroundAlpha(F)V
    .locals 2
    .param p1, "transformationAmount"    # F

    .prologue
    .line 620
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->isChildInGroup()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-eqz v0, :cond_1

    .end local p1    # "transformationAmount":F
    :goto_0
    iput p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBgAlpha:F

    .line 621
    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmedBackgroundFadeInAmount:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 622
    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBgAlpha:F

    iget v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmedBackgroundFadeInAmount:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBgAlpha:F

    .line 624
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    iget v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBgAlpha:F

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setAlpha(F)V

    .line 619
    return-void

    .line 620
    .restart local p1    # "transformationAmount":F
    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method protected updateBackgroundTint()V
    .locals 1

    .prologue
    .line 521
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackgroundTint(Z)V

    .line 520
    return-void
.end method

.method protected updateOutlineAlpha()V
    .locals 3

    .prologue
    .line 437
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDark:Z

    if-eqz v1, :cond_0

    .line 438
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setOutlineAlpha(F)V

    .line 439
    return-void

    .line 442
    :cond_0
    const v1, 0x3e99999a    # 0.3f

    iget v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mNormalBackgroundVisibilityAmount:F

    mul-float/2addr v1, v2

    .line 441
    const v2, 0x3f333333    # 0.7f

    .line 442
    add-float v0, v2, v1

    .line 443
    .local v0, "alpha":F
    iget v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mShadowAlpha:F

    mul-float/2addr v0, v1

    .line 444
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFadeInFromDarkAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    .line 445
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFadeInFromDarkAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    mul-float/2addr v0, v1

    .line 447
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setOutlineAlpha(F)V

    .line 436
    return-void
.end method
