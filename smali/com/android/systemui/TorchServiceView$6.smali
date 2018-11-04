.class Lcom/android/systemui/TorchServiceView$6;
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


# direct methods
.method constructor <init>(Lcom/android/systemui/TorchServiceView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/TorchServiceView;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/systemui/TorchServiceView$6;->this$0:Lcom/android/systemui/TorchServiceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 159
    const/4 v0, 0x1

    .line 160
    .local v0, "changed":Z
    const/4 v3, 0x0

    .line 162
    .local v3, "reader":Ljava/io/FileReader;
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    iget-object v5, p0, Lcom/android/systemui/TorchServiceView$6;->this$0:Lcom/android/systemui/TorchServiceView;

    invoke-static {v5}, Lcom/android/systemui/TorchServiceView;->-get1(Lcom/android/systemui/TorchServiceView;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .local v4, "reader":Ljava/io/FileReader;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileReader;->read()I

    .end local v3    # "reader":Ljava/io/FileReader;
    move-result v5

    const/16 v6, 0x30

    if-ne v5, v6, :cond_0

    const/4 v0, 0x1

    .line 164
    :goto_0
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v3, v4

    .line 170
    .end local v4    # "reader":Ljava/io/FileReader;
    :goto_1
    if-eqz v0, :cond_1

    .line 171
    iget-object v5, p0, Lcom/android/systemui/TorchServiceView$6;->this$0:Lcom/android/systemui/TorchServiceView;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/systemui/TorchServiceView;->-wrap1(Lcom/android/systemui/TorchServiceView;I)V

    .line 158
    :goto_2
    return-void

    .line 163
    .restart local v4    # "reader":Ljava/io/FileReader;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 166
    .end local v4    # "reader":Ljava/io/FileReader;
    .restart local v3    # "reader":Ljava/io/FileReader;
    :catch_0
    move-exception v2

    .line 167
    .end local v3    # "reader":Ljava/io/FileReader;
    .local v2, "e":Ljava/io/IOException;
    :goto_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 173
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/TorchServiceView$6;->this$0:Lcom/android/systemui/TorchServiceView;

    iget-object v6, p0, Lcom/android/systemui/TorchServiceView$6;->this$0:Lcom/android/systemui/TorchServiceView;

    invoke-static {v6}, Lcom/android/systemui/TorchServiceView;->-get6(Lcom/android/systemui/TorchServiceView;)Ljava/lang/Runnable;

    move-result-object v6

    const-wide/16 v8, 0x3e8

    invoke-virtual {v5, v6, v8, v9}, Lcom/android/systemui/TorchServiceView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 165
    .restart local v3    # "reader":Ljava/io/FileReader;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/io/FileNotFoundException;
    goto :goto_1

    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "reader":Ljava/io/FileReader;
    .restart local v4    # "reader":Ljava/io/FileReader;
    :catch_2
    move-exception v1

    .restart local v1    # "e":Ljava/io/FileNotFoundException;
    move-object v3, v4

    .end local v4    # "reader":Ljava/io/FileReader;
    .local v3, "reader":Ljava/io/FileReader;
    goto :goto_1

    .line 166
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "reader":Ljava/io/FileReader;
    .restart local v4    # "reader":Ljava/io/FileReader;
    :catch_3
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    move-object v3, v4

    .end local v4    # "reader":Ljava/io/FileReader;
    .restart local v3    # "reader":Ljava/io/FileReader;
    goto :goto_3
.end method
