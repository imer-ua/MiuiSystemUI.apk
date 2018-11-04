.class Lcom/android/systemui/recents/BaseRecentsImpl$H;
.super Landroid/os/Handler;
.source "BaseRecentsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/BaseRecentsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/BaseRecentsImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/recents/BaseRecentsImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/BaseRecentsImpl;

    .prologue
    .line 1742
    iput-object p1, p0, Lcom/android/systemui/recents/BaseRecentsImpl$H;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/recents/BaseRecentsImpl;Lcom/android/systemui/recents/BaseRecentsImpl$H;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/BaseRecentsImpl;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/BaseRecentsImpl$H;-><init>(Lcom/android/systemui/recents/BaseRecentsImpl;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x1

    const/16 v7, 0x69

    const/16 v6, 0x65

    const/4 v5, 0x0

    .line 1745
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 1744
    :cond_0
    :goto_0
    return-void

    .line 1747
    :sswitch_0
    iget-object v2, p0, Lcom/android/systemui/recents/BaseRecentsImpl$H;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v2}, Lcom/android/systemui/recents/BaseRecentsImpl;->-wrap7(Lcom/android/systemui/recents/BaseRecentsImpl;)V

    goto :goto_0

    .line 1751
    :sswitch_1
    iget-object v2, p0, Lcom/android/systemui/recents/BaseRecentsImpl$H;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v2}, Lcom/android/systemui/recents/BaseRecentsImpl;->-wrap3(Lcom/android/systemui/recents/BaseRecentsImpl;)V

    goto :goto_0

    .line 1755
    :sswitch_2
    iget-object v2, p0, Lcom/android/systemui/recents/BaseRecentsImpl$H;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v2}, Lcom/android/systemui/recents/BaseRecentsImpl;->-get2(Lcom/android/systemui/recents/BaseRecentsImpl;)Lcom/android/systemui/fsgesture/GestureStubView;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/recents/BaseRecentsImpl$H;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v2}, Lcom/android/systemui/recents/BaseRecentsImpl;->-get3(Lcom/android/systemui/recents/BaseRecentsImpl;)Lcom/android/systemui/fsgesture/GestureStubView;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1756
    :cond_1
    return-void

    .line 1758
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/recents/BaseRecentsImpl$H;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v2}, Lcom/android/systemui/recents/BaseRecentsImpl;->-get2(Lcom/android/systemui/recents/BaseRecentsImpl;)Lcom/android/systemui/fsgesture/GestureStubView;

    move-result-object v2

    const/16 v3, 0x1e

    invoke-virtual {v2, v3}, Lcom/android/systemui/fsgesture/GestureStubView;->setSize(I)V

    .line 1759
    iget-object v2, p0, Lcom/android/systemui/recents/BaseRecentsImpl$H;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v2}, Lcom/android/systemui/recents/BaseRecentsImpl;->-get3(Lcom/android/systemui/recents/BaseRecentsImpl;)Lcom/android/systemui/fsgesture/GestureStubView;

    move-result-object v2

    const/16 v3, 0x1e

    invoke-virtual {v2, v3}, Lcom/android/systemui/fsgesture/GestureStubView;->setSize(I)V

    goto :goto_0

    .line 1763
    :sswitch_3
    iget-object v2, p0, Lcom/android/systemui/recents/BaseRecentsImpl$H;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v2}, Lcom/android/systemui/recents/BaseRecentsImpl;->-get2(Lcom/android/systemui/recents/BaseRecentsImpl;)Lcom/android/systemui/fsgesture/GestureStubView;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/recents/BaseRecentsImpl$H;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v2}, Lcom/android/systemui/recents/BaseRecentsImpl;->-get3(Lcom/android/systemui/recents/BaseRecentsImpl;)Lcom/android/systemui/fsgesture/GestureStubView;

    move-result-object v2

    if-nez v2, :cond_4

    .line 1764
    :cond_3
    return-void

    .line 1766
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/recents/BaseRecentsImpl$H;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v2}, Lcom/android/systemui/recents/BaseRecentsImpl;->-get11(Lcom/android/systemui/recents/BaseRecentsImpl;)I

    move-result v2

    const/16 v3, 0x2d0

    if-eq v2, v3, :cond_5

    const/16 v1, 0x36

    .line 1767
    .local v1, "size":I
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/recents/BaseRecentsImpl$H;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v2}, Lcom/android/systemui/recents/BaseRecentsImpl;->-get2(Lcom/android/systemui/recents/BaseRecentsImpl;)Lcom/android/systemui/fsgesture/GestureStubView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/systemui/fsgesture/GestureStubView;->setSize(I)V

    .line 1768
    iget-object v2, p0, Lcom/android/systemui/recents/BaseRecentsImpl$H;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v2}, Lcom/android/systemui/recents/BaseRecentsImpl;->-get3(Lcom/android/systemui/recents/BaseRecentsImpl;)Lcom/android/systemui/fsgesture/GestureStubView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/systemui/fsgesture/GestureStubView;->setSize(I)V

    goto :goto_0

    .line 1766
    .end local v1    # "size":I
    :cond_5
    const/16 v1, 0x28

    .restart local v1    # "size":I
    goto :goto_1

    .line 1771
    .end local v1    # "size":I
    :sswitch_4
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/activity/FsGestureEnterRecentsEvent;

    invoke-direct {v3}, Lcom/android/systemui/recents/events/activity/FsGestureEnterRecentsEvent;-><init>()V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    .line 1772
    iget-object v2, p0, Lcom/android/systemui/recents/BaseRecentsImpl$H;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v2}, Lcom/android/systemui/recents/BaseRecentsImpl;->-get9(Lcom/android/systemui/recents/BaseRecentsImpl;)Lcom/android/systemui/statusbar/phone/NavStubView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1773
    iget-object v2, p0, Lcom/android/systemui/recents/BaseRecentsImpl$H;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v2}, Lcom/android/systemui/recents/BaseRecentsImpl;->-get9(Lcom/android/systemui/recents/BaseRecentsImpl;)Lcom/android/systemui/statusbar/phone/NavStubView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NavStubView;->startAppEnterRecentsAnim()V

    goto/16 :goto_0

    .line 1777
    :sswitch_5
    const-string/jumbo v2, "RecentsImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleMessage: MSG_START_RECENTS_ANIAMTION mRecentsVisible = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/recents/BaseRecentsImpl$H;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v4}, Lcom/android/systemui/recents/BaseRecentsImpl;->-get10(Lcom/android/systemui/recents/BaseRecentsImpl;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    iget-object v2, p0, Lcom/android/systemui/recents/BaseRecentsImpl$H;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v2}, Lcom/android/systemui/recents/BaseRecentsImpl;->-get10(Lcom/android/systemui/recents/BaseRecentsImpl;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1779
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/activity/FsGestureSlideInEvent;

    invoke-direct {v3}, Lcom/android/systemui/recents/events/activity/FsGestureSlideInEvent;-><init>()V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    .line 1780
    iget-object v2, p0, Lcom/android/systemui/recents/BaseRecentsImpl$H;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v2, v8}, Lcom/android/systemui/recents/BaseRecentsImpl;->-set3(Lcom/android/systemui/recents/BaseRecentsImpl;Z)Z

    .line 1781
    iget-object v2, p0, Lcom/android/systemui/recents/BaseRecentsImpl$H;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v2}, Lcom/android/systemui/recents/BaseRecentsImpl;->-get9(Lcom/android/systemui/recents/BaseRecentsImpl;)Lcom/android/systemui/statusbar/phone/NavStubView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1782
    iget-object v2, p0, Lcom/android/systemui/recents/BaseRecentsImpl$H;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v2}, Lcom/android/systemui/recents/BaseRecentsImpl;->-get9(Lcom/android/systemui/recents/BaseRecentsImpl;)Lcom/android/systemui/statusbar/phone/NavStubView;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/BaseRecentsImpl$H$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/recents/BaseRecentsImpl$H$1;-><init>(Lcom/android/systemui/recents/BaseRecentsImpl$H;)V

    .line 1789
    const-wide/16 v4, 0x64

    .line 1782
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/NavStubView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 1792
    :cond_6
    invoke-virtual {p0, v6}, Lcom/android/systemui/recents/BaseRecentsImpl$H;->removeMessages(I)V

    .line 1793
    invoke-virtual {p0, v6}, Lcom/android/systemui/recents/BaseRecentsImpl$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1794
    .local v0, "newMsg":Landroid/os/Message;
    const-wide/16 v2, 0x14

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui/recents/BaseRecentsImpl$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1798
    .end local v0    # "newMsg":Landroid/os/Message;
    :sswitch_6
    invoke-virtual {p0, v6}, Lcom/android/systemui/recents/BaseRecentsImpl$H;->removeMessages(I)V

    goto/16 :goto_0

    .line 1801
    :sswitch_7
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/activity/FsGestureEnterRecentsCompleteEvent;

    invoke-direct {v3, v8}, Lcom/android/systemui/recents/events/activity/FsGestureEnterRecentsCompleteEvent;-><init>(Z)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    .line 1802
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/activity/ActivitySetDummyTranslucentEvent;

    invoke-direct {v3, v5}, Lcom/android/systemui/recents/events/activity/ActivitySetDummyTranslucentEvent;-><init>(Z)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    .line 1803
    iget-object v2, p0, Lcom/android/systemui/recents/BaseRecentsImpl$H;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v2, v5}, Lcom/android/systemui/recents/BaseRecentsImpl;->-set3(Lcom/android/systemui/recents/BaseRecentsImpl;Z)Z

    goto/16 :goto_0

    .line 1806
    :sswitch_8
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/activity/AnimFirstTaskViewAlphaEvent;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/recents/events/activity/AnimFirstTaskViewAlphaEvent;-><init>(FZ)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    goto/16 :goto_0

    .line 1809
    :sswitch_9
    const-string/jumbo v2, "RecentsImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleMessage: MSG_ZOOM_RECENT_VIEW mRecentsVisible = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/recents/BaseRecentsImpl$H;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v4}, Lcom/android/systemui/recents/BaseRecentsImpl;->-get10(Lcom/android/systemui/recents/BaseRecentsImpl;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1810
    const-string/jumbo v4, " mIsStartRecent = "

    .line 1809
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1810
    iget-object v4, p0, Lcom/android/systemui/recents/BaseRecentsImpl$H;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v4}, Lcom/android/systemui/recents/BaseRecentsImpl;->-get8(Lcom/android/systemui/recents/BaseRecentsImpl;)Z

    move-result v4

    .line 1809
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    iget-object v2, p0, Lcom/android/systemui/recents/BaseRecentsImpl$H;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v2}, Lcom/android/systemui/recents/BaseRecentsImpl;->-get10(Lcom/android/systemui/recents/BaseRecentsImpl;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/systemui/recents/BaseRecentsImpl$H;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v2}, Lcom/android/systemui/recents/BaseRecentsImpl;->-get8(Lcom/android/systemui/recents/BaseRecentsImpl;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1812
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/activity/FsGestureEnterRecentsZoomEvent;

    invoke-direct {v3}, Lcom/android/systemui/recents/events/activity/FsGestureEnterRecentsZoomEvent;-><init>()V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    goto/16 :goto_0

    .line 1814
    :cond_7
    invoke-virtual {p0, v7}, Lcom/android/systemui/recents/BaseRecentsImpl$H;->removeMessages(I)V

    .line 1815
    invoke-virtual {p0, v7}, Lcom/android/systemui/recents/BaseRecentsImpl$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1816
    .restart local v0    # "newMsg":Landroid/os/Message;
    const-wide/16 v2, 0x14

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui/recents/BaseRecentsImpl$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1820
    .end local v0    # "newMsg":Landroid/os/Message;
    :sswitch_a
    invoke-virtual {p0, v7}, Lcom/android/systemui/recents/BaseRecentsImpl$H;->removeMessages(I)V

    goto/16 :goto_0

    .line 1823
    :sswitch_b
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/activity/FsGestureSlideOutEvent;

    invoke-direct {v3}, Lcom/android/systemui/recents/events/activity/FsGestureSlideOutEvent;-><init>()V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    .line 1824
    iget-object v2, p0, Lcom/android/systemui/recents/BaseRecentsImpl$H;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v2}, Lcom/android/systemui/recents/BaseRecentsImpl;->-wrap7(Lcom/android/systemui/recents/BaseRecentsImpl;)V

    .line 1825
    iget-object v2, p0, Lcom/android/systemui/recents/BaseRecentsImpl$H;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v2, v5}, Lcom/android/systemui/recents/BaseRecentsImpl;->-set3(Lcom/android/systemui/recents/BaseRecentsImpl;Z)Z

    goto/16 :goto_0

    .line 1745
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_4
        0x65 -> :sswitch_5
        0x66 -> :sswitch_7
        0x67 -> :sswitch_b
        0x68 -> :sswitch_8
        0x69 -> :sswitch_9
        0x6a -> :sswitch_6
        0x6b -> :sswitch_a
        0xa11 -> :sswitch_0
        0xa75 -> :sswitch_1
        0xad9 -> :sswitch_2
        0xb3d -> :sswitch_3
    .end sparse-switch
.end method
