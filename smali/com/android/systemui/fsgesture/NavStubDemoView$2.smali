.class Lcom/android/systemui/fsgesture/NavStubDemoView$2;
.super Ljava/lang/Object;
.source "NavStubDemoView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/fsgesture/NavStubDemoView;->initInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;


# direct methods
.method constructor <init>(Lcom/android/systemui/fsgesture/NavStubDemoView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/fsgesture/NavStubDemoView;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$2;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 273
    const-string/jumbo v2, "scale"

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 274
    .local v1, "curScale":F
    const-string/jumbo v2, "alpha"

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 275
    .local v0, "curAlpha":I
    iget-object v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$2;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {v2}, Lcom/android/systemui/fsgesture/NavStubDemoView;->-get5(Lcom/android/systemui/fsgesture/NavStubDemoView;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 276
    iget-object v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$2;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {v2}, Lcom/android/systemui/fsgesture/NavStubDemoView;->-get5(Lcom/android/systemui/fsgesture/NavStubDemoView;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 277
    iget-object v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$2;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {v2}, Lcom/android/systemui/fsgesture/NavStubDemoView;->-get5(Lcom/android/systemui/fsgesture/NavStubDemoView;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 272
    return-void
.end method
