.class Lcom/android/systemui/qs/QSContainerImpl$1;
.super Ljava/lang/Object;
.source "QSContainerImpl.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSContainerImpl;->updateIndicator(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSContainerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSContainerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/QSContainerImpl;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/android/systemui/qs/QSContainerImpl$1;->this$0:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 260
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 261
    .local v0, "progress":F
    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl$1;->this$0:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-static {v1}, Lcom/android/systemui/qs/QSContainerImpl;->-get0(Lcom/android/systemui/qs/QSContainerImpl;)Lcom/android/systemui/qs/CaretDrawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/CaretDrawable;->setCaretProgress(F)V

    .line 259
    return-void
.end method
