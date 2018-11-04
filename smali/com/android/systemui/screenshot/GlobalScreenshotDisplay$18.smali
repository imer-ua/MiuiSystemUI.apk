.class Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$18;
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
    .line 593
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$18;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    iput-object p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$18;->val$btnType:Ljava/lang/String;

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

    .line 596
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$18;->val$btnType:Ljava/lang/String;

    const-string/jumbo v3, "feedback"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 597
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$18;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v2}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get13(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Lcom/android/systemui/screenshot/NotifyMediaStoreData;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/screenshot/NotifyMediaStoreData;->outUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 598
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.SEND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 599
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.miui.bugreport"

    const-string/jumbo v3, "com.miui.bugreport.ui.FeedbackActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 600
    const-string/jumbo v2, "android.intent.extra.STREAM"

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$18;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v3}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get13(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Lcom/android/systemui/screenshot/NotifyMediaStoreData;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/screenshot/NotifyMediaStoreData;->outUri:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 601
    const-string/jumbo v2, "image/*"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 602
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 603
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$18;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v2}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get8(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$18;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v3}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-wrap1(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 605
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void

    .line 608
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$18;->val$btnType:Ljava/lang/String;

    const-string/jumbo v3, "edit"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 609
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$18;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v2}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get15(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Lcom/android/systemui/screenshot/ScreenshotScrollView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->resetToShortMode(Z)V

    .line 612
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$18;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v2}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get13(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Lcom/android/systemui/screenshot/NotifyMediaStoreData;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/screenshot/NotifyMediaStoreData;->outUri:Landroid/net/Uri;

    if-eqz v2, :cond_5

    .line 613
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 614
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.miui.gallery"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 615
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$18;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v2}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get13(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Lcom/android/systemui/screenshot/NotifyMediaStoreData;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/screenshot/NotifyMediaStoreData;->outUri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 617
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$18;->val$btnType:Ljava/lang/String;

    const-string/jumbo v3, "send"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 618
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 619
    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 620
    const-string/jumbo v2, "com.miui.gallery.extra.photo_enter_choice_mode"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 621
    const-string/jumbo v2, "com.miui.gallery.extra.sync_load_intent_data"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 622
    const-string/jumbo v2, "com.miui.gallery.extra.show_menu_after_choice_mode"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 623
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$18;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v2}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get8(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$18;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v3}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-wrap1(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 595
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    :goto_0
    return-void

    .line 624
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$18;->val$btnType:Ljava/lang/String;

    const-string/jumbo v3, "edit"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 625
    const-string/jumbo v2, "android.intent.action.EDIT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 626
    const-string/jumbo v2, "IsScreenshot"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 627
    const-string/jumbo v2, "IsLongScreenshot"

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$18;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v3}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get10(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 629
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 630
    .local v1, "intermediateIntent":Landroid/content/Intent;
    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 631
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$18;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v2}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get8(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/android/systemui/screenshot/IntermediateActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 632
    const-string/jumbo v2, "Intent"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 633
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$18;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v2}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get8(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$18;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v3}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-wrap1(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_0

    .line 636
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "intermediateIntent":Landroid/content/Intent;
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$18;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v2, v5, v5}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-wrap12(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;ZZ)V

    .line 637
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$18;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v2}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get8(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$18;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v3}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get8(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/content/Context;

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
