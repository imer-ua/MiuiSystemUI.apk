.class public abstract Lcom/android/systemui/statusbar/policy/DarkIconDispatcherHelper;
.super Ljava/lang/Object;
.source "DarkIconDispatcherHelper.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDarkIntensity(Landroid/graphics/Rect;Landroid/view/View;F)F
    .locals 1
    .param p0, "tintArea"    # Landroid/graphics/Rect;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "intensity"    # F

    .prologue
    .line 24
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcherHelper;->isInArea(Landroid/graphics/Rect;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    return p2

    .line 27
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getTint(Landroid/graphics/Rect;Landroid/view/View;I)I
    .locals 1
    .param p0, "tintArea"    # Landroid/graphics/Rect;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "color"    # I

    .prologue
    .line 12
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcherHelper;->isInArea(Landroid/graphics/Rect;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    return p2

    .line 15
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static inDarkMode(Landroid/graphics/Rect;Landroid/view/View;F)Z
    .locals 2
    .param p0, "tintArea"    # Landroid/graphics/Rect;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "intensity"    # F

    .prologue
    .line 32
    invoke-static {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcherHelper;->getDarkIntensity(Landroid/graphics/Rect;Landroid/view/View;F)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isInArea(Landroid/graphics/Rect;Landroid/view/View;)Z
    .locals 9
    .param p0, "area"    # Landroid/graphics/Rect;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 40
    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 41
    return v5

    .line 43
    :cond_0
    sget-object v7, Lcom/android/systemui/statusbar/policy/DarkIconDispatcherHelper;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v7, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 44
    sget-object v7, Lcom/android/systemui/statusbar/policy/DarkIconDispatcherHelper;->sTmpInt2:[I

    invoke-virtual {p1, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 45
    sget-object v7, Lcom/android/systemui/statusbar/policy/DarkIconDispatcherHelper;->sTmpInt2:[I

    aget v4, v7, v6

    .line 47
    .local v4, "left":I
    iget v7, p0, Landroid/graphics/Rect;->left:I

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 48
    .local v3, "intersectStart":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v7, v4

    iget v8, p0, Landroid/graphics/Rect;->right:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 49
    .local v2, "intersectEnd":I
    sub-int v7, v2, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 51
    .local v1, "intersectAmount":I
    iget v7, p0, Landroid/graphics/Rect;->top:I

    if-gtz v7, :cond_1

    const/4 v0, 0x1

    .line 52
    .local v0, "coversFullStatusBar":Z
    :goto_0
    mul-int/lit8 v7, v1, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    if-le v7, v8, :cond_2

    .line 53
    .local v5, "majorityOfWidth":Z
    :goto_1
    if-eqz v5, :cond_3

    .end local v0    # "coversFullStatusBar":Z
    :goto_2
    return v0

    .line 51
    .end local v5    # "majorityOfWidth":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "coversFullStatusBar":Z
    goto :goto_0

    :cond_2
    move v5, v6

    .line 52
    goto :goto_1

    .restart local v5    # "majorityOfWidth":Z
    :cond_3
    move v0, v6

    .line 53
    goto :goto_2
.end method
