.class Lcom/android/systemui/recents/BaseRecentsImpl$5;
.super Landroid/content/BroadcastReceiver;
.source "BaseRecentsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/BaseRecentsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/BaseRecentsImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/BaseRecentsImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/BaseRecentsImpl;

    .prologue
    .line 626
    iput-object p1, p0, Lcom/android/systemui/recents/BaseRecentsImpl$5;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 629
    const-string/jumbo v3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 630
    iget-object v3, p0, Lcom/android/systemui/recents/BaseRecentsImpl$5;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v3}, Lcom/android/systemui/recents/BaseRecentsImpl;->-get4(Lcom/android/systemui/recents/BaseRecentsImpl;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 631
    return-void

    .line 633
    :cond_0
    const-string/jumbo v3, "android.intent.extra.user_handle"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 634
    .local v0, "currentId":I
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne v3, v0, :cond_4

    .line 635
    iget-object v3, p0, Lcom/android/systemui/recents/BaseRecentsImpl$5;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/systemui/recents/BaseRecentsImpl;->-set2(Lcom/android/systemui/recents/BaseRecentsImpl;Z)Z

    .line 636
    iget-object v3, p0, Lcom/android/systemui/recents/BaseRecentsImpl$5;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    iget-object v3, v3, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 637
    const-string/jumbo v4, "force_fsg_nav_bar"

    .line 636
    invoke-static {v3, v4}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    .line 638
    .local v2, "isOpen":Z
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/systemui/recents/BaseRecentsImpl$5;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v3}, Lcom/android/systemui/recents/BaseRecentsImpl;->-get0(Lcom/android/systemui/recents/BaseRecentsImpl;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 628
    .end local v0    # "currentId":I
    .end local v2    # "isOpen":Z
    :cond_1
    :goto_0
    return-void

    .line 640
    .restart local v0    # "currentId":I
    .restart local v2    # "isOpen":Z
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/recents/BaseRecentsImpl$5;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v3}, Lcom/android/systemui/recents/BaseRecentsImpl;->-get9(Lcom/android/systemui/recents/BaseRecentsImpl;)Lcom/android/systemui/statusbar/phone/NavStubView;

    move-result-object v3

    if-nez v3, :cond_3

    .line 641
    const-string/jumbo v3, "RecentsImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "navstubview will be added: mReceiver Intent.ACTION_USER_SWITCHED userid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    iget-object v3, p0, Lcom/android/systemui/recents/BaseRecentsImpl$5;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    new-instance v4, Lcom/android/systemui/statusbar/phone/NavStubView;

    iget-object v5, p0, Lcom/android/systemui/recents/BaseRecentsImpl$5;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    iget-object v5, v5, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/systemui/statusbar/phone/NavStubView;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v4}, Lcom/android/systemui/recents/BaseRecentsImpl;->-set4(Lcom/android/systemui/recents/BaseRecentsImpl;Lcom/android/systemui/statusbar/phone/NavStubView;)Lcom/android/systemui/statusbar/phone/NavStubView;

    .line 643
    iget-object v3, p0, Lcom/android/systemui/recents/BaseRecentsImpl$5;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v3}, Lcom/android/systemui/recents/BaseRecentsImpl;->-get13(Lcom/android/systemui/recents/BaseRecentsImpl;)Landroid/view/WindowManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/recents/BaseRecentsImpl$5;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v4}, Lcom/android/systemui/recents/BaseRecentsImpl;->-get9(Lcom/android/systemui/recents/BaseRecentsImpl;)Lcom/android/systemui/statusbar/phone/NavStubView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/recents/BaseRecentsImpl$5;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v5}, Lcom/android/systemui/recents/BaseRecentsImpl;->-get9(Lcom/android/systemui/recents/BaseRecentsImpl;)Lcom/android/systemui/statusbar/phone/NavStubView;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/recents/BaseRecentsImpl$5;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v6}, Lcom/android/systemui/recents/BaseRecentsImpl;->-get12(Lcom/android/systemui/recents/BaseRecentsImpl;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/phone/NavStubView;->getWindowParam(I)Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 645
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/recents/BaseRecentsImpl$5;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v3}, Lcom/android/systemui/recents/BaseRecentsImpl;->-wrap1(Lcom/android/systemui/recents/BaseRecentsImpl;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 646
    :catch_0
    move-exception v1

    .line 647
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 651
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "isOpen":Z
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/recents/BaseRecentsImpl$5;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/systemui/recents/BaseRecentsImpl;->-set2(Lcom/android/systemui/recents/BaseRecentsImpl;Z)Z

    .line 653
    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/recents/BaseRecentsImpl$5;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v3}, Lcom/android/systemui/recents/BaseRecentsImpl;->-get9(Lcom/android/systemui/recents/BaseRecentsImpl;)Lcom/android/systemui/statusbar/phone/NavStubView;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 654
    const-string/jumbo v3, "RecentsImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "navstubview will be removed: mReceiver Intent.ACTION_USER_SWITCHED userid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    iget-object v3, p0, Lcom/android/systemui/recents/BaseRecentsImpl$5;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v3}, Lcom/android/systemui/recents/BaseRecentsImpl;->-get13(Lcom/android/systemui/recents/BaseRecentsImpl;)Landroid/view/WindowManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/recents/BaseRecentsImpl$5;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v4}, Lcom/android/systemui/recents/BaseRecentsImpl;->-get9(Lcom/android/systemui/recents/BaseRecentsImpl;)Lcom/android/systemui/statusbar/phone/NavStubView;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 656
    iget-object v3, p0, Lcom/android/systemui/recents/BaseRecentsImpl$5;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/systemui/recents/BaseRecentsImpl;->-set4(Lcom/android/systemui/recents/BaseRecentsImpl;Lcom/android/systemui/statusbar/phone/NavStubView;)Lcom/android/systemui/statusbar/phone/NavStubView;

    .line 658
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/recents/BaseRecentsImpl$5;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v3}, Lcom/android/systemui/recents/BaseRecentsImpl;->-wrap2(Lcom/android/systemui/recents/BaseRecentsImpl;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 659
    :catch_1
    move-exception v1

    .line 660
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 663
    .end local v0    # "currentId":I
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_6
    const-string/jumbo v3, "android.intent.action.USER_PRESENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 664
    iget-object v3, p0, Lcom/android/systemui/recents/BaseRecentsImpl$5;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v3}, Lcom/android/systemui/recents/BaseRecentsImpl;->-wrap0(Lcom/android/systemui/recents/BaseRecentsImpl;)V

    goto/16 :goto_0
.end method
