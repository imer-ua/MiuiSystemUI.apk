.class Lcom/android/keyguard/KeyguardPINView$3;
.super Ljava/lang/Object;
.source "KeyguardPINView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardPINView;->startDisappearAnimation(Ljava/lang/Runnable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardPINView;

.field final synthetic val$finishRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardPINView;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardPINView;
    .param p2, "val$finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPINView$3;->this$0:Lcom/android/keyguard/KeyguardPINView;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardPINView$3;->val$finishRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 205
    const-string/jumbo v0, "KeyguardPINView"

    const-string/jumbo v1, "startDisappearAnimation finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView$3;->this$0:Lcom/android/keyguard/KeyguardPINView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardPINView;->-wrap0(Lcom/android/keyguard/KeyguardPINView;Z)V

    .line 207
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView$3;->val$finishRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView$3;->val$finishRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 204
    :cond_0
    return-void
.end method