.class Lcom/android/systemui/statusbar/phone/NavStubView$H;
.super Landroid/os/Handler;
.source "NavStubView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavStubView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavStubView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/NavStubView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/NavStubView;

    .prologue
    .line 622
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavStubView$H;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/NavStubView;Lcom/android/systemui/statusbar/phone/NavStubView$H;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/NavStubView;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavStubView$H;-><init>(Lcom/android/systemui/statusbar/phone/NavStubView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v13, 0xff

    const/high16 v12, 0x41f00000    # 30.0f

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 625
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView$H;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get11(Lcom/android/systemui/statusbar/phone/NavStubView;)Landroid/view/MotionEvent;

    move-result-object v2

    .line 627
    .local v2, "downEvent":Landroid/view/MotionEvent;
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 624
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 631
    :pswitch_1
    if-eqz v2, :cond_1

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView$H;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get26(Lcom/android/systemui/statusbar/phone/NavStubView;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 632
    :cond_1
    return-void

    .line 635
    :cond_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView$H;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get6(Lcom/android/systemui/statusbar/phone/NavStubView;)F

    move-result v7

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    sub-float v0, v7, v8

    .line 636
    .local v0, "diffX":F
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView$H;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get7(Lcom/android/systemui/statusbar/phone/NavStubView;)F

    move-result v7

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    sub-float v1, v7, v8

    .line 638
    .local v1, "diffY":F
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get0()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 639
    sget-object v7, Lcom/android/systemui/statusbar/phone/NavStubView;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "handleMessage MSG_CHECK_GESTURE_STUB_TOUCHABLE diffX: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 640
    const-string/jumbo v9, " diffY: "

    .line 639
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 640
    const-string/jumbo v9, " mDownX: "

    .line 639
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 640
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    .line 639
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 641
    const-string/jumbo v9, " mDownY: "

    .line 639
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 641
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    .line 639
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    :cond_3
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v12

    if-gtz v7, :cond_0

    .line 646
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v12

    if-gtz v7, :cond_0

    .line 647
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView$H;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get16(Lcom/android/systemui/statusbar/phone/NavStubView;)Lcom/android/systemui/statusbar/phone/NavStubView$H;

    move-result-object v7

    invoke-virtual {v7, v13}, Lcom/android/systemui/statusbar/phone/NavStubView$H;->removeMessages(I)V

    .line 648
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView$H;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get16(Lcom/android/systemui/statusbar/phone/NavStubView;)Lcom/android/systemui/statusbar/phone/NavStubView$H;

    move-result-object v7

    invoke-virtual {v7, v13}, Lcom/android/systemui/statusbar/phone/NavStubView$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 650
    .local v6, "updateMsg":Landroid/os/Message;
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView$H;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get16(Lcom/android/systemui/statusbar/phone/NavStubView;)Lcom/android/systemui/statusbar/phone/NavStubView$H;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/systemui/statusbar/phone/NavStubView$H;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 656
    .end local v0    # "diffX":F
    .end local v1    # "diffY":F
    .end local v6    # "updateMsg":Landroid/os/Message;
    :pswitch_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView$H;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get26(Lcom/android/systemui/statusbar/phone/NavStubView;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 657
    return-void

    .line 660
    :cond_4
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get0()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 661
    sget-object v7, Lcom/android/systemui/statusbar/phone/NavStubView;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "handleMessage MSG_SET_GESTURE_STUB_UNTOUCHABLE"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    :cond_5
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView$H;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v7, v10}, Lcom/android/systemui/statusbar/phone/NavStubView;->-wrap1(Lcom/android/systemui/statusbar/phone/NavStubView;Z)V

    .line 668
    const/16 v7, 0x104

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/phone/NavStubView$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 669
    .local v4, "injectMsg":Landroid/os/Message;
    const-wide/16 v8, 0x14

    invoke-virtual {p0, v4, v8, v9}, Lcom/android/systemui/statusbar/phone/NavStubView$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 672
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView$H;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v7, v10}, Lcom/android/systemui/statusbar/phone/NavStubView;->-set10(Lcom/android/systemui/statusbar/phone/NavStubView;Z)Z

    .line 673
    const/16 v7, 0x101

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/phone/NavStubView$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 674
    .local v5, "resetMsg":Landroid/os/Message;
    const-wide/16 v8, 0x1f4

    invoke-virtual {p0, v5, v8, v9}, Lcom/android/systemui/statusbar/phone/NavStubView$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 678
    .end local v4    # "injectMsg":Landroid/os/Message;
    .end local v5    # "resetMsg":Landroid/os/Message;
    :pswitch_3
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView$H;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v7, v9}, Lcom/android/systemui/statusbar/phone/NavStubView;->-set10(Lcom/android/systemui/statusbar/phone/NavStubView;Z)Z

    .line 679
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView$H;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v7, v9}, Lcom/android/systemui/statusbar/phone/NavStubView;->-wrap1(Lcom/android/systemui/statusbar/phone/NavStubView;Z)V

    .line 681
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get0()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 682
    sget-object v7, Lcom/android/systemui/statusbar/phone/NavStubView;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "handleMessage MSG_RESET_GESTURE_STUB_TOUCHABLE"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 686
    :pswitch_4
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView$H;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get5(Lcom/android/systemui/statusbar/phone/NavStubView;)I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_6

    .line 687
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView$H;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get5(Lcom/android/systemui/statusbar/phone/NavStubView;)I

    move-result v7

    if-nez v7, :cond_7

    .line 688
    :cond_6
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView$H;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v7, v9}, Lcom/android/systemui/statusbar/phone/NavStubView;->-wrap3(Lcom/android/systemui/statusbar/phone/NavStubView;I)V

    .line 693
    :goto_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView$H;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get11(Lcom/android/systemui/statusbar/phone/NavStubView;)Landroid/view/MotionEvent;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 694
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView$H;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get11(Lcom/android/systemui/statusbar/phone/NavStubView;)Landroid/view/MotionEvent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/MotionEvent;->recycle()V

    .line 695
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView$H;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v7, v11}, Lcom/android/systemui/statusbar/phone/NavStubView;->-set4(Lcom/android/systemui/statusbar/phone/NavStubView;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    goto/16 :goto_0

    .line 690
    :cond_7
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView$H;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v7, v9}, Lcom/android/systemui/statusbar/phone/NavStubView;->-wrap3(Lcom/android/systemui/statusbar/phone/NavStubView;I)V

    .line 691
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView$H;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v7, v10}, Lcom/android/systemui/statusbar/phone/NavStubView;->-wrap3(Lcom/android/systemui/statusbar/phone/NavStubView;I)V

    goto :goto_1

    .line 699
    :pswitch_5
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/view/MotionEvent;

    .line 700
    .local v3, "event":Landroid/view/MotionEvent;
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView$H;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-virtual {v7, v3}, Lcom/android/systemui/statusbar/phone/NavStubView;->onPointerEvent(Landroid/view/MotionEvent;)Z

    .line 701
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    goto/16 :goto_0

    .line 627
    :pswitch_data_0
    .packed-switch 0xff
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
