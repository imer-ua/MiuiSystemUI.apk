.class Lcom/android/systemui/statusbar/stack/StackStateAnimator$1;
.super Lcom/android/systemui/statusbar/stack/AnimationProperties;
.source "StackStateAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/stack/StackStateAnimator;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/stack/StackStateAnimator;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$1;->this$0:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/AnimationProperties;-><init>()V

    return-void
.end method


# virtual methods
.method public getAnimationFilter()Lcom/android/systemui/statusbar/stack/AnimationFilter;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$1;->this$0:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->-get0(Lcom/android/systemui/statusbar/stack/StackStateAnimator;)Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v0

    return-object v0
.end method

.method public getAnimationFinishListener()Landroid/animation/AnimatorListenerAdapter;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$1;->this$0:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->-wrap0(Lcom/android/systemui/statusbar/stack/StackStateAnimator;)Landroid/animation/AnimatorListenerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getCustomInterpolator(Landroid/view/View;Landroid/util/Property;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "property"    # Landroid/util/Property;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$1;->this$0:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->-get4(Lcom/android/systemui/statusbar/stack/StackStateAnimator;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-virtual {v0, p2}, Landroid/util/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    sget-object v0, Lcom/android/systemui/Interpolators;->HEADS_UP_APPEAR:Landroid/view/animation/Interpolator;

    return-object v0

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$1;->this$0:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->-get5(Lcom/android/systemui/statusbar/stack/StackStateAnimator;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-virtual {v0, p2}, Landroid/util/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    sget-object v0, Lcom/android/systemui/Interpolators;->HEADS_UP_DISAPPEAR:Landroid/view/animation/Interpolator;

    return-object v0

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$1;->this$0:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->-get7(Lcom/android/systemui/statusbar/stack/StackStateAnimator;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    sget-object v0, Lcom/android/systemui/Interpolators;->BACK_EASE_OUT:Landroid/view/animation/Interpolator;

    return-object v0

    .line 115
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$1;->this$0:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->-get3(Lcom/android/systemui/statusbar/stack/StackStateAnimator;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 116
    sget-object v0, Lcom/android/systemui/Interpolators;->DECELERATE_QUART:Landroid/view/animation/Interpolator;

    return-object v0

    .line 118
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public wasAdded(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$1;->this$0:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->-get6(Lcom/android/systemui/statusbar/stack/StackStateAnimator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
