.class Lcom/android/systemui/vendor/HeadsetPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "HeadsetPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vendor/HeadsetPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vendor/HeadsetPolicy;


# direct methods
.method constructor <init>(Lcom/android/systemui/vendor/HeadsetPolicy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/vendor/HeadsetPolicy;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/android/systemui/vendor/HeadsetPolicy$1;->this$0:Lcom/android/systemui/vendor/HeadsetPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private updateHeadset(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 35
    const-string/jumbo v2, "state"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 36
    .local v0, "isHeadSetPlugged":Z
    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/vendor/HeadsetPolicy$1;->this$0:Lcom/android/systemui/vendor/HeadsetPolicy;

    invoke-static {v1}, Lcom/android/systemui/vendor/HeadsetPolicy;->-get0(Lcom/android/systemui/vendor/HeadsetPolicy;)Landroid/os/PowerManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 34
    :cond_0
    :goto_1
    return-void

    .end local v0    # "isHeadSetPlugged":Z
    :cond_1
    move v0, v1

    .line 35
    goto :goto_0

    .line 37
    .restart local v0    # "isHeadSetPlugged":Z
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/vendor/HeadsetPolicy$1;->this$0:Lcom/android/systemui/vendor/HeadsetPolicy;

    invoke-static {v1}, Lcom/android/systemui/vendor/HeadsetPolicy;->-get0(Lcom/android/systemui/vendor/HeadsetPolicy;)Landroid/os/PowerManager;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 38
    const-string/jumbo v4, "com.android.systemui:HEADSET"

    .line 37
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 31
    invoke-direct {p0, p2}, Lcom/android/systemui/vendor/HeadsetPolicy$1;->updateHeadset(Landroid/content/Intent;)V

    .line 30
    return-void
.end method
