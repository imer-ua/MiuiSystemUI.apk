.class Lcom/android/systemui/statusbar/stack/ViewState$9;
.super Ljava/lang/Object;
.source "ViewState.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/stack/ViewState;->startPaddingBottomAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/stack/ViewState;

.field final synthetic val$child:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/stack/ViewState;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/stack/ViewState;
    .param p2, "val$child"    # Landroid/view/View;

    .prologue
    .line 639
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/ViewState$9;->this$0:Lcom/android/systemui/statusbar/stack/ViewState;

    iput-object p2, p0, Lcom/android/systemui/statusbar/stack/ViewState$9;->val$child:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 642
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/ViewState$9;->val$child:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/ViewState$9;->val$child:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/ViewState$9;->val$child:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    .line 643
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/ViewState$9;->val$child:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 642
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 641
    return-void
.end method
