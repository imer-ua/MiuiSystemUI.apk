.class Lcom/android/keyguard/MiuiLockPatternView$5;
.super Ljava/lang/Object;
.source "MiuiLockPatternView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/MiuiLockPatternView;->startLineEndAnimation(Lcom/android/keyguard/MiuiLockPatternView$CellState;FFFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/MiuiLockPatternView;

.field final synthetic val$startX:F

.field final synthetic val$startY:F

.field final synthetic val$state:Lcom/android/keyguard/MiuiLockPatternView$CellState;

.field final synthetic val$targetX:F

.field final synthetic val$targetY:F


# direct methods
.method constructor <init>(Lcom/android/keyguard/MiuiLockPatternView;Lcom/android/keyguard/MiuiLockPatternView$CellState;FFFF)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/MiuiLockPatternView;
    .param p2, "val$state"    # Lcom/android/keyguard/MiuiLockPatternView$CellState;
    .param p3, "val$startX"    # F
    .param p4, "val$targetX"    # F
    .param p5, "val$startY"    # F
    .param p6, "val$targetY"    # F

    .prologue
    .line 698
    iput-object p1, p0, Lcom/android/keyguard/MiuiLockPatternView$5;->this$0:Lcom/android/keyguard/MiuiLockPatternView;

    iput-object p2, p0, Lcom/android/keyguard/MiuiLockPatternView$5;->val$state:Lcom/android/keyguard/MiuiLockPatternView$CellState;

    iput p3, p0, Lcom/android/keyguard/MiuiLockPatternView$5;->val$startX:F

    iput p4, p0, Lcom/android/keyguard/MiuiLockPatternView$5;->val$targetX:F

    iput p5, p0, Lcom/android/keyguard/MiuiLockPatternView$5;->val$startY:F

    iput p6, p0, Lcom/android/keyguard/MiuiLockPatternView$5;->val$targetY:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 701
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 702
    .local v0, "t":F
    iget-object v1, p0, Lcom/android/keyguard/MiuiLockPatternView$5;->val$state:Lcom/android/keyguard/MiuiLockPatternView$CellState;

    sub-float v2, v4, v0

    iget v3, p0, Lcom/android/keyguard/MiuiLockPatternView$5;->val$startX:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/keyguard/MiuiLockPatternView$5;->val$targetX:F

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iput v2, v1, Lcom/android/keyguard/MiuiLockPatternView$CellState;->lineEndX:F

    .line 703
    iget-object v1, p0, Lcom/android/keyguard/MiuiLockPatternView$5;->val$state:Lcom/android/keyguard/MiuiLockPatternView$CellState;

    sub-float v2, v4, v0

    iget v3, p0, Lcom/android/keyguard/MiuiLockPatternView$5;->val$startY:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/keyguard/MiuiLockPatternView$5;->val$targetY:F

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iput v2, v1, Lcom/android/keyguard/MiuiLockPatternView$CellState;->lineEndY:F

    .line 704
    iget-object v1, p0, Lcom/android/keyguard/MiuiLockPatternView$5;->this$0:Lcom/android/keyguard/MiuiLockPatternView;

    invoke-virtual {v1}, Lcom/android/keyguard/MiuiLockPatternView;->invalidate()V

    .line 700
    return-void
.end method