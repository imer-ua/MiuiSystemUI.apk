.class Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$22;
.super Landroid/os/AsyncTask;
.source "GlobalScreenshotDisplay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->finishTakingLongScreenshot(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    .prologue
    .line 839
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$22;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 13
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v12, 0x0

    .line 843
    const/4 v5, 0x0

    .line 844
    .local v5, "resultBmp":Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v7, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$22;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v7}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get17(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Lcom/android/systemui/screenshot/ScreenshotScrollView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->buildLongScreenshot()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 845
    .local v2, "longScreenshot":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    .line 847
    :try_start_1
    iget-object v7, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$22;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v7}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get15(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Lcom/android/systemui/screenshot/NotifyMediaStoreData;

    move-result-object v7

    iget-object v7, v7, Lcom/android/systemui/screenshot/NotifyMediaStoreData;->tempImageFilePath:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-static {v2, v7, v8}, Lmiui/graphics/BitmapFactory;->saveToFile(Landroid/graphics/Bitmap;Ljava/lang/String;Z)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 851
    :goto_0
    :try_start_2
    iget-object v7, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$22;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v7}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get15(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Lcom/android/systemui/screenshot/NotifyMediaStoreData;

    move-result-object v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    iput v8, v7, Lcom/android/systemui/screenshot/NotifyMediaStoreData;->width:I

    .line 852
    iget-object v7, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$22;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v7}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get15(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Lcom/android/systemui/screenshot/NotifyMediaStoreData;

    move-result-object v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    iput v8, v7, Lcom/android/systemui/screenshot/NotifyMediaStoreData;->height:I

    .line 854
    iget-object v7, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$22;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v7}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get13(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 855
    .local v3, "minHeight":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    mul-int/2addr v7, v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    div-int v4, v7, v8

    .line 856
    .local v4, "minWidth":I
    const/4 v7, 0x1

    invoke-static {v2, v4, v3, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 857
    .local v5, "resultBmp":Landroid/graphics/Bitmap;
    iget-object v7, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$22;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v7}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get9(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "longscreenshot_height"

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-long v10, v9

    invoke-static {v7, v8, v10, v11}, Lcom/android/systemui/screenshot/StatHelper;->recordNumericPropertyEvent(Landroid/content/Context;Ljava/lang/String;J)V

    .line 864
    .end local v3    # "minHeight":I
    .end local v4    # "minWidth":I
    .end local v5    # "resultBmp":Landroid/graphics/Bitmap;
    :goto_1
    return-object v5

    .line 848
    .local v5, "resultBmp":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    .line 849
    .local v0, "ex":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 865
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v2    # "longScreenshot":Landroid/graphics/Bitmap;
    .end local v5    # "resultBmp":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v1

    .line 866
    .local v1, "ex":Ljava/lang/Exception;
    const-string/jumbo v7, "GlobalScreenshotDisplay"

    const-string/jumbo v8, ""

    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 867
    return-object v12

    .line 859
    .end local v1    # "ex":Ljava/lang/Exception;
    .restart local v2    # "longScreenshot":Landroid/graphics/Bitmap;
    .restart local v5    # "resultBmp":Landroid/graphics/Bitmap;
    :cond_0
    :try_start_3
    iget-object v7, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$22;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v7}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get9(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x910054f

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    .line 860
    .local v6, "toast":Landroid/widget/Toast;
    const/16 v7, 0x7d6

    invoke-virtual {v6, v7}, Landroid/widget/Toast;->setType(I)V

    .line 861
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 862
    iget-object v7, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$22;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v7}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get9(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "longscreenshot_fail_height"

    invoke-static {v7, v8}, Lcom/android/systemui/screenshot/StatHelper;->recordCountEvent(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 841
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$22;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 873
    if-eqz p1, :cond_0

    .line 874
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$22;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-set3(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 875
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$22;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-wrap10(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;Z)V

    .line 872
    :goto_0
    return-void

    .line 877
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$22;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-wrap10(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;Z)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 872
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$22;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
