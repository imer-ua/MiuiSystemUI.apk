.class Lcom/android/systemui/recents/views/CircleAndTickAnimView$3;
.super Ljava/lang/Object;
.source "CircleAndTickAnimView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/CircleAndTickAnimView;->initAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/CircleAndTickAnimView;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/CircleAndTickAnimView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/views/CircleAndTickAnimView;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView$3;->this$0:Lcom/android/systemui/recents/views/CircleAndTickAnimView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 97
    iget-object v1, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView$3;->this$0:Lcom/android/systemui/recents/views/CircleAndTickAnimView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->-set1(Lcom/android/systemui/recents/views/CircleAndTickAnimView;F)F

    .line 98
    iget-object v0, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView$3;->this$0:Lcom/android/systemui/recents/views/CircleAndTickAnimView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->invalidate()V

    .line 96
    return-void
.end method
