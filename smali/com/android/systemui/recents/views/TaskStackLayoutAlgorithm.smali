.class public Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
.super Ljava/lang/Object;
.source "TaskStackLayoutAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;,
        Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$TaskStackLayoutAlgorithmCallbacks;,
        Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;
    }
.end annotation


# instance fields
.field private mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field mBackOfStackTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

.field private mBaseBottomMargin:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mBaseInitialBottomOffset:I

.field private mBaseInitialTopOffset:I

.field private mBaseSideMargin:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mBaseTopMargin:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mCb:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$TaskStackLayoutAlgorithmCallbacks;

.field mContext:Landroid/content/Context;

.field private mDisplay:Landroid/view/Display;

.field public mDropToDockState:Z

.field public mFirstTaskRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mFocusState:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mFocusedBottomPeekHeight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mFocusedCurve:Landroid/graphics/Path;

.field private mFocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

.field private mFocusedDimCurve:Landroid/graphics/Path;

.field private mFocusedDimCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

.field private mFocusedRange:Lcom/android/systemui/recents/views/Range;

.field private mFocusedTopPeekHeight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mFreeformLayoutAlgorithm:Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;

.field public mFreeformRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mFreeformStackGap:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mFrontMostTaskP:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mFrontOfStackTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

.field mHorizontalGap:I

.field private mInitialBottomOffset:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mInitialScrollP:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mInitialTopOffset:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mIsRtlLayout:Z

.field mMaxScrollP:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mMaxTranslationZ:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mMinMargin:I

.field mMinScrollP:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mMinTranslationZ:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mNumFreeformTasks:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mNumStackTasks:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mPaddingBottom:I

.field mPaddingLeft:I

.field mPaddingRight:I

.field mPaddingTop:I

.field public mStackActionButtonRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mStackBottomOffset:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public mStackRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mState:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

.field private mStatusbarHeight:I

.field public mSystemInsets:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mTaskIndexMap:Landroid/util/SparseIntArray;

.field private mTaskIndexOverrideMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public mTaskRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mTaskViewTop:I

.field private mUnfocusedCurve:Landroid/graphics/Path;

.field private mUnfocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

.field private mUnfocusedDimCurve:Landroid/graphics/Path;

.field private mUnfocusedDimCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

.field private mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

.field mVerticalGap:I

.field public mWindowRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$TaskStackLayoutAlgorithmCallbacks;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cb"    # Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$TaskStackLayoutAlgorithmCallbacks;

    .prologue
    const/4 v3, 0x0

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    sget-object v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;->SPLIT:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mState:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

    .line 244
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    .line 247
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFreeformRect:Landroid/graphics/Rect;

    .line 250
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    .line 253
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    .line 256
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackActionButtonRect:Landroid/graphics/Rect;

    .line 259
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mWindowRect:Landroid/graphics/Rect;

    .line 304
    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->linearCurve()Landroid/graphics/Path;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedCurve:Landroid/graphics/Path;

    .line 305
    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->linearCurve()Landroid/graphics/Path;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedCurve:Landroid/graphics/Path;

    .line 306
    new-instance v1, Lcom/android/systemui/recents/misc/FreePathInterpolator;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedCurve:Landroid/graphics/Path;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/misc/FreePathInterpolator;-><init>(Landroid/graphics/Path;)V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    .line 307
    new-instance v1, Lcom/android/systemui/recents/misc/FreePathInterpolator;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedCurve:Landroid/graphics/Path;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/misc/FreePathInterpolator;-><init>(Landroid/graphics/Path;)V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    .line 311
    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->linearCurve()Landroid/graphics/Path;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedDimCurve:Landroid/graphics/Path;

    .line 312
    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->linearCurve()Landroid/graphics/Path;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedDimCurve:Landroid/graphics/Path;

    .line 313
    new-instance v1, Lcom/android/systemui/recents/misc/FreePathInterpolator;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedDimCurve:Landroid/graphics/Path;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/misc/FreePathInterpolator;-><init>(Landroid/graphics/Path;)V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedDimCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    .line 314
    new-instance v1, Lcom/android/systemui/recents/misc/FreePathInterpolator;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedDimCurve:Landroid/graphics/Path;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/misc/FreePathInterpolator;-><init>(Landroid/graphics/Path;)V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedDimCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    .line 348
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    .line 349
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    .line 355
    new-instance v1, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v1}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBackOfStackTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 356
    new-instance v1, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v1}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFrontOfStackTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 359
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFirstTaskRect:Landroid/graphics/Rect;

    .line 364
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 365
    iput v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mPaddingLeft:I

    .line 366
    iput v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mPaddingRight:I

    .line 1329
    iput-boolean v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mDropToDockState:Z

    .line 372
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 373
    .local v0, "res":Landroid/content/res/Resources;
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    .line 374
    iput-object p2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mCb:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$TaskStackLayoutAlgorithmCallbacks;

    .line 375
    new-instance v1, Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;

    invoke-direct {v1, p1}, Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFreeformLayoutAlgorithm:Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;

    .line 376
    const v1, 0x90f01cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinMargin:I

    .line 378
    const v1, 0x90f01cd

    .line 379
    const v2, 0x90f01ce

    .line 380
    const v3, 0x90f01cf

    .line 377
    invoke-static {p1, v1, v2, v3}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getDimensionForDevice(Landroid/content/Context;III)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBaseTopMargin:I

    .line 382
    const v1, 0x90f01d1

    .line 383
    const v2, 0x90f01d2

    .line 384
    const v3, 0x90f01d4

    .line 381
    invoke-static {p1, v1, v2, v3}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getDimensionForDevice(Landroid/content/Context;III)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBaseSideMargin:I

    .line 385
    const v1, 0x90f01d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBaseBottomMargin:I

    .line 387
    const v1, 0x90f01e0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 386
    iput v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFreeformStackGap:I

    .line 388
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mDisplay:Landroid/view/Display;

    .line 390
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->reloadOnConfigurationChange(Landroid/content/Context;)V

    .line 371
    return-void
.end method

