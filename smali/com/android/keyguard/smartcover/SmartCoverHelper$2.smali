.class Lcom/android/keyguard/smartcover/SmartCoverHelper$2;
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
    .line 99
    iput-object p1, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper$2;->this$0:Lcom/android/keyguard/smartcover/SmartCoverHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x5

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 102
    const-string/jumbo v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 103
    const-string/jumbo v4, "status"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 105
    .local v1, "status":I
    const-string/jumbo v4, "plugged"

    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_4

    const/4 v0, 0x1

    .line 107
    .local v0, "plugged":Z
    :goto_0
    iget-object v4, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper$2;->this$0:Lcom/android/keyguard/smartcover/SmartCoverHelper;

    if-eq v1, v6, :cond_0

    .line 108
    const/4 v5, 0x2

    if-ne v1, v5, :cond_5

    .line 107
    .end local v0    # "plugged":Z
    :cond_0
    :goto_1
    invoke-static {v4, v0}, Lcom/android/keyguard/smartcover/SmartCoverHelper;->-set0(Lcom/android/keyguard/smartcover/SmartCoverHelper;Z)Z

    .line 110
    iget-object v4, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper$2;->this$0:Lcom/android/keyguard/smartcover/SmartCoverHelper;

    const-string/jumbo v5, "level"

    invoke-virtual {p2, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/keyguard/smartcover/SmartCoverHelper;->-set5(Lcom/android/keyguard/smartcover/SmartCoverHelper;I)I

    .line 111
    iget-object v4, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper$2;->this$0:Lcom/android/keyguard/smartcover/SmartCoverHelper;

    if-eq v1, v6, :cond_1

    iget-object v5, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper$2;->this$0:Lcom/android/keyguard/smartcover/SmartCoverHelper;

    invoke-static {v5}, Lcom/android/keyguard/smartcover/SmartCoverHelper;->-get2(Lcom/android/keyguard/smartcover/SmartCoverHelper;)I

    move-result v5

    const/16 v6, 0x64

    if-lt v5, v6, :cond_2

    :cond_1
    move v2, v3

    :cond_2
    invoke-static {v4, v2}, Lcom/android/keyguard/smartcover/SmartCoverHelper;->-set1(Lcom/android/keyguard/smartcover/SmartCoverHelper;Z)Z

    .line 112
    iget-object v2, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper$2;->this$0:Lcom/android/keyguard/smartcover/SmartCoverHelper;

    invoke-static {v2}, Lcom/android/keyguard/smartcover/SmartCoverHelper;->-get4(Lcom/android/keyguard/smartcover/SmartCoverHelper;)Lcom/android/keyguard/smartcover/SmartCoverView;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 113
    iget-object v2, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper$2;->this$0:Lcom/android/keyguard/smartcover/SmartCoverHelper;

    invoke-static {v2}, Lcom/android/keyguard/smartcover/SmartCoverHelper;->-get4(Lcom/android/keyguard/smartcover/SmartCoverHelper;)Lcom/android/keyguard/smartcover/SmartCoverView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper$2;->this$0:Lcom/android/keyguard/smartcover/SmartCoverHelper;

    invoke-static {v3}, Lcom/android/keyguard/smartcover/SmartCoverHelper;->-get0(Lcom/android/keyguard/smartcover/SmartCoverHelper;)Z

    move-result v3

    iget-object v4, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper$2;->this$0:Lcom/android/keyguard/smartcover/SmartCoverHelper;

    invoke-static {v4}, Lcom/android/keyguard/smartcover/SmartCoverHelper;->-get1(Lcom/android/keyguard/smartcover/SmartCoverHelper;)Z

    move-result v4

    iget-object v5, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper$2;->this$0:Lcom/android/keyguard/smartcover/SmartCoverHelper;

    invoke-static {v5}, Lcom/android/keyguard/smartcover/SmartCoverHelper;->-get2(Lcom/android/keyguard/smartcover/SmartCoverHelper;)I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/keyguard/smartcover/SmartCoverView;->onBatteryInfoRefresh(ZZI)V

    .line 101
    .end local v1    # "status":I
    :cond_3
    return-void

    .line 105
    .restart local v1    # "status":I
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "plugged":Z
    goto :goto_0

    :cond_5
    move v0, v2

    .line 107
    goto :goto_1
.end method
