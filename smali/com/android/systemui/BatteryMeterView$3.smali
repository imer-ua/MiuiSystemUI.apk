.class Lcom/android/systemui/BatteryMeterView$3;
.super Landroid/os/AsyncTask;
.source "BatteryMeterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/BatteryMeterView;->updateQuickCharging()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/BatteryMeterView;


# direct methods
.method constructor <init>(Lcom/android/systemui/BatteryMeterView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/BatteryMeterView;

    .prologue
    .line 581
    iput-object p1, p0, Lcom/android/systemui/BatteryMeterView$3;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 584
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView$3;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-static {v0}, Lcom/android/systemui/BatteryMeterView;->-get0(Lcom/android/systemui/BatteryMeterView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/ChargingUtils;->isQuickCharging(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 583
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/BatteryMeterView$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "quickCharging"    # Ljava/lang/Boolean;

    .prologue
    .line 589
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView$3;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/BatteryMeterView;->updateQuickCharging(Z)V

    .line 588
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "quickCharging"    # Ljava/lang/Object;

    .prologue
    .line 588
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "quickCharging":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/BatteryMeterView$3;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
