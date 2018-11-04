.class Lcom/android/keyguard/MiuiKeyguardMoveLeftView$5;
.super Landroid/os/AsyncTask;
.source "MiuiKeyguardMoveLeftView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->updateItemNumString(I)V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$5;->this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 292
    iget-object v3, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$5;->this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    invoke-static {v3}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->-get19(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$5;->this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    invoke-static {v3}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->-wrap0(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 294
    :try_start_0
    iget-object v3, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$5;->this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    invoke-static {v3}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->-get6(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->-get2()Landroid/net/Uri;

    move-result-object v4

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/keyguard/MiuiKeyguardUtils;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v4

    .line 295
    const-string/jumbo v5, "online_devices_count"

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 294
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 296
    .local v2, "smbundle":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$5;->this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    const-string/jumbo v4, "count"

    const-string/jumbo v5, ""

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->-set5(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    .end local v2    # "smbundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$5;->this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    invoke-static {v3}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->-get16(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$5;->this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    invoke-static {v3}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->-get8(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 303
    :try_start_1
    iget-object v3, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$5;->this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    invoke-static {v3}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->-get6(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->-get0()Landroid/net/Uri;

    move-result-object v4

    const-string/jumbo v5, "device_sum"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 304
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$5;->this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    const-string/jumbo v4, "ir_device_sum"

    const-string/jumbo v5, ""

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->-set4(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 309
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$5;->this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    invoke-static {v3}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->-get11(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$5;->this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    invoke-static {v3}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->-get24(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 311
    :try_start_2
    iget-object v3, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$5;->this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    invoke-static {v3}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->-get6(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "content://com.miui.tsmclient.provider.public"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 312
    const-string/jumbo v5, "cards_info"

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 311
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 313
    .restart local v0    # "bundle":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$5;->this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    const-string/jumbo v4, "all_cards_count"

    const-string/jumbo v5, ""

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->-set3(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 318
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_2
    :goto_2
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3

    .line 297
    :catch_0
    move-exception v1

    .line 298
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "MiuiKeyguardMoveLeftView"

    const-string/jumbo v4, "cannot find the path content://com.xiaomi.smarthome.ext_cp"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 305
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 306
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "MiuiKeyguardMoveLeftView"

    const-string/jumbo v4, "cannot find the path content://com.xiaomi.mitv.phone.remotecontroller.provider.LockScreenProvider"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 314
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 315
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "MiuiKeyguardMoveLeftView"

    const-string/jumbo v4, "cannot find the path content://com.miui.tsmclient.provider.public"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 291
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$5;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$5;->this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    invoke-virtual {v0}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$5;->this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    invoke-static {v0}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->-get21(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$5;->this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    invoke-static {v1}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->-get22(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$5;->this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    invoke-static {v0}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->-get17(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$5;->this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    invoke-static {v1}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->-get18(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$5;->this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    invoke-static {v0}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->-get12(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$5;->this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    invoke-static {v1}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->-get13(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 320
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$5;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
