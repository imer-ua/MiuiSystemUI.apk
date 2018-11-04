.class Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardMoveHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->fling(FZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;

.field final synthetic val$right:Z

.field final synthetic val$snapBack:Z

.field final synthetic val$vel:F


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;ZZF)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;
    .param p2, "val$snapBack"    # Z
    .param p3, "val$right"    # Z
    .param p4, "val$vel"    # F

    .prologue
    .line 354
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$7;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$7;->val$snapBack:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$7;->val$right:Z

    iput p4, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$7;->val$vel:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 357
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$7;->val$snapBack:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$7;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->-get1(Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 358
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$7;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->-get0(Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;)Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$7;->val$right:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$7;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->-get2(Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;)F

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$7;->val$vel:F

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;->triggerAction(ZFF)V

    .line 356
    :cond_0
    return-void
.end method
