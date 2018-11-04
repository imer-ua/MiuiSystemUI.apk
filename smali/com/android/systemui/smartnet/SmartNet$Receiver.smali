.class Lcom/android/systemui/smartnet/SmartNet$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "SmartNet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/smartnet/SmartNet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Receiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/smartnet/SmartNet;


# direct methods
.method constructor <init>(Lcom/android/systemui/smartnet/SmartNet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/smartnet/SmartNet;

    .prologue
    .line 662
    iput-object p1, p0, Lcom/android/systemui/smartnet/SmartNet$Receiver;->this$0:Lcom/android/systemui/smartnet/SmartNet;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 731
    iget-object v1, p0, Lcom/android/systemui/smartnet/SmartNet$Receiver;->this$0:Lcom/android/systemui/smartnet/SmartNet;

    .line 732
    .local v1, "mSmartNet":Lcom/android/systemui/smartnet/SmartNet;
    new-instance v2, Lcom/android/systemui/smartnet/SmartNetCore;

    invoke-direct {v2, p1}, Lcom/android/systemui/smartnet/SmartNetCore;-><init>(Landroid/content/Context;)V

    .line 733
    .local v2, "mSmartNetCore":Lcom/android/systemui/smartnet/SmartNetCore;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 735
    .local v0, "mIntent":Ljava/lang/String;
    const-string v3, "android.intent.action.PHONE_STATE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 736
    iget-object v3, p0, Lcom/android/systemui/smartnet/SmartNet$Receiver;->this$0:Lcom/android/systemui/smartnet/SmartNet;

    invoke-virtual {v3, p2}, Lcom/android/systemui/smartnet/SmartNet;->CallIntentAction(Landroid/content/Intent;)V

    .line 744
    :cond_0
    const-string v3, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "my.settings.CHANGE_SMART_MOBILE_NETWORK"

    .line 745
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    .line 746
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 747
    :cond_1
    invoke-virtual {v1}, Lcom/android/systemui/smartnet/SmartNet;->handleMobileData()V

    .line 748
    invoke-virtual {v2}, Lcom/android/systemui/smartnet/SmartNetCore;->hA()V

    .line 750
    :cond_2
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 751
    iget-object v3, p0, Lcom/android/systemui/smartnet/SmartNet$Receiver;->this$0:Lcom/android/systemui/smartnet/SmartNet;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/systemui/smartnet/SmartNet;->access$1400(Lcom/android/systemui/smartnet/SmartNet;Z)V

    .line 753
    :cond_3
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 754
    iget-object v3, p0, Lcom/android/systemui/smartnet/SmartNet$Receiver;->this$0:Lcom/android/systemui/smartnet/SmartNet;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/systemui/smartnet/SmartNet;->access$1400(Lcom/android/systemui/smartnet/SmartNet;Z)V

    .line 757
    :cond_4
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 758
    iget-object v3, p0, Lcom/android/systemui/smartnet/SmartNet$Receiver;->this$0:Lcom/android/systemui/smartnet/SmartNet;

    invoke-static {v3, p2}, Lcom/android/systemui/smartnet/SmartNet;->access$1500(Lcom/android/systemui/smartnet/SmartNet;Landroid/content/Intent;)V

    .line 761
    :cond_5
    return-void
.end method
