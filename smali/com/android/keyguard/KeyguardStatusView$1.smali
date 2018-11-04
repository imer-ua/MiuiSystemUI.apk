.class Lcom/android/keyguard/KeyguardStatusView$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardStatusView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardStatusView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardStatusView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardStatusView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardStatusView;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/keyguard/KeyguardStatusView$1;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishedGoingToSleep(I)V
    .locals 2
    .param p1, "why"    # I

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView$1;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardStatusView;->-wrap1(Lcom/android/keyguard/KeyguardStatusView;Z)V

    .line 85
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 3
    .param p1, "showing"    # Z

    .prologue
    .line 72
    if-eqz p1, :cond_0

    .line 73
    const-string/jumbo v0, "KeyguardStatusView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "refresh statusview showing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView$1;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardStatusView;->-wrap0(Lcom/android/keyguard/KeyguardStatusView;)V

    .line 75
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView$1;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardStatusView;->-wrap2(Lcom/android/keyguard/KeyguardStatusView;)V

    .line 71
    :cond_0
    return-void
.end method

.method public onStartedWakingUp()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView$1;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardStatusView;->-wrap1(Lcom/android/keyguard/KeyguardStatusView;Z)V

    .line 80
    return-void
.end method

.method public onTimeChanged()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView$1;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardStatusView;->-wrap0(Lcom/android/keyguard/KeyguardStatusView;)V

    .line 66
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView$1;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardStatusView;->-wrap0(Lcom/android/keyguard/KeyguardStatusView;)V

    .line 92
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView$1;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardStatusView;->-wrap2(Lcom/android/keyguard/KeyguardStatusView;)V

    .line 90
    return-void
.end method
