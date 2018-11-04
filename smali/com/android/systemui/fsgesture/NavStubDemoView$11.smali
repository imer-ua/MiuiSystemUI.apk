.class Lcom/android/systemui/fsgesture/NavStubDemoView$11;
.super Ljava/lang/Object;
.source "NavStubDemoView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/fsgesture/NavStubDemoView;->startRecentTaskAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

.field final synthetic val$destX:F

.field final synthetic val$destY:F

.field final synthetic val$initX:I

.field final synthetic val$initY:I


# direct methods
.method constructor <init>(Lcom/android/systemui/fsgesture/NavStubDemoView;IFIF)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/fsgesture/NavStubDemoView;
    .param p2, "val$initX"    # I
    .param p3, "val$destX"    # F
    .param p4, "val$initY"    # I
    .param p5, "val$destY"    # F

    .prologue
    .line 663
    iput-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$11;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    iput p2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$11;->val$initX:I

    iput p3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$11;->val$destX:F

    iput p4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$11;->val$initY:I

    iput p5, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$11;->val$destY:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 666
    iget-object v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$11;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    const-string/jumbo v1, "scale"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v2, v1}, Lcom/android/systemui/fsgesture/NavStubDemoView;->-set2(Lcom/android/systemui/fsgesture/NavStubDemoView;F)F

    .line 667
    iget-object v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$11;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    const-string/jumbo v1, "bottomDec"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/android/systemui/fsgesture/NavStubDemoView;->-set0(Lcom/android/systemui/fsgesture/NavStubDemoView;I)I

    .line 668
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 670
    .local v0, "fraction":F
    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$11;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    iget v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$11;->val$initX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$11;->val$destX:F

    iget v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$11;->val$initX:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Lcom/android/systemui/fsgesture/NavStubDemoView;->-set5(Lcom/android/systemui/fsgesture/NavStubDemoView;I)I

    .line 671
    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$11;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    iget v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$11;->val$initY:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$11;->val$destY:F

    iget v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$11;->val$initY:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Lcom/android/systemui/fsgesture/NavStubDemoView;->-set6(Lcom/android/systemui/fsgesture/NavStubDemoView;I)I

    .line 672
    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$11;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-virtual {v1}, Lcom/android/systemui/fsgesture/NavStubDemoView;->invalidate()V

    .line 665
    return-void
.end method
