.class Lcom/android/keyguard/fod/MiuiGxzwManager$2;
.super Landroid/os/Handler;
.source "MiuiGxzwManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/fod/MiuiGxzwManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/fod/MiuiGxzwManager;


# direct methods
.method constructor <init>(Lcom/android/keyguard/fod/MiuiGxzwManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/fod/MiuiGxzwManager;

    .prologue
    .line 392
    iput-object p1, p0, Lcom/android/keyguard/fod/MiuiGxzwManager$2;->this$0:Lcom/android/keyguard/fod/MiuiGxzwManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 396
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 398
    :pswitch_0
    iget-object v4, p0, Lcom/android/keyguard/fod/MiuiGxzwManager$2;->this$0:Lcom/android/keyguard/fod/MiuiGxzwManager;

    invoke-static {v4}, Lcom/android/keyguard/fod/MiuiGxzwManager;->-get0(Lcom/android/keyguard/fod/MiuiGxzwManager;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 399
    .local v0, "monitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    iget-object v4, p0, Lcom/android/keyguard/fod/MiuiGxzwManager$2;->this$0:Lcom/android/keyguard/fod/MiuiGxzwManager;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/android/keyguard/fod/MiuiGxzwManager;->-wrap3(Lcom/android/keyguard/fod/MiuiGxzwManager;Z)V

    .line 400
    iget-object v4, p0, Lcom/android/keyguard/fod/MiuiGxzwManager$2;->this$0:Lcom/android/keyguard/fod/MiuiGxzwManager;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v2, :cond_1

    :goto_1
    invoke-static {v4, v2}, Lcom/android/keyguard/fod/MiuiGxzwManager;->-wrap4(Lcom/android/keyguard/fod/MiuiGxzwManager;Z)V

    .line 401
    iget-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwManager$2;->this$0:Lcom/android/keyguard/fod/MiuiGxzwManager;

    invoke-static {v2}, Lcom/android/keyguard/fod/MiuiGxzwManager;->-get1(Lcom/android/keyguard/fod/MiuiGxzwManager;)Lcom/android/keyguard/fod/MiuiGxzwIconView;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->setEnrolling(Z)V

    goto :goto_0

    :cond_1
    move v2, v3

    .line 400
    goto :goto_1

    .line 404
    .end local v0    # "monitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    :pswitch_1
    iget-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwManager$2;->this$0:Lcom/android/keyguard/fod/MiuiGxzwManager;

    invoke-static {v2}, Lcom/android/keyguard/fod/MiuiGxzwManager;->-wrap1(Lcom/android/keyguard/fod/MiuiGxzwManager;)V

    .line 405
    iget-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwManager$2;->this$0:Lcom/android/keyguard/fod/MiuiGxzwManager;

    invoke-static {v2, v3}, Lcom/android/keyguard/fod/MiuiGxzwManager;->-wrap3(Lcom/android/keyguard/fod/MiuiGxzwManager;Z)V

    .line 406
    iget-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwManager$2;->this$0:Lcom/android/keyguard/fod/MiuiGxzwManager;

    invoke-static {v2}, Lcom/android/keyguard/fod/MiuiGxzwManager;->-get1(Lcom/android/keyguard/fod/MiuiGxzwManager;)Lcom/android/keyguard/fod/MiuiGxzwIconView;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->setEnrolling(Z)V

    goto :goto_0

    .line 409
    :pswitch_2
    iget-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwManager$2;->this$0:Lcom/android/keyguard/fod/MiuiGxzwManager;

    invoke-static {v2}, Lcom/android/keyguard/fod/MiuiGxzwManager;->-wrap0(Lcom/android/keyguard/fod/MiuiGxzwManager;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 411
    iget-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwManager$2;->this$0:Lcom/android/keyguard/fod/MiuiGxzwManager;

    invoke-static {v2, v3}, Lcom/android/keyguard/fod/MiuiGxzwManager;->-wrap3(Lcom/android/keyguard/fod/MiuiGxzwManager;Z)V

    .line 412
    iget-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwManager$2;->this$0:Lcom/android/keyguard/fod/MiuiGxzwManager;

    invoke-static {v2}, Lcom/android/keyguard/fod/MiuiGxzwManager;->-wrap1(Lcom/android/keyguard/fod/MiuiGxzwManager;)V

    goto :goto_0

    .line 417
    :pswitch_3
    iget-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwManager$2;->this$0:Lcom/android/keyguard/fod/MiuiGxzwManager;

    invoke-static {v2}, Lcom/android/keyguard/fod/MiuiGxzwManager;->-wrap0(Lcom/android/keyguard/fod/MiuiGxzwManager;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 418
    iget-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwManager$2;->this$0:Lcom/android/keyguard/fod/MiuiGxzwManager;

    invoke-static {v2, v3}, Lcom/android/keyguard/fod/MiuiGxzwManager;->-wrap3(Lcom/android/keyguard/fod/MiuiGxzwManager;Z)V

    .line 419
    iget-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwManager$2;->this$0:Lcom/android/keyguard/fod/MiuiGxzwManager;

    invoke-static {v2}, Lcom/android/keyguard/fod/MiuiGxzwManager;->-wrap1(Lcom/android/keyguard/fod/MiuiGxzwManager;)V

    .line 420
    iget-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwManager$2;->this$0:Lcom/android/keyguard/fod/MiuiGxzwManager;

    invoke-static {v2}, Lcom/android/keyguard/fod/MiuiGxzwManager;->-get1(Lcom/android/keyguard/fod/MiuiGxzwManager;)Lcom/android/keyguard/fod/MiuiGxzwIconView;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->setEnrolling(Z)V

    goto :goto_0

    .line 424
    :pswitch_4
    iget-object v4, p0, Lcom/android/keyguard/fod/MiuiGxzwManager$2;->this$0:Lcom/android/keyguard/fod/MiuiGxzwManager;

    invoke-static {v4, v3}, Lcom/android/keyguard/fod/MiuiGxzwManager;->-wrap3(Lcom/android/keyguard/fod/MiuiGxzwManager;Z)V

    .line 425
    iget-object v4, p0, Lcom/android/keyguard/fod/MiuiGxzwManager$2;->this$0:Lcom/android/keyguard/fod/MiuiGxzwManager;

    invoke-static {v4}, Lcom/android/keyguard/fod/MiuiGxzwManager;->-get1(Lcom/android/keyguard/fod/MiuiGxzwManager;)Lcom/android/keyguard/fod/MiuiGxzwIconView;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->setEnrolling(Z)V

    .line 426
    iget-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwManager$2;->this$0:Lcom/android/keyguard/fod/MiuiGxzwManager;

    invoke-static {v2, v3}, Lcom/android/keyguard/fod/MiuiGxzwManager;->-wrap4(Lcom/android/keyguard/fod/MiuiGxzwManager;Z)V

    goto :goto_0

    .line 429
    :pswitch_5
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 430
    .local v1, "param":I
    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwManager$2;->this$0:Lcom/android/keyguard/fod/MiuiGxzwManager;

    invoke-static {v2}, Lcom/android/keyguard/fod/MiuiGxzwManager;->-get3(Lcom/android/keyguard/fod/MiuiGxzwManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 431
    iget-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwManager$2;->this$0:Lcom/android/keyguard/fod/MiuiGxzwManager;

    invoke-static {v2}, Lcom/android/keyguard/fod/MiuiGxzwManager;->-wrap1(Lcom/android/keyguard/fod/MiuiGxzwManager;)V

    .line 432
    iget-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwManager$2;->this$0:Lcom/android/keyguard/fod/MiuiGxzwManager;

    invoke-static {v2, v3}, Lcom/android/keyguard/fod/MiuiGxzwManager;->-wrap3(Lcom/android/keyguard/fod/MiuiGxzwManager;Z)V

    .line 433
    iget-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwManager$2;->this$0:Lcom/android/keyguard/fod/MiuiGxzwManager;

    invoke-static {v2}, Lcom/android/keyguard/fod/MiuiGxzwManager;->-get1(Lcom/android/keyguard/fod/MiuiGxzwManager;)Lcom/android/keyguard/fod/MiuiGxzwIconView;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->setEnrolling(Z)V

    goto/16 :goto_0

    .line 396
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
