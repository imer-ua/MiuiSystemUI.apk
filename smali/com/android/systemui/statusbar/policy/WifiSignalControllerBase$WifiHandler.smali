.class Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiHandler;
.super Landroid/os/Handler;
.source "WifiSignalControllerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiHandler;->this$0:Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase;

    .line 166
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 165
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 171
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 170
    :goto_0
    return-void

    .line 173
    :sswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiHandler;->this$0:Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase;->-get0(Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    .line 175
    const v1, 0x11001

    .line 174
    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiHandler;->this$0:Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "Failed to connect to wifi"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 181
    :sswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiHandler;->this$0:Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase;->setActivity(I)V

    goto :goto_0

    .line 171
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x11000 -> :sswitch_0
    .end sparse-switch
.end method