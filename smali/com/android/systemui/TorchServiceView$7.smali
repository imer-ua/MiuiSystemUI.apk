.class Lcom/android/systemui/TorchServiceView$7;
.super Ljava/lang/Object;
.source "TorchServiceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/TorchServiceView;->setFlashModeInternal(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/TorchServiceView;

.field final synthetic val$mode:I


# direct methods
.method constructor <init>(Lcom/android/systemui/TorchServiceView;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/TorchServiceView;
    .param p2, "val$mode"    # I

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/systemui/TorchServiceView$7;->this$0:Lcom/android/systemui/TorchServiceView;

    iput p2, p0, Lcom/android/systemui/TorchServiceView$7;->val$mode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 188
    iget-object v4, p0, Lcom/android/systemui/TorchServiceView$7;->this$0:Lcom/android/systemui/TorchServiceView;

    invoke-static {v4}, Lcom/android/systemui/TorchServiceView;->-get1(Lcom/android/systemui/TorchServiceView;)Ljava/lang/String;

    move-result-object v6

    iget v4, p0, Lcom/android/systemui/TorchServiceView$7;->val$mode:I

    if-ne v4, v7, :cond_3

    iget-object v4, p0, Lcom/android/systemui/TorchServiceView$7;->this$0:Lcom/android/systemui/TorchServiceView;

    invoke-static {v4}, Lcom/android/systemui/TorchServiceView;->-get7(Lcom/android/systemui/TorchServiceView;)I

    move-result v4

    :goto_0
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/miui/Shell;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 189
    const/4 v2, 0x0

    .line 191
    .local v2, "writer":Ljava/io/FileWriter;
    :try_start_0
    new-instance v3, Ljava/io/FileWriter;

    iget-object v4, p0, Lcom/android/systemui/TorchServiceView$7;->this$0:Lcom/android/systemui/TorchServiceView;

    invoke-static {v4}, Lcom/android/systemui/TorchServiceView;->-get1(Lcom/android/systemui/TorchServiceView;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    .end local v2    # "writer":Ljava/io/FileWriter;
    .local v3, "writer":Ljava/io/FileWriter;
    :try_start_1
    iget v4, p0, Lcom/android/systemui/TorchServiceView$7;->val$mode:I

    if-ne v4, v7, :cond_0

    iget-object v4, p0, Lcom/android/systemui/TorchServiceView$7;->this$0:Lcom/android/systemui/TorchServiceView;

    invoke-static {v4}, Lcom/android/systemui/TorchServiceView;->-get7(Lcom/android/systemui/TorchServiceView;)I

    move-result v5

    :cond_0
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 196
    if-eqz v3, :cond_1

    .line 198
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_1
    move-object v2, v3

    .line 187
    .end local v3    # "writer":Ljava/io/FileWriter;
    :cond_2
    :goto_2
    return-void

    :cond_3
    move v4, v5

    .line 188
    goto :goto_0

    .line 199
    .restart local v3    # "writer":Ljava/io/FileWriter;
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 193
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "writer":Ljava/io/FileWriter;
    .restart local v2    # "writer":Ljava/io/FileWriter;
    :catch_1
    move-exception v1

    .line 194
    .end local v2    # "writer":Ljava/io/FileWriter;
    .local v1, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    const-string/jumbo v4, "TorchServiceView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "FileWriter write failed!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 196
    if-eqz v2, :cond_2

    .line 198
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 199
    :catch_2
    move-exception v0

    .line 200
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 195
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 196
    :goto_4
    if-eqz v2, :cond_4

    .line 198
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 195
    :cond_4
    :goto_5
    throw v4

    .line 199
    :catch_3
    move-exception v0

    .line 200
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 195
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "writer":Ljava/io/FileWriter;
    .local v2, "writer":Ljava/io/FileWriter;
    goto :goto_4

    .line 193
    .end local v2    # "writer":Ljava/io/FileWriter;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    :catch_4
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    move-object v2, v3

    .end local v3    # "writer":Ljava/io/FileWriter;
    .restart local v2    # "writer":Ljava/io/FileWriter;
    goto :goto_3
.end method
