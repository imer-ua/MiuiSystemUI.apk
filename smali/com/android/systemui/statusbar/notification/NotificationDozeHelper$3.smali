.class Lcom/android/systemui/statusbar/notification/NotificationDozeHelper$3;
.super Ljava/lang/Object;
.source "NotificationDozeHelper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;->setIntensityDark(Lcom/android/systemui/util/function/Consumer;ZZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;

.field final synthetic val$listener:Lcom/android/systemui/util/function/Consumer;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;Lcom/android/systemui/util/function/Consumer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;

    .prologue
    .line 81
    .local p2, "val$listener":Lcom/android/systemui/util/function/Consumer;, "Lcom/android/systemui/util/function/Consumer<Ljava/lang/Float;>;"
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper$3;->this$0:Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper$3;->val$listener:Lcom/android/systemui/util/function/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "a"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 84
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper$3;->val$listener:Lcom/android/systemui/util/function/Consumer;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-interface {v1, v0}, Lcom/android/systemui/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 83
    return-void
.end method
