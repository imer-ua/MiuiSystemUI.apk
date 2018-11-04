.class Lcom/android/systemui/statusbar/NetworkSpeedView$1;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/android/systemui/statusbar/NetworkSpeedView;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/NetworkSpeedView;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/systemui/statusbar/NetworkSpeedView$1;->this$0:Lcom/android/systemui/statusbar/NetworkSpeedView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 104
    iget-object v1, p0, Lcom/android/systemui/statusbar/NetworkSpeedView$1;->this$0:Lcom/android/systemui/statusbar/NetworkSpeedView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView$1;->this$0:Lcom/android/systemui/statusbar/NetworkSpeedView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NetworkSpeedView;->-get0(Lcom/android/systemui/statusbar/NetworkSpeedView;)Landroid/content/Context;

    move-result-object v0

    const/4 v2, -0x2

    invoke-static {v0, v2}, Landroid/app/MiuiStatusBarManager;->isShowNetworkSpeedForUser(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/NetworkSpeedView;->-set0(Lcom/android/systemui/statusbar/NetworkSpeedView;Z)Z

    .line 105
    iget-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView$1;->this$0:Lcom/android/systemui/statusbar/NetworkSpeedView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NetworkSpeedView$1;->this$0:Lcom/android/systemui/statusbar/NetworkSpeedView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/NetworkSpeedView;->-get0(Lcom/android/systemui/statusbar/NetworkSpeedView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 106
    const-string/jumbo v2, "status_bar_network_speed_interval"

    .line 107
    const/16 v3, 0xfa0

    .line 105
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/NetworkSpeedView;->-set2(Lcom/android/systemui/statusbar/NetworkSpeedView;I)I

    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView$1;->this$0:Lcom/android/systemui/statusbar/NetworkSpeedView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NetworkSpeedView;->-wrap4(Lcom/android/systemui/statusbar/NetworkSpeedView;)V

    .line 103
    return-void

    .line 104
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
