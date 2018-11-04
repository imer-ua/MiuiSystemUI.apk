.class Lcom/android/keyguard/KeyguardUpdateMonitor$18;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .prologue
    .line 2822
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$18;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 2843
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 2827
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v2, v1, :cond_2

    .line 2828
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$18;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-set7(Lcom/android/keyguard/KeyguardUpdateMonitor;F)F

    .line 2833
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$18;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get11(Lcom/android/keyguard/KeyguardUpdateMonitor;)F

    move-result v1

    const/high16 v2, 0x40400000    # 3.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$18;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get13(Lcom/android/keyguard/KeyguardUpdateMonitor;)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    const/4 v0, 0x1

    .line 2834
    .local v0, "isInSuspectMode":Z
    :goto_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$18;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get9(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 2835
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$18;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-set5(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)Z

    .line 2836
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$18;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get15(Lcom/android/keyguard/KeyguardUpdateMonitor;)Lcom/android/keyguard/KeyguardUpdateMonitor$SensorsChangeCallback;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2837
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$18;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get15(Lcom/android/keyguard/KeyguardUpdateMonitor;)Lcom/android/keyguard/KeyguardUpdateMonitor$SensorsChangeCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$SensorsChangeCallback;->onChange(Z)V

    .line 2825
    :cond_1
    return-void

    .line 2829
    .end local v0    # "isInSuspectMode":Z
    :cond_2
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_0

    .line 2830
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$18;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-static {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-set8(Lcom/android/keyguard/KeyguardUpdateMonitor;F)F

    goto :goto_0

    .line 2833
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "isInSuspectMode":Z
    goto :goto_1
.end method
