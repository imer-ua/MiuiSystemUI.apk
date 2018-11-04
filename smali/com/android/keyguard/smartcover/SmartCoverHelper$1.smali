.class Lcom/android/keyguard/smartcover/SmartCoverHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "SmartCoverHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/smartcover/SmartCoverHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/smartcover/SmartCoverHelper;


# direct methods
.method constructor <init>(Lcom/android/keyguard/smartcover/SmartCoverHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/smartcover/SmartCoverHelper;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper$1;->this$0:Lcom/android/keyguard/smartcover/SmartCoverHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 72
    const-string/jumbo v2, "miui.intent.action.SMART_COVER"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 73
    const-string/jumbo v2, "persist.sys.smartcover_mode"

    .line 74
    const/4 v5, -0x1

    .line 73
    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 75
    .local v1, "smartcoverMode":I
    const-string/jumbo v2, "is_smart_cover_open"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x0

    .line 76
    .local v0, "isClosed":Z
    :goto_0
    iget-object v5, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper$1;->this$0:Lcom/android/keyguard/smartcover/SmartCoverHelper;

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    move v2, v3

    :goto_1
    invoke-static {v5, v2}, Lcom/android/keyguard/smartcover/SmartCoverHelper;->-set4(Lcom/android/keyguard/smartcover/SmartCoverHelper;Z)Z

    .line 77
    iget-object v5, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper$1;->this$0:Lcom/android/keyguard/smartcover/SmartCoverHelper;

    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    move v2, v3

    :goto_2
    invoke-static {v5, v2}, Lcom/android/keyguard/smartcover/SmartCoverHelper;->-set3(Lcom/android/keyguard/smartcover/SmartCoverHelper;Z)Z

    .line 78
    iget-object v2, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper$1;->this$0:Lcom/android/keyguard/smartcover/SmartCoverHelper;

    invoke-static {v2, v1}, Lcom/android/keyguard/smartcover/SmartCoverHelper;->-wrap1(Lcom/android/keyguard/smartcover/SmartCoverHelper;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    iget-object v2, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper$1;->this$0:Lcom/android/keyguard/smartcover/SmartCoverHelper;

    invoke-static {v2, v0}, Lcom/android/keyguard/smartcover/SmartCoverHelper;->-set2(Lcom/android/keyguard/smartcover/SmartCoverHelper;Z)Z

    .line 80
    iget-object v2, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper$1;->this$0:Lcom/android/keyguard/smartcover/SmartCoverHelper;

    invoke-virtual {v2}, Lcom/android/keyguard/smartcover/SmartCoverHelper;->refreshSmartCover()V

    .line 83
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper$1;->this$0:Lcom/android/keyguard/smartcover/SmartCoverHelper;

    invoke-static {v2, v1}, Lcom/android/keyguard/smartcover/SmartCoverHelper;->-wrap0(Lcom/android/keyguard/smartcover/SmartCoverHelper;I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper$1;->this$0:Lcom/android/keyguard/smartcover/SmartCoverHelper;

    invoke-static {v2}, Lcom/android/keyguard/smartcover/SmartCoverHelper;->-get5(Lcom/android/keyguard/smartcover/SmartCoverHelper;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 93
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper$1;->this$0:Lcom/android/keyguard/smartcover/SmartCoverHelper;

    invoke-static {v2}, Lcom/android/keyguard/smartcover/SmartCoverHelper;->-get5(Lcom/android/keyguard/smartcover/SmartCoverHelper;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setHideLockForLid(Z)V

    .line 71
    .end local v0    # "isClosed":Z
    .end local v1    # "smartcoverMode":I
    :cond_2
    :goto_3
    return-void

    .line 75
    .restart local v1    # "smartcoverMode":I
    :cond_3
    const/4 v0, 0x1

    .restart local v0    # "isClosed":Z
    goto :goto_0

    :cond_4
    move v2, v4

    .line 76
    goto :goto_1

    :cond_5
    move v2, v4

    .line 77
    goto :goto_2

    .line 84
    :cond_6
    if-eqz v0, :cond_7

    .line 85
    iget-object v2, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper$1;->this$0:Lcom/android/keyguard/smartcover/SmartCoverHelper;

    invoke-static {v2}, Lcom/android/keyguard/smartcover/SmartCoverHelper;->-get5(Lcom/android/keyguard/smartcover/SmartCoverHelper;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setHideLockForLid(Z)V

    goto :goto_3

    .line 87
    :cond_7
    iget-object v2, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper$1;->this$0:Lcom/android/keyguard/smartcover/SmartCoverHelper;

    invoke-static {v2}, Lcom/android/keyguard/smartcover/SmartCoverHelper;->-get5(Lcom/android/keyguard/smartcover/SmartCoverHelper;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowingAndNotOccluded()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper$1;->this$0:Lcom/android/keyguard/smartcover/SmartCoverHelper;

    invoke-static {v2}, Lcom/android/keyguard/smartcover/SmartCoverHelper;->-get5(Lcom/android/keyguard/smartcover/SmartCoverHelper;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSimLockedOrMissing()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 90
    :cond_8
    :goto_4
    iget-object v2, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper$1;->this$0:Lcom/android/keyguard/smartcover/SmartCoverHelper;

    invoke-static {v2}, Lcom/android/keyguard/smartcover/SmartCoverHelper;->-get5(Lcom/android/keyguard/smartcover/SmartCoverHelper;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setHideLockForLid(Z)V

    goto :goto_3

    .line 88
    :cond_9
    iget-object v2, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper$1;->this$0:Lcom/android/keyguard/smartcover/SmartCoverHelper;

    invoke-static {v2}, Lcom/android/keyguard/smartcover/SmartCoverHelper;->-get5(Lcom/android/keyguard/smartcover/SmartCoverHelper;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->keyguardDone()V

    goto :goto_4
.end method
