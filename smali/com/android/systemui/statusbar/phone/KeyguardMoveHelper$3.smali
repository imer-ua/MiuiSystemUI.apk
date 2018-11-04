.class Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardMoveHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->startHintAnimationPhase1(ZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancelled:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;

.field final synthetic val$onFinishedListener:Ljava/lang/Runnable;

.field final synthetic val$right:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;Ljava/lang/Runnable;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;
    .param p2, "val$onFinishedListener"    # Ljava/lang/Runnable;
    .param p3, "val$right"    # Z

    .prologue
    .line 252
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$3;->val$onFinishedListener:Ljava/lang/Runnable;

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$3;->val$right:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$3;->mCancelled:Z

    .line 256
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 262
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$3;->mCancelled:Z

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->-set0(Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 264
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$3;->val$onFinishedListener:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 261
    :goto_0
    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$3;->val$right:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$3;->val$onFinishedListener:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->-wrap2(Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;ZLjava/lang/Runnable;)V

    goto :goto_0
.end method
