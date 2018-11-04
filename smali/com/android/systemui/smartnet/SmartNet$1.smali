.class Lcom/android/systemui/smartnet/SmartNet$1;
.super Landroid/os/CountDownTimer;
.source "SmartNet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/smartnet/SmartNet;->setTimer(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/smartnet/SmartNet;


# direct methods
.method constructor <init>(Lcom/android/systemui/smartnet/SmartNet;JJ)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/smartnet/SmartNet;
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 504
    iput-object p1, p0, Lcom/android/systemui/smartnet/SmartNet$1;->this$0:Lcom/android/systemui/smartnet/SmartNet;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 515
    invoke-static {v3}, Lcom/android/systemui/smartnet/SmartNet;->access$002(Z)Z

    .line 516
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/systemui/smartnet/SmartNet;->access$102(Z)Z

    .line 518
    iget-object v0, p0, Lcom/android/systemui/smartnet/SmartNet$1;->this$0:Lcom/android/systemui/smartnet/SmartNet;

    invoke-static {v0}, Lcom/android/systemui/smartnet/SmartNet;->access$200(Lcom/android/systemui/smartnet/SmartNet;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/smartnet/SmartNet$1;->this$0:Lcom/android/systemui/smartnet/SmartNet;

    invoke-static {v0}, Lcom/android/systemui/smartnet/SmartNet;->access$300(Lcom/android/systemui/smartnet/SmartNet;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/systemui/smartnet/SmartNet;->access$400()I

    move-result v0

    if-lez v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/android/systemui/smartnet/SmartNet$1;->this$0:Lcom/android/systemui/smartnet/SmartNet;

    invoke-static {}, Lcom/android/systemui/smartnet/SmartNet;->access$400()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/smartnet/SmartNet;->access$500(Lcom/android/systemui/smartnet/SmartNet;I)V

    .line 520
    invoke-static {}, Lcom/android/systemui/smartnet/SmartNet;->access$600()Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/smartnet/SmartNet$1;->this$0:Lcom/android/systemui/smartnet/SmartNet;

    iget-object v1, p0, Lcom/android/systemui/smartnet/SmartNet$1;->this$0:Lcom/android/systemui/smartnet/SmartNet;

    invoke-static {v1}, Lcom/android/systemui/smartnet/SmartNet;->access$800(Lcom/android/systemui/smartnet/SmartNet;)Lcom/android/systemui/smartnet/SmartNetCoreDualSim;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/smartnet/SmartNet$1;->this$0:Lcom/android/systemui/smartnet/SmartNet;

    invoke-static {v2}, Lcom/android/systemui/smartnet/SmartNet;->access$700(Lcom/android/systemui/smartnet/SmartNet;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/smartnet/SmartNetCoreDualSim;->getSubId(Landroid/content/Context;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/smartnet/SmartNet$1;->this$0:Lcom/android/systemui/smartnet/SmartNet;

    invoke-static {v2, v3}, Lcom/android/systemui/smartnet/SmartNet;->access$900(Lcom/android/systemui/smartnet/SmartNet;I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/smartnet/SmartNet;->access$1000(Lcom/android/systemui/smartnet/SmartNet;[II)V

    .line 523
    const-string v0, "SmartNet2.0"

    const-string v1, "setTimer(I)V: Switch network type"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    return-void
.end method

.method public onTick(J)V
    .locals 7
    .param p1, "l"    # J

    .prologue
    const-wide/16 v4, 0x3e8

    .line 508
    div-long v0, p1, v4

    const-wide/16 v2, 0xa

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 509
    const-string v0, "SmartNet2.0"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTimer(I)V: Switching seconds remaining: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    div-long v2, p1, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :cond_0
    return-void
.end method
