.class Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$5;
.super Landroid/os/AsyncTask;
.source "NetworkControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->setWifiEnabled(Z)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
    .param p2, "val$enabled"    # Z

    .prologue
    .line 460
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$5;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$5;->val$enabled:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 462
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "args":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$5;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "args"    # [Ljava/lang/Void;

    .prologue
    .line 464
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$5;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get4(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 465
    .local v0, "wifiApState":I
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$5;->val$enabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$5;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$5;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get4(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-wrap0(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Landroid/net/wifi/WifiManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 475
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$5;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get4(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$5;->val$enabled:Z

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 476
    const/4 v1, 0x0

    return-object v1

    .line 466
    :cond_1
    const/16 v1, 0xc

    if-eq v0, v1, :cond_2

    .line 467
    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 468
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-ge v1, v2, :cond_3

    .line 469
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$5;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get4(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-static {v1}, Landroid/net/ConnectivityManagerCompat;->stopTethering(Landroid/net/wifi/WifiManager;)V

    goto :goto_0

    .line 471
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$5;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/net/ConnectivityManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/net/ConnectivityManagerCompat;->stopTethering(Landroid/net/ConnectivityManager;I)V

    goto :goto_0
.end method
