.class Lcom/android/keyguard/KeyguardPatternView$4;
.super Ljava/lang/Object;
.source "KeyguardPatternView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardPatternView;->startDisappearAnimation(Ljava/lang/Runnable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardPatternView;

.field final synthetic val$finishRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardPatternView;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardPatternView;
    .param p2, "val$finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 465
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView$4;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardPatternView$4;->val$finishRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 468
    const-string/jumbo v0, "SecurityPatternView"

    const-string/jumbo v1, "startDisappearAnimation finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$4;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardPatternView;->-wrap0(Lcom/android/keyguard/KeyguardPatternView;Z)V

    .line 470
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$4;->val$finishRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$4;->val$finishRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 467
    :cond_0
    return-void
.end method
