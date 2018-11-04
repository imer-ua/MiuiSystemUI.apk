.class Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$19;
.super Ljava/lang/Object;
.source "GlobalScreenshotDisplay.java"

# interfaces
.implements Lcom/android/systemui/screenshot/GlobalScreenshot$ScreenshotFinishCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->startPicActivity(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

.field final synthetic val$btnType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;
    .param p2, "val$btnType"    # Ljava/lang/String;

    .prologue
    .line 617
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$19;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    iput-object p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$19;->val$btnType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 7

    .prologue
    const v6, 0x10008000

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 620
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$19;->val$btnType:Ljava/lang/String;

    const-string/jumbo v3, "feedback"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 621
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$19;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v2}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get15(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Lcom/android/systemui/screenshot/NotifyMediaStoreData;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/screenshot/NotifyMediaStoreData;->outUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 622
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.SEND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 623
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.miui.bugreport"

    const-string/jumbo v3, "com.miui.bugreport.ui.FeedbackActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 624
    const-string/jumbo v2, "android.intent.extra.STREAM"

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$19;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v3}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get15(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Lcom/android/systemui/screenshot/NotifyMediaStoreData;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/screenshot/NotifyMediaStoreData;->outUri:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 625
    const-string/jumbo v2, "image/*"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 626
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 627
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$19;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v2}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get9(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$19;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v3}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-wrap1(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 629
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void

    .line 632
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$19;->val$btnType:Ljava/lang/String;

    const-string/jumbo v3, "edit"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 633
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$19;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v2}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get17(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Lcom/android/systemui/screenshot/ScreenshotScrollView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->resetToShortMode(Z)V

    .line 636
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$19;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v2}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get15(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Lcom/android/systemui/screenshot/NotifyMediaStoreData;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/screenshot/NotifyMediaStoreData;->outUri:Landroid/net/Uri;

    if-eqz v2, :cond_5

    .line 637
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 638
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.miui.gallery"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 639
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$19;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v2}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get15(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Lcom/android/systemui/screenshot/NotifyMediaStoreData;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/screenshot/NotifyMediaStoreData;->outUri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 641
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$19;->val$btnType:Ljava/lang/String;

    const-string/jumbo v3, "send"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 642
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 643
    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 644
    const-string/jumbo v2, "com.miui.gallery.extra.photo_enter_choice_mode"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 645
    const-string/jumbo v2, "com.miui.gallery.extra.sync_load_intent_data"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 646
    const-string/jumbo v2, "com.miui.gallery.extra.show_menu_after_choice_mode"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 647
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$19;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v2}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get9(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$19;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v3}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-wrap1(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 619
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    :goto_0
    return-void

    .line 648
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$19;->val$btnType:Ljava/lang/String;

    const-string/jumbo v3, "edit"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 649
    const-string/jumbo v2, "android.intent.action.EDIT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 650
    const-string/jumbo v2, "IsScreenshot"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 651
    const-string/jumbo v2, "IsLongScreenshot"

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$19;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v3}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get11(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 653
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 654
    .local v1, "intermediateIntent":Landroid/content/Intent;
    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 655
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$19;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v2}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get9(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/android/systemui/screenshot/IntermediateActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 656
    const-string/jumbo v2, "Intent"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 657
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$19;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v2}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get9(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$19;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v3}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-wrap1(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_0

    .line 660
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "intermediateIntent":Landroid/content/Intent;
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$19;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v2, v5, v5}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-wrap13(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;ZZ)V

    .line 661
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$19;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v2}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get9(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$19;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v3}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get9(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x9100550

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
