.class Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;
.super Landroid/database/ContentObserver;
.source "BatteryControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 7
    .param p1, "selfChange"    # Z

    .prologue
    .line 102
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    .line 103
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->-get2(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 104
    const-string/jumbo v4, "battery_indicator_style"

    const/4 v5, 0x0

    const/4 v6, -0x2

    .line 102
    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->-set0(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;I)I

    .line 105
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;)Ljava/util/ArrayList;

    move-result-object v3

    monitor-enter v3

    .line 106
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 107
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 108
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->-get0(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;)I

    move-result v4

    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;->onBatteryStyleChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v3

    .line 101
    return-void

    .line 105
    .end local v0    # "N":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
