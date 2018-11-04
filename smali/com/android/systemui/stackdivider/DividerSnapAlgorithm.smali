.class public Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;
.super Ljava/lang/Object;
.source "DividerSnapAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;
    }
.end annotation


# instance fields
.field private final mDismissEndTarget:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

.field private final mDismissStartTarget:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

.field private final mDisplayHeight:I

.field private final mDisplayWidth:I

.field private final mDividerSize:I

.field private final mFirstSplitTarget:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

.field private final mFixedRatio:F

.field private final mInsets:Landroid/graphics/Rect;

.field private mIsHorizontalDivision:Z

.field private final mLastSplitTarget:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

.field private final mMiddleTarget:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

.field private final mMinDismissVelocityPxPerSecond:F

.field private final mMinFlingVelocityPxPerSecond:F

.field private final mMinimalSizeResizableTask:I

.field private final mSnapMode:I

.field private final mSnapTarget:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

.field private final mTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;)V
    .locals 4
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "displayWidth"    # I
    .param p3, "displayHeight"    # I
    .param p4, "dividerSize"    # I
    .param p5, "isHorizontalDivision"    # Z
    .param p6, "insets"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    .line 63
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    .line 99
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x44480000    # 800.0f

    mul-float/2addr v0, v1

    .line 98
    iput v0, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mMinFlingVelocityPxPerSecond:F

    .line 101
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x44160000    # 600.0f

    mul-float/2addr v0, v1

    .line 100
    iput v0, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mMinDismissVelocityPxPerSecond:F

    .line 102
    iput p4, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mDividerSize:I

    .line 103
    iput p2, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mDisplayWidth:I

    .line 104
    iput p3, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mDisplayHeight:I

    .line 105
    iput-boolean p5, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mIsHorizontalDivision:Z

    .line 106
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 111
    const v0, 0x90e0041

    .line 110
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mSnapMode:I

    .line 114
    const v0, 0x9130002

    .line 113
    invoke-virtual {p1, v0, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mFixedRatio:F

    .line 116
    const v0, 0x90f023b

    .line 115
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mMinimalSizeResizableTask:I

    .line 117
    invoke-direct {p0, p5}, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->calculateTargets(Z)V

    .line 118
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    .line 119
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    .line 120
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mDismissStartTarget:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    .line 121
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mDismissEndTarget:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    .line 122
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mMiddleTarget:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    .line 124
    new-instance v0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    invoke-direct {v0, v2, v2, v2}, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;-><init>(III)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mSnapTarget:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    .line 97
    return-void
.end method

.method private addFixedDivisionTargets(ZI)V
    .locals 7
    .param p1, "isHorizontalDivision"    # Z
    .param p2, "dividerMax"    # I

    .prologue
    .line 296
    if-eqz p1, :cond_0

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v3, v5, Landroid/graphics/Rect;->top:I

    .line 297
    .local v3, "start":I
    :goto_0
    if-eqz p1, :cond_1

    .line 298
    iget v5, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mDisplayHeight:I

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v5, v6

    .line 300
    .local v1, "end":I
    :goto_1
    iget v5, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mFixedRatio:F

    sub-int v6, v1, v3

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iget v6, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mDividerSize:I

    div-int/lit8 v6, v6, 0x2

    sub-int v2, v5, v6

    .line 301
    .local v2, "size":I
    add-int v4, v3, v2

    .line 302
    .local v4, "topPosition":I
    sub-int v5, v1, v2

    iget v6, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mDividerSize:I

    sub-int v0, v5, v6

    .line 303
    .local v0, "bottomPosition":I
    invoke-direct {p0, p1, v4, v0, p2}, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->addNonDismissingTargets(ZIII)V

    .line 295
    return-void

    .line 296
    .end local v0    # "bottomPosition":I
    .end local v1    # "end":I
    .end local v2    # "size":I
    .end local v3    # "start":I
    .end local v4    # "topPosition":I
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v3, v5, Landroid/graphics/Rect;->left:I

    .restart local v3    # "start":I
    goto :goto_0

    .line 299
    :cond_1
    iget v5, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mDisplayWidth:I

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int v1, v5, v6

    .restart local v1    # "end":I
    goto :goto_1
.end method

.method private addMiddleTarget(Z)V
    .locals 5
    .param p1, "isHorizontalDivision"    # Z

    .prologue
    .line 334
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mDisplayWidth:I

    iget v3, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mDisplayHeight:I

    iget v4, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mDividerSize:I

    .line 333
    invoke-static {p1, v1, v2, v3, v4}, Lcom/android/systemui/stackdivider/DockedDividerUtils;->calculateMiddlePosition(ZLandroid/graphics/Rect;III)I

    move-result v0

    .line 335
    .local v0, "position":I
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v0, v3}, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;-><init>(III)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    return-void
.end method

