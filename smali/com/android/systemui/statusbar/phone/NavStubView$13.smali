.class Lcom/android/systemui/statusbar/phone/NavStubView$13;
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

.field final synthetic val$destPivotX:I

.field final synthetic val$destPivotY:I


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavStubView;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/NavStubView;
    .param p2, "val$destPivotX"    # I
    .param p3, "val$destPivotY"    # I

    .prologue
    .line 1777
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavStubView$13;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/NavStubView$13;->val$destPivotX:I

    iput p3, p0, Lcom/android/systemui/statusbar/phone/NavStubView$13;->val$destPivotY:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 9
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 1780
    const-string/jumbo v0, "home"

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavStubJankyFrameReporter;->caculateAnimationFrameInterval(Ljava/lang/String;)V

    .line 1781
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView$13;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    const-string/jumbo v0, "yScale"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/phone/NavStubView;->-set18(Lcom/android/systemui/statusbar/phone/NavStubView;F)F

    .line 1782
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView$13;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    const-string/jumbo v0, "xScale"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/phone/NavStubView;->-set17(Lcom/android/systemui/statusbar/phone/NavStubView;F)F

    .line 1784
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView$13;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    const-string/jumbo v0, "yPivot"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/phone/NavStubView;->-set12(Lcom/android/systemui/statusbar/phone/NavStubView;I)I

    .line 1785
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView$13;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    const-string/jumbo v0, "xPivot"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/phone/NavStubView;->-set11(Lcom/android/systemui/statusbar/phone/NavStubView;I)I

    .line 1786
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/NavStubView;->IS_E10:Z

    if-eqz v0, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    .line 1788
    .local v3, "scale":F
    :goto_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    const/high16 v1, 0x3f400000    # 0.75f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 1789
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView$13;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NavStubView;->-set7(Lcom/android/systemui/statusbar/phone/NavStubView;Z)Z

    .line 1792
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Constants;->HOME_LAUCNHER_PACKAGE_NAME:Ljava/lang/String;

    .line 1793
    const-string/jumbo v2, "homeAlpha"

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 1795
    iget v4, p0, Lcom/android/systemui/statusbar/phone/NavStubView$13;->val$destPivotX:I

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NavStubView$13;->val$destPivotY:I

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavStubView$13;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get29(Lcom/android/systemui/statusbar/phone/NavStubView;)I

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView$13;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get30(Lcom/android/systemui/statusbar/phone/NavStubView;)I

    move-result v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavStubView$13;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get23(Lcom/android/systemui/statusbar/phone/NavStubView;)Z

    move-result v8

    .line 1792
    invoke-virtual/range {v0 .. v8}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->changeAlphaScaleForFsGesture(Ljava/lang/String;FFIIIIZ)V

    .line 1796
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView$13;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavStubView;->invalidate()V

    .line 1779
    return-void

    .line 1786
    .end local v3    # "scale":F
    :cond_1
    const-string/jumbo v0, "homeScale"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .restart local v3    # "scale":F
    goto :goto_0
.end method
