.class final Lcom/android/systemui/statusbar/phone/StatusBar$W;
.super Landroid/os/Handler;
.source "StatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "W"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/StatusBar;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 4024
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$W;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 4025
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4024
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 4030
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 4031
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 4029
    :goto_0
    return-void

    .line 4033
    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$W;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap4(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/String;)V

    goto :goto_0

    .line 4036
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$W;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar$AppMessage;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap35(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/StatusBar$AppMessage;)V

    goto :goto_0

    .line 4031
    nop

    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
