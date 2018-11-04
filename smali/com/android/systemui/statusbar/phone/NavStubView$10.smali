.class Lcom/android/systemui/statusbar/phone/NavStubView$10;
.super Ljava/lang/Object;
.source "NavStubView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NavStubView;->startHomeAnimation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

.field final synthetic val$finalCurScale:F

.field final synthetic val$finalCurTranslationY:F

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavStubView;IFF)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/NavStubView;
    .param p2, "val$type"    # I
    .param p3, "val$finalCurTranslationY"    # F
    .param p4, "val$finalCurScale"    # F

    .prologue
    .line 1633
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavStubView$10;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/NavStubView$10;->val$type:I

    iput p3, p0, Lcom/android/systemui/statusbar/phone/NavStubView$10;->val$finalCurTranslationY:F

    iput p4, p0, Lcom/android/systemui/statusbar/phone/NavStubView$10;->val$finalCurScale:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 1636
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavStubView$10;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v4, v3}, Lcom/android/systemui/statusbar/phone/NavStubView;->-set2(Lcom/android/systemui/statusbar/phone/NavStubView;F)F

    .line 1637
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    .line 1638
    .local v1, "fraction":F
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1639
    .local v0, "alpha":F
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavStubView$10;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get3(Lcom/android/systemui/statusbar/phone/NavStubView;)F

    move-result v2

    .line 1641
    .local v2, "scale":F
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavStubView$10;->val$type:I

    packed-switch v3, :pswitch_data_0

    .line 1635
    :cond_0
    :goto_0
    return-void

    .line 1644
    :pswitch_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavStubView$10;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NavStubView$10;->val$finalCurTranslationY:F

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NavStubView$10;->val$finalCurScale:F

    invoke-static {v3, v4, v5, v1}, Lcom/android/systemui/statusbar/phone/NavStubView;->-wrap0(Lcom/android/systemui/statusbar/phone/NavStubView;FFF)V

    goto :goto_0

    .line 1648
    :pswitch_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavStubView$10;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get18(Lcom/android/systemui/statusbar/phone/NavStubView;)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1650
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/Constants;->HOME_LAUCNHER_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4, v0, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->changeAlphaScaleForFsGesture(Ljava/lang/String;FF)V

    goto :goto_0

    .line 1641
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
