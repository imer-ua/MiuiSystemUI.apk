.class Lcom/android/systemui/keyguard/KeyguardViewMediator$13;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleKeyguardDone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field final synthetic val$currentUser:I


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p2, "val$currentUser"    # I

    .prologue
    .line 1953
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$13;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iput p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$13;->val$currentUser:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1956
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$13;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get13(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$13;->val$currentUser:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1957
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$13;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get13(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$13;->val$currentUser:I

    invoke-static {v0, v1}, Landroid/app/admin/DevicePolicyManagerCompat;->reportKeyguardDismissed(Landroid/app/admin/DevicePolicyManager;I)V

    .line 1955
    :cond_0
    return-void
.end method
