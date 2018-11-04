.class public Lcom/android/systemui/statusbar/policy/CallbackHandler;
.super Landroid/os/Handler;
.source "CallbackHandler.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;
.implements Lcom/android/systemui/statusbar/policy/NetworkController$CarrierNameListener;
.implements Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;


# instance fields
.field private final mCarrierNameListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/NetworkController$CarrierNameListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mEmergencyListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSignalCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/policy/CallbackHandler;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mSignalCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mEmergencyListeners:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mCarrierNameListeners:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mSignalCallbacks:Ljava/util/ArrayList;

    .line 59
    return-void
.end method

.method constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mEmergencyListeners:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mCarrierNameListeners:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mSignalCallbacks:Ljava/util/ArrayList;

    .line 64
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 71
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 73
    :pswitch_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mEmergencyListeners:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "listener$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;

    .line 74
    .local v1, "listener":Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_1

    move v5, v6

    :goto_2
    invoke-interface {v1, v5}, Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;->setEmergencyCallsOnly(Z)V

    goto :goto_1

    :cond_1
    move v5, v7

    goto :goto_2

    .line 78
    .end local v1    # "listener":Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;
    .end local v2    # "listener$iterator":Ljava/util/Iterator;
    :pswitch_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mSignalCallbacks:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "signalCluster$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    .line 79
    .local v3, "signalCluster":Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    invoke-interface {v3, v5}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setSubs(Ljava/util/List;)V

    goto :goto_3

    .line 83
    .end local v3    # "signalCluster":Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;
    .end local v4    # "signalCluster$iterator":Ljava/util/Iterator;
    :pswitch_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mSignalCallbacks:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "signalCluster$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    .line 84
    .restart local v3    # "signalCluster":Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_2

    move v5, v6

    :goto_5
    invoke-interface {v3, v5}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setNoSims(Z)V

    goto :goto_4

    :cond_2
    move v5, v7

    goto :goto_5

    .line 88
    .end local v3    # "signalCluster":Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;
    .end local v4    # "signalCluster$iterator":Ljava/util/Iterator;
    :pswitch_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mSignalCallbacks:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "signalCluster$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    .line 89
    .restart local v3    # "signalCluster":Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    invoke-interface {v3, v5}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setEthernetIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V

    goto :goto_6

    .line 93
    .end local v3    # "signalCluster":Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;
    .end local v4    # "signalCluster$iterator":Ljava/util/Iterator;
    :pswitch_4
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mSignalCallbacks:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "signalCluster$iterator":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    .line 94
    .restart local v3    # "signalCluster":Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    invoke-interface {v3, v5}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setIsAirplaneMode(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V

    goto :goto_7

    .line 98
    .end local v3    # "signalCluster":Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;
    .end local v4    # "signalCluster$iterator":Ljava/util/Iterator;
    :pswitch_5
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mSignalCallbacks:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "signalCluster$iterator":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    .line 99
    .restart local v3    # "signalCluster":Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_3

    move v5, v6

    :goto_9
    invoke-interface {v3, v5}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setMobileDataEnabled(Z)V

    goto :goto_8

    :cond_3
    move v5, v7

    goto :goto_9

    .line 103
    .end local v3    # "signalCluster":Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;
    .end local v4    # "signalCluster$iterator":Ljava/util/Iterator;
    :pswitch_6
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_4

    .line 104
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mEmergencyListeners:Ljava/util/ArrayList;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 106
    :cond_4
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mEmergencyListeners:Ljava/util/ArrayList;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 110
    :pswitch_7
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_5

    .line 111
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mSignalCallbacks:Ljava/util/ArrayList;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 113
    :cond_5
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mSignalCallbacks:Ljava/util/ArrayList;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 117
    :pswitch_8
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mSignalCallbacks:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "signalCluster$iterator":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    .line 118
    .restart local v3    # "signalCluster":Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;
    iget v8, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    if-ne v5, v6, :cond_6

    move v5, v6

    :goto_b
    invoke-interface {v3, v8, v5}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setIsImsRegisted(IZ)V

    goto :goto_a

    :cond_6
    move v5, v7

    goto :goto_b

    .line 122
    .end local v3    # "signalCluster":Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;
    .end local v4    # "signalCluster$iterator":Ljava/util/Iterator;
    :pswitch_9
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mSignalCallbacks:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "signalCluster$iterator":Ljava/util/Iterator;
    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    .line 123
    .restart local v3    # "signalCluster":Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;
    iget v8, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    if-ne v5, v6, :cond_7

    move v5, v6

    :goto_d
    invoke-interface {v3, v8, v5}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setVolteNoService(IZ)V

    goto :goto_c

    :cond_7
    move v5, v7

    goto :goto_d

    .line 127
    .end local v3    # "signalCluster":Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;
    .end local v4    # "signalCluster$iterator":Ljava/util/Iterator;
    :pswitch_a
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mSignalCallbacks:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "signalCluster$iterator":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    .line 128
    .restart local v3    # "signalCluster":Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;
    iget v8, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    if-ne v5, v6, :cond_8

    move v5, v6

    :goto_f
    invoke-interface {v3, v8, v5}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setSpeechHd(IZ)V

    goto :goto_e

    :cond_8
    move v5, v7

    goto :goto_f

    .line 132
    .end local v3    # "signalCluster":Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;
    .end local v4    # "signalCluster$iterator":Ljava/util/Iterator;
    :pswitch_b
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mSignalCallbacks:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "signalCluster$iterator":Ljava/util/Iterator;
    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    .line 133
    .restart local v3    # "signalCluster":Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;
    iget v8, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    if-ne v5, v6, :cond_9

    move v5, v6

    :goto_11
    invoke-interface {v3, v8, v5}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setVowifi(IZ)V

    goto :goto_10

    :cond_9
    move v5, v7

    goto :goto_11

    .line 137
    .end local v3    # "signalCluster":Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;
    .end local v4    # "signalCluster$iterator":Ljava/util/Iterator;
    :pswitch_c
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mSignalCallbacks:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "signalCluster$iterator":Ljava/util/Iterator;
    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    .line 138
    .restart local v3    # "signalCluster":Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;
    iget v6, p1, Landroid/os/Message;->arg1:I

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3, v6, v5}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setNetworkNameVoice(ILjava/lang/String;)V

    goto :goto_12

    .line 142
    .end local v3    # "signalCluster":Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;
    .end local v4    # "signalCluster$iterator":Ljava/util/Iterator;
    :pswitch_d
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_a

    .line 143
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mCarrierNameListeners:Ljava/util/ArrayList;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/systemui/statusbar/policy/NetworkController$CarrierNameListener;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 145
    :cond_a
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mCarrierNameListeners:Ljava/util/ArrayList;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/systemui/statusbar/policy/NetworkController$CarrierNameListener;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 149
    :pswitch_e
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mCarrierNameListeners:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "listener$iterator":Ljava/util/Iterator;
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController$CarrierNameListener;

    .line 150
    .local v0, "listener":Lcom/android/systemui/statusbar/policy/NetworkController$CarrierNameListener;
    iget v6, p1, Landroid/os/Message;->arg1:I

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-interface {v0, v6, v5}, Lcom/android/systemui/statusbar/policy/NetworkController$CarrierNameListener;->updateCarrierName(ILjava/lang/String;)V

    goto :goto_13

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_c
        :pswitch_b
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public setEmergencyCallsOnly(Z)V
    .locals 2
    .param p1, "emergencyOnly"    # Z

    .prologue
    const/4 v1, 0x0

    .line 213
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v1, v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 212
    return-void

    :cond_0
    move v0, v1

    .line 213
    goto :goto_0
