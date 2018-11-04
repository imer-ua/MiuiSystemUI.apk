.class Lcom/android/systemui/statusbar/phone/NavStubView$16;
.super Ljava/lang/Object;
.source "NavStubView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NavStubView;->startAppAnimation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$finalCurScale:F

.field final synthetic val$finalCurTranslationY:F

.field final synthetic val$initScale:F

.field final synthetic val$initX:I

.field final synthetic val$initY:I

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavStubView;IIIFFFLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/NavStubView;
    .param p2, "val$type"    # I
    .param p3, "val$initX"    # I
    .param p4, "val$initY"    # I
    .param p5, "val$finalCurTranslationY"    # F
    .param p6, "val$finalCurScale"    # F
    .param p7, "val$initScale"    # F
    .param p8, "val$action"    # Ljava/lang/String;

    .prologue
    .line 1858
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavStubView$16;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/NavStubView$16;->val$type:I

    iput p3, p0, Lcom/android/systemui/statusbar/phone/NavStubView$16;->val$initX:I

    iput p4, p0, Lcom/android/systemui/statusbar/phone/NavStubView$16;->val$initY:I

    iput p5, p0, Lcom/android/systemui/statusbar/phone/NavStubView$16;->val$finalCurTranslationY:F

    iput p6, p0, Lcom/android/systemui/statusbar/phone/NavStubView$16;->val$finalCurScale:F

    iput p7, p0, Lcom/android/systemui/statusbar/phone/NavStubView$16;->val$initScale:F

    iput-object p8, p0, Lcom/android/systemui/statusbar/phone/NavStubView$16;->val$action:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 10
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 1861
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavStubView$16;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {v6, v4}, Lcom/android/systemui/statusbar/phone/NavStubView;->-set2(Lcom/android/systemui/statusbar/phone/NavStubView;F)F

    .line 1862
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v2

    .line 1864
    .local v2, "fraction":F
    iget v4, p0, Lcom/android/systemui/statusbar/phone/NavStubView$16;->val$type:I

    packed-switch v4, :pswitch_data_0

    .line 1908
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavStubView$16;->val$action:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NavStubJankyFrameReporter;->caculateAnimationFrameInterval(Ljava/lang/String;)V

    .line 1909
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavStubView$16;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NavStubView;->invalidate()V

    .line 1860
    return-void

    .line 1866
    :pswitch_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavStubView$16;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get40(Lcom/android/systemui/statusbar/phone/NavStubView;)I

    move-result v4

    div-int/lit8 v3, v4, 0x2

    .line 1867
    .local v3, "xDestLoc":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavStubView$16;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get27(Lcom/android/systemui/statusbar/phone/NavStubView;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavStubView$16;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get39(Lcom/android/systemui/statusbar/phone/NavStubView;)I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavStubView$16;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get40(Lcom/android/systemui/statusbar/phone/NavStubView;)I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 1868
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavStubView$16;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get28(Lcom/android/systemui/statusbar/phone/NavStubView;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1870
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavStubView$16;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NavStubView$16;->val$initX:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NavStubView$16;->val$initX:I

    sub-int v6, v3, v6

    int-to-float v6, v6

    mul-float/2addr v6, v2

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/phone/NavStubView;->-set11(Lcom/android/systemui/statusbar/phone/NavStubView;I)I

    .line 1871
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavStubView$16;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NavStubView$16;->val$initY:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavStubView$16;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get39(Lcom/android/systemui/statusbar/phone/NavStubView;)I

    move-result v6

    iget v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView$16;->val$initY:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float/2addr v6, v2

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/phone/NavStubView;->-set12(Lcom/android/systemui/statusbar/phone/NavStubView;I)I

    goto :goto_0

    .line 1875
    .end local v3    # "xDestLoc":I
    :pswitch_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavStubView$16;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NavStubView$16;->val$finalCurTranslationY:F

    iget v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView$16;->val$finalCurScale:F

    invoke-static {v4, v6, v7, v2}, Lcom/android/systemui/statusbar/phone/NavStubView;->-wrap0(Lcom/android/systemui/statusbar/phone/NavStubView;FFF)V

    .line 1877
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavStubView$16;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get31(Lcom/android/systemui/statusbar/phone/NavStubView;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1878
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavStubView$16;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get31(Lcom/android/systemui/statusbar/phone/NavStubView;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1882
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavStubView$16;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavStubView$16;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    iget v6, v6, Lcom/android/systemui/statusbar/phone/NavStubView;->targetBgAlpha:I

    int-to-float v6, v6

    sub-float v7, v9, v2

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-static {v6, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/phone/NavStubView;->setBackgroundColor(I)V

    .line 1885
    const/4 v0, 0x0

    .line 1886
    .local v0, "destX":F
    const/4 v1, 0x0

    .line 1887
    .local v1, "destY":F
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavStubView$16;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get9(Lcom/android/systemui/statusbar/phone/NavStubView;)Landroid/graphics/RectF;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1888
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavStubView$16;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get9(Lcom/android/systemui/statusbar/phone/NavStubView;)Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavStubView$16;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get9(Lcom/android/systemui/statusbar/phone/NavStubView;)Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float v0, v4, v6

    .line 1889
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavStubView$16;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get9(Lcom/android/systemui/statusbar/phone/NavStubView;)Landroid/graphics/RectF;

    move-result-object v4

    iget v1, v4, Landroid/graphics/RectF;->bottom:F

    .line 1891
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavStubView$16;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NavStubView$16;->val$initX:I

    int-to-float v6, v6

    iget v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView$16;->val$initX:I

    int-to-float v7, v7

    sub-float v7, v0, v7

    mul-float/2addr v7, v2

    add-float/2addr v6, v7

    float-to-int v6, v6

    invoke-static {v4, v6}, Lcom/android/systemui/statusbar/phone/NavStubView;->-set11(Lcom/android/systemui/statusbar/phone/NavStubView;I)I

    .line 1892
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavStubView$16;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NavStubView$16;->val$initY:I

    int-to-float v6, v6

    iget v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView$16;->val$initY:I

    int-to-float v7, v7

    sub-float v7, v1, v7

    mul-float/2addr v7, v2

    add-float/2addr v6, v7

    float-to-int v6, v6

    invoke-static {v4, v6}, Lcom/android/systemui/statusbar/phone/NavStubView;->-set12(Lcom/android/systemui/statusbar/phone/NavStubView;I)I

    .line 1894
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavStubView$16;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NavStubView$16;->val$initScale:F

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView$16;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get10(Lcom/android/systemui/statusbar/phone/NavStubView;)F

    move-result v7

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NavStubView$16;->val$initScale:F

    sub-float/2addr v7, v8

    mul-float/2addr v7, v2

    add-float/2addr v6, v7

    invoke-static {v4, v6}, Lcom/android/systemui/statusbar/phone/NavStubView;->-set13(Lcom/android/systemui/statusbar/phone/NavStubView;F)F

    .line 1895
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavStubView$16;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavStubView$16;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get10(Lcom/android/systemui/statusbar/phone/NavStubView;)F

    move-result v6

    sub-float v6, v9, v6

    mul-float/2addr v6, v2

    invoke-static {v4, v6}, Lcom/android/systemui/statusbar/phone/NavStubView;->-set3(Lcom/android/systemui/statusbar/phone/NavStubView;F)F

    .line 1898
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavStubView$16;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavStubView$16;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get22(Lcom/android/systemui/statusbar/phone/NavStubView;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavStubView$16;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get25(Lcom/android/systemui/statusbar/phone/NavStubView;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    move v4, v5

    :goto_1
    invoke-static {v6, v4}, Lcom/android/systemui/statusbar/phone/NavStubView;->-set15(Lcom/android/systemui/statusbar/phone/NavStubView;I)I

    goto/16 :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavStubView$16;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get42(Lcom/android/systemui/statusbar/phone/NavStubView;)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    float-to-int v4, v4

    goto :goto_1

    .line 1901
    .end local v0    # "destX":F
    .end local v1    # "destY":F
    :pswitch_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavStubView$16;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NavStubView$16;->val$initX:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView$16;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get38(Lcom/android/systemui/statusbar/phone/NavStubView;)I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NavStubView$16;->val$initX:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    mul-float/2addr v7, v2

    add-float/2addr v6, v7

    float-to-int v6, v6

    invoke-static {v4, v6}, Lcom/android/systemui/statusbar/phone/NavStubView;->-set11(Lcom/android/systemui/statusbar/phone/NavStubView;I)I

    .line 1902
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavStubView$16;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NavStubView$16;->val$initY:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView$16;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get37(Lcom/android/systemui/statusbar/phone/NavStubView;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x3

    div-int/lit8 v7, v7, 0x4

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NavStubView$16;->val$initY:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    mul-float/2addr v7, v2

    add-float/2addr v6, v7

    float-to-int v6, v6

    invoke-static {v4, v6}, Lcom/android/systemui/statusbar/phone/NavStubView;->-set12(Lcom/android/systemui/statusbar/phone/NavStubView;I)I

    .line 1904
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavStubView$16;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavStubView$16;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    iget v6, v6, Lcom/android/systemui/statusbar/phone/NavStubView;->targetBgAlpha:I

    int-to-float v6, v6

    sub-float v7, v9, v2

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-static {v6, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/NavStubView;->setBackgroundColor(I)V

    .line 1905
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavStubView$16;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    sub-float v5, v9, v2

    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/phone/NavStubView;->-set1(Lcom/android/systemui/statusbar/phone/NavStubView;F)F

    goto/16 :goto_0

    .line 1864
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
