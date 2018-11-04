.class Lcom/android/systemui/power/PowerUI$9;
.super Ljava/lang/Object;
.source "PowerUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/power/PowerUI;->showExtremePowerSaveDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerUI;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/PowerUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/power/PowerUI;

    .prologue
    .line 465
    iput-object p1, p0, Lcom/android/systemui/power/PowerUI$9;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 469
    const/4 v0, 0x0

    .line 470
    .local v0, "bundle":Landroid/os/Bundle;
    const/4 v9, 0x0

    .line 472
    .local v9, "uri":Landroid/net/Uri;
    :try_start_0
    const-string/jumbo v10, "content://com.miui.powercenter.provider"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 473
    .local v9, "uri":Landroid/net/Uri;
    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$9;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v10, v10, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "getBatteryInfo"

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v9, v11, v12, v13}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 477
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v9    # "uri":Landroid/net/Uri;
    :goto_0
    if-nez v0, :cond_0

    .line 478
    return-void

    .line 474
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v3

    .line 475
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v10, "PowerUI"

    const-string/jumbo v11, "getBatteryInfo error"

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 481
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    const-string/jumbo v10, "last_charged_time"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 483
    .local v6, "lastChargedTime":J
    const-string/jumbo v10, "last_drained_time"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 485
    .local v4, "drainedTime":J
    const-string/jumbo v10, "last_drained_percent"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 486
    .local v2, "drainedPercent":I
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 487
    .local v1, "data":Landroid/os/Bundle;
    const-string/jumbo v10, "lastChargedTime"

    invoke-virtual {v1, v10, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 488
    const-string/jumbo v10, "drainedTime"

    invoke-virtual {v1, v10, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 489
    const-string/jumbo v10, "drainedPercent"

    invoke-virtual {v1, v10, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 490
    new-instance v8, Landroid/os/Message;

    invoke-direct {v8}, Landroid/os/Message;-><init>()V

    .line 491
    .local v8, "msg":Landroid/os/Message;
    invoke-virtual {v8, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 492
    const/4 v10, 0x1

    iput v10, v8, Landroid/os/Message;->what:I

    .line 493
    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$9;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v10}, Lcom/android/systemui/power/PowerUI;->-get3(Lcom/android/systemui/power/PowerUI;)Landroid/os/Handler;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 468
    return-void
.end method
