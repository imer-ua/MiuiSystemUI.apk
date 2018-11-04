.class Lcom/android/systemui/keyguard/KeyguardViewMediator$17;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/keyguard/KeyguardViewMediator;->updateActivityLockScreenState(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field final synthetic val$showing:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p2, "val$showing"    # Z

    .prologue
    .line 2094
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$17;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iput-boolean p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$17;->val$showing:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2098
    :try_start_0
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$17;->val$showing:Z

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$17;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get17(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v2

    invoke-static {v1, v2}, Landroid/app/ActivityManagerCompat;->setLockScreenShown(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2096
    :goto_0
    return-void

    .line 2099
    :catch_0
    move-exception v0

    .line 2100
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
