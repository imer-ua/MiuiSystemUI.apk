.class Lcom/android/systemui/statusbar/NetworkSpeedView$2;
.super Landroid/content/BroadcastReceiver;
.source "NetworkSpeedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NetworkSpeedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NetworkSpeedView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NetworkSpeedView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/NetworkSpeedView;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/systemui/statusbar/NetworkSpeedView$2;->this$0:Lcom/android/systemui/statusbar/NetworkSpeedView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "content"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 114
    const-string/jumbo v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 115
    iget-object v3, p0, Lcom/android/systemui/statusbar/NetworkSpeedView$2;->this$0:Lcom/android/systemui/statusbar/NetworkSpeedView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/NetworkSpeedView;->-get0(Lcom/android/systemui/statusbar/NetworkSpeedView;)Landroid/content/Context;

    move-result-object v3

    .line 116
    const-string/jumbo v4, "connectivity"

    .line 115
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 117
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 118
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    iget-object v3, p0, Lcom/android/systemui/statusbar/NetworkSpeedView$2;->this$0:Lcom/android/systemui/statusbar/NetworkSpeedView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    :cond_0
    invoke-static {v3, v2}, Lcom/android/systemui/statusbar/NetworkSpeedView;->-set1(Lcom/android/systemui/statusbar/NetworkSpeedView;Z)Z

    .line 119
    iget-object v2, p0, Lcom/android/systemui/statusbar/NetworkSpeedView$2;->this$0:Lcom/android/systemui/statusbar/NetworkSpeedView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/NetworkSpeedView;->-wrap4(Lcom/android/systemui/statusbar/NetworkSpeedView;)V

    .line 113
    .end local v0    # "connManager":Landroid/net/ConnectivityManager;
    .end local v1    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_1
    :goto_0
    return-void

    .line 120
    :cond_2
    const-string/jumbo v3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 121
    iget-object v3, p0, Lcom/android/systemui/statusbar/NetworkSpeedView$2;->this$0:Lcom/android/systemui/statusbar/NetworkSpeedView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/NetworkSpeedView$2;->this$0:Lcom/android/systemui/statusbar/NetworkSpeedView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/NetworkSpeedView;->-get0(Lcom/android/systemui/statusbar/NetworkSpeedView;)Landroid/content/Context;

    move-result-object v4

    const/4 v5, -0x2

    invoke-static {v4, v5}, Landroid/app/MiuiStatusBarManager;->isShowNetworkSpeedForUser(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_1
    invoke-static {v3, v2}, Lcom/android/systemui/statusbar/NetworkSpeedView;->-set0(Lcom/android/systemui/statusbar/NetworkSpeedView;Z)Z

    .line 122
    iget-object v2, p0, Lcom/android/systemui/statusbar/NetworkSpeedView$2;->this$0:Lcom/android/systemui/statusbar/NetworkSpeedView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/NetworkSpeedView;->-wrap4(Lcom/android/systemui/statusbar/NetworkSpeedView;)V

    goto :goto_0

    .line 121
    :cond_3
    const/4 v2, 0x1

    goto :goto_1
.end method
