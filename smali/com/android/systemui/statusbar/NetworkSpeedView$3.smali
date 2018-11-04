.class Lcom/android/systemui/statusbar/NetworkSpeedView$3;
.super Landroid/os/Handler;
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
.method constructor <init>(Lcom/android/systemui/statusbar/NetworkSpeedView;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/NetworkSpeedView;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 309
    iput-object p1, p0, Lcom/android/systemui/statusbar/NetworkSpeedView$3;->this$0:Lcom/android/systemui/statusbar/NetworkSpeedView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 311
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 310
    :cond_0
    return-void

    .line 313
    :pswitch_0
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    .line 314
    .local v2, "visible":Z
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/NetworkSpeedView$3;->this$0:Lcom/android/systemui/statusbar/NetworkSpeedView;

    if-eqz v2, :cond_2

    :goto_1
    invoke-static {v4, v3}, Lcom/android/systemui/statusbar/NetworkSpeedView;->-wrap2(Lcom/android/systemui/statusbar/NetworkSpeedView;I)V

    .line 315
    if-eqz v2, :cond_0

    .line 316
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 317
    .local v0, "currentSpeed":J
    iget-object v3, p0, Lcom/android/systemui/statusbar/NetworkSpeedView$3;->this$0:Lcom/android/systemui/statusbar/NetworkSpeedView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/NetworkSpeedView$3;->this$0:Lcom/android/systemui/statusbar/NetworkSpeedView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/NetworkSpeedView;->-get0(Lcom/android/systemui/statusbar/NetworkSpeedView;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0, v1}, Lcom/android/systemui/statusbar/NetworkSpeedView;->-wrap0(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/NetworkSpeedView;->-wrap1(Lcom/android/systemui/statusbar/NetworkSpeedView;Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/NetworkSpeedView$3;->this$0:Lcom/android/systemui/statusbar/NetworkSpeedView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/NetworkSpeedView;->-get0(Lcom/android/systemui/statusbar/NetworkSpeedView;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/NetworkSpeedView;->access$2000(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 313
    .end local v0    # "currentSpeed":J
    .end local v2    # "visible":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "visible":Z
    goto :goto_0

    .line 314
    :cond_2
    const/16 v3, 0x8

    goto :goto_1

    nop

    .line 311
    :pswitch_data_0
    .packed-switch 0x30d40
        :pswitch_0
    .end packed-switch
.end method