.method private addNonDismissingTargets(ZIII)V
    .locals 2
    .param p1, "isHorizontalDivision"    # Z
    .param p2, "topPosition"    # I
    .param p3, "bottomPosition"    # I
    .param p4, "dividerMax"    # I

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int v0, p2, v0

    invoke-direct {p0, p2, v0}, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->maybeAddTarget(II)V

    .line 290
    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->addMiddleTarget(Z)V

    .line 291
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v0, p4, v0

    .line 292
    iget v1, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mDividerSize:I

    add-int/2addr v1, p3

    .line 291
    sub-int/2addr v0, v1

    invoke-direct {p0, p3, v0}, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->maybeAddTarget(II)V

    .line 288
    return-void
.end method

.method private addRatio16_9Targets(ZI)V
    .locals 10
    .param p1, "isHorizontalDivision"    # Z
    .param p2, "dividerMax"    # I

    .prologue
    .line 307
    if-eqz p1, :cond_0

    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v5, v8, Landroid/graphics/Rect;->top:I

    .line 308
    .local v5, "start":I
    :goto_0
    if-eqz p1, :cond_1

    .line 309
    iget v8, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mDisplayHeight:I

    iget-object v9, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v8, v9

    .line 311
    .local v1, "end":I
    :goto_1
    if-eqz p1, :cond_2

    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v6, v8, Landroid/graphics/Rect;->left:I

    .line 312
    .local v6, "startOther":I
    :goto_2
    if-eqz p1, :cond_3

    .line 313
    iget v8, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mDisplayWidth:I

    iget-object v9, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int v2, v8, v9

    .line 315
    .local v2, "endOther":I
    :goto_3
    sub-int v8, v2, v6

    int-to-float v8, v8

    const/high16 v9, 0x3f100000    # 0.5625f

    mul-float v3, v9, v8

    .line 316
    .local v3, "size":F
    float-to-double v8, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v4, v8

    .line 317
    .local v4, "sizeInt":I
    add-int v7, v5, v4

    .line 318
    .local v7, "topPosition":I
    sub-int v8, v1, v4

    iget v9, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mDividerSize:I

    sub-int v0, v8, v9

    .line 319
    .local v0, "bottomPosition":I
    invoke-direct {p0, p1, v7, v0, p2}, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->addNonDismissingTargets(ZIII)V

    .line 306
    return-void

    .line 307
    .end local v0    # "bottomPosition":I
    .end local v1    # "end":I
    .end local v2    # "endOther":I
    .end local v3    # "size":F
    .end local v4    # "sizeInt":I
    .end local v5    # "start":I
    .end local v6    # "startOther":I
    .end local v7    # "topPosition":I
    :cond_0
    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v5, v8, Landroid/graphics/Rect;->left:I

    .restart local v5    # "start":I
    goto :goto_0

    .line 310
    :cond_1
    iget v8, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mDisplayWidth:I

    iget-object v9, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int v1, v8, v9

    .restart local v1    # "end":I
    goto :goto_1

    .line 311
    :cond_2
    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v6, v8, Landroid/graphics/Rect;->top:I

    .restart local v6    # "startOther":I
    goto :goto_2

    .line 314
    :cond_3
    iget v8, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mDisplayHeight:I

    iget-object v9, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v8, v9

    goto :goto_3
.end method

