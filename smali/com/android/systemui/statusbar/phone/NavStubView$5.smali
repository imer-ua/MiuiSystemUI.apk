.class Lcom/android/systemui/statusbar/phone/NavStubView$5;
.super Ljava/lang/Object;
.source "NavStubView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NavStubView;->initValueAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavStubView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavStubView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/NavStubView;

    .prologue
    .line 447
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavStubView$5;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 450
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 451
    .local v0, "value":F
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView$5;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v2, v0

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/NavStubView;->-wrap4(Lcom/android/systemui/statusbar/phone/NavStubView;F)V

    .line 449
    return-void
.end method