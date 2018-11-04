.class final Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;
.super Ljava/lang/Object;
.source "VolumeDialogControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeDialogControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "C"
.end annotation


# instance fields
.field private final mCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .prologue
    .line 641
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 642
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->mCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 641
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)V

    return-void
.end method


# virtual methods
.method public add(Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;Landroid/os/Handler;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 645
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 646
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->mCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    return-void
.end method

.method public onAccessibilityModeChanged(Ljava/lang/Boolean;)V
    .locals 5
    .param p1, "showA11yStream"    # Ljava/lang/Boolean;

    .prologue
    .line 770
    if-nez p1, :cond_0

    const/4 v2, 0x0

    .line 771
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->mCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 772
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;Landroid/os/Handler;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Handler;

    new-instance v4, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$10;

    invoke-direct {v4, p0, v0, v2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$10;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;Ljava/util/Map$Entry;Z)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 770
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;Landroid/os/Handler;>;"
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .local v2, "show":Z
    goto :goto_0

    .line 769
    .end local v2    # "show":Z
    .restart local v1    # "entry$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 4

    .prologue
    .line 709
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-get7(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Lcom/android/systemui/plugins/VolumeDialogController$State;

    move-result-object v2

    const/4 v3, -0x1

    iput v3, v2, Lcom/android/systemui/plugins/VolumeDialogController$State;->activeStream:I

    .line 710
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->mCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 711
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;Landroid/os/Handler;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$5;

    invoke-direct {v3, p0, v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$5;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;Ljava/util/Map$Entry;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 705
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;Landroid/os/Handler;>;"
    :cond_0
    return-void
.end method

.method public onDismissRequested(I)V
    .locals 4
    .param p1, "reason"    # I

    .prologue
    .line 667
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->mCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 668
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;Landroid/os/Handler;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$2;

    invoke-direct {v3, p0, v0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$2;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;Ljava/util/Map$Entry;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 666
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;Landroid/os/Handler;>;"
    :cond_0
    return-void
.end method

.method public onLayoutDirectionChanged(I)V
    .locals 4
    .param p1, "layoutDirection"    # I

    .prologue
    .line 694
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->mCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 695
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;Landroid/os/Handler;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$4;

    invoke-direct {v3, p0, v0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$4;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;Ljava/util/Map$Entry;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 693
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;Landroid/os/Handler;>;"
    :cond_0
    return-void
.end method

.method public onScreenOff()V
    .locals 4

    .prologue
    .line 746
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->mCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 747
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;Landroid/os/Handler;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$8;

    invoke-direct {v3, p0, v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$8;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;Ljava/util/Map$Entry;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 745
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;Landroid/os/Handler;>;"
    :cond_0
    return-void
.end method

.method public onShowRequested(I)V
    .locals 4
    .param p1, "reason"    # I

    .prologue
    .line 655
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->mCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 656
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;Landroid/os/Handler;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$1;

    invoke-direct {v3, p0, v0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$1;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;Ljava/util/Map$Entry;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 654
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;Landroid/os/Handler;>;"
    :cond_0
    return-void
.end method

.method public onShowSafetyWarning(I)V
    .locals 4
    .param p1, "flags"    # I

    .prologue
    .line 758
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->mCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 759
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;Landroid/os/Handler;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$9;

    invoke-direct {v3, p0, v0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$9;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;Ljava/util/Map$Entry;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 757
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;Landroid/os/Handler;>;"
    :cond_0
    return-void
.end method

.method public onShowSilentHint()V
    .locals 4

    .prologue
    .line 734
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->mCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 735
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;Landroid/os/Handler;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$7;

    invoke-direct {v3, p0, v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$7;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;Ljava/util/Map$Entry;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 733
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;Landroid/os/Handler;>;"
    :cond_0
    return-void
.end method

.method public onShowVibrateHint()V
    .locals 4

    .prologue
    .line 722
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->mCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 723
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;Landroid/os/Handler;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$6;

    invoke-direct {v3, p0, v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$6;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;Ljava/util/Map$Entry;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 721
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;Landroid/os/Handler;>;"
    :cond_0
    return-void
.end method

.method public onStateChanged(Lcom/android/systemui/plugins/VolumeDialogController$State;)V
    .locals 7
    .param p1, "state"    # Lcom/android/systemui/plugins/VolumeDialogController$State;

    .prologue
    .line 679
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 680
    .local v4, "time":J
    invoke-virtual {p1}, Lcom/android/systemui/plugins/VolumeDialogController$State;->copy()Lcom/android/systemui/plugins/VolumeDialogController$State;

    move-result-object v0

    .line 681
    .local v0, "copy":Lcom/android/systemui/plugins/VolumeDialogController$State;
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->mCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 682
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;Landroid/os/Handler;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Handler;

    new-instance v6, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$3;

    invoke-direct {v6, p0, v1, v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$3;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;Ljava/util/Map$Entry;Lcom/android/systemui/plugins/VolumeDialogController$State;)V

    invoke-virtual {v3, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 689
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;Landroid/os/Handler;>;"
    :cond_0
    invoke-static {v4, v5, v0}, Lcom/android/systemui/volume/Events;->writeState(JLcom/android/systemui/plugins/VolumeDialogController$State;)V

    .line 678
    return-void
.end method

.method public onVolumeChanged(IZ)V
    .locals 4
    .param p1, "stream"    # I
    .param p2, "fromKey"    # Z

    .prologue
    .line 783
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->mCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 784
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;Landroid/os/Handler;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$11;

    invoke-direct {v3, p0, v0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$11;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;Ljava/util/Map$Entry;IZ)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 782
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;Landroid/os/Handler;>;"
    :cond_0
    return-void
.end method

.method public remove(Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    .prologue
    .line 650
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->mCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    return-void
.end method
