.class public Lcom/android/systemui/recents/views/RecentMenuView;
.super Landroid/widget/FrameLayout;
.source "RecentMenuView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mBlurBackground:Landroid/graphics/Bitmap;

.field private final mFastBlurMaxRadius:I

.field private mIsShowing:Z

.field private mIsTaskViewLeft:Z

.field mLockDrawable:Landroid/graphics/drawable/Drawable;

.field private mMaskBackground:Landroid/graphics/drawable/ColorDrawable;

.field private mMenuItemInfo:Landroid/widget/ImageView;

.field private mMenuItemLock:Landroid/widget/ImageView;

.field private mMenuItemMultiWindow:Landroid/widget/ImageView;

.field private mShowMenuItemAnimInterpolator:Landroid/animation/TimeInterpolator;

.field mShowOrHideAnim:Landroid/animation/ValueAnimator;

.field private mTask:Lcom/android/systemui/recents/model/Task;

.field private mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

.field private mTaskView:Lcom/android/systemui/recents/views/TaskView;

.field mUnlockDrawable:Landroid/graphics/drawable/Drawable;

.field private mVerticalMargin:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/views/RecentMenuView;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mBlurBackground:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/recents/views/RecentMenuView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/recents/views/RecentMenuView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mIsShowing:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/recents/views/RecentMenuView;)Landroid/graphics/drawable/ColorDrawable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mMaskBackground:Landroid/graphics/drawable/ColorDrawable;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/recents/views/RecentMenuView;)Lcom/android/systemui/recents/model/Task;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/recents/model/Task;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/recents/views/RecentMenuView;)Lcom/android/systemui/recents/views/TaskStackView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/recents/views/RecentMenuView;)Lcom/android/systemui/recents/views/TaskView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/recents/views/RecentMenuView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mBlurBackground:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/recents/views/RecentMenuView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentMenuView;->setMaskBackground()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/views/RecentMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recents/views/RecentMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/recents/views/RecentMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 84
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mIsShowing:Z

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mBlurBackground:Landroid/graphics/Bitmap;

    .line 63
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mShowOrHideAnim:Landroid/animation/ValueAnimator;

    .line 64
    new-instance v0, Lmiui/view/animation/BackEaseOutInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/BackEaseOutInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mShowMenuItemAnimInterpolator:Landroid/animation/TimeInterpolator;

    .line 66
    const/16 v0, 0x24

    iput v0, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mFastBlurMaxRadius:I

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x90201ee

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mLockDrawable:Landroid/graphics/drawable/Drawable;

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x90201f1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mUnlockDrawable:Landroid/graphics/drawable/Drawable;

    .line 87
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x90c00cd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mMaskBackground:Landroid/graphics/drawable/ColorDrawable;

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x90f0268

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mVerticalMargin:I

    .line 89
    const/high16 v0, 0x41200000    # 10.0f

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentMenuView;->setTranslationZ(F)V

    .line 90
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentMenuView;->setVisibility(I)V

    .line 92
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mShowOrHideAnim:Landroid/animation/ValueAnimator;

    .line 93
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mShowOrHideAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xb4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 94
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mShowOrHideAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/recents/views/RecentMenuView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/views/RecentMenuView$1;-><init>(Lcom/android/systemui/recents/views/RecentMenuView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 119
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mShowOrHideAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/recents/views/RecentMenuView$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/views/RecentMenuView$2;-><init>(Lcom/android/systemui/recents/views/RecentMenuView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 83
    return-void
.end method

.method private layoutMenuItem(Landroid/view/View;IIIII)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "pivotX"    # I
    .param p5, "pivotY"    # I
    .param p6, "size"    # I

    .prologue
    .line 301
    sub-int v0, p4, p2

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 302
    sub-int v0, p5, p3

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 303
    add-int v0, p2, p6

    add-int v1, p3, p6

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 300
    return-void
.end method

.method private setMaskBackground()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x3e800000    # 0.25f

    .line 195
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentMenuView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x7530

    const/4 v5, 0x1

    invoke-static {v2, v6, v3, v4, v5}, Lmiui/util/ScreenshotUtils;->getScreenshot(Landroid/content/Context;FIIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mBlurBackground:Landroid/graphics/Bitmap;

    .line 196
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasDockedTask()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mBlurBackground:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 197
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 198
    .local v1, "rect":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/recents/views/TaskStackView;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 199
    invoke-virtual {v1, v6}, Landroid/graphics/Rect;->scale(F)V

    .line 201
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mBlurBackground:Landroid/graphics/Bitmap;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-static {v2, v3, v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mBlurBackground:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    .end local v1    # "rect":Landroid/graphics/Rect;
    :cond_0
    :goto_0
    return-void

    .line 202
    .restart local v1    # "rect":Landroid/graphics/Rect;
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v2, "RecentMenuView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Get blur menu background error: rect="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 204
    const-string/jumbo v4, "   ScreenshotWidth="

    .line 203
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 204
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mBlurBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 203
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 205
    const-string/jumbo v4, "   ScreenshotHeight="

    .line 203
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 205
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mBlurBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 203
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 206
    iput-object v7, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mBlurBackground:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method private startShowItemAnim(Landroid/view/View;FJ)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "alpha"    # F
    .param p3, "delay"    # J

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const v1, 0x3f19999a    # 0.6f

    .line 345
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 346
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 347
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 348
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xf0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mShowMenuItemAnimInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 344
    return-void
.end method


# virtual methods
.method public getDockStatesForCurrentOrientation()[Lcom/android/systemui/recents/model/TaskStack$DockState;
    .locals 5

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    .line 213
    .local v2, "isLandscape":Z
    :goto_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    .line 214
    .local v0, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    if-eqz v2, :cond_2

    .line 215
    iget-boolean v3, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isLargeScreen:Z

    if-eqz v3, :cond_1

    sget-object v1, Lcom/android/systemui/recents/views/DockRegion;->TABLET_LANDSCAPE:[Lcom/android/systemui/recents/model/TaskStack$DockState;

    .line 217
    .local v1, "dockStates":[Lcom/android/systemui/recents/model/TaskStack$DockState;
    :goto_1
    return-object v1

    .line 212
    .end local v0    # "config":Lcom/android/systemui/recents/RecentsConfiguration;
    .end local v1    # "dockStates":[Lcom/android/systemui/recents/model/TaskStack$DockState;
    .end local v2    # "isLandscape":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "isLandscape":Z
    goto :goto_0

    .line 215
    .restart local v0    # "config":Lcom/android/systemui/recents/RecentsConfiguration;
    :cond_1
    sget-object v1, Lcom/android/systemui/recents/views/DockRegion;->PHONE_LANDSCAPE:[Lcom/android/systemui/recents/model/TaskStack$DockState;

    goto :goto_1

    .line 216
    :cond_2
    iget-boolean v3, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isLargeScreen:Z

    if-eqz v3, :cond_3

    sget-object v1, Lcom/android/systemui/recents/views/DockRegion;->TABLET_PORTRAIT:[Lcom/android/systemui/recents/model/TaskStack$DockState;

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/android/systemui/recents/views/DockRegion;->PHONE_PORTRAIT:[Lcom/android/systemui/recents/model/TaskStack$DockState;

    goto :goto_1
.end method

.method public isShowOrHideAnimRunning()Z
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mShowOrHideAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 393
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mIsShowing:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 222
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/recents/events/RecentsEventBus;->register(Ljava/lang/Object;I)V

    .line 223
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 221
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/ShowTaskMenuEvent;)V
    .locals 9
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/ShowTaskMenuEvent;

    .prologue
    const v8, 0x3f87ae14    # 1.06f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 307
    iget-boolean v2, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mIsShowing:Z

    if-nez v2, :cond_7

    .line 308
    iput-boolean v3, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mIsShowing:Z

    .line 309
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/views/TaskStackView;->setIsShowingMenu(Z)V

    .line 310
    iget-object v2, p1, Lcom/android/systemui/recents/events/activity/ShowTaskMenuEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    .line 311
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/recents/model/Task;

    .line 312
    iget-object v5, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mMenuItemMultiWindow:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v2, v2, Lcom/android/systemui/recents/model/Task;->isDockable:Z

    if-eqz v2, :cond_0

    .line 313
    invoke-static {}, Lcom/android/systemui/recents/misc/Utilities;->supportsMultiWindow()Z

    move-result v2

    .line 312
    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 314
    iget-object v5, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mMenuItemLock:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v2, v2, Lcom/android/systemui/recents/model/Task;->isLocked:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mUnlockDrawable:Landroid/graphics/drawable/Drawable;

    :goto_1
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 315
    iget-object v5, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mMenuItemLock:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v2, v2, Lcom/android/systemui/recents/model/Task;->isLocked:Z

    if-eqz v2, :cond_2

    .line 316
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mContext:Landroid/content/Context;

    const v6, 0x9100332

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 315
    :goto_2
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 318
    iget-object v5, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mMenuItemMultiWindow:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mMenuItemMultiWindow:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0xff

    :goto_3
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 319
    iget-object v5, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mMenuItemMultiWindow:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mMenuItemMultiWindow:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 320
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mContext:Landroid/content/Context;

    const v6, 0x9100337

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 319
    :goto_4
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 323
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v3, :cond_6

    .line 324
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->getLeft()I

    move-result v2

    iget-object v5, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskStackView;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskView;->getRight()I

    move-result v6

    sub-int/2addr v5, v6

    if-ge v2, v5, :cond_5

    move v2, v3

    .line 323
    :goto_5
    iput-boolean v2, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mIsTaskViewLeft:Z

    .line 325
    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/views/RecentMenuView;->setVisibility(I)V

    .line 326
    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/RecentMenuView;->setFocusable(Z)V

    .line 328
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mMenuItemLock:Landroid/widget/ImageView;

    const-wide/16 v4, 0x0

    invoke-direct {p0, v2, v7, v4, v5}, Lcom/android/systemui/recents/views/RecentMenuView;->startShowItemAnim(Landroid/view/View;FJ)V

    .line 329
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mMenuItemMultiWindow:Landroid/widget/ImageView;

    const-wide/16 v4, 0x32

    invoke-direct {p0, v2, v7, v4, v5}, Lcom/android/systemui/recents/views/RecentMenuView;->startShowItemAnim(Landroid/view/View;FJ)V

    .line 330
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mMenuItemInfo:Landroid/widget/ImageView;

    const-wide/16 v4, 0x64

    invoke-direct {p0, v2, v7, v4, v5}, Lcom/android/systemui/recents/views/RecentMenuView;->startShowItemAnim(Landroid/view/View;FJ)V

    .line 332
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mShowOrHideAnim:Landroid/animation/ValueAnimator;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 333
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mShowOrHideAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 334
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0xf0

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/Interpolators;->BACK_EASE_OUT_5:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 338
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "tv$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/TaskView;

    .line 339
    .local v0, "tv":Lcom/android/systemui/recents/views/TaskView;
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/views/TaskView;->setImportantForAccessibility(I)V

    goto :goto_6

    .end local v0    # "tv":Lcom/android/systemui/recents/views/TaskView;
    .end local v1    # "tv$iterator":Ljava/util/Iterator;
    :cond_0
    move v2, v4

    .line 313
    goto/16 :goto_0

    .line 314
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mLockDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    .line 317
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mContext:Landroid/content/Context;

    const v6, 0x9100331

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 318
    :cond_3
    const/16 v2, 0x50

    goto/16 :goto_3

    .line 321
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mContext:Landroid/content/Context;

    const v6, 0x9100338

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_4

    :cond_5
    move v2, v4

    .line 324
    goto/16 :goto_5

    :cond_6
    move v2, v4

    .line 323
    goto/16 :goto_5

    .line 306
    :cond_7
    return-void

    .line 332
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;

    .prologue
    .line 352
    iget-boolean v0, p1, Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;->visible:Z

    if-nez v0, :cond_0

    .line 353
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentMenuView;->removeMenu(Z)Z

    .line 351
    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/stackdivider/events/StartedDragingEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/android/systemui/stackdivider/events/StartedDragingEvent;

    .prologue
    .line 358
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentMenuView;->removeMenu(Z)Z

    .line 357
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 155
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 191
    :cond_0
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/RecentMenuView;->removeMenu(Z)Z

    .line 154
    return-void

    .line 157
    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v1, :cond_0

    .line 158
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v1

    new-instance v3, Lcom/android/systemui/recents/events/ui/ShowApplicationInfoEvent;

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/recents/model/Task;

    invoke-direct {v3, v4}, Lcom/android/systemui/recents/events/ui/ShowApplicationInfoEvent;-><init>(Lcom/android/systemui/recents/model/Task;)V

    invoke-virtual {v1, v3}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    goto :goto_0

    .line 162
    :pswitch_1
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v3, :cond_0

    .line 163
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v4, v4, Lcom/android/systemui/recents/model/Task;->isLocked:Z

    if-eqz v4, :cond_1

    :goto_1
    iput-boolean v1, v3, Lcom/android/systemui/recents/model/Task;->isLocked:Z

    .line 164
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v3, v3, Lcom/android/systemui/recents/model/Task;->isLocked:Z

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v3, v2, v4, v5}, Lcom/android/systemui/recents/views/TaskView;->updateLockedFlagVisible(ZZJ)V

    .line 165
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v1

    new-instance v3, Lcom/android/systemui/recents/events/component/ChangeTaskLockStateEvent;

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v5, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v5, v5, Lcom/android/systemui/recents/model/Task;->isLocked:Z

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/recents/events/component/ChangeTaskLockStateEvent;-><init>(Lcom/android/systemui/recents/model/Task;Z)V

    invoke-virtual {v1, v3}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    .line 166
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v1, v1, Lcom/android/systemui/recents/model/Task;->isLocked:Z

    if-eqz v1, :cond_2

    .line 167
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mContext:Landroid/content/Context;

    const v3, 0x9100496

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 166
    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/RecentMenuView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    move v1, v2

    .line 163
    goto :goto_1

    .line 168
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mContext:Landroid/content/Context;

    const v3, 0x9100495

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 172
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentMenuView;->getDockStatesForCurrentOrientation()[Lcom/android/systemui/recents/model/TaskStack$DockState;

    move-result-object v0

    .line 173
    .local v0, "dockStates":[Lcom/android/systemui/recents/model/TaskStack$DockState;
    aget-object v1, v0, v1

    if-eqz v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    new-instance v3, Lcom/android/systemui/recents/views/RecentMenuView$3;

    invoke-direct {v3, p0, v0}, Lcom/android/systemui/recents/views/RecentMenuView$3;-><init>(Lcom/android/systemui/recents/views/RecentMenuView;[Lcom/android/systemui/recents/model/TaskStack$DockState;)V

    .line 187
    const-wide/16 v4, 0xfa

    .line 174
    invoke-virtual {v1, v3, v4, v5}, Lcom/android/systemui/recents/views/TaskStackView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 155
    nop

    :pswitch_data_0
    .packed-switch 0x9120279
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 228
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 229
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/RecentsEventBus;->unregister(Ljava/lang/Object;)V

    .line 227
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 140
    const v0, 0x912027b

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mMenuItemInfo:Landroid/widget/ImageView;

    .line 141
    const v0, 0x9120279

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mMenuItemLock:Landroid/widget/ImageView;

    .line 142
    const v0, 0x912027a

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mMenuItemMultiWindow:Landroid/widget/ImageView;

    .line 143
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mMenuItemInfo:Landroid/widget/ImageView;

    const v1, 0x90201f0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 144
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mMenuItemInfo:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mContext:Landroid/content/Context;

    const v2, 0x9100333

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mMenuItemMultiWindow:Landroid/widget/ImageView;

    const v1, 0x90201ef

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 147
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mMenuItemInfo:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mMenuItemLock:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mMenuItemMultiWindow:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    invoke-virtual {p0, p0}, Lcom/android/systemui/recents/views/RecentMenuView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 16
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 234
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/views/RecentMenuView;->mMenuItemLock:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v10

    .line 235
    .local v10, "size":I
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 236
    .local v11, "content":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/views/RecentMenuView;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v4, v11}, Lcom/android/systemui/recents/views/TaskView;->getHitRect(Landroid/graphics/Rect;)V

    .line 237
    iget v4, v11, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/views/RecentMenuView;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskView;->getHeaderView()Lcom/android/systemui/recents/views/TaskViewHeader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskViewHeader;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v11, Landroid/graphics/Rect;->top:I

    .line 238
    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/graphics/Rect;->intersect(IIII)Z

    .line 240
    const/4 v4, 0x3

    new-array v12, v4, [I

    .line 241
    .local v12, "posX":[I
    const/4 v4, 0x3

    new-array v13, v4, [I

    .line 244
    .local v13, "posY":[I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/recents/views/RecentMenuView;->mIsTaskViewLeft:Z

    if-eqz v4, :cond_1

    .line 245
    add-int/lit8 v4, p4, -0xa

    int-to-float v4, v4

    iget v5, v11, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    int-to-float v6, v10

    const v7, 0x3ecccccd    # 0.4f

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    float-to-int v4, v4

    const/4 v5, 0x2

    aput v4, v12, v5

    const/4 v5, 0x0

    aput v4, v12, v5

    .line 246
    add-int/lit8 v4, p4, -0xa

    int-to-float v4, v4

    iget v5, v11, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    int-to-float v6, v10

    const v7, 0x3f666666    # 0.9f

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    float-to-int v4, v4

    const/4 v5, 0x1

    aput v4, v12, v5

    .line 247
    iget v4, v11, Landroid/graphics/Rect;->right:I

    sub-int v8, v4, v10

    .line 248
    .local v8, "pivotX":I
    invoke-virtual {v11}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    .line 255
    .local v9, "pivotY":I
    :goto_0
    invoke-virtual {v11}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    int-to-float v5, v10

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    float-to-int v4, v4

    const/4 v5, 0x1

    aput v4, v13, v5

    .line 256
    const/4 v4, 0x1

    aget v4, v13, v4

    int-to-double v4, v4

    int-to-double v6, v10

    const-wide v14, 0x3ff3333333333333L    # 1.2

    mul-double/2addr v6, v14

    sub-double/2addr v4, v6

    double-to-int v4, v4

    const/4 v5, 0x0

    aput v4, v13, v5

    .line 257
    const/4 v4, 0x1

    aget v4, v13, v4

    int-to-double v4, v4

    int-to-double v6, v10

    const-wide v14, 0x3ff3333333333333L    # 1.2

    mul-double/2addr v6, v14

    add-double/2addr v4, v6

    double-to-int v4, v4

    const/4 v5, 0x2

    aput v4, v13, v5

    .line 259
    const/4 v4, 0x0

    aget v4, v13, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/recents/views/RecentMenuView;->mVerticalMargin:I

    if-ge v4, v5, :cond_3

    .line 260
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/recents/views/RecentMenuView;->mIsTaskViewLeft:Z

    if-eqz v4, :cond_2

    .line 261
    iget v4, v11, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    int-to-float v5, v10

    const v6, 0x3f19999a    # 0.6f

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    const/4 v5, 0x0

    aput v4, v12, v5

    .line 262
    iget v4, v11, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    int-to-float v5, v10

    const v6, 0x3ecccccd    # 0.4f

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    const/4 v5, 0x1

    aput v4, v12, v5

    .line 263
    iget v4, v11, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v10

    const/4 v5, 0x2

    aput v4, v12, v5

    .line 264
    iget v4, v11, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v5, v10, 0x2

    sub-int v8, v4, v5

    .line 265
    iget v4, v11, Landroid/graphics/Rect;->bottom:I

    mul-int/lit8 v5, v10, 0x2

    sub-int v9, v4, v5

    .line 273
    :goto_1
    iget v4, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v10

    const/4 v5, 0x0

    aput v4, v13, v5

    .line 274
    iget v4, v11, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    int-to-float v5, v10

    const v6, 0x3ecccccd    # 0.4f

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    const/4 v5, 0x1

    aput v4, v13, v5

    .line 275
    iget v4, v11, Landroid/graphics/Rect;->bottom:I

    int-to-double v4, v4

    int-to-double v6, v10

    const-wide v14, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v6, v14

    add-double/2addr v4, v6

    double-to-int v4, v4

    const/4 v5, 0x2

    aput v4, v13, v5

    .line 295
    :cond_0
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/views/RecentMenuView;->mMenuItemLock:Landroid/widget/ImageView;

    const/4 v4, 0x0

    aget v6, v12, v4

    const/4 v4, 0x0

    aget v7, v13, v4

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/systemui/recents/views/RecentMenuView;->layoutMenuItem(Landroid/view/View;IIIII)V

    .line 296
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/views/RecentMenuView;->mMenuItemMultiWindow:Landroid/widget/ImageView;

    const/4 v4, 0x1

    aget v6, v12, v4

    const/4 v4, 0x1

    aget v7, v13, v4

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/systemui/recents/views/RecentMenuView;->layoutMenuItem(Landroid/view/View;IIIII)V

    .line 297
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/views/RecentMenuView;->mMenuItemInfo:Landroid/widget/ImageView;

    const/4 v4, 0x2

    aget v6, v12, v4

    const/4 v4, 0x2

    aget v7, v13, v4

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/systemui/recents/views/RecentMenuView;->layoutMenuItem(Landroid/view/View;IIIII)V

    .line 233
    return-void

    .line 250
    .end local v8    # "pivotX":I
    .end local v9    # "pivotY":I
    :cond_1
    const/high16 v4, 0x41200000    # 10.0f

    iget v5, v11, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    int-to-float v6, v10

    const v7, 0x3fb33333    # 1.4f

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    float-to-int v4, v4

    const/4 v5, 0x2

    aput v4, v12, v5

    const/4 v5, 0x0

    aput v4, v12, v5

    .line 251
    const/high16 v4, 0x41200000    # 10.0f

    iget v5, v11, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    int-to-float v6, v10

    const v7, 0x3ff33333    # 1.9f

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    float-to-int v4, v4

    const/4 v5, 0x1

    aput v4, v12, v5

    .line 252
    iget v4, v11, Landroid/graphics/Rect;->left:I

    add-int v8, v4, v10

    .line 253
    .restart local v8    # "pivotX":I
    invoke-virtual {v11}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    .restart local v9    # "pivotY":I
    goto/16 :goto_0

    .line 267
    :cond_2
    iget v4, v11, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    int-to-float v5, v10

    const v6, 0x3fcccccd    # 1.6f

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    float-to-int v4, v4

    const/4 v5, 0x0

    aput v4, v12, v5

    .line 268
    iget v4, v11, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    int-to-float v5, v10

    const v6, 0x3fb33333    # 1.4f

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    float-to-int v4, v4

    const/4 v5, 0x1

    aput v4, v12, v5

    .line 269
    iget v4, v11, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x2

    aput v4, v12, v5

    .line 270
    iget v4, v11, Landroid/graphics/Rect;->left:I

    mul-int/lit8 v5, v10, 0x2

    add-int v8, v4, v5

    .line 271
    iget v4, v11, Landroid/graphics/Rect;->bottom:I

    mul-int/lit8 v5, v10, 0x2

    sub-int v9, v4, v5

    goto/16 :goto_1

    .line 276
    :cond_3
    const/4 v4, 0x2

    aget v4, v13, v4

    add-int/2addr v4, v10

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/recents/views/RecentMenuView;->mVerticalMargin:I

    sub-int v5, p5, v5

    if-le v4, v5, :cond_0

    .line 277
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/recents/views/RecentMenuView;->mIsTaskViewLeft:Z

    if-eqz v4, :cond_4

    .line 278
    iget v4, v11, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v10

    const/4 v5, 0x0

    aput v4, v12, v5

    .line 279
    iget v4, v11, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    int-to-float v5, v10

    const v6, 0x3ecccccd    # 0.4f

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    const/4 v5, 0x1

    aput v4, v12, v5

    .line 280
    iget v4, v11, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    int-to-float v5, v10

    const v6, 0x3f19999a    # 0.6f

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    const/4 v5, 0x2

    aput v4, v12, v5

    .line 281
    iget v4, v11, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v5, v10, 0x2

    sub-int v8, v4, v5

    .line 282
    iget v4, v11, Landroid/graphics/Rect;->top:I

    mul-int/lit8 v5, v10, 0x2

    add-int v9, v4, v5

    .line 290
    :goto_3
    iget v4, v11, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    int-to-float v5, v10

    const v6, 0x3fcccccd    # 1.6f

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    float-to-int v4, v4

    const/4 v5, 0x0

    aput v4, v13, v5

    .line 291
    iget v4, v11, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    int-to-float v5, v10

    const v6, 0x3fb33333    # 1.4f

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    float-to-int v4, v4

    const/4 v5, 0x1

    aput v4, v13, v5

    .line 292
    iget v4, v11, Landroid/graphics/Rect;->top:I

    const/4 v5, 0x2

    aput v4, v13, v5

    goto/16 :goto_2

    .line 284
    :cond_4
    iget v4, v11, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x0

    aput v4, v12, v5

    .line 285
    iget v4, v11, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    int-to-float v5, v10

    const v6, 0x3fb33333    # 1.4f

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    float-to-int v4, v4

    const/4 v5, 0x1

    aput v4, v12, v5

    .line 286
    iget v4, v11, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    int-to-float v5, v10

    const v6, 0x3fcccccd    # 1.6f

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    float-to-int v4, v4

    const/4 v5, 0x2

    aput v4, v12, v5

    .line 287
    iget v4, v11, Landroid/graphics/Rect;->left:I

    mul-int/lit8 v5, v10, 0x2

    add-int v8, v4, v5

    .line 288
    iget v4, v11, Landroid/graphics/Rect;->top:I

    mul-int/lit8 v5, v10, 0x2

    add-int v9, v4, v5

    goto :goto_3
.end method

.method public removeMenu(Z)Z
    .locals 12
    .param p1, "withAnim"    # Z

    .prologue
    const-wide/16 v10, 0xc8

    const-wide/16 v8, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const v3, 0x3f19999a    # 0.6f

    .line 362
    iget-boolean v2, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mIsShowing:Z

    if-eqz v2, :cond_2

    .line 363
    iput-boolean v6, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mIsShowing:Z

    .line 364
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2, v6}, Lcom/android/systemui/recents/views/TaskStackView;->setIsShowingMenu(Z)V

    .line 365
    if-eqz p1, :cond_0

    .line 366
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mMenuItemLock:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 368
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mMenuItemMultiWindow:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 370
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mMenuItemInfo:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 373
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mShowOrHideAnim:Landroid/animation/ValueAnimator;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 374
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mShowOrHideAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 375
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0xf0

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 376
    sget-object v3, Lcom/android/systemui/Interpolators;->EASE_OUT:Landroid/view/animation/Interpolator;

    .line 375
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 379
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "tv$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/TaskView;

    .line 380
    .local v0, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v0, v6}, Lcom/android/systemui/recents/views/TaskView;->setImportantForAccessibility(I)V

    goto :goto_0

    .line 382
    .end local v0    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/views/TaskView;->sendAccessibilityEvent(I)V

    .line 383
    const/4 v2, 0x1

    return v2

    .line 385
    .end local v1    # "tv$iterator":Ljava/util/Iterator;
    :cond_2
    return v6

    .line 373
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public setTaskStackView(Lcom/android/systemui/recents/views/TaskStackView;)V
    .locals 0
    .param p1, "taskStackView"    # Lcom/android/systemui/recents/views/TaskStackView;

    .prologue
    .line 389
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentMenuView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    .line 388
    return-void
.end method
