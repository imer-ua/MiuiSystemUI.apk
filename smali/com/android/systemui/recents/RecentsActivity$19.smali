.class Lcom/android/systemui/recents/RecentsActivity$19;
.super Ljava/lang/Object;
.source "RecentsActivity.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/RecentsActivity;->startHomeAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/RecentsActivity;

.field final synthetic val$ssp:Lcom/android/systemui/recents/misc/SystemServicesProxy;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/RecentsActivity;Lcom/android/systemui/recents/misc/SystemServicesProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/RecentsActivity;
    .param p2, "val$ssp"    # Lcom/android/systemui/recents/misc/SystemServicesProxy;

    .prologue
    .line 1589
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsActivity$19;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    iput-object p2, p0, Lcom/android/systemui/recents/RecentsActivity$19;->val$ssp:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 1592
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1593
    .local v0, "animatedValue":F
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    .line 1594
    .local v1, "fraction":F
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity$19;->val$ssp:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    const-string/jumbo v3, "com.miui.home"

    invoke-virtual {v2, v3, v1, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->changeAlphaScaleForFsGesture(Ljava/lang/String;FF)V

    .line 1591
    return-void
.end method