.method private computeTaskRect(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 11
    .param p1, "taskStackBounds"    # Landroid/graphics/Rect;
    .param p2, "windowRect"    # Landroid/graphics/Rect;
    .param p3, "displayRect"    # Landroid/graphics/Rect;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 508
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 509
    const v1, 0x90f0230

    .line 508
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v7

    .line 510
    .local v7, "taskRectScale":F
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    .line 511
    .local v6, "taskRectF":Landroid/graphics/RectF;
    invoke-virtual {v6, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 512
    iget v0, v6, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, v6, Landroid/graphics/RectF;->bottom:F

    .line 513
    invoke-static {v6, v7}, Lcom/android/systemui/recents/misc/Utilities;->scaleRectAboutCenter(Landroid/graphics/RectF;F)V

    .line 514
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x90f0231

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 515
    .local v8, "taskViewPadding":I
    int-to-float v0, v8

    mul-float/2addr v0, v2

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    sub-float v0, v2, v0

    invoke-static {v6, v0}, Lcom/android/systemui/recents/misc/Utilities;->scaleRectAboutCenter(Landroid/graphics/RectF;F)V

    .line 516
    iget v0, v6, Landroid/graphics/RectF;->top:F

    sget v1, Lcom/android/systemui/recents/RecentsImpl;->mTaskBarHeight:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, v6, Landroid/graphics/RectF;->top:F

    .line 517
    iget v9, v6, Landroid/graphics/RectF;->left:F

    iget v10, p1, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskViewTop:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getScaleForExtent(Landroid/graphics/Rect;Landroid/graphics/Rect;III)I

    move-result v0

    add-int/2addr v0, v10

    int-to-float v0, v0

    invoke-virtual {v6, v9, v0}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 518
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 520
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFirstTaskRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 522
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->isDockedMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 523
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mPaddingRight:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mHorizontalGap:I

    .line 527
    :goto_0
    sget v0, Lcom/android/systemui/recents/RecentsImpl;->mTaskBarHeight:I

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mVerticalGap:I

    .line 528
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->isLandscapeMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->isDockedMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 531
    :cond_0
    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mVerticalGap:I

    int-to-double v0, v0

    const-wide v2, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mVerticalGap:I

    .line 507
    :goto_1
    return-void

    .line 525
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mPaddingLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mPaddingRight:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mHorizontalGap:I

    goto :goto_0

    .line 529
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFirstTaskRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFirstTaskRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sget v2, Lcom/android/systemui/recents/RecentsImpl;->mTaskBarHeight:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sget v4, Lcom/android/systemui/recents/RecentsImpl;->mTaskBarHeight:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const v4, 0x3f3ae148    # 0.73f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1
.end method

.method private computeTaskViewPadding(I)V
    .locals 5
    .param p1, "taskViewCount"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x0

    .line 536
    if-gtz p1, :cond_0

    return-void

    .line 539
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->isDockedMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 540
    const v1, 0x3e4ccccd    # 0.2f

    .line 541
    .local v1, "topRatio":F
    const v0, 0x3e19999a    # 0.15f

    .line 549
    .local v0, "bottomRatio":F
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    iput v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mPaddingTop:I

    .line 550
    if-gt p1, v4, :cond_4

    :goto_1
    iput v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mPaddingBottom:I

    .line 535
    return-void

    .line 542
    .end local v0    # "bottomRatio":F
    .end local v1    # "topRatio":F
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->isLandscapeMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 543
    const v1, 0x3ea3d70a    # 0.32f

    .line 544
    .restart local v1    # "topRatio":F
    const/high16 v0, 0x3f000000    # 0.5f

    .restart local v0    # "bottomRatio":F
    goto :goto_0

    .line 546
    .end local v0    # "bottomRatio":F
    .end local v1    # "topRatio":F
    :cond_2
    if-gt p1, v4, :cond_3

    const v1, 0x3f1eb852    # 0.62f

    .line 547
    .restart local v1    # "topRatio":F
    :goto_2
    const v0, 0x3ecccccd    # 0.4f

    .restart local v0    # "bottomRatio":F
    goto :goto_0

    .line 546
    .end local v0    # "bottomRatio":F
    .end local v1    # "topRatio":F
    :cond_3
    const v1, 0x3f0ccccd    # 0.55f

    .restart local v1    # "topRatio":F
    goto :goto_2

    .line 550
    .restart local v0    # "bottomRatio":F
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    goto :goto_1
.end method

.method public static getDimensionForDevice(Landroid/content/Context;III)I
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "phoneResId"    # I
    .param p2, "tabletResId"    # I
    .param p3, "xlargeTabletResId"    # I

    .prologue
    move-object v0, p0

    move v1, p1

    move v2, p1

    move v3, p2

    move v4, p2

    move v5, p3

    move v6, p3

    .line 1114
    invoke-static/range {v0 .. v6}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getDimensionForDevice(Landroid/content/Context;IIIIII)I

    move-result v0

    return v0
.end method

.method public static getDimensionForDevice(Landroid/content/Context;IIIIII)I
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "phonePortResId"    # I
    .param p2, "phoneLandResId"    # I
    .param p3, "tabletPortResId"    # I
    .param p4, "tabletLandResId"    # I
    .param p5, "xlargeTabletPortResId"    # I
    .param p6, "xlargeTabletLandResId"    # I

    .prologue
    .line 1124
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    .line 1125
    .local v0, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1126
    .local v2, "res":Landroid/content/res/Resources;
    invoke-static {p0}, Lcom/android/systemui/recents/misc/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    .line 1127
    const/4 v4, 0x2

    .line 1126
    if-ne v3, v4, :cond_0

    const/4 v1, 0x1

    .line 1128
    .local v1, "isLandscape":Z
    :goto_0
    iget-boolean v3, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isXLargeScreen:Z

    if-eqz v3, :cond_2

    .line 1129
    if-eqz v1, :cond_1

    .end local p6    # "xlargeTabletLandResId":I
    :goto_1
    invoke-virtual {v2, p6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    return v3

    .line 1126
    .end local v1    # "isLandscape":Z
    .restart local p6    # "xlargeTabletLandResId":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "isLandscape":Z
    goto :goto_0

    :cond_1
    move p6, p5

    .line 1131
    goto :goto_1

    .line 1132
    :cond_2
    iget-boolean v3, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isLargeScreen:Z

    if-eqz v3, :cond_4

    .line 1133
    if-eqz v1, :cond_3

    .end local p4    # "tabletLandResId":I
    :goto_2
    invoke-virtual {v2, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    return v3

    .restart local p4    # "tabletLandResId":I
    :cond_3
    move p4, p3

    .line 1135
    goto :goto_2

    .line 1137
    :cond_4
    if-eqz v1, :cond_5

    .end local p2    # "phoneLandResId":I
    :goto_3
    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    return v3

    .restart local p2    # "phoneLandResId":I
    :cond_5
    move p2, p1

    .line 1139
    goto :goto_3
.end method

.method private getNormalizedXFromFocusedY(FI)F
    .locals 3
    .param p1, "y"    # F
    .param p2, "fromSide"    # I

    .prologue
    .line 1160
    if-nez p2, :cond_0

    .line 1161
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    sub-float v0, v2, p1

    .line 1163
    .local v0, "offset":F
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v0, v2

    .line 1164
    .local v1, "offsetPct":F
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    invoke-virtual {v2, v1}, Lcom/android/systemui/recents/misc/FreePathInterpolator;->getX(F)F

    move-result v2

    return v2

    .line 1162
    .end local v0    # "offset":F
    .end local v1    # "offsetPct":F
    :cond_0
    move v0, p1

    .restart local v0    # "offset":F
    goto :goto_0
.end method

.method private getNormalizedXFromUnfocusedY(FI)F
    .locals 3
    .param p1, "y"    # F
    .param p2, "fromSide"    # I

    .prologue
    .line 1148
    if-nez p2, :cond_0

    .line 1149
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    sub-float v0, v2, p1

    .line 1151
    .local v0, "offset":F
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v0, v2

    .line 1152
    .local v1, "offsetPct":F
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    invoke-virtual {v2, v1}, Lcom/android/systemui/recents/misc/FreePathInterpolator;->getX(F)F

    move-result v2

    return v2

    .line 1150
    .end local v0    # "offset":F
    .end local v1    # "offsetPct":F
    :cond_0
    move v0, p1

    .restart local v0    # "offset":F
    goto :goto_0
.end method

.method private getScaleForExtent(Landroid/graphics/Rect;Landroid/graphics/Rect;III)I
    .locals 3
    .param p1, "instance"    # Landroid/graphics/Rect;
    .param p2, "other"    # Landroid/graphics/Rect;
    .param p3, "value"    # I
    .param p4, "minValue"    # I
    .param p5, "extent"    # I

    .prologue
    .line 1253
    if-nez p5, :cond_0

    .line 1254
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Lcom/android/systemui/recents/misc/Utilities;->clamp01(F)F

    move-result v0

    .line 1255
    .local v0, "scale":F
    int-to-float v1, p3

    mul-float/2addr v1, v0

    float-to-int v1, v1

    invoke-static {p4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1

    .line 1256
    .end local v0    # "scale":F
    :cond_0
    const/4 v1, 0x1

    if-ne p5, v1, :cond_1

    .line 1257
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Lcom/android/systemui/recents/misc/Utilities;->clamp01(F)F

    move-result v0

    .line 1258
    .restart local v0    # "scale":F
    int-to-float v1, p3

    mul-float/2addr v1, v0

    float-to-int v1, v1

    invoke-static {p4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1

    .line 1260
    .end local v0    # "scale":F
    :cond_1
    return p3
.end method

.method private isInvalidOverrideX(FFF)Z
    .locals 5
    .param p1, "x"    # F
    .param p2, "overrideX"    # F
    .param p3, "newOverrideX"    # F

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 750
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v3, p3}, Lcom/android/systemui/recents/views/Range;->getNormalizedX(F)F

    move-result v3

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_1

    .line 751
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v3, p3}, Lcom/android/systemui/recents/views/Range;->getNormalizedX(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    move v0, v1

    .line 752
    .local v0, "outOfBounds":Z
    :goto_0
    if-nez v0, :cond_0

    cmpl-float v3, p2, p1

    if-ltz v3, :cond_3

    cmpl-float v3, p1, p3

    if-ltz v3, :cond_3

    :cond_0
    :goto_1
    return v1

    .end local v0    # "outOfBounds":Z
    :cond_1
    move v0, v1

    .line 750
    goto :goto_0

    :cond_2
    move v0, v2

    .line 751
    goto :goto_0

    .line 753
    .restart local v0    # "outOfBounds":Z
    :cond_3
    cmpg-float v3, p2, p1

    if-gtz v3, :cond_4

    cmpg-float v3, p1, p3

    if-lez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method private linearCurve()Landroid/graphics/Path;
    .locals 3

    .prologue
    .line 1212
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 1213
    .local v0, "p":Landroid/graphics/Path;
    const/4 v1, 0x0

    const/high16 v2, -0x40400000    # -1.5f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1214
    const/high16 v1, 0x40600000    # 3.5f

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1215
    return-object v0
.end method

.method private updateFrontBackTransforms()V
    .locals 12

    .prologue
    .line 1268
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1269
    return-void

    .line 1272
    :cond_0
    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    iget v2, v2, Lcom/android/systemui/recents/views/Range;->relativeMin:F

    .line 1273
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    iget v3, v3, Lcom/android/systemui/recents/views/Range;->relativeMin:F

    .line 1272
    invoke-static {v0, v2, v3}, Lcom/android/systemui/recents/misc/Utilities;->mapRange(FFF)F

    move-result v1

    .line 1274
    .local v1, "min":F
    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    iget v2, v2, Lcom/android/systemui/recents/views/Range;->relativeMax:F

    .line 1275
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    iget v3, v3, Lcom/android/systemui/recents/views/Range;->relativeMax:F

    .line 1274
    invoke-static {v0, v2, v3}, Lcom/android/systemui/recents/misc/Utilities;->mapRange(FFF)F

    move-result v11

    .line 1276
    .local v11, "max":F
    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFrontOfStackTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 1277
    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v0, p0

    move v2, v1

    .line 1276
    invoke-virtual/range {v0 .. v8}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(FFFILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;ZZ)V

    .line 1278
    iget v6, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBackOfStackTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v8, 0x0

    .line 1279
    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v2, p0

    move v3, v11

    move v4, v11

    .line 1278
    invoke-virtual/range {v2 .. v10}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(FFFILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;ZZ)V

    .line 1280
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBackOfStackTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    .line 1281
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFrontOfStackTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    .line 1266
    return-void
.end method


# virtual methods
.method public addUnfocusedTaskOverride(Lcom/android/systemui/recents/model/Task;F)V
    .locals 7
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "stackScroll"    # F

    .prologue
    .line 672
    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    if-eqz v4, :cond_0

    .line 673
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v4, p2}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    .line 674
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v4, p2}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    .line 675
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    iget-object v6, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v6, v6, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v5, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/views/Range;->getNormalizedX(F)F

    move-result v0

    .line 676
    .local v0, "focusedRangeX":F
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    invoke-virtual {v4, v0}, Lcom/android/systemui/recents/misc/FreePathInterpolator;->getInterpolation(F)F

    move-result v1

    .line 677
    .local v1, "focusedY":F
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    invoke-virtual {v4, v1}, Lcom/android/systemui/recents/misc/FreePathInterpolator;->getX(F)F

    move-result v2

    .line 678
    .local v2, "unfocusedRangeX":F
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v4, v2}, Lcom/android/systemui/recents/views/Range;->getAbsoluteX(F)F

    move-result v4

    add-float v3, p2, v4

    .line 679
    .local v3, "unfocusedTaskProgress":F
    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-eqz v4, :cond_0

    .line 680
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    iget-object v5, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v5, v5, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 671
    .end local v0    # "focusedRangeX":F
    .end local v1    # "focusedY":F
    .end local v2    # "unfocusedRangeX":F
    .end local v3    # "unfocusedTaskProgress":F
    :cond_0
    return-void
.end method

.method public addUnfocusedTaskOverride(Lcom/android/systemui/recents/views/TaskView;F)V
    .locals 8
    .param p1, "taskView"    # Lcom/android/systemui/recents/views/TaskView;
    .param p2, "stackScroll"    # F

    .prologue
    const/4 v7, 0x0

    .line 690
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v5, p2}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    .line 691
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v5, p2}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    .line 693
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v1

    .line 694
    .local v1, "task":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getLeft()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int v2, v5, v6

    .line 695
    .local v2, "top":I
    int-to-float v5, v2

    invoke-direct {p0, v5, v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getNormalizedXFromFocusedY(FI)F

    move-result v0

    .line 696
    .local v0, "focusedRangeX":F
    int-to-float v5, v2

    invoke-direct {p0, v5, v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getNormalizedXFromUnfocusedY(FI)F

    move-result v3

    .line 697
    .local v3, "unfocusedRangeX":F
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v5, v3}, Lcom/android/systemui/recents/views/Range;->getAbsoluteX(F)F

    move-result v5

    add-float v4, p2, v5

    .line 698
    .local v4, "unfocusedTaskProgress":F
    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-eqz v5, :cond_0

    .line 699
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    iget-object v6, v1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v6, v6, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 689
    :cond_0
    return-void
.end method

.method calculateTaskViewXandY(ILandroid/graphics/Rect;)[I
    .locals 10
    .param p1, "index"    # I
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 971
    const/4 v6, 0x2

    new-array v3, v6, [I

    .line 972
    .local v3, "result":[I
    iget v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mPaddingTop:I

    .line 973
    .local v1, "leftHeight":I
    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mPaddingTop:I

    .line 977
    .local v4, "rightHeight":I
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->isDockedMode()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 978
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mHorizontalGap:I

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int v2, v6, v7

    .line 979
    .local v2, "leftOffsetX":I
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget v7, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mHorizontalGap:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mPaddingRight:I

    sub-int v5, v6, v7

    .line 985
    .local v5, "rightOffsetX":I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_4

    .line 986
    if-nez v0, :cond_2

    .line 987
    iget-boolean v6, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mIsRtlLayout:Z

    if-nez v6, :cond_1

    .line 988
    iget v6, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mVerticalGap:I

    add-int/2addr v6, v1

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFirstTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    add-int v1, v6, v7

    .line 985
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 981
    .end local v0    # "i":I
    .end local v2    # "leftOffsetX":I
    .end local v5    # "rightOffsetX":I
    :cond_0
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mHorizontalGap:I

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mPaddingLeft:I

    add-int v2, v6, v7

    .line 982
    .restart local v2    # "leftOffsetX":I
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget v7, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mHorizontalGap:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mPaddingRight:I

    sub-int v5, v6, v7

    .restart local v5    # "rightOffsetX":I
    goto :goto_0

    .line 990
    .restart local v0    # "i":I
    :cond_1
    iget v6, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mVerticalGap:I

    add-int/2addr v6, v4

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFirstTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    add-int v4, v6, v7

    goto :goto_2

    .line 995
    :cond_2
    if-le v1, v4, :cond_3

    .line 996
    iget v6, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mVerticalGap:I

    add-int/2addr v6, v4

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v7

    add-int v4, v6, v7

    goto :goto_2

    .line 998
    :cond_3
    iget v6, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mVerticalGap:I

    add-int/2addr v6, v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v7

    add-int v1, v6, v7

    goto :goto_2

    .line 1001
    :cond_4
    if-gt v1, v4, :cond_5

    iget-boolean v6, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mIsRtlLayout:Z

    if-eqz v6, :cond_6

    if-nez p1, :cond_6

    .line 1002
    :cond_5
    aput v5, v3, v8

    .line 1003
    iget v6, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mVerticalGap:I

    add-int/2addr v6, v4

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mWindowRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v7

    iget v7, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    aput v6, v3, v9

    .line 1008
    :goto_3
    return-object v3

    .line 1005
    :cond_6
    aput v2, v3, v8

    .line 1006
    iget v6, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mVerticalGap:I

    add-int/2addr v6, v1

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mWindowRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v7

    iget v7, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    aput v6, v3, v9

    goto :goto_3
.end method

.method public clearUnfocusedTaskOverrides()V
    .locals 1

    .prologue
    .line 704
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 703
    return-void
.end method

.method public computeStackVisibilityReport(Ljava/util/ArrayList;)Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;)",
            "Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;"
        }
    .end annotation

    .prologue
    .line 803
    .local p1, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x1

    if-gt v3, v5, :cond_0

    .line 804
    new-instance v3, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v5, v6}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;-><init>(Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;II)V

    return-object v3

    .line 808
    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    if-nez v3, :cond_1

    .line 809
    new-instance v3, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumFreeformTasks:I

    const/4 v6, 0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 810
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumFreeformTasks:I

    const/4 v7, 0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 809
    move-object/from16 v0, p0

    invoke-direct {v3, v0, v5, v6}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;-><init>(Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;II)V

    return-object v3

    .line 815
    :cond_1
    new-instance v8, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v8}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    .line 816
    .local v8, "tmpTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getInitialFocusState()I

    move-result v3

    int-to-float v3, v3

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-lez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    .line 817
    .local v12, "currentRange":Lcom/android/systemui/recents/views/Range;
    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    invoke-virtual {v12, v3}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    .line 820
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumFreeformTasks:I

    const/4 v5, 0x1

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 821
    .local v17, "numVisibleTasks":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumFreeformTasks:I

    const/4 v5, 0x1

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 822
    .local v18, "numVisibleThumbnails":I
    const/high16 v19, 0x4f000000

    .line 823
    .local v19, "prevScreenX":F
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-gt v14, v3, :cond_a

    .line 824
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/systemui/recents/model/Task;

    .line 827
    .local v21, "task":Lcom/android/systemui/recents/model/Task;
    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 823
    :cond_2
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 816
    .end local v12    # "currentRange":Lcom/android/systemui/recents/views/Range;
    .end local v14    # "i":I
    .end local v17    # "numVisibleTasks":I
    .end local v18    # "numVisibleThumbnails":I
    .end local v19    # "prevScreenX":F
    .end local v21    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    .restart local v12    # "currentRange":Lcom/android/systemui/recents/views/Range;
    goto :goto_0

    .line 832
    .restart local v14    # "i":I
    .restart local v17    # "numVisibleTasks":I
    .restart local v18    # "numVisibleThumbnails":I
    .restart local v19    # "prevScreenX":F
    .restart local v21    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackScrollForTask(Lcom/android/systemui/recents/model/Task;)F

    move-result v4

    .line 833
    .local v4, "taskProgress":F
    invoke-virtual {v12, v4}, Lcom/android/systemui/recents/views/Range;->isInRange(F)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 837
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    if-eqz v3, :cond_5

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/android/systemui/recents/model/TaskGrouping;->isFrontMostTask(Lcom/android/systemui/recents/model/Task;)Z

    move-result v15

    .line 838
    .local v15, "isFrontMostTaskInGroup":Z
    :goto_3
    if-eqz v15, :cond_9

    .line 839
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    .line 840
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 841
    const/4 v11, 0x0

    move-object/from16 v3, p0

    move v5, v4

    .line 839
    invoke-virtual/range {v3 .. v11}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(FFFILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;ZZ)V

    .line 842
    iget-object v3, v8, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget v0, v3, Landroid/graphics/RectF;->left:F

    move/from16 v20, v0

    .line 843
    .local v20, "screenX":F
    sub-float v3, v20, v19

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v3, v3, v5

    if-lez v3, :cond_6

    const/4 v13, 0x1

    .line 844
    .local v13, "hasVisibleThumbnail":Z
    :goto_4
    if-eqz v13, :cond_7

    .line 845
    add-int/lit8 v18, v18, 0x1

    .line 846
    add-int/lit8 v17, v17, 0x1

    .line 847
    move/from16 v19, v20

    goto :goto_2

    .line 837
    .end local v13    # "hasVisibleThumbnail":Z
    .end local v15    # "isFrontMostTaskInGroup":Z
    .end local v20    # "screenX":F
    :cond_5
    const/4 v15, 0x1

    goto :goto_3

    .line 843
    .restart local v15    # "isFrontMostTaskInGroup":Z
    .restart local v20    # "screenX":F
    :cond_6
    const/4 v13, 0x0

    goto :goto_4

    .line 851
    .restart local v13    # "hasVisibleThumbnail":Z
    :cond_7
    move/from16 v16, v14

    .local v16, "j":I
    :goto_5
    if-ltz v16, :cond_a

    .line 852
    add-int/lit8 v17, v17, 0x1

    .line 853
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/model/Task;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackScrollForTask(Lcom/android/systemui/recents/model/Task;)F

    move-result v4

    .line 854
    invoke-virtual {v12, v4}, Lcom/android/systemui/recents/views/Range;->isInRange(F)Z

    move-result v3

    if-nez v3, :cond_8

    .line 851
    :cond_8
    add-int/lit8 v16, v16, -0x1

    goto :goto_5

    .line 860
    .end local v13    # "hasVisibleThumbnail":Z
    .end local v16    # "j":I
    .end local v20    # "screenX":F
    :cond_9
    if-nez v15, :cond_2

    .line 862
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 865
    .end local v4    # "taskProgress":F
    .end local v15    # "isFrontMostTaskInGroup":Z
    .end local v21    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_a
    new-instance v3, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v3, v0, v1, v2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;-><init>(Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;II)V

    return-object v3
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 7
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .prologue
    .line 1285
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1287
    .local v1, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "TaskStackLayoutAlgorithm"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1288
    const-string/jumbo v5, " numStackTasks="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->write(I)V

    .line 1289
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1291
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1292
    const-string/jumbo v5, "insets="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    invoke-static {v5}, Lcom/android/systemui/recents/misc/Utilities;->dumpRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1293
    const-string/jumbo v5, " stack="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-static {v5}, Lcom/android/systemui/recents/misc/Utilities;->dumpRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1294
    const-string/jumbo v5, " task="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-static {v5}, Lcom/android/systemui/recents/misc/Utilities;->dumpRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1295
    const-string/jumbo v5, " freeform="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFreeformRect:Landroid/graphics/Rect;

    invoke-static {v5}, Lcom/android/systemui/recents/misc/Utilities;->dumpRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1296
    const-string/jumbo v5, " actionButton="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackActionButtonRect:Landroid/graphics/Rect;

    invoke-static {v5}, Lcom/android/systemui/recents/misc/Utilities;->dumpRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1297
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1299
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1300
    const-string/jumbo v5, "minScroll="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(F)V

    .line 1301
    const-string/jumbo v5, " maxScroll="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(F)V

    .line 1302
    const-string/jumbo v5, " initialScroll="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(F)V

    .line 1303
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1305
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1306
    const-string/jumbo v5, "focusState="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 1307
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1309
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 1310
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1311
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1312
    .local v3, "taskId":I
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    int-to-float v4, v5

    .line 1313
    .local v4, "x":F
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 1315
    .local v2, "overrideX":F
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1316
    const-string/jumbo v5, "taskId= "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1317
    const-string/jumbo v5, " x= "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(F)V

    .line 1318
    const-string/jumbo v5, " overrideX= "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(F)V

    .line 1319
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1310
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1284
    .end local v0    # "i":I
    .end local v2    # "overrideX":F
    .end local v3    # "taskId":I
    .end local v4    # "x":F
    :cond_0
    return-void
