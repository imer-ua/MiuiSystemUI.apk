.class Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8$1;
.super Ljava/lang/Object;
.source "PhoneStatusBarPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;

.field final synthetic val$isManagedProfile:Z

.field final synthetic val$secondSpace:Z

.field final synthetic val$xSpace:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;ZZZ)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;
    .param p2, "val$xSpace"    # Z
    .param p3, "val$isManagedProfile"    # Z
    .param p4, "val$secondSpace"    # Z

    .prologue
    .line 588
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8$1;->val$xSpace:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8$1;->val$isManagedProfile:Z

    iput-boolean p4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8$1;->val$secondSpace:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const v4, 0x9100241

    .line 592
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8$1;->val$xSpace:Z

    if-eqz v1, :cond_2

    .line 593
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->-get7(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 594
    .local v0, "showIcon":Z
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->-get6(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->-get12(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Ljava/lang/String;

    move-result-object v2

    .line 596
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->-get1(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 595
    const v4, 0x90203bb

    .line 594
    invoke-interface {v1, v2, v4, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 615
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->-get8(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 616
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->-get6(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->-get12(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 617
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->-set2(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Z)Z

    .line 590
    :cond_0
    return-void

    .line 593
    .end local v0    # "showIcon":Z
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "showIcon":Z
    goto :goto_0

    .line 597
    .end local v0    # "showIcon":Z
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8$1;->val$isManagedProfile:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->-get7(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 602
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->-get9(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 603
    const/4 v0, 0x1

    .line 604
    .restart local v0    # "showIcon":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->-get6(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->-get12(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Ljava/lang/String;

    move-result-object v2

    .line 606
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->-get1(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 605
    const v4, 0x90203b9

    .line 604
    invoke-interface {v1, v2, v4, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    goto :goto_1

    .line 598
    .end local v0    # "showIcon":Z
    :cond_4
    const/4 v0, 0x1

    .line 599
    .restart local v0    # "showIcon":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->-get6(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->-get12(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Ljava/lang/String;

    move-result-object v2

    .line 601
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->-get1(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 600
    const v4, 0x90203b7

    .line 599
    invoke-interface {v1, v2, v4, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 607
    .end local v0    # "showIcon":Z
    :cond_5
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8$1;->val$secondSpace:Z

    if-eqz v1, :cond_7

    .line 608
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->-get7(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x0

    .line 609
    .restart local v0    # "showIcon":Z
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->-get6(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->-get12(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Ljava/lang/String;

    move-result-object v2

    .line 611
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->-get1(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 610
    const v4, 0x90203b5

    .line 609
    invoke-interface {v1, v2, v4, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 608
    .end local v0    # "showIcon":Z
    :cond_6
    const/4 v0, 0x1

    .restart local v0    # "showIcon":Z
    goto :goto_2

    .line 613
    .end local v0    # "showIcon":Z
    :cond_7
    const/4 v0, 0x0

    .restart local v0    # "showIcon":Z
    goto/16 :goto_1
.end method
