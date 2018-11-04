.class Lcom/android/keyguard/charge/MiuiWirelessChargeController$1;
.super Ljava/lang/Object;
.source "MiuiWirelessChargeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/charge/MiuiWirelessChargeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/charge/MiuiWirelessChargeController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/charge/MiuiWirelessChargeController;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController$1;->this$0:Lcom/android/keyguard/charge/MiuiWirelessChargeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 204
    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController$1;->this$0:Lcom/android/keyguard/charge/MiuiWirelessChargeController;

    invoke-static {v0}, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->-get9(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 205
    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController$1;->this$0:Lcom/android/keyguard/charge/MiuiWirelessChargeController;

    invoke-static {v0}, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->-get13(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController$1;->this$0:Lcom/android/keyguard/charge/MiuiWirelessChargeController;

    invoke-static {v0}, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->-get12(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController$1;->this$0:Lcom/android/keyguard/charge/MiuiWirelessChargeController;

    invoke-static {v1}, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->-get13(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController$1;->this$0:Lcom/android/keyguard/charge/MiuiWirelessChargeController;

    invoke-static {v0, v2}, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->-set4(Lcom/android/keyguard/charge/MiuiWirelessChargeController;Landroid/view/View;)Landroid/view/View;

    .line 214
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController$1;->this$0:Lcom/android/keyguard/charge/MiuiWirelessChargeController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->-set0(Lcom/android/keyguard/charge/MiuiWirelessChargeController;Z)Z

    .line 203
    return-void

    .line 210
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController$1;->this$0:Lcom/android/keyguard/charge/MiuiWirelessChargeController;

    invoke-static {v0}, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->-get13(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController$1;->this$0:Lcom/android/keyguard/charge/MiuiWirelessChargeController;

    invoke-static {v0}, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->-get13(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
