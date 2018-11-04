.class Lcom/android/keyguard/charge/MiuiWirelessChargeController$5;
.super Ljava/lang/Object;
.source "MiuiWirelessChargeController.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/charge/MiuiWirelessChargeController;->showWirelessChargeAnimation(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/charge/MiuiWirelessChargeController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/charge/MiuiWirelessChargeController;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController$5;->this$0:Lcom/android/keyguard/charge/MiuiWirelessChargeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 269
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController$5;->this$0:Lcom/android/keyguard/charge/MiuiWirelessChargeController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->-set3(Lcom/android/keyguard/charge/MiuiWirelessChargeController;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 263
    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController$5;->this$0:Lcom/android/keyguard/charge/MiuiWirelessChargeController;

    invoke-static {v0}, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->-get10(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 264
    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController$5;->this$0:Lcom/android/keyguard/charge/MiuiWirelessChargeController;

    invoke-static {v0}, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->-get7(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 265
    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController$5;->this$0:Lcom/android/keyguard/charge/MiuiWirelessChargeController;

    invoke-static {v0}, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->-wrap4(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)V

    .line 261
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 256
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController$5;->this$0:Lcom/android/keyguard/charge/MiuiWirelessChargeController;

    invoke-static {v0}, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->-get10(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 251
    return-void
.end method
