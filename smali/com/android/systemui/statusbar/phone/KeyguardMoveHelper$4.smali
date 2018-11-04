.class Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardMoveHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->startUnlockHintAnimationPhase2(ZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;

.field final synthetic val$onFinishedListener:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;
    .param p2, "val$onFinishedListener"    # Ljava/lang/Runnable;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$4;->val$onFinishedListener:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->-set0(Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 285
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$4;->val$onFinishedListener:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 283
    return-void
.end method
