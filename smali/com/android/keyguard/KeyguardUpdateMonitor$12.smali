.class Lcom/android/keyguard/KeyguardUpdateMonitor$12;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .prologue
    .line 1118
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$12;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1121
    const-string/jumbo v1, "com.android.systemui.ACTION_STRONG_AUTH_TIMEOUT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1122
    const-string/jumbo v1, "com.android.systemui.USER_ID"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1123
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$12;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get12(Lcom/android/keyguard/KeyguardUpdateMonitor;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    .line 1124
    sget v2, Lcom/android/systemui/keyguard/KeyguardViewMediator;->STRONG_AUTH_REQUIRED_AFTER_TIMEOUT:I

    .line 1123
    invoke-static {v1, v2, v0}, Lcom/android/internal/widget/LockPatternUtilsCompat;->requireStrongAuth(Lcom/android/internal/widget/LockPatternUtils;II)V

    .line 1125
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$12;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap25(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V

    .line 1120
    .end local v0    # "userId":I
    :cond_0
    return-void
.end method
