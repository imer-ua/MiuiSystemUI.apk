.class final Lcom/android/systemui/statusbar/notification/PropertyAnimator$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PropertyAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/PropertyAnimator;->startAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;FLcom/android/systemui/statusbar/stack/AnimationProperties;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$animationEndTag:I

.field final synthetic val$animationStartTag:I

.field final synthetic val$animatorTag:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;III)V
    .locals 0
    .param p2, "val$animatorTag"    # I
    .param p3, "val$animationStartTag"    # I
    .param p4, "val$animationEndTag"    # I

    .prologue
    .line 95
    .local p1, "val$view":Landroid/view/View;, "TT;"
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/PropertyAnimator$2;->val$view:Landroid/view/View;

    iput p2, p0, Lcom/android/systemui/statusbar/notification/PropertyAnimator$2;->val$animatorTag:I

    iput p3, p0, Lcom/android/systemui/statusbar/notification/PropertyAnimator$2;->val$animationStartTag:I

    iput p4, p0, Lcom/android/systemui/statusbar/notification/PropertyAnimator$2;->val$animationEndTag:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/PropertyAnimator$2;->val$view:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/PropertyAnimator$2;->val$animatorTag:I

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 99
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/PropertyAnimator$2;->val$view:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/PropertyAnimator$2;->val$animationStartTag:I

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 100
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/PropertyAnimator$2;->val$view:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/PropertyAnimator$2;->val$animationEndTag:I

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 97
    return-void
.end method
