.class Lcom/android/systemui/recents/RecentsImplProxy$1;
.super Landroid/os/Handler;
.source "RecentsImplProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/RecentsImplProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/RecentsImplProxy;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/RecentsImplProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/RecentsImplProxy;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsImplProxy$1;->this$0:Lcom/android/systemui/recents/RecentsImplProxy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 117
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 151
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 153
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 115
    return-void

    .line 119
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImplProxy$1;->this$0:Lcom/android/systemui/recents/RecentsImplProxy;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsImplProxy;->-get0(Lcom/android/systemui/recents/RecentsImplProxy;)Lcom/android/systemui/recents/RecentsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsImpl;->preloadRecents()V

    goto :goto_0

    .line 122
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImplProxy$1;->this$0:Lcom/android/systemui/recents/RecentsImplProxy;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsImplProxy;->-get0(Lcom/android/systemui/recents/RecentsImplProxy;)Lcom/android/systemui/recents/RecentsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsImpl;->cancelPreloadingRecents()V

    goto :goto_0

    .line 125
    :pswitch_2
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/os/SomeArgs;

    .line 126
    .local v8, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImplProxy$1;->this$0:Lcom/android/systemui/recents/RecentsImplProxy;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsImplProxy;->-get0(Lcom/android/systemui/recents/RecentsImplProxy;)Lcom/android/systemui/recents/RecentsImpl;

    move-result-object v0

    iget v1, v8, Lcom/android/internal/os/SomeArgs;->argi1:I

    if-eqz v1, :cond_0

    move v1, v5

    :goto_1
    iget v2, v8, Lcom/android/internal/os/SomeArgs;->argi2:I

    if-eqz v2, :cond_1

    move v2, v5

    :goto_2
    iget v3, v8, Lcom/android/internal/os/SomeArgs;->argi3:I

    if-eqz v3, :cond_2

    move v3, v5

    .line 127
    :goto_3
    iget v4, v8, Lcom/android/internal/os/SomeArgs;->argi4:I

    if-eqz v4, :cond_3

    move v4, v5

    :goto_4
    iget v6, v8, Lcom/android/internal/os/SomeArgs;->argi5:I

    if-eqz v6, :cond_4

    :goto_5
    iget v6, v8, Lcom/android/internal/os/SomeArgs;->argi6:I

    .line 126
    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/recents/RecentsImpl;->showRecents(ZZZZZIZ)V

    goto :goto_0

    :cond_0
    move v1, v7

    goto :goto_1

    :cond_1
    move v2, v7

    goto :goto_2

    :cond_2
    move v3, v7

    goto :goto_3

    :cond_3
    move v4, v7

    .line 127
    goto :goto_4

    :cond_4
    move v5, v7

    goto :goto_5

    .line 130
    .end local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImplProxy$1;->this$0:Lcom/android/systemui/recents/RecentsImplProxy;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsImplProxy;->-get0(Lcom/android/systemui/recents/RecentsImplProxy;)Lcom/android/systemui/recents/RecentsImpl;

    move-result-object v1

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_5

    move v0, v5

    :goto_6
    iget v2, p1, Landroid/os/Message;->arg2:I

    if-eqz v2, :cond_6

    :goto_7
    invoke-virtual {v1, v0, v5, v7}, Lcom/android/systemui/recents/RecentsImpl;->hideRecents(ZZZ)V

    goto :goto_0

    :cond_5
    move v0, v7

    goto :goto_6

    :cond_6
    move v5, v7

    goto :goto_7

    .line 133
    :pswitch_4
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/os/SomeArgs;

    .line 134
    .restart local v8    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImplProxy$1;->this$0:Lcom/android/systemui/recents/RecentsImplProxy;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsImplProxy;->-get0(Lcom/android/systemui/recents/RecentsImplProxy;)Lcom/android/systemui/recents/RecentsImpl;

    move-result-object v0

    iget v1, v8, Lcom/android/internal/os/SomeArgs;->argi1:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsImpl;->toggleRecents(I)V

    goto :goto_0

    .line 137
    .end local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_5
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImplProxy$1;->this$0:Lcom/android/systemui/recents/RecentsImplProxy;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsImplProxy;->-get0(Lcom/android/systemui/recents/RecentsImplProxy;)Lcom/android/systemui/recents/RecentsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsImpl;->onConfigurationChanged()V

    goto :goto_0

    .line 140
    :pswitch_6
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/os/SomeArgs;

    .line 141
    .restart local v8    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImplProxy$1;->this$0:Lcom/android/systemui/recents/RecentsImplProxy;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsImplProxy;->-get0(Lcom/android/systemui/recents/RecentsImplProxy;)Lcom/android/systemui/recents/RecentsImpl;

    move-result-object v1

    iget v2, v8, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v3, v8, Lcom/android/internal/os/SomeArgs;->argi2:I

    iput v7, v8, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 142
    iget-object v0, v8, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Rect;

    .line 141
    invoke-virtual {v1, v2, v3, v7, v0}, Lcom/android/systemui/recents/RecentsImpl;->dockTopTask(IIILandroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 145
    .end local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_7
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImplProxy$1;->this$0:Lcom/android/systemui/recents/RecentsImplProxy;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsImplProxy;->-get0(Lcom/android/systemui/recents/RecentsImplProxy;)Lcom/android/systemui/recents/RecentsImpl;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/RecentsImpl;->onDraggingInRecents(F)V

    goto/16 :goto_0

    .line 148
    :pswitch_8
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImplProxy$1;->this$0:Lcom/android/systemui/recents/RecentsImplProxy;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsImplProxy;->-get0(Lcom/android/systemui/recents/RecentsImplProxy;)Lcom/android/systemui/recents/RecentsImpl;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/RecentsImpl;->onDraggingInRecentsEnded(F)V

    goto/16 :goto_0

    .line 117
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
