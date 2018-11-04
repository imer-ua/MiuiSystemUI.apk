.class Lcom/android/systemui/statusbar/stack/ViewState$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/stack/ViewState;->startPaddingTopAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V
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
    .line 614
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/ViewState$8;->this$0:Lcom/android/systemui/statusbar/stack/ViewState;

    iput-object p2, p0, Lcom/android/systemui/statusbar/stack/ViewState$8;->val$child:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 617
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/ViewState$8;->val$child:Landroid/view/View;

    const v1, 0x9120011

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 618
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/ViewState$8;->val$child:Landroid/view/View;

    const v1, 0x9120027

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 619
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/ViewState$8;->val$child:Landroid/view/View;

    const v1, 0x912001c

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 616
    return-void
.end method
