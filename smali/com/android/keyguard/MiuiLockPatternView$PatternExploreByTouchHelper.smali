.class final Lcom/android/keyguard/MiuiLockPatternView$PatternExploreByTouchHelper;
.super Lcom/android/internal/widget/ExploreByTouchHelper;
.source "MiuiLockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/MiuiLockPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PatternExploreByTouchHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/MiuiLockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;
    }
.end annotation


# instance fields
.field private mItems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/keyguard/MiuiLockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;",
            ">;"
        }
    .end annotation
.end field

.field private mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/android/keyguard/MiuiLockPatternView;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/MiuiLockPatternView;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/keyguard/MiuiLockPatternView;
    .param p2, "forView"    # Landroid/view/View;

    .prologue
    .line 1296
    iput-object p1, p0, Lcom/android/keyguard/MiuiLockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/keyguard/MiuiLockPatternView;

    .line 1297
    invoke-direct {p0, p2}, Lcom/android/internal/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    .line 1285
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/MiuiLockPatternView$PatternExploreByTouchHelper;->mTempRect:Landroid/graphics/Rect;

    .line 1286
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/MiuiLockPatternView$PatternExploreByTouchHelper;->mItems:Ljava/util/HashMap;

    .line 1296
    return-void
.end method

.method private getBoundsForVirtualView(I)Landroid/graphics/Rect;
    .locals 12
    .param p1, "virtualViewId"    # I

    .prologue
    const/high16 v11, 0x3f000000    # 0.5f

    .line 1420
    add-int/lit8 v7, p1, -0x1

    .line 1421
    .local v7, "ordinal":I
    iget-object v0, p0, Lcom/android/keyguard/MiuiLockPatternView$PatternExploreByTouchHelper;->mTempRect:Landroid/graphics/Rect;

    .line 1422
    .local v0, "bounds":Landroid/graphics/Rect;
    div-int/lit8 v8, v7, 0x3

    .line 1423
    .local v8, "row":I
    rem-int/lit8 v6, v7, 0x3

    .line 1424
    .local v6, "col":I
    iget-object v9, p0, Lcom/android/keyguard/MiuiLockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/keyguard/MiuiLockPatternView;

    invoke-static {v9}, Lcom/android/keyguard/MiuiLockPatternView;->-get0(Lcom/android/keyguard/MiuiLockPatternView;)[[Lcom/android/keyguard/MiuiLockPatternView$CellState;

    move-result-object v9

    aget-object v9, v9, v8

    aget-object v1, v9, v6

    .line 1425
    .local v1, "cell":Lcom/android/keyguard/MiuiLockPatternView$CellState;
    iget-object v9, p0, Lcom/android/keyguard/MiuiLockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/keyguard/MiuiLockPatternView;

    invoke-static {v9, v6}, Lcom/android/keyguard/MiuiLockPatternView;->-wrap0(Lcom/android/keyguard/MiuiLockPatternView;I)F

    move-result v4

    .line 1426
    .local v4, "centerX":F
    iget-object v9, p0, Lcom/android/keyguard/MiuiLockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/keyguard/MiuiLockPatternView;

    invoke-static {v9, v8}, Lcom/android/keyguard/MiuiLockPatternView;->-wrap1(Lcom/android/keyguard/MiuiLockPatternView;I)F

    move-result v5

    .line 1427
    .local v5, "centerY":F
    iget-object v9, p0, Lcom/android/keyguard/MiuiLockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/keyguard/MiuiLockPatternView;

    invoke-static {v9}, Lcom/android/keyguard/MiuiLockPatternView;->-get8(Lcom/android/keyguard/MiuiLockPatternView;)F

    move-result v9

    iget-object v10, p0, Lcom/android/keyguard/MiuiLockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/keyguard/MiuiLockPatternView;

    invoke-static {v10}, Lcom/android/keyguard/MiuiLockPatternView;->-get5(Lcom/android/keyguard/MiuiLockPatternView;)F

    move-result v10

    mul-float/2addr v9, v10

    mul-float v2, v9, v11

    .line 1428
    .local v2, "cellheight":F
    iget-object v9, p0, Lcom/android/keyguard/MiuiLockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/keyguard/MiuiLockPatternView;

    invoke-static {v9}, Lcom/android/keyguard/MiuiLockPatternView;->-get9(Lcom/android/keyguard/MiuiLockPatternView;)F

    move-result v9

    iget-object v10, p0, Lcom/android/keyguard/MiuiLockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/keyguard/MiuiLockPatternView;

    invoke-static {v10}, Lcom/android/keyguard/MiuiLockPatternView;->-get5(Lcom/android/keyguard/MiuiLockPatternView;)F

    move-result v10

    mul-float/2addr v9, v10

    mul-float v3, v9, v11

    .line 1429
    .local v3, "cellwidth":F
    sub-float v9, v4, v3

    float-to-int v9, v9

    iput v9, v0, Landroid/graphics/Rect;->left:I

    .line 1430
    add-float v9, v4, v3

    float-to-int v9, v9

    iput v9, v0, Landroid/graphics/Rect;->right:I

    .line 1431
    sub-float v9, v5, v2

    float-to-int v9, v9

    iput v9, v0, Landroid/graphics/Rect;->top:I

    .line 1432
    add-float v9, v5, v2

    float-to-int v9, v9

    iput v9, v0, Landroid/graphics/Rect;->bottom:I

    .line 1433
    return-object v0
.end method

.method private getTextForVirtualView(I)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "virtualViewId"    # I

    .prologue
    .line 1437
    iget-object v1, p0, Lcom/android/keyguard/MiuiLockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/keyguard/MiuiLockPatternView;

    invoke-virtual {v1}, Lcom/android/keyguard/MiuiLockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1438
    .local v0, "res":Landroid/content/res/Resources;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 1439
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 1438
    const v2, 0x91003c0

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getVirtualViewIdForHit(FF)I
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/high16 v4, -0x80000000

    .line 1451
    iget-object v5, p0, Lcom/android/keyguard/MiuiLockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/keyguard/MiuiLockPatternView;

    invoke-static {v5, p2}, Lcom/android/keyguard/MiuiLockPatternView;->-wrap3(Lcom/android/keyguard/MiuiLockPatternView;F)I

    move-result v3

    .line 1452
    .local v3, "rowHit":I
    if-gez v3, :cond_0

    .line 1453
    return v4

    .line 1455
    :cond_0
    iget-object v5, p0, Lcom/android/keyguard/MiuiLockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/keyguard/MiuiLockPatternView;

    invoke-static {v5, p1}, Lcom/android/keyguard/MiuiLockPatternView;->-wrap2(Lcom/android/keyguard/MiuiLockPatternView;F)I

    move-result v0

    .line 1456
    .local v0, "columnHit":I
    if-gez v0, :cond_1

    .line 1457
    return v4

    .line 1459
    :cond_1
    iget-object v5, p0, Lcom/android/keyguard/MiuiLockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/keyguard/MiuiLockPatternView;

    invoke-static {v5}, Lcom/android/keyguard/MiuiLockPatternView;->-get6(Lcom/android/keyguard/MiuiLockPatternView;)[[Z

    move-result-object v5

    aget-object v5, v5, v3

    aget-boolean v1, v5, v0

    .line 1460
    .local v1, "dotAvailable":Z
    mul-int/lit8 v5, v3, 0x3

    add-int/2addr v5, v0

    add-int/lit8 v2, v5, 0x1

    .line 1461
    .local v2, "dotId":I
    if-eqz v1, :cond_2

    move v4, v2

    .line 1464
    .local v4, "view":I
    :cond_2
    return v4
.end method

.method private isClickable(I)Z
    .locals 4
    .param p1, "virtualViewId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1375
    const/high16 v3, -0x80000000

    if-eq p1, v3, :cond_1

    .line 1376
    add-int/lit8 v3, p1, -0x1

    div-int/lit8 v1, v3, 0x3

    .line 1377
    .local v1, "row":I
    add-int/lit8 v3, p1, -0x1

    rem-int/lit8 v0, v3, 0x3

    .line 1378
    .local v0, "col":I
    iget-object v3, p0, Lcom/android/keyguard/MiuiLockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/keyguard/MiuiLockPatternView;

    invoke-static {v3}, Lcom/android/keyguard/MiuiLockPatternView;->-get6(Lcom/android/keyguard/MiuiLockPatternView;)[[Z

    move-result-object v3

    aget-object v3, v3, v1

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 1380
    .end local v0    # "col":I
    .end local v1    # "row":I
    :cond_1
    return v2
.end method


# virtual methods
.method protected getVirtualViewAt(FF)I
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1304
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/MiuiLockPatternView$PatternExploreByTouchHelper;->getVirtualViewIdForHit(FF)I

    move-result v0

    .line 1305
    .local v0, "id":I
    return v0
.end method

.method protected getVisibleVirtualViews(Landroid/util/IntArray;)V
    .locals 4
    .param p1, "virtualViewIds"    # Landroid/util/IntArray;

    .prologue
    .line 1311
    iget-object v2, p0, Lcom/android/keyguard/MiuiLockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/keyguard/MiuiLockPatternView;

    invoke-static {v2}, Lcom/android/keyguard/MiuiLockPatternView;->-get7(Lcom/android/keyguard/MiuiLockPatternView;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1312
    return-void

    .line 1314
    :cond_0
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/16 v2, 0xa

    if-ge v0, v2, :cond_2

    .line 1315
    iget-object v2, p0, Lcom/android/keyguard/MiuiLockPatternView$PatternExploreByTouchHelper;->mItems:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1316
    new-instance v1, Lcom/android/keyguard/MiuiLockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;

    invoke-direct {p0, v0}, Lcom/android/keyguard/MiuiLockPatternView$PatternExploreByTouchHelper;->getTextForVirtualView(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/MiuiLockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;-><init>(Lcom/android/keyguard/MiuiLockPatternView$PatternExploreByTouchHelper;Ljava/lang/CharSequence;)V

    .line 1317
    .local v1, "item":Lcom/android/keyguard/MiuiLockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;
    iget-object v2, p0, Lcom/android/keyguard/MiuiLockPatternView$PatternExploreByTouchHelper;->mItems:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1321
    .end local v1    # "item":Lcom/android/keyguard/MiuiLockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;
    :cond_1
    invoke-virtual {p1, v0}, Landroid/util/IntArray;->add(I)V

    .line 1314
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1309
    :cond_2
    return-void
.end method

.method onItemClicked(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x1

    .line 1409
    invoke-virtual {p0, p1}, Lcom/android/keyguard/MiuiLockPatternView$PatternExploreByTouchHelper;->invalidateVirtualView(I)V

    .line 1414
    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/MiuiLockPatternView$PatternExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 1416
    return v0
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 1388
    packed-switch p2, :pswitch_data_0

    .line 1399
    const/4 v0, 0x0

    return v0

    .line 1393
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/android/keyguard/MiuiLockPatternView$PatternExploreByTouchHelper;->onItemClicked(I)Z

    move-result v0

    return v0

    .line 1388
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1340
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/ExploreByTouchHelper;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1341
    iget-object v1, p0, Lcom/android/keyguard/MiuiLockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/keyguard/MiuiLockPatternView;

    invoke-static {v1}, Lcom/android/keyguard/MiuiLockPatternView;->-get7(Lcom/android/keyguard/MiuiLockPatternView;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1342
    iget-object v1, p0, Lcom/android/keyguard/MiuiLockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/keyguard/MiuiLockPatternView;

    invoke-virtual {v1}, Lcom/android/keyguard/MiuiLockPatternView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1343
    const v2, 0x10402e2

    .line 1342
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1344
    .local v0, "contentDescription":Ljava/lang/CharSequence;
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1339
    .end local v0    # "contentDescription":Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .param p1, "virtualViewId"    # I
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1329
    iget-object v1, p0, Lcom/android/keyguard/MiuiLockPatternView$PatternExploreByTouchHelper;->mItems:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1330
    iget-object v1, p0, Lcom/android/keyguard/MiuiLockPatternView$PatternExploreByTouchHelper;->mItems:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/MiuiLockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;

    iget-object v0, v1, Lcom/android/keyguard/MiuiLockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;->description:Ljava/lang/CharSequence;

    .line 1331
    .local v0, "contentDescription":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1332
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1326
    .end local v0    # "contentDescription":Ljava/lang/CharSequence;
    :goto_0
    return-void

    .line 1334
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/MiuiLockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/keyguard/MiuiLockPatternView;

    invoke-static {v1}, Lcom/android/keyguard/MiuiLockPatternView;->-get1(Lcom/android/keyguard/MiuiLockPatternView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x91003da

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onPopulateNodeForVirtualView(ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "virtualViewId"    # I
    .param p2, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1354
    invoke-direct {p0, p1}, Lcom/android/keyguard/MiuiLockPatternView$PatternExploreByTouchHelper;->getTextForVirtualView(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 1355
    invoke-direct {p0, p1}, Lcom/android/keyguard/MiuiLockPatternView$PatternExploreByTouchHelper;->getTextForVirtualView(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1357
    iget-object v1, p0, Lcom/android/keyguard/MiuiLockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/keyguard/MiuiLockPatternView;

    invoke-static {v1}, Lcom/android/keyguard/MiuiLockPatternView;->-get7(Lcom/android/keyguard/MiuiLockPatternView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1358
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    .line 1360
    invoke-direct {p0, p1}, Lcom/android/keyguard/MiuiLockPatternView$PatternExploreByTouchHelper;->isClickable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1362
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1363
    invoke-direct {p0, p1}, Lcom/android/keyguard/MiuiLockPatternView$PatternExploreByTouchHelper;->isClickable(I)Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 1368
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/keyguard/MiuiLockPatternView$PatternExploreByTouchHelper;->getBoundsForVirtualView(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 1370
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 1349
    return-void
.end method