.method private calculateTargets(Z)V
    .locals 8
    .param p1, "isHorizontalDivision"    # Z

    .prologue
    const v7, 0x3eb33333    # 0.35f

    .line 265
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 266
    if-eqz p1, :cond_0

    .line 267
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mDisplayHeight:I

    .line 269
    .local v0, "dividerMax":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    iget v4, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mDividerSize:I

    neg-int v4, v4

    iget v5, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mDividerSize:I

    neg-int v5, v5

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;-><init>(IIIF)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    iget v2, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mSnapMode:I

    packed-switch v2, :pswitch_data_0

    .line 282
    :goto_1
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 283
    .local v1, "navBarSize":I
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    sub-int v4, v0, v1

    .line 284
    const/4 v5, 0x2

    .line 283
    invoke-direct {v3, v4, v0, v5, v7}, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;-><init>(IIIF)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    return-void

    .line 268
    .end local v0    # "dividerMax":I
    .end local v1    # "navBarSize":I
    :cond_0
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mDisplayWidth:I

    .restart local v0    # "dividerMax":I
    goto :goto_0

    .line 273
    :pswitch_0
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->addRatio16_9Targets(ZI)V

    goto :goto_1

    .line 276
    :pswitch_1
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->addFixedDivisionTargets(ZI)V

    goto :goto_1

    .line 279
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->addMiddleTarget(Z)V

    goto :goto_1

    .line 282
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v1, v2, Landroid/graphics/Rect;->right:I

    .restart local v1    # "navBarSize":I
    goto :goto_2

    .line 271
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static create(Landroid/content/Context;Landroid/graphics/Rect;)Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;
    .locals 11
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 81
    new-instance v7, Landroid/view/DisplayInfo;

    invoke-direct {v7}, Landroid/view/DisplayInfo;-><init>()V

    .line 82
    .local v7, "displayInfo":Landroid/view/DisplayInfo;
    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v6}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 85
    const v1, 0x90f0237

    .line 84
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 86
    .local v9, "dividerWindowWidth":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 87
    const v1, 0x90f0238

    .line 86
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 88
    .local v8, "dividerInsets":I
    new-instance v0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 89
    iget v2, v7, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v3, v7, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 90
    mul-int/lit8 v4, v8, 0x2

    sub-int v4, v9, v4

    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->orientation:I

    if-ne v10, v5, :cond_0

    :goto_0
    move-object v6, p1

    .line 88
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;-><init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;)V

    return-object v0

    :cond_0
    move v5, v6

    .line 91
    goto :goto_0
.end method

