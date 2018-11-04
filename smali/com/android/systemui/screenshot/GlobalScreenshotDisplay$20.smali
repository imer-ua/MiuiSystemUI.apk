.class Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$20;
.super Landroid/os/AsyncTask;
.source "GlobalScreenshotDisplay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->onCallbackReceive(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Intent;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$isEnd:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;Landroid/content/Intent;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;
    .param p2, "val$intent"    # Landroid/content/Intent;
    .param p3, "val$isEnd"    # Z

    .prologue
    .line 731
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$20;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    iput-object p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$20;->val$intent:Landroid/content/Intent;

    iput-boolean p3, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$20;->val$isEnd:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/content/Intent;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "params"    # [Landroid/content/Intent;

    .prologue
    .line 734
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$20;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v0, v1}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-wrap0(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;Landroid/content/Intent;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 733
    check-cast p1, [Landroid/content/Intent;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$20;->doInBackground([Landroid/content/Intent;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 10
    .param p1, "screenshot"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 737
    iget-object v7, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$20;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v7}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get12(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Z

    move-result v7

    if-nez v7, :cond_0

    return-void

    .line 739
    :cond_0
    iget-object v7, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$20;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    iget-object v7, v7, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotParts:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_3

    move v3, v5

    .line 742
    .local v3, "isFirstTime":Z
    :goto_0
    if-eqz v3, :cond_1

    .line 743
    iget-object v7, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$20;->val$intent:Landroid/content/Intent;

    const-string/jumbo v8, "BottomLoc"

    invoke-virtual {v7, v8, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 744
    .local v0, "bottomLoc":I
    iget-object v7, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$20;->val$intent:Landroid/content/Intent;

    const-string/jumbo v8, "ViewBottom"

    invoke-virtual {v7, v8, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 745
    .local v4, "viewBottom":I
    iget-object v7, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$20;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v7}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get13(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-static {v7, v6, v0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->cropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 746
    .local v2, "firstCropedBmp":Landroid/graphics/Bitmap;
    iget-object v7, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$20;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    iget-object v7, v7, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotParts:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 747
    iget-object v7, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$20;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v7}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get13(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v4, v7, :cond_4

    .line 748
    iget-object v7, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$20;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v7}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get13(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/graphics/Bitmap;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$20;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v8}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get13(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sub-int/2addr v8, v4

    invoke-static {v7, v4, v8}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->cropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 749
    .local v1, "bottomPart":Landroid/graphics/Bitmap;
    iget-object v7, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$20;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v7}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get17(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Lcom/android/systemui/screenshot/ScreenshotScrollView;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->setBottomPart(Landroid/graphics/Bitmap;)V

    .line 755
    .end local v0    # "bottomLoc":I
    .end local v1    # "bottomPart":Landroid/graphics/Bitmap;
    .end local v2    # "firstCropedBmp":Landroid/graphics/Bitmap;
    .end local v4    # "viewBottom":I
    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    .line 756
    iget-object v7, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$20;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    iget-object v7, v7, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotParts:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 759
    :cond_2
    if-eqz v3, :cond_5

    .line 760
    iget-object v6, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$20;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v6}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get17(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Lcom/android/systemui/screenshot/ScreenshotScrollView;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->setSingleBitmap(Landroid/graphics/Bitmap;)V

    .line 761
    iget-object v6, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$20;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v6}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get17(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Lcom/android/systemui/screenshot/ScreenshotScrollView;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$20;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    iget-object v7, v7, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotParts:Ljava/util/ArrayList;

    invoke-virtual {v6, v7, v5}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->setBitmaps(Ljava/util/List;Z)V

    .line 762
    iget-object v6, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$20;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v6}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get17(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Lcom/android/systemui/screenshot/ScreenshotScrollView;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->setIsTakingLongScreenshot(Z)V

    .line 763
    iget-object v6, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$20;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v6}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get17(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Lcom/android/systemui/screenshot/ScreenshotScrollView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->startAnimating()V

    .line 768
    :goto_2
    iget-boolean v6, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$20;->val$isEnd:Z

    if-nez v6, :cond_6

    .line 769
    iget-object v6, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$20;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v6, v5}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-set1(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;Z)Z

    .line 770
    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$20;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v5}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-wrap17(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)V

    .line 736
    :goto_3
    return-void

    .end local v3    # "isFirstTime":Z
    :cond_3
    move v3, v6

    .line 739
    goto/16 :goto_0

    .line 751
    .restart local v0    # "bottomLoc":I
    .restart local v2    # "firstCropedBmp":Landroid/graphics/Bitmap;
    .restart local v3    # "isFirstTime":Z
    .restart local v4    # "viewBottom":I
    :cond_4
    iget-object v7, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$20;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v7}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get17(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Lcom/android/systemui/screenshot/ScreenshotScrollView;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->setBottomPart(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 765
    .end local v0    # "bottomLoc":I
    .end local v2    # "firstCropedBmp":Landroid/graphics/Bitmap;
    .end local v4    # "viewBottom":I
    :cond_5
    iget-object v7, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$20;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v7}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get17(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Lcom/android/systemui/screenshot/ScreenshotScrollView;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$20;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    iget-object v8, v8, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->mScreenshotParts:Ljava/util/ArrayList;

    invoke-virtual {v7, v8, v6}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->setBitmaps(Ljava/util/List;Z)V

    goto :goto_2

    .line 772
    :cond_6
    iget-object v6, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$20;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v6, v5}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-set4(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;Z)Z

    goto :goto_3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "screenshot"    # Ljava/lang/Object;

    .prologue
    .line 736
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "screenshot":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$20;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
