.class Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$2;
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
    .line 114
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 117
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    .line 118
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->-get2(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 119
    const-string/jumbo v4, "POWER_SAVE_MODE_OPEN"

    const/4 v5, -0x2

    .line 117
    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v0, :cond_0

    :goto_0
    iput-boolean v0, v2, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mIsPowerSaveMode:Z

    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->-wrap1(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;)V

    .line 116
    return-void

    :cond_0
    move v0, v1

    .line 117
    goto :goto_0
.end method