.method private getStartInset()I
    .locals 1

    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mIsHorizontalDivision:Z

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method private maybeAddTarget(II)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "smallerSize"    # I

    .prologue
    .line 327
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mMinimalSizeResizableTask:I

    if-lt p2, v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p1, v2}, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;-><init>(III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    :cond_0
    return-void
.end method

.method private snap(IZ)Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;
    .locals 7
    .param p1, "position"    # I
    .param p2, "hardDismiss"    # Z

    .prologue
    .line 235
    const/4 v3, -0x1

    .line 236
    .local v3, "minIndex":I
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 237
    .local v2, "minDistance":F
    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 249
    .local v4, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_2

    .line 250
    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    .line 251
    .local v5, "target":Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;
    iget v6, v5, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;->position:I

    sub-int v6, p1, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v0, v6

    .line 252
    .local v0, "distance":F
    if-eqz p2, :cond_0

    .line 253
    invoke-static {v5}, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;->-get0(Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;)F

    move-result v6

    div-float/2addr v0, v6

    .line 255
    :cond_0
    cmpg-float v6, v0, v2

    if-gez v6, :cond_1

    .line 256
    move v3, v1

    .line 257
    move v2, v0

    .line 249
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 261
    .end local v0    # "distance":F
    .end local v5    # "target":Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    return-object v6
.end method


# virtual methods
.method public calculateDismissingFraction(I)F
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    iget v0, v0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;->position:I

    if-ge p1, v0, :cond_0

    .line 180
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->getStartInset()I

    move-result v0

    sub-int v0, p1, v0

    int-to-float v0, v0

    .line 181
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    iget v1, v1, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;->position:I

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->getStartInset()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 180
    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    return v0

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    iget v0, v0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;->position:I

    if-le p1, v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    iget v0, v0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;->position:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    .line 184
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mDismissEndTarget:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    iget v1, v1, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;->position:I

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    iget v2, v2, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;->position:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mDividerSize:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 183
    div-float/2addr v0, v1

    return v0

    .line 186
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public calculateNonDismissingSnapTarget(I)Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 168
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->snap(IZ)Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    .line 169
    .local v0, "target":Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mDismissStartTarget:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    if-ne v0, v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    return-object v1

    .line 171
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mDismissEndTarget:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    if-ne v0, v1, :cond_1

    .line 172
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    return-object v1

    .line 174
    :cond_1
    return-object v0
.end method

.method public calculateSnapTarget(IF)Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;
    .locals 1
    .param p1, "position"    # I
    .param p2, "velocity"    # F

    .prologue
    .line 142
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->calculateSnapTarget(IFZ)Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    return-object v0
.end method

.method public calculateSnapTarget(IFZ)Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;
    .locals 2
    .param p1, "position"    # I
    .param p2, "velocity"    # F
    .param p3, "hardDismiss"    # Z

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    iget v0, v0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;->position:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mMinDismissVelocityPxPerSecond:F

    neg-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mDismissStartTarget:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    return-object v0

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    iget v0, v0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;->position:I

    if-le p1, v0, :cond_1

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mMinDismissVelocityPxPerSecond:F

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mDismissEndTarget:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    return-object v0

    .line 157
    :cond_1
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mMinFlingVelocityPxPerSecond:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 158
    invoke-direct {p0, p1, p3}, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->snap(IZ)Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    return-object v0

    .line 160
    :cond_2
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_3

    .line 161
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    return-object v0

    .line 163
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    return-object v0
.end method

.method public getClosestDismissTarget(I)Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    iget v0, v0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;->position:I

    if-ge p1, v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mDismissStartTarget:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    return-object v0

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    iget v0, v0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;->position:I

    if-le p1, v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mDismissEndTarget:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    return-object v0

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mDismissStartTarget:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    iget v0, v0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;->position:I

    sub-int v0, p1, v0

    .line 195
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mDismissEndTarget:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    iget v1, v1, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;->position:I

    sub-int/2addr v1, p1

    .line 194
    if-ge v0, v1, :cond_2

    .line 196
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mDismissStartTarget:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    return-object v0

    .line 198
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mDismissEndTarget:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    return-object v0
.end method

.method public getDismissEndTarget()Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mDismissEndTarget:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    return-object v0
.end method

.method public getDismissStartTarget()Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mDismissStartTarget:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    return-object v0
.end method

.method public getFirstSplitTarget()Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    return-object v0
.end method

.method public getLastSplitTarget()Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    return-object v0
.end method

.method public getMiddleTarget()Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mMiddleTarget:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    return-object v0
.end method

.method public getNextTarget(Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;)Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;
    .locals 3
    .param p1, "snapTarget"    # Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    .prologue
    .line 343
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 344
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 345
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    return-object v1

    .line 347
    :cond_0
    return-object p1
.end method

.method public getPreviousTarget(Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;)Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;
    .locals 3
    .param p1, "snapTarget"    # Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    .prologue
    .line 351
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 352
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-lez v0, :cond_0

    .line 353
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    return-object v1

    .line 355
    :cond_0
    return-object p1
.end method

.method public isFirstSplitTargetAvailable()Z
    .locals 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mMiddleTarget:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLastSplitTargetAvailable()Z
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mMiddleTarget:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSplitScreenFeasible()Z
    .locals 6

    .prologue
    .line 132
    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v3, v4, Landroid/graphics/Rect;->top:I

    .line 133
    .local v3, "statusBarSize":I
    iget-boolean v4, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mIsHorizontalDivision:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v1, v4, Landroid/graphics/Rect;->bottom:I

    .line 134
    .local v1, "navBarSize":I
    :goto_0
    iget-boolean v4, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mIsHorizontalDivision:Z

    if-eqz v4, :cond_1

    .line 135
    iget v2, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mDisplayHeight:I

    .line 137
    .local v2, "size":I
    :goto_1
    sub-int v4, v2, v1

    sub-int/2addr v4, v3

    iget v5, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mDividerSize:I

    sub-int v0, v4, v5

    .line 138
    .local v0, "availableSpace":I
    div-int/lit8 v4, v0, 0x2

    iget v5, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mMinimalSizeResizableTask:I

    if-lt v4, v5, :cond_2

    const/4 v4, 0x1

    :goto_2
    return v4

    .line 133
    .end local v0    # "availableSpace":I
    .end local v1    # "navBarSize":I
    .end local v2    # "size":I
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v1, v4, Landroid/graphics/Rect;->right:I

    .restart local v1    # "navBarSize":I
    goto :goto_0

    .line 136
    :cond_1
    iget v2, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->mDisplayWidth:I

    goto :goto_1

    .line 138
    .restart local v0    # "availableSpace":I
    .restart local v2    # "size":I
    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method