.end method

.method public setEthernetIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V
    .locals 1
    .param p1, "icon"    # Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    .prologue
    .line 221
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 220
    return-void
.end method

.method public setIsAirplaneMode(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V
    .locals 1
    .param p1, "icon"    # Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    .prologue
    .line 225
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 224
    return-void
.end method

.method public setIsImsRegisted(IZ)V
    .locals 2
    .param p1, "slot"    # I
    .param p2, "imsRegisted"    # Z

    .prologue
    .line 241
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x8

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 240
    return-void

    .line 241
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setListening(Lcom/android/systemui/statusbar/policy/NetworkController$CarrierNameListener;Z)V
    .locals 3
    .param p1, "listener"    # Lcom/android/systemui/statusbar/policy/NetworkController$CarrierNameListener;
    .param p2, "listening"    # Z

    .prologue
    const/4 v1, 0x0

    .line 233
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/16 v2, 0xd

    invoke-virtual {p0, v2, v0, v1, p1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 232
    return-void

    :cond_0
    move v0, v1

    .line 233
    goto :goto_0
.end method

.method public setListening(Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;Z)V
    .locals 3
    .param p1, "listener"    # Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;
    .param p2, "listening"    # Z

    .prologue
    const/4 v1, 0x0

    .line 229
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x6

    invoke-virtual {p0, v2, v0, v1, p1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 228
    return-void

    :cond_0
    move v0, v1

    .line 229
    goto :goto_0
.end method

.method public setListening(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;Z)V
    .locals 3
    .param p1, "listener"    # Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;
    .param p2, "listening"    # Z

    .prologue
    const/4 v1, 0x0

    .line 237
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x7

    invoke-virtual {p0, v2, v0, v1, p1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 236
    return-void

    :cond_0
    move v0, v1

    .line 237
    goto :goto_0
.end method

.method public setMobileDataEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 209
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x5

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 208
    return-void

    :cond_0
    move v0, v1

    .line 209
    goto :goto_0
.end method

.method public setMobileDataIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;IIZZIIILjava/lang/String;Ljava/lang/String;ZIZ)V
    .locals 17
    .param p1, "statusIcon"    # Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    .param p2, "qsIcon"    # Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    .param p3, "statusType"    # I
    .param p4, "qsType"    # I
    .param p5, "activityIn"    # Z
    .param p6, "activityOut"    # Z
    .param p7, "dataActivityId"    # I
    .param p8, "stackedDataIcon"    # I
    .param p9, "stackedVoiceIcon"    # I
    .param p10, "typeContentDescription"    # Ljava/lang/String;
    .param p11, "description"    # Ljava/lang/String;
    .param p12, "isWide"    # Z
    .param p13, "subId"    # I
    .param p14, "roaming"    # Z

    .prologue
    .line 182
    new-instance v1, Lcom/android/systemui/statusbar/policy/CallbackHandler$2;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move/from16 v14, p12

    move/from16 v15, p13

    move/from16 v16, p14

    invoke-direct/range {v1 .. v16}, Lcom/android/systemui/statusbar/policy/CallbackHandler$2;-><init>(Lcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;IIZZIIILjava/lang/String;Ljava/lang/String;ZIZ)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->post(Ljava/lang/Runnable;)Z

    .line 181
    return-void
.end method

.method public setNetworkNameVoice(ILjava/lang/String;)V
    .locals 2
    .param p1, "slot"    # I
    .param p2, "networkNameVoice"    # Ljava/lang/String;

    .prologue
    .line 257
    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 256
    return-void
.end method

.method public setNoSims(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    const/4 v1, 0x0

    .line 201
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x2

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 200
    return-void

    :cond_0
    move v0, v1

    .line 201
    goto :goto_0
.end method

.method public setSpeechHd(IZ)V
    .locals 2
    .param p1, "slot"    # I
    .param p2, "hd"    # Z

    .prologue
    .line 249
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0xa

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 248
    return-void

    .line 249
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSubs(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 197
    .local p1, "subs":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionInfo;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 196
    return-void
.end method

.method public setVolteNoService(IZ)V
    .locals 2
    .param p1, "slot"    # I
    .param p2, "show"    # Z

    .prologue
    .line 245
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x9

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 244
    return-void

    .line 245
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVowifi(IZ)V
    .locals 2
    .param p1, "slot"    # I
    .param p2, "vowifi"    # Z

    .prologue
    .line 253
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0xc

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 252
    return-void

    .line 253
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setWifiIndicators(ZLcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;ZZLjava/lang/String;Z)V
    .locals 9
    .param p1, "enabled"    # Z
    .param p2, "statusIcon"    # Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    .param p3, "qsIcon"    # Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    .param p4, "activityIn"    # Z
    .param p5, "activityOut"    # Z
    .param p6, "description"    # Ljava/lang/String;
    .param p7, "isTransient"    # Z

    .prologue
    .line 159
    new-instance v0, Lcom/android/systemui/statusbar/policy/CallbackHandler$1;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/CallbackHandler$1;-><init>(Lcom/android/systemui/statusbar/policy/CallbackHandler;ZLcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;ZZLjava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->post(Ljava/lang/Runnable;)Z

    .line 158
    return-void
.end method

.method public updateCarrierName(ILjava/lang/String;)V
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "carrierName"    # Ljava/lang/String;

    .prologue
    .line 217
    const/16 v0, 0xe

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 216
    return-void
.end method
