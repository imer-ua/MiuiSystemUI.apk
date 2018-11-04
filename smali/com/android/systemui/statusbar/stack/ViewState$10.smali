.class Lcom/android/systemui/statusbar/stack/ViewState$10;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ViewState.java"


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
    .line 658
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/ViewState$10;->this$0:Lcom/android/systemui/statusbar/stack/ViewState;

    iput-object p2, p0, Lcom/android/systemui/statusbar/stack/ViewState$10;->val$child:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 661
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/ViewState$10;->val$child:Landroid/view/View;

    const v1, 0x9120012

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 662
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/ViewState$10;->val$child:Landroid/view/View;

    const v1, 0x9120028

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 663
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/ViewState$10;->val$child:Landroid/view/View;

    const v1, 0x912001d

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 660
    return-void
.end method
