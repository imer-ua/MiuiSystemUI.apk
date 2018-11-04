.class Lcom/android/systemui/fsgesture/GestureStubView$1;
.super Ljava/lang/Object;
.source "GestureStubView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/fsgesture/GestureStubView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fsgesture/GestureStubView;


# direct methods
.method constructor <init>(Lcom/android/systemui/fsgesture/GestureStubView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/fsgesture/GestureStubView;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/systemui/fsgesture/GestureStubView$1;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView$1;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/fsgesture/GestureStubView;->-set0(Lcom/android/systemui/fsgesture/GestureStubView;Z)Z

    .line 144
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView$1;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/fsgesture/GestureStubView;->-set0(Lcom/android/systemui/fsgesture/GestureStubView;Z)Z

    .line 138
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView$1;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-static {v0}, Lcom/android/systemui/fsgesture/GestureStubView;->-get12(Lcom/android/systemui/fsgesture/GestureStubView;)Lcom/android/systemui/fsgesture/GestureStubView$H;

    move-result-object v0

    const/16 v1, 0x102

    invoke-virtual {v0, v1}, Lcom/android/systemui/fsgesture/GestureStubView$H;->removeMessages(I)V

    .line 139
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView$1;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-static {v0}, Lcom/android/systemui/fsgesture/GestureStubView;->-get9(Lcom/android/systemui/fsgesture/GestureStubView;)Lcom/android/systemui/fsgesture/GestureBackArrowView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView$1;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    const-string/jumbo v1, "onAnimationEnd"

    invoke-static {v0, v1}, Lcom/android/systemui/fsgesture/GestureStubView;->-wrap9(Lcom/android/systemui/fsgesture/GestureStubView;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 149
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView$1;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/fsgesture/GestureStubView;->-set0(Lcom/android/systemui/fsgesture/GestureStubView;Z)Z

    .line 131
    return-void
.end method