.end method

.method public getDeltaPForX(II)F
    .locals 3
    .param p1, "downY"    # I
    .param p2, "y"    # I

    .prologue
    .line 1065
    sub-int v1, p2, p1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 1066
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/FreePathInterpolator;->getArcLength()F

    move-result v2

    .line 1065
    mul-float v0, v1, v2

    .line 1067
    .local v0, "deltaP":F
    neg-float v1, v0

    return v1
.end method

.method public getFocusState()I
    .locals 1

    .prologue
    .line 469
    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    return v0
.end method

.method public getFrontOfStackTransform()Lcom/android/systemui/recents/views/TaskViewTransform;
    .locals 1

    .prologue
    .line 780
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFrontOfStackTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    return-object v0
.end method

.method public getInitialFocusState()I
    .locals 3

    .prologue
    .line 760
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v1

    .line 761
    .local v1, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getDebugFlags()Lcom/android/systemui/recents/RecentsDebugFlags;

    move-result-object v0

    .line 762
    .local v0, "debugFlags":Lcom/android/systemui/recents/RecentsDebugFlags;
    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsDebugFlags;->isPagingEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithAltTab:Z

    if-eqz v2, :cond_1

    .line 763
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 765
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method getStackScrollForTask(Lcom/android/systemui/recents/model/Task;)F
    .locals 4
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 1023
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    iget-object v2, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 1025
    .local v0, "overrideP":Ljava/lang/Float;
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    iget-object v2, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    int-to-float v1, v1

    return v1
