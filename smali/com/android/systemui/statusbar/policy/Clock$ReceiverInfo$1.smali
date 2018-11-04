.class Lcom/android/systemui/statusbar/policy/Clock$ReceiverInfo$1;
.super Landroid/content/BroadcastReceiver;
.source "Clock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/Clock$ReceiverInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/policy/Clock$ReceiverInfo;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/Clock$ReceiverInfo;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/policy/Clock$ReceiverInfo;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/Clock$ReceiverInfo$1;->this$1:Lcom/android/systemui/statusbar/policy/Clock$ReceiverInfo;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 169
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.intent.action.TIME_SET"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    const/4 v2, -0x2

    invoke-static {p1, v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v1

    .line 172
    .local v1, "is24Hour":Z
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/Clock$ReceiverInfo$1;->this$1:Lcom/android/systemui/statusbar/policy/Clock$ReceiverInfo;

    if-eqz v1, :cond_1

    const/16 v2, 0x20

    :goto_0
    invoke-static {v3, v2}, Lcom/android/systemui/statusbar/policy/Clock$ReceiverInfo;->-set0(Lcom/android/systemui/statusbar/policy/Clock$ReceiverInfo;I)I

    .line 174
    .end local v1    # "is24Hour":Z
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/Clock$ReceiverInfo$1;->this$1:Lcom/android/systemui/statusbar/policy/Clock$ReceiverInfo;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/Clock$ReceiverInfo;->updateAll()V

    .line 168
    return-void

    .line 172
    .restart local v1    # "is24Hour":Z
    :cond_1
    const/16 v2, 0x10

    goto :goto_0
.end method
