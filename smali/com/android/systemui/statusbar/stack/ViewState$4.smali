.class Lcom/android/systemui/statusbar/stack/ViewState$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/stack/ViewState;->startAlphaAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public mWasCancelled:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/stack/ViewState;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$newEndValue:F


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/stack/ViewState;Landroid/view/View;F)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/stack/ViewState;
    .param p2, "val$child"    # Landroid/view/View;
    .param p3, "val$newEndValue"    # F

    .prologue
    .line 407
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/ViewState$4;->this$0:Lcom/android/systemui/statusbar/stack/ViewState;

    iput-object p2, p0, Lcom/android/systemui/statusbar/stack/ViewState$4;->val$child:Landroid/view/View;

    iput p3, p0, Lcom/android/systemui/statusbar/stack/ViewState$4;->val$newEndValue:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 424
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/ViewState$4;->mWasCancelled:Z

    .line 423
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 412
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/ViewState$4;->val$child:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 413
    iget v0, p0, Lcom/android/systemui/statusbar/stack/ViewState$4;->val$newEndValue:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/ViewState$4;->mWasCancelled:Z

    if-eqz v0, :cond_1

    .line 417
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/ViewState$4;->val$child:Landroid/view/View;

    const v1, 0x9120013

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 418
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/ViewState$4;->val$child:Landroid/view/View;

    const v1, 0x912002b

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 419
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/ViewState$4;->val$child:Landroid/view/View;

    const v1, 0x9120020

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 411
    return-void

    .line 414
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/ViewState$4;->val$child:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 429
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/ViewState$4;->mWasCancelled:Z

    .line 428
    return-void
.end method