.end method

.method public getStackState()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;
    .locals 1

    .prologue
    .line 787
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mState:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

    return-object v0
.end method

.method public getStackTransform(Lcom/android/systemui/recents/model/Task;FILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;ZZ)Lcom/android/systemui/recents/views/TaskViewTransform;
    .locals 10
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "stackScroll"    # F
    .param p3, "focusState"    # I
    .param p4, "transformOut"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p5, "frontTransform"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p6, "forceUpdate"    # Z
    .param p7, "ignoreTaskOverrides"    # Z

    .prologue
    .line 888
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFreeformLayoutAlgorithm:Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;

    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;->isTransformAvailable(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 889
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFreeformLayoutAlgorithm:Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;

    invoke-virtual {v0, p1, p4, p0}, Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;->getTransform(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;)Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 890
    return-object p4

    .line 893
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    iget-object v2, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v9

    .line 894
    .local v9, "nonOverrideTaskProgress":I
    if-eqz p1, :cond_1

    const/4 v0, -0x1

    if-ne v9, v0, :cond_2

    .line 895
    :cond_1
    invoke-virtual {p4}, Lcom/android/systemui/recents/views/TaskViewTransform;->reset()V

    .line 896
    return-object p4

    .line 898
    :cond_2
    if-eqz p7, :cond_3

    .line 899
    int-to-float v1, v9

    .line 901
    .local v1, "taskProgress":F
    :goto_0
    int-to-float v2, v9

    .line 902
    const/4 v7, 0x0

    move-object v0, p0

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v8, p6

    .line 901
    invoke-virtual/range {v0 .. v8}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(FFFILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;ZZ)V

    .line 903
    return-object p4

    .line 900
    .end local v1    # "taskProgress":F
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackScrollForTask(Lcom/android/systemui/recents/model/Task;)F

    move-result v1

    goto :goto_0
.end method

.method public getStackTransform(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;
    .locals 8
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "stackScroll"    # F
    .param p3, "transformOut"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p4, "frontTransform"    # Lcom/android/systemui/recents/views/TaskViewTransform;

    .prologue
    const/4 v6, 0x0

    .line 874
    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;ZZ)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v0

    return-object v0
.end method

.method public getStackTransform(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;Z)Lcom/android/systemui/recents/views/TaskViewTransform;
    .locals 8
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "stackScroll"    # F
    .param p3, "transformOut"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p4, "frontTransform"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p5, "ignoreTaskOverrides"    # Z

    .prologue
    .line 881
    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    .line 882
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move v7, p5

    .line 881
    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;ZZ)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v0

    return-object v0
