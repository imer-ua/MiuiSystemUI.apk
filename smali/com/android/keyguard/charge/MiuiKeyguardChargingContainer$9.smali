.class Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$9;
.super Ljava/lang/Object;
.source "MiuiKeyguardChargingContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->setChargingInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;


# direct methods
.method constructor <init>(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    .prologue
    .line 599
    iput-object p1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$9;->this$0:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 603
    const/4 v0, 0x0

    .line 604
    .local v0, "bundle":Landroid/os/Bundle;
    const/4 v9, 0x0

    .line 606
    .local v9, "uri":Landroid/net/Uri;
    :try_start_0
    const-string/jumbo v10, "content://com.miui.powercenter.provider"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 607
    .local v9, "uri":Landroid/net/Uri;
    iget-object v10, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$9;->this$0:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    invoke-static {v10}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->-get8(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "getBatteryCurrent"

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v9, v11, v12, v13}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 611
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v9    # "uri":Landroid/net/Uri;
    :goto_0
    if-nez v0, :cond_0

    .line 612
    return-void

    .line 608
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v4

    .line 609
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 615
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    iget-object v10, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$9;->this$0:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    invoke-static {v10}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->-get8(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "getBatteryInfo"

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v9, v11, v12, v13}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 619
    :goto_1
    if-nez v0, :cond_1

    .line 620
    return-void

    .line 616
    :catch_1
    move-exception v4

    .line 617
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 623
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1
    const-string/jumbo v10, "last_charged_time"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 625
    .local v6, "lastChargedTime":J
    const-string/jumbo v10, "last_drained_time"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 627
    .local v2, "drainedTime":J
    const-string/jumbo v10, "last_drained_percent"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 628
    .local v1, "drainedPercent":I
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 629
    .local v5, "mBundle":Landroid/os/Bundle;
    const-string/jumbo v10, "lastChargedTime"

    invoke-virtual {v5, v10, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 630
    const-string/jumbo v10, "drainedTime"

    invoke-virtual {v5, v10, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 631
    const-string/jumbo v10, "drainedPercent"

    invoke-virtual {v5, v10, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 632
    new-instance v8, Landroid/os/Message;

    invoke-direct {v8}, Landroid/os/Message;-><init>()V

    .line 633
    .local v8, "msg":Landroid/os/Message;
    invoke-virtual {v8, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 634
    const/4 v10, 0x1

    iput v10, v8, Landroid/os/Message;->what:I

    .line 635
    iget-object v10, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$9;->this$0:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    iget-object v10, v10, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargeHandler:Landroid/os/Handler;

    invoke-virtual {v10, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 602
    return-void
.end method
