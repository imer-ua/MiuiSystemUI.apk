.class final Lcom/android/systemui/statusbar/NetworkSpeedView$WorkHandler;
.super Landroid/os/Handler;
.source "NetworkSpeedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NetworkSpeedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WorkHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NetworkSpeedView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NetworkSpeedView;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/NetworkSpeedView;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 295
    iput-object p1, p0, Lcom/android/systemui/statusbar/NetworkSpeedView$WorkHandler;->this$0:Lcom/android/systemui/statusbar/NetworkSpeedView;

    .line 296
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 295
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 301
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 300
    :goto_0
    return-void

    .line 303
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView$WorkHandler;->this$0:Lcom/android/systemui/statusbar/NetworkSpeedView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NetworkSpeedView;->-wrap3(Lcom/android/systemui/statusbar/NetworkSpeedView;)V

    goto :goto_0

    .line 301
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
