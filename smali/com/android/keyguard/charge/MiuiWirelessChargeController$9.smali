.class Lcom/android/keyguard/charge/MiuiWirelessChargeController$9;
.super Landroid/os/AsyncTask;
.source "MiuiWirelessChargeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/charge/MiuiWirelessChargeController;->checkWirelessChargeEfficiency()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/charge/MiuiWirelessChargeController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/charge/MiuiWirelessChargeController;

    .prologue
    .line 340
    iput-object p1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController$9;->this$0:Lcom/android/keyguard/charge/MiuiWirelessChargeController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 343
    const/4 v2, 0x0

    .line 344
    .local v2, "reader":Ljava/io/FileReader;
    const/4 v4, -0x1

    .line 346
    .local v4, "value":I
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    const-string/jumbo v5, "/sys/class/power_supply/wireless/signal_strength"

    invoke-direct {v3, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    .local v3, "reader":Ljava/io/FileReader;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileReader;->read()I

    .end local v2    # "reader":Ljava/io/FileReader;
    move-result v4

    .line 348
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v2, v3

    .line 354
    .end local v3    # "reader":Ljava/io/FileReader;
    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    return-object v5

    .line 351
    .restart local v2    # "reader":Ljava/io/FileReader;
    :catch_0
    move-exception v1

    .line 352
    .end local v2    # "reader":Ljava/io/FileReader;
    .local v1, "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 349
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "reader":Ljava/io/FileReader;
    :catch_1
    move-exception v0

    .line 350
    .end local v2    # "reader":Ljava/io/FileReader;
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 349
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "reader":Ljava/io/FileReader;
    :catch_2
    move-exception v0

    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    move-object v2, v3

    .end local v3    # "reader":Ljava/io/FileReader;
    .local v2, "reader":Ljava/io/FileReader;
    goto :goto_2

    .line 351
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "reader":Ljava/io/FileReader;
    .restart local v3    # "reader":Ljava/io/FileReader;
    :catch_3
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    move-object v2, v3

    .end local v3    # "reader":Ljava/io/FileReader;
    .restart local v2    # "reader":Ljava/io/FileReader;
    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 342
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/keyguard/charge/MiuiWirelessChargeController$9;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/Integer;

    .prologue
    .line 359
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x30

    if-ne v0, v1, :cond_1

    .line 361
    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController$9;->this$0:Lcom/android/keyguard/charge/MiuiWirelessChargeController;

    invoke-static {v0}, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->-wrap1(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)V

    .line 362
    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController$9;->this$0:Lcom/android/keyguard/charge/MiuiWirelessChargeController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->-wrap2(Lcom/android/keyguard/charge/MiuiWirelessChargeController;Z)V

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 363
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x31

    if-ne v0, v1, :cond_2

    .line 365
    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController$9;->this$0:Lcom/android/keyguard/charge/MiuiWirelessChargeController;

    invoke-static {v0}, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->-get3(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController$9;->this$0:Lcom/android/keyguard/charge/MiuiWirelessChargeController;

    invoke-static {v1}, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->-get11(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 366
    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController$9;->this$0:Lcom/android/keyguard/charge/MiuiWirelessChargeController;

    invoke-static {v0}, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->-get5(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController$9;->this$0:Lcom/android/keyguard/charge/MiuiWirelessChargeController;

    invoke-static {v0}, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->-get5(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;->dismiss()V

    goto :goto_0

    .line 369
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x32

    if-eq v0, v1, :cond_0

    .line 372
    const-string/jumbo v0, "MiuiWirelessChargeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "impossible value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 356
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/keyguard/charge/MiuiWirelessChargeController$9;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
