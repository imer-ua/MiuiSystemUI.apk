.class public Lcom/android/systemui/recents/model/TaskStack$DockState;
.super Ljava/lang/Object;
.source "TaskStack.java"

# interfaces
.implements Lcom/android/systemui/recents/views/DropTarget;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/model/TaskStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DockState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;
    }
.end annotation


# static fields
.field public static final BOTTOM:Lcom/android/systemui/recents/model/TaskStack$DockState;

.field public static final LEFT:Lcom/android/systemui/recents/model/TaskStack$DockState;

.field public static final NONE:Lcom/android/systemui/recents/model/TaskStack$DockState;

.field public static final RIGHT:Lcom/android/systemui/recents/model/TaskStack$DockState;

.field public static final TOP:Lcom/android/systemui/recents/model/TaskStack$DockState;

.field public static final TOP_FORCE_BLACK:Lcom/android/systemui/recents/model/TaskStack$DockState;


# instance fields
.field public final createMode:I

.field private final dockArea:Landroid/graphics/RectF;

.field public final dockSide:I

.field private final expandedTouchDockArea:Landroid/graphics/RectF;

.field private final touchArea:Landroid/graphics/RectF;

.field public final viewState:Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 259
    new-instance v0, Lcom/android/systemui/recents/model/TaskStack$DockState;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x50

    const/16 v4, 0xff

    const/4 v5, 0x0

    .line 260
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 259
    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/recents/model/TaskStack$DockState;-><init>(IIIIILandroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    sput-object v0, Lcom/android/systemui/recents/model/TaskStack$DockState;->NONE:Lcom/android/systemui/recents/model/TaskStack$DockState;

    .line 261
    new-instance v0, Lcom/android/systemui/recents/model/TaskStack$DockState;

    .line 263
    new-instance v6, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3e000000    # 0.125f

    invoke-direct {v6, v1, v2, v4, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v7, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3e000000    # 0.125f

    invoke-direct {v7, v1, v2, v4, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 264
    new-instance v8, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-direct {v8, v1, v2, v4, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 261
    const/4 v1, 0x1

    .line 262
    const/4 v2, 0x0

    const/16 v3, 0x50

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 261
    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/recents/model/TaskStack$DockState;-><init>(IIIIILandroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    sput-object v0, Lcom/android/systemui/recents/model/TaskStack$DockState;->LEFT:Lcom/android/systemui/recents/model/TaskStack$DockState;

    .line 265
    new-instance v0, Lcom/android/systemui/recents/model/TaskStack$DockState;

    .line 267
    new-instance v6, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3e000000    # 0.125f

    invoke-direct {v6, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v7, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3e000000    # 0.125f

    invoke-direct {v7, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 268
    new-instance v8, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-direct {v8, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 265
    const/4 v1, 0x2

    .line 266
    const/4 v2, 0x0

    const/16 v3, 0x50

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 265
    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/recents/model/TaskStack$DockState;-><init>(IIIIILandroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    sput-object v0, Lcom/android/systemui/recents/model/TaskStack$DockState;->TOP:Lcom/android/systemui/recents/model/TaskStack$DockState;

    .line 269
    new-instance v0, Lcom/android/systemui/recents/model/TaskStack$DockState;

    .line 271
    new-instance v6, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3e23d70a    # 0.16f

    invoke-direct {v6, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v7, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3e23d70a    # 0.16f

    invoke-direct {v7, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 272
    new-instance v8, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-direct {v8, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 269
    const/4 v1, 0x2

    .line 270
    const/4 v2, 0x0

    const/16 v3, 0x50

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 269
    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/recents/model/TaskStack$DockState;-><init>(IIIIILandroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    sput-object v0, Lcom/android/systemui/recents/model/TaskStack$DockState;->TOP_FORCE_BLACK:Lcom/android/systemui/recents/model/TaskStack$DockState;

    .line 273
    new-instance v0, Lcom/android/systemui/recents/model/TaskStack$DockState;

    .line 275
    new-instance v6, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f600000    # 0.875f

    invoke-direct {v6, v4, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v7, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f600000    # 0.875f

    invoke-direct {v7, v4, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 276
    new-instance v8, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-direct {v8, v4, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 273
    const/4 v1, 0x3

    .line 274
    const/4 v2, 0x1

    const/16 v3, 0x50

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 273
    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/recents/model/TaskStack$DockState;-><init>(IIIIILandroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    sput-object v0, Lcom/android/systemui/recents/model/TaskStack$DockState;->RIGHT:Lcom/android/systemui/recents/model/TaskStack$DockState;

    .line 277
    new-instance v0, Lcom/android/systemui/recents/model/TaskStack$DockState;

    .line 279
    new-instance v6, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f600000    # 0.875f

    invoke-direct {v6, v1, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v7, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f600000    # 0.875f

    invoke-direct {v7, v1, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 280
    new-instance v8, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-direct {v8, v1, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 277
    const/4 v1, 0x4

    .line 278
    const/4 v2, 0x1

    const/16 v3, 0x50

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 277
    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/recents/model/TaskStack$DockState;-><init>(IIIIILandroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    sput-object v0, Lcom/android/systemui/recents/model/TaskStack$DockState;->BOTTOM:Lcom/android/systemui/recents/model/TaskStack$DockState;

    .line 249
    return-void
.end method

.method constructor <init>(IIIIILandroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 6
    .param p1, "dockSide"    # I
    .param p2, "createMode"    # I
    .param p3, "dockAreaAlpha"    # I
    .param p4, "hintTextAlpha"    # I
    .param p5, "hintTextOrientation"    # I
    .param p6, "touchArea"    # Landroid/graphics/RectF;
    .param p7, "dockArea"    # Landroid/graphics/RectF;
    .param p8, "expandedTouchDockArea"    # Landroid/graphics/RectF;

    .prologue
    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 452
    iput p1, p0, Lcom/android/systemui/recents/model/TaskStack$DockState;->dockSide:I

    .line 453
    iput p2, p0, Lcom/android/systemui/recents/model/TaskStack$DockState;->createMode:I

    .line 454
    new-instance v0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;

    .line 455
    const v4, 0x9100181

    .line 454
    const/4 v5, 0x0

    move v1, p3

    move v2, p4

    move v3, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;-><init>(IIIILcom/android/systemui/recents/model/TaskStack$DockState$ViewState;)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$DockState;->viewState:Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;

    .line 456
    iput-object p7, p0, Lcom/android/systemui/recents/model/TaskStack$DockState;->dockArea:Landroid/graphics/RectF;

    .line 457
    iput-object p6, p0, Lcom/android/systemui/recents/model/TaskStack$DockState;->touchArea:Landroid/graphics/RectF;

    .line 458
    iput-object p8, p0, Lcom/android/systemui/recents/model/TaskStack$DockState;->expandedTouchDockArea:Landroid/graphics/RectF;

    .line 451
    return-void
.end method


# virtual methods
.method public acceptsDrop(IIIIZ)Z
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "isCurrentTarget"    # Z

    .prologue
    .line 284
    if-eqz p5, :cond_0

    .line 285
    iget-object v1, p0, Lcom/android/systemui/recents/model/TaskStack$DockState;->expandedTouchDockArea:Landroid/graphics/RectF;

    int-to-float v4, p1

    int-to-float v5, p2

    move-object v0, p0

    move v2, p3

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/model/TaskStack$DockState;->areaContainsPoint(Landroid/graphics/RectF;IIFF)Z

    move-result v0

    .line 284
    :goto_0
    return v0

    .line 286
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/model/TaskStack$DockState;->touchArea:Landroid/graphics/RectF;

    int-to-float v4, p1

    int-to-float v5, p2

    move-object v0, p0

    move v2, p3

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/model/TaskStack$DockState;->areaContainsPoint(Landroid/graphics/RectF;IIFF)Z

    move-result v0

    goto :goto_0
.end method

.method public areaContainsPoint(Landroid/graphics/RectF;IIFF)Z
    .locals 7
    .param p1, "area"    # Landroid/graphics/RectF;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F

    .prologue
    const/4 v4, 0x0

    .line 473
    iget v5, p1, Landroid/graphics/RectF;->left:F

    int-to-float v6, p2

    mul-float/2addr v5, v6

    float-to-int v1, v5

    .line 474
    .local v1, "left":I
    iget v5, p1, Landroid/graphics/RectF;->top:F

    int-to-float v6, p3

    mul-float/2addr v5, v6

    float-to-int v3, v5

    .line 475
    .local v3, "top":I
    iget v5, p1, Landroid/graphics/RectF;->right:F

    int-to-float v6, p2

    mul-float/2addr v5, v6

    float-to-int v2, v5

    .line 476
    .local v2, "right":I
    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    int-to-float v6, p3

    mul-float/2addr v5, v6

    float-to-int v0, v5

    .line 477
    .local v0, "bottom":I
    int-to-float v5, v1

    cmpl-float v5, p4, v5

    if-ltz v5, :cond_0

    int-to-float v5, v3

    cmpl-float v5, p5, v5

    if-ltz v5, :cond_0

    int-to-float v5, v2

    cmpg-float v5, p4, v5

    if-gtz v5, :cond_0

    int-to-float v5, v0

    cmpg-float v5, p5, v5

    if-gtz v5, :cond_0

    const/4 v4, 0x1

    :cond_0
    return v4
.end method

.method public getDockedBounds(IIILandroid/graphics/Rect;Landroid/content/res/Resources;)Landroid/graphics/Rect;
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "dividerSize"    # I
    .param p4, "insets"    # Landroid/graphics/Rect;
    .param p5, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v6, 0x1

    .line 496
    invoke-virtual {p5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v6, :cond_0

    .line 497
    .local v6, "isHorizontalDivision":Z
    :goto_0
    invoke-static {v6, p4, p1, p2, p3}, Lcom/android/internal/policy/DockedDividerUtils;->calculateMiddlePosition(ZLandroid/graphics/Rect;III)I

    move-result v0

    .line 499
    .local v0, "position":I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 500
    .local v2, "newWindowBounds":Landroid/graphics/Rect;
    iget v1, p0, Lcom/android/systemui/recents/model/TaskStack$DockState;->dockSide:I

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/internal/policy/DockedDividerUtils;->calculateBoundsForPosition(IILandroid/graphics/Rect;III)V

    .line 502
    return-object v2

    .line 496
    .end local v0    # "position":I
    .end local v2    # "newWindowBounds":Landroid/graphics/Rect;
    .end local v6    # "isHorizontalDivision":Z
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public getDockedTaskStackBounds(Landroid/graphics/Rect;IIILandroid/graphics/Rect;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;Landroid/content/res/Resources;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 9
    .param p1, "displayRect"    # Landroid/graphics/Rect;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "dividerSize"    # I
    .param p5, "insets"    # Landroid/graphics/Rect;
    .param p6, "layoutAlgorithm"    # Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    .param p7, "res"    # Landroid/content/res/Resources;
    .param p8, "windowRectOut"    # Landroid/graphics/Rect;

    .prologue
    .line 514
    invoke-virtual/range {p7 .. p7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v8, 0x1

    .line 515
    .local v8, "isHorizontalDivision":Z
    :goto_0
    invoke-static {v8, p5, p2, p3, p4}, Lcom/android/internal/policy/DockedDividerUtils;->calculateMiddlePosition(ZLandroid/graphics/Rect;III)I

    move-result v0

    .line 518
    .local v0, "position":I
    iget v1, p0, Lcom/android/systemui/recents/model/TaskStack$DockState;->dockSide:I

    invoke-static {v1}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v1

    move-object/from16 v2, p8

    move v3, p2

    move v4, p3

    move v5, p4

    .line 517
    invoke-static/range {v0 .. v5}, Lcom/android/internal/policy/DockedDividerUtils;->calculateBoundsForPosition(IILandroid/graphics/Rect;III)V

    .line 522
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 525
    .local v7, "taskStackBounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/systemui/recents/model/TaskStack$DockState;->dockArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 526
    const/4 v4, 0x0

    .line 528
    .local v4, "top":I
    :goto_1
    iget v5, p5, Landroid/graphics/Rect;->left:I

    iget v6, p5, Landroid/graphics/Rect;->right:I

    move-object v1, p6

    move-object v2, p1

    move-object/from16 v3, p8

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getTaskStackBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;IIILandroid/graphics/Rect;)V

    .line 530
    return-object v7

    .line 514
    .end local v0    # "position":I
    .end local v4    # "top":I
    .end local v7    # "taskStackBounds":Landroid/graphics/Rect;
    .end local v8    # "isHorizontalDivision":Z
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 527
    .restart local v0    # "position":I
    .restart local v7    # "taskStackBounds":Landroid/graphics/Rect;
    .restart local v8    # "isHorizontalDivision":Z
    :cond_1
    iget v4, p5, Landroid/graphics/Rect;->top:I

    .restart local v4    # "top":I
    goto :goto_1
.end method

.method public getPreDockedBounds(II)Landroid/graphics/Rect;
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 484
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/recents/model/TaskStack$DockState;->dockArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    int-to-float v2, p1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/systemui/recents/model/TaskStack$DockState;->dockArea:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    int-to-float v3, p2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 485
    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack$DockState;->dockArea:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    int-to-float v4, p1

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/systemui/recents/model/TaskStack$DockState;->dockArea:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    int-to-float v5, p2

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 484
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public update(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 465
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$DockState;->viewState:Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->update(Landroid/content/Context;)V

    .line 464
    return-void
.end method
