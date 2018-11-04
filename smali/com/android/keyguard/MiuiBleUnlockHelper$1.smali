.class Lcom/android/keyguard/MiuiBleUnlockHelper$1;
.super Ljava/lang/Object;
.source "MiuiBleUnlockHelper.java"

# interfaces
.implements Lmiui/bluetooth/ble/MiBleProfile$IProfileStateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/MiuiBleUnlockHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/MiuiBleUnlockHelper;


# direct methods
.method constructor <init>(Lcom/android/keyguard/MiuiBleUnlockHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/MiuiBleUnlockHelper;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/keyguard/MiuiBleUnlockHelper$1;->this$0:Lcom/android/keyguard/MiuiBleUnlockHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 81
    const-string/jumbo v0, "MiuiBleUnlockHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ble state change onState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/android/keyguard/MiuiBleUnlockHelper$1;->this$0:Lcom/android/keyguard/MiuiBleUnlockHelper;

    invoke-static {v0}, Lcom/android/keyguard/MiuiBleUnlockHelper;->-get1(Lcom/android/keyguard/MiuiBleUnlockHelper;)Lmiui/bluetooth/ble/MiBleUnlockProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/MiuiBleUnlockHelper$1;->this$0:Lcom/android/keyguard/MiuiBleUnlockHelper;

    invoke-static {v0}, Lcom/android/keyguard/MiuiBleUnlockHelper;->-get2(Lcom/android/keyguard/MiuiBleUnlockHelper;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/keyguard/MiuiBleUnlockHelper$1;->this$0:Lcom/android/keyguard/MiuiBleUnlockHelper;

    invoke-static {v0}, Lcom/android/keyguard/MiuiBleUnlockHelper;->-get3(Lcom/android/keyguard/MiuiBleUnlockHelper;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowingAndNotOccluded()Z

    move-result v0

    .line 83
    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/keyguard/MiuiBleUnlockHelper$1;->this$0:Lcom/android/keyguard/MiuiBleUnlockHelper;

    invoke-static {v0}, Lcom/android/keyguard/MiuiBleUnlockHelper;->-wrap0(Lcom/android/keyguard/MiuiBleUnlockHelper;)V

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/MiuiBleUnlockHelper$1;->this$0:Lcom/android/keyguard/MiuiBleUnlockHelper;

    invoke-virtual {v0}, Lcom/android/keyguard/MiuiBleUnlockHelper;->unregisterUnlockListener()V

    goto :goto_0
.end method
