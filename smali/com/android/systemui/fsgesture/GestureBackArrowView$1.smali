.class Lcom/android/systemui/fsgesture/GestureBackArrowView$1;
.super Ljava/lang/Object;
.source "GestureBackArrowView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/fsgesture/GestureBackArrowView;->startArrowAnimating(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fsgesture/GestureBackArrowView;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/fsgesture/GestureBackArrowView;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/fsgesture/GestureBackArrowView;
    .param p2, "val$show"    # Z

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView$1;->this$0:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    iput-boolean p2, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView$1;->val$show:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/4 v2, 0x0

    .line 222
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 223
    .local v0, "alpha":I
    iget-object v1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView$1;->this$0:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    invoke-static {v1}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->-get0(Lcom/android/systemui/fsgesture/GestureBackArrowView;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 224
    iget-object v1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView$1;->this$0:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    invoke-virtual {v1}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->invalidate()V

    .line 225
    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView$1;->val$show:Z

    if-eqz v1, :cond_1

    .line 228
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView$1;->this$0:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    invoke-static {v1, v0}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->-set1(Lcom/android/systemui/fsgesture/GestureBackArrowView;I)I

    .line 221
    return-void

    .line 226
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView$1;->this$0:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    invoke-static {v1, v2}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->-set2(Lcom/android/systemui/fsgesture/GestureBackArrowView;Z)Z

    goto :goto_0
.end method
