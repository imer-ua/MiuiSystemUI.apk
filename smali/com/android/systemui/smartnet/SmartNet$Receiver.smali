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
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 666
    iget-object v1, p0, Lcom/android/systemui/smartnet/SmartNet$Receiver;->this$0:Lcom/android/systemui/smartnet/SmartNet;

    .line 667
    .local v1, "mSmartNet":Lcom/android/systemui/smartnet/SmartNet;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 669
    .local v0, "mIntent":Ljava/lang/String;
    const-string v2, "android.intent.action.PHONE_STATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 670
    iget-object v2, p0, Lcom/android/systemui/smartnet/SmartNet$Receiver;->this$0:Lcom/android/systemui/smartnet/SmartNet;

    invoke-virtual {v2, p2}, Lcom/android/systemui/smartnet/SmartNet;->CallIntentAction(Landroid/content/Intent;)V

    .line 678
    :cond_0
    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "my.settings.CHANGE_SMART_MOBILE_NETWORK"

    .line 679
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    .line 680
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 681
    :cond_1
    invoke-virtual {v1}, Lcom/android/systemui/smartnet/SmartNet;->handleMobileData()V

    .line 683
    :cond_2
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 684
    iget-object v2, p0, Lcom/android/systemui/smartnet/SmartNet$Receiver;->this$0:Lcom/android/systemui/smartnet/SmartNet;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/systemui/smartnet/SmartNet;->access$1400(Lcom/android/systemui/smartnet/SmartNet;Z)V

    .line 686
    :cond_3
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 687
    iget-object v2, p0, Lcom/android/systemui/smartnet/SmartNet$Receiver;->this$0:Lcom/android/systemui/smartnet/SmartNet;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/systemui/smartnet/SmartNet;->access$1400(Lcom/android/systemui/smartnet/SmartNet;Z)V

    .line 690
    :cond_4
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 691
    iget-object v2, p0, Lcom/android/systemui/smartnet/SmartNet$Receiver;->this$0:Lcom/android/systemui/smartnet/SmartNet;

    invoke-static {v2, p2}, Lcom/android/systemui/smartnet/SmartNet;->access$1500(Lcom/android/systemui/smartnet/SmartNet;Landroid/content/Intent;)V

    .line 694
    :cond_5
    return-void
.end method
