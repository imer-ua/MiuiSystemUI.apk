.class public Lcom/android/keyguard/faceunlock/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static saveRaw(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "res"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 118
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v10

    invoke-direct {v2, v10, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 119
    .local v2, "dir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    .line 120
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v10

    if-nez v10, :cond_0

    .line 121
    const-string/jumbo v10, "face_unlock"

    const-string/jumbo v11, "mkdirs fail"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const/4 v10, 0x0

    return-object v10

    .line 125
    :cond_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 127
    .local v5, "file":Ljava/io/File;
    const/4 v6, 0x0

    .line 128
    .local v6, "fos":Ljava/io/FileOutputStream;
    const/4 v8, 0x0

    .line 129
    .local v8, "is":Ljava/io/InputStream;
    const/4 v9, 0x0

    .line 132
    .local v9, "ret":Ljava/lang/String;
    const/16 v10, 0x400

    :try_start_0
    new-array v0, v10, [B

    .line 133
    .local v0, "buffer":[B
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .local v7, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v8

    .line 135
    .local v8, "is":Ljava/io/InputStream;
    :goto_0
    invoke-virtual {v8, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "count":I
    const/4 v10, -0x1

    if-eq v1, v10, :cond_3

    .line 136
    const/4 v10, 0x0

    invoke-virtual {v7, v0, v10, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 139
    .end local v1    # "count":I
    .end local v8    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v4

    .local v4, "e":Ljava/lang/Exception;
    move-object v6, v7

    .line 140
    .end local v0    # "buffer":[B
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 141
    const/4 v10, 0x0

    .line 144
    if-eqz v6, :cond_1

    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 149
    :cond_1
    :goto_2
    if-eqz v8, :cond_2

    :try_start_4
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 141
    :cond_2
    :goto_3
    return-object v10

    .line 138
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v0    # "buffer":[B
    .restart local v1    # "count":I
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "is":Ljava/io/InputStream;
    :cond_3
    :try_start_5
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v9

    .line 144
    .local v9, "ret":Ljava/lang/String;
    if-eqz v7, :cond_4

    :try_start_6
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 149
    :cond_4
    :goto_4
    if-eqz v8, :cond_5

    :try_start_7
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 154
    :cond_5
    :goto_5
    return-object v9

    .line 145
    :catch_1
    move-exception v3

    .line 146
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 150
    .end local v3    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 151
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 145
    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    .end local v3    # "e":Ljava/io/IOException;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v8    # "is":Ljava/io/InputStream;
    .restart local v4    # "e":Ljava/lang/Exception;
    .local v9, "ret":Ljava/lang/String;
    :catch_3
    move-exception v3

    .line 146
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 150
    .end local v3    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v3

    .line 151
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 142
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    .line 144
    :goto_6
    if-eqz v6, :cond_6

    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 149
    :cond_6
    :goto_7
    if-eqz v8, :cond_7

    :try_start_9
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 142
    :cond_7
    :goto_8
    throw v10

    .line 145
    :catch_5
    move-exception v3

    .line 146
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 150
    .end local v3    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v3

    .line 151
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 142
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v0    # "buffer":[B
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v10

    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .local v6, "fos":Ljava/io/FileOutputStream;
    goto :goto_6

    .line 139
    .end local v0    # "buffer":[B
    .local v6, "fos":Ljava/io/FileOutputStream;
    .local v8, "is":Ljava/io/InputStream;
    :catch_7
    move-exception v4

    .restart local v4    # "e":Ljava/lang/Exception;
    goto :goto_1
.end method