.end method

.method public getStackTransform(FFFILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;ZZ)V
    .locals 6
    .param p1, "taskProgress"    # F
    .param p2, "nonOverrideTaskProgress"    # F
    .param p3, "stackScroll"    # F
    .param p4, "focusState"    # I
    .param p5, "transformOut"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p6, "frontTransform"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p7, "ignoreSingleTaskCase"    # Z
    .param p8, "forceUpdate"    # Z

    .prologue
    .line 944
    float-to-int v3, p1

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->calculateTaskViewXandY(ILandroid/graphics/Rect;)[I

    move-result-object v0

    .line 945
    .local v0, "positon":[I
    const/4 v3, 0x0

    aget v1, v0, v3

    .line 946
    .local v1, "x":I
    const/4 v3, 0x1

    aget v2, v0, v3

    .line 948
    .local v2, "y":I
    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 949
    const/4 v1, 0x0

    .line 952
    :cond_0
    int-to-float v3, v2

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p3

    sub-float/2addr v3, v4

    float-to-int v2, v3

    .line 955
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p5, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    .line 956
    const/4 v3, 0x0

    cmpl-float v3, p3, v3

    if-ltz v3, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    :goto_0
    iput v3, p5, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    .line 958
    const/4 v3, 0x0

    iput v3, p5, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    .line 959
    const/4 v3, 0x0

    iput v3, p5, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    .line 960
    const/4 v3, 0x0

    iput v3, p5, Lcom/android/systemui/recents/views/TaskViewTransform;->viewOutlineAlpha:F

    .line 961
    iget-object v4, p5, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    const/4 v3, 0x0

    cmpl-float v3, p1, v3

    if-nez v3, :cond_2

    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    const/4 v5, 0x1

    if-le v3, v5, :cond_2

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFirstTaskRect:Landroid/graphics/Rect;

    :goto_1
    invoke-virtual {v4, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 962
    iget-object v3, p5, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    int-to-float v4, v1

    int-to-float v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 964
    iget-object v3, p5, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget v4, p5, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    invoke-static {v3, v4}, Lcom/android/systemui/recents/misc/Utilities;->scaleRectAboutCenter(Landroid/graphics/RectF;F)V

    .line 966
    iget-object v3, p5, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mWindowRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    .line 967
    iget-object v3, p5, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mWindowRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    const/4 v3, 0x1

    .line 966
    :goto_2
    iput-boolean v3, p5, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    .line 943
    return-void

    .line 957
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v3

    const/high16 v4, 0x40400000    # 3.0f

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v3, v4, v3

    goto :goto_0

    .line 961
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    goto :goto_1

    .line 967
    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 966
    :cond_4
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public getStackTransformScreenCoordinates(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;
    .locals 9
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "stackScroll"    # F
    .param p3, "transformOut"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p4, "frontTransform"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p5, "windowOverrideRect"    # Landroid/graphics/Rect;

    .prologue
    .line 913
    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    .line 914
    const/4 v6, 0x1

    .line 915
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 913
    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;ZZ)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v8

    .line 916
    .local v8, "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    invoke-virtual {p0, v8, p5}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->transformToScreenCoordinates(Lcom/android/systemui/recents/views/TaskViewTransform;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v0

    return-object v0
.end method

.method public getTaskStackBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;IIILandroid/graphics/Rect;)V
    .locals 8
    .param p1, "displayRect"    # Landroid/graphics/Rect;
    .param p2, "windowRect"    # Landroid/graphics/Rect;
    .param p3, "topInset"    # I
    .param p4, "leftInset"    # I
    .param p5, "rightInset"    # I
    .param p6, "taskStackBounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v5, 0x0

    .line 1087
    iget v0, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p4

    iget v1, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p3

    .line 1088
    iget v2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, p5

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    .line 1087
    invoke-virtual {p6, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1091
    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBaseSideMargin:I

    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinMargin:I

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getScaleForExtent(Landroid/graphics/Rect;Landroid/graphics/Rect;III)I

    move-result v6

    .line 1093
    .local v6, "sideMargin":I
    invoke-virtual {p6}, Landroid/graphics/Rect;->width()I

    move-result v0

    mul-int/lit8 v1, v6, 0x2

    sub-int v7, v0, v1

    .line 1106
    .local v7, "targetStackWidth":I
    invoke-virtual {p6}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr v0, v7

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p6, v0, v5}, Landroid/graphics/Rect;->inset(II)V

    .line 1086
    return-void
.end method

.method getTrueStackScrollForTask(Lcom/android/systemui/recents/model/Task;)F
    .locals 6
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1031
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    iget-object v3, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 1032
    .local v0, "index":I
    if-eqz v0, :cond_0

    if-ne v0, v5, :cond_1

    .line 1033
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 1035
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->calculateTaskViewXandY(ILandroid/graphics/Rect;)[I

    move-result-object v1

    .line 1036
    .local v1, "position":[I
    aget v2, v1, v5

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    return v2
.end method

.method public getUntransformedTaskViewBounds()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 1015
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public getXForDeltaP(FF)I
    .locals 4
    .param p1, "downScrollP"    # F
    .param p2, "p"    # F

    .prologue
    .line 1075
    sub-float v1, p2, p1

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    .line 1076
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/FreePathInterpolator;->getArcLength()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    div-float v2, v3, v2

    .line 1075
    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 1077
    .local v0, "y":I
    neg-int v1, v0

    return v1
.end method

.method public initialize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;)V
    .locals 10
    .param p1, "displayRect"    # Landroid/graphics/Rect;
    .param p2, "windowRect"    # Landroid/graphics/Rect;
    .param p3, "taskStackBounds"    # Landroid/graphics/Rect;
    .param p4, "state"    # Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 478
    iput-object p2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mWindowRect:Landroid/graphics/Rect;

    .line 480
    new-instance v8, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-direct {v8, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 482
    .local v8, "lastStackRect":Landroid/graphics/Rect;
    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBaseTopMargin:I

    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinMargin:I

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getScaleForExtent(Landroid/graphics/Rect;Landroid/graphics/Rect;III)I

    move-result v9

    .line 483
    .local v9, "topMargin":I
    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBaseBottomMargin:I

    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinMargin:I

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getScaleForExtent(Landroid/graphics/Rect;Landroid/graphics/Rect;III)I

    move-result v7

    .line 485
    .local v7, "bottomMargin":I
    iput v6, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialTopOffset:I

    .line 487
    iput v6, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialBottomOffset:I

    .line 490
    iput-object p4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mState:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

    .line 491
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v7

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackBottomOffset:I

    .line 492
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFreeformRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    .line 493
    iget v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFreeformStackGap:I

    iget v6, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackBottomOffset:I

    move-object v0, p4

    move-object v3, p3

    move v4, v9

    .line 492
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;->computeRects(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;III)V

    .line 496
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackActionButtonRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v9

    .line 497
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedTopPeekHeight:I

    add-int/2addr v4, v5

    .line 496
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 499
    invoke-direct {p0, p3, p2, p1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->computeTaskRect(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 502
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 503
    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->updateFrontBackTransforms()V

    .line 477
    :cond_0
    return-void
.end method

.method public isDockedMode()Z
    .locals 1

    .prologue
    .line 1331
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasDockedTask()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mDropToDockState:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 794
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isLandscapeMode(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 1325
    invoke-static {p1}, Lcom/android/systemui/recents/misc/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1326
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->isDockedMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1325
    :cond_0
    :goto_0
    return v0

    .line 1326
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public reloadOnConfigurationChange(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v11, 0x90f0235

    const v10, 0x90f0234

    const/4 v8, 0x1

    const v9, 0x90f01dd

    const v3, 0x90f01dc

    .line 397
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 398
    .local v7, "res":Landroid/content/res/Resources;
    new-instance v0, Lcom/android/systemui/recents/views/Range;

    const v1, 0x90e002a

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    .line 399
    const v2, 0x90e002b

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    .line 398
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/views/Range;-><init>(FF)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    .line 400
    new-instance v0, Lcom/android/systemui/recents/views/Range;

    const v1, 0x90e002c

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    .line 401
    const v2, 0x90e002d

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    .line 400
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/views/Range;-><init>(FF)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    .line 402
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getInitialFocusState()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    .line 403
    const v0, 0x90f01d6

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedTopPeekHeight:I

    .line 405
    const v0, 0x90f01d7

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 404
    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedBottomPeekHeight:I

    .line 406
    const v0, 0x90f01de

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinTranslationZ:I

    .line 407
    const v0, 0x90f01df

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxTranslationZ:I

    .line 409
    const v1, 0x90f01d8

    .line 410
    const v2, 0x90f01da

    move-object v0, p1

    move v4, v3

    move v5, v3

    move v6, v3

    .line 408
    invoke-static/range {v0 .. v6}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getDimensionForDevice(Landroid/content/Context;IIIIII)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBaseInitialTopOffset:I

    .line 416
    const v1, 0x90f01d9

    .line 417
    const v2, 0x90f01db

    move-object v0, p1

    move v3, v9

    move v4, v9

    move v5, v9

    move v6, v9

    .line 415
    invoke-static/range {v0 .. v6}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getDimensionForDevice(Landroid/content/Context;IIIIII)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBaseInitialBottomOffset:I

    .line 423
    const v1, 0x90f0232

    .line 424
    const v2, 0x90f0233

    move-object v0, p1

    move v3, v10

    move v4, v11

    move v5, v10

    move v6, v11

    .line 422
    invoke-static/range {v0 .. v6}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getDimensionForDevice(Landroid/content/Context;IIIIII)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskViewTop:I

    .line 429
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFreeformLayoutAlgorithm:Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;->reloadOnConfigurationChange(Landroid/content/Context;)V

    .line 430
    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    if-ne v0, v8, :cond_0

    move v0, v8

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mIsRtlLayout:Z

    .line 431
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x90f02ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStatusbarHeight:I

    .line 396
    return-void

    .line 430
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 439
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getInitialFocusState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->setFocusState(I)V

    .line 437
    return-void
.end method

.method public setFocusState(I)V
    .locals 2
    .param p1, "focusState"    # I

    .prologue
    .line 457
    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    .line 459
    .local v0, "prevFocusState":I
    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->updateFrontBackTransforms()V

    .line 460
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mCb:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$TaskStackLayoutAlgorithmCallbacks;

    if-eqz v1, :cond_0

    .line 461
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mCb:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$TaskStackLayoutAlgorithmCallbacks;

    invoke-interface {v1, v0, p1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$TaskStackLayoutAlgorithmCallbacks;->onFocusStateChanged(II)V

    .line 456
    :cond_0
    return-void
.end method

.method public setSystemInsets(Landroid/graphics/Rect;)Z
    .locals 2
    .param p1, "systemInsets"    # Landroid/graphics/Rect;

    .prologue
    .line 446
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 447
    .local v0, "changed":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 448
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 450
    :cond_0
    return v0

    .line 446
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setTaskOverridesForInitialState(Lcom/android/systemui/recents/model/TaskStack;Z)V
    .locals 13
    .param p1, "stack"    # Lcom/android/systemui/recents/model/TaskStack;
    .param p2, "ignoreScrollToFront"    # Z

    .prologue
    .line 622
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v3

    .line 624
    .local v3, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->clear()V

    .line 626
    iget-boolean v10, v3, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    if-nez v10, :cond_1

    .line 627
    iget-boolean v7, v3, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    .line 628
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getInitialFocusState()I

    move-result v10

    if-nez v10, :cond_0

    iget v10, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    const/4 v11, 0x1

    if-le v10, v11, :cond_0

    .line 629
    if-nez p2, :cond_2

    iget-boolean v10, v3, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithAltTab:Z

    if-nez v10, :cond_0

    if-eqz v7, :cond_2

    .line 621
    :cond_0
    return-void

    .line 626
    :cond_1
    const/4 v7, 0x1

    .local v7, "scrollToFront":Z
    goto :goto_0

    .line 631
    .end local v7    # "scrollToFront":Z
    :cond_2
    const/4 v2, 0x0

    .line 632
    .local v2, "initialNormX":[F
    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    .line 633
    iget v11, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialBottomOffset:I

    .line 632
    add-int/2addr v10, v11

    int-to-float v10, v10

    .line 633
    const/4 v11, 0x1

    .line 632
    invoke-direct {p0, v10, v11}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getNormalizedXFromUnfocusedY(FI)F

    move-result v5

    .line 634
    .local v5, "minBottomTaskNormX":F
    iget v10, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedTopPeekHeight:I

    .line 635
    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    .line 634
    add-int/2addr v10, v11

    .line 635
    iget v11, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinMargin:I

    .line 634
    sub-int/2addr v10, v11

    int-to-float v10, v10

    .line 635
    const/4 v11, 0x0

    .line 634
    invoke-direct {p0, v10, v11}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getNormalizedXFromUnfocusedY(FI)F

    move-result v4

    .line 636
    .local v4, "maxBottomTaskNormX":F
    iget v10, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    const/4 v11, 0x2

    if-gt v10, v11, :cond_3

    .line 640
    const/4 v10, 0x2

    new-array v2, v10, [F

    .line 641
    .end local v2    # "initialNormX":[F
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v10

    const/4 v11, 0x0

    aput v10, v2, v11

    .line 642
    iget v10, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedTopPeekHeight:I

    int-to-float v10, v10

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getNormalizedXFromUnfocusedY(FI)F

    move-result v10

    const/4 v11, 0x1

    aput v10, v2, v11

    .line 651
    .local v2, "initialNormX":[F
    :goto_1
    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    .line 652
    invoke-virtual {p1}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v9

    .line 653
    .local v9, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/model/Task;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v8

    .line 654
    .local v8, "taskCount":I
    add-int/lit8 v0, v8, -0x1

    .local v0, "i":I
    :goto_2
    if-ltz v0, :cond_0

    .line 655
    sub-int v10, v8, v0

    add-int/lit8 v1, v10, -0x1

    .line 656
    .local v1, "indexFromFront":I
    array-length v10, v2

    if-ge v1, v10, :cond_0

    .line 659
    iget v10, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    .line 660
    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    aget v12, v2, v1

    invoke-virtual {v11, v12}, Lcom/android/systemui/recents/views/Range;->getAbsoluteX(F)F

    move-result v11

    .line 659
    add-float v6, v10, v11

    .line 661
    .local v6, "newTaskProgress":F
    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/recents/model/Task;

    iget-object v10, v10, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v10, v10, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v11, v10, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 654
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 645
    .end local v0    # "i":I
    .end local v1    # "indexFromFront":I
    .end local v6    # "newTaskProgress":F
    .end local v8    # "taskCount":I
    .end local v9    # "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/model/Task;>;"
    .local v2, "initialNormX":[F
    :cond_3
    const/4 v10, 0x2

    new-array v2, v10, [F

    .line 646
    .end local v2    # "initialNormX":[F
    const/4 v10, 0x0

    aput v5, v2, v10

    .line 647
    iget v10, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialTopOffset:I

    int-to-float v10, v10

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getNormalizedXFromUnfocusedY(FI)F

    move-result v10

    const/4 v11, 0x1

    aput v10, v2, v11

    .line 645
    .local v2, "initialNormX":[F
    goto :goto_1
.end method

.method public transformToScreenCoordinates(Lcom/android/systemui/recents/views/TaskViewTransform;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;
    .locals 4
    .param p1, "transformOut"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p2, "windowOverrideRect"    # Landroid/graphics/Rect;

    .prologue
    .line 925
    if-eqz p2, :cond_0

    .line 926
    move-object v0, p2

    .line 928
    .local v0, "windowRect":Landroid/graphics/Rect;
    :goto_0
    iget-object v1, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 929
    return-object p1

    .line 927
    .end local v0    # "windowRect":Landroid/graphics/Rect;
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getWindowRect()Landroid/graphics/Rect;

    move-result-object v0

    .restart local v0    # "windowRect":Landroid/graphics/Rect;
    goto :goto_0
.end method

.method update(Lcom/android/systemui/recents/model/TaskStack;Landroid/util/ArraySet;)V
    .locals 12
    .param p1, "stack"    # Lcom/android/systemui/recents/model/TaskStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/recents/model/TaskStack;",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/systemui/recents/model/Task$TaskKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "ignoreTasksSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/systemui/recents/model/Task$TaskKey;>;"
    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 558
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v4

    .line 559
    .local v4, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v2

    .line 562
    .local v2, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v9}, Landroid/util/SparseIntArray;->clear()V

    .line 565
    invoke-virtual {p1}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v8

    .line 566
    .local v8, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 567
    iput v11, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFrontMostTaskP:F

    .line 568
    iput v11, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    iput v11, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    iput v11, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    .line 569
    iput v10, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumFreeformTasks:I

    iput v10, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    .line 570
    return-void

    .line 574
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 575
    .local v0, "freeformTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 576
    .local v5, "stackTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v1, v9, :cond_3

    .line 577
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/recents/model/Task;

    .line 578
    .local v6, "task":Lcom/android/systemui/recents/model/Task;
    iget-object v9, v6, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {p2, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 576
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 581
    :cond_1
    invoke-virtual {v6}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 582
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 584
    :cond_2
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 587
    .end local v6    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    .line 588
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumFreeformTasks:I

    .line 592
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 593
    .local v7, "taskCount":I
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v7, :cond_4

    .line 594
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/recents/model/Task;

    .line 595
    .restart local v6    # "task":Lcom/android/systemui/recents/model/Task;
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    iget-object v10, v6, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v10, v10, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v9, v10, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 593
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 599
    .end local v6    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5

    .line 600
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFreeformLayoutAlgorithm:Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;

    invoke-virtual {v9, v0, p0}, Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;->update(Ljava/util/List;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;)V

    .line 604
    :cond_5
    invoke-direct {p0, v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->computeTaskViewPadding(I)V

    .line 607
    iput v11, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    .line 608
    iput v11, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    .line 609
    iget v9, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    if-lez v9, :cond_6

    .line 610
    iget v9, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    add-int/lit8 v9, v9, -0x1

    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v9, v10}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->calculateTaskViewXandY(ILandroid/graphics/Rect;)[I

    move-result-object v3

    .line 612
    .local v3, "positon":[I
    const/4 v9, 0x1

    aget v9, v3, v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mWindowRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mPaddingBottom:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    .line 611
    invoke-static {v11, v9}, Ljava/lang/Math;->max(FF)F

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    .line 557
    .end local v3    # "positon":[I
    :goto_3
    return-void

    .line 614
    :cond_6
    iput v11, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    goto :goto_3
.end method

.method public updateFocusStateOnScroll(FFF)F
    .locals 5
    .param p1, "lastTargetStackScroll"    # F
    .param p2, "targetStackScroll"    # F
    .param p3, "lastStackScroll"    # F

    .prologue
    .line 713
    cmpl-float v4, p2, p3

    if-nez v4, :cond_0

    .line 714
    return p2

    .line 717
    :cond_0
    sub-float v0, p2, p3

    .line 718
    .local v0, "deltaScroll":F
    sub-float v1, p2, p1

    .line 719
    .local v1, "deltaTargetScroll":F
    move v3, p2

    .line 720
    .local v3, "newScroll":F
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v4, p2}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    .line 721
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    if-ltz v2, :cond_1

    .line 746
    :cond_1
    return p2
.end method

.method public updatePaddingOfNotch(I)V
    .locals 2
    .param p1, "rotation"    # I

    .prologue
    const/4 v1, 0x0

    .line 1335
    sget-boolean v0, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v0, :cond_1

    .line 1336
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStatusbarHeight:I

    :goto_0
    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mPaddingLeft:I

    .line 1337
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStatusbarHeight:I

    :cond_0
    iput v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mPaddingRight:I

    .line 1334
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 1336
    goto :goto_0
.end method
