.class public Lcom/android/systemui/util/leak/LeakReporter;
.super Ljava/lang/Object;
.source "LeakReporter.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLeakDetector:Lcom/android/systemui/util/leak/LeakDetector;

.field private final mLeakReportEmail:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/leak/LeakDetector;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "leakDetector"    # Lcom/android/systemui/util/leak/LeakDetector;
    .param p3, "leakReportEmail"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/android/systemui/util/leak/LeakReporter;->mContext:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/android/systemui/util/leak/LeakReporter;->mLeakDetector:Lcom/android/systemui/util/leak/LeakDetector;

    .line 63
    iput-object p3, p0, Lcom/android/systemui/util/leak/LeakReporter;->mLeakReportEmail:Ljava/lang/String;

    .line 60
    return-void
.end method

.method private getIntent(Ljava/io/File;Ljava/io/File;)Landroid/content/Intent;
    .locals 15
    .param p1, "hprofFile"    # Ljava/io/File;
    .param p2, "dumpFile"    # Ljava/io/File;

    .prologue
    .line 109
    iget-object v10, p0, Lcom/android/systemui/util/leak/LeakReporter;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "com.android.systemui.fileprovider"

    move-object/from16 v0, p2

    invoke-static {v10, v11, v0}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 110
    .local v3, "dumpUri":Landroid/net/Uri;
    iget-object v10, p0, Lcom/android/systemui/util/leak/LeakReporter;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "com.android.systemui.fileprovider"

    move-object/from16 v0, p1

    invoke-static {v10, v11, v0}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 112
    .local v4, "hprofUri":Landroid/net/Uri;
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v10, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 113
    .local v5, "intent":Landroid/content/Intent;
    const-string/jumbo v8, "application/vnd.android.leakreport"

    .line 115
    .local v8, "mimeType":Ljava/lang/String;
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 116
    const-string/jumbo v10, "android.intent.category.DEFAULT"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    invoke-virtual {v5, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    const-string/jumbo v9, "SystemUI leak report"

    .line 120
    .local v9, "subject":Ljava/lang/String;
    const-string/jumbo v10, "android.intent.extra.SUBJECT"

    const-string/jumbo v11, "SystemUI leak report"

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "Build info: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    const-string/jumbo v11, "ro.build.description"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 125
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 127
    .local v7, "messageBody":Ljava/lang/StringBuilder;
    const-string/jumbo v10, "android.intent.extra.TEXT"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    new-instance v2, Landroid/content/ClipData;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v8, v10, v11

    .line 129
    new-instance v11, Landroid/content/ClipData$Item;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct {v11, v12, v13, v14, v3}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/net/Uri;)V

    .line 128
    const/4 v12, 0x0

    invoke-direct {v2, v12, v10, v11}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    .line 130
    .local v2, "clipData":Landroid/content/ClipData;
    const/4 v10, 0x1

    new-array v10, v10, [Landroid/net/Uri;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    invoke-static {v10}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 132
    .local v1, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    new-instance v10, Landroid/content/ClipData$Item;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct {v10, v11, v12, v13, v4}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/net/Uri;)V

    invoke-virtual {v2, v10}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    .line 133
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    invoke-virtual {v5, v2}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 136
    const-string/jumbo v10, "android.intent.extra.STREAM"

    invoke-virtual {v5, v10, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 138
    iget-object v6, p0, Lcom/android/systemui/util/leak/LeakReporter;->mLeakReportEmail:Ljava/lang/String;

    .line 139
    .local v6, "leakReportEmail":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 140
    const-string/jumbo v10, "android.intent.extra.EMAIL"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v6, v11, v12

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    :cond_0
    return-object v5
.end method


# virtual methods
.method public dumpLeak(I)V
    .locals 20
    .param p1, "garbageCount"    # I

    .prologue
    .line 68
    :try_start_0
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/util/leak/LeakReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "leak"

    invoke-direct {v15, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 69
    .local v15, "leakDir":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->mkdir()Z

    .line 71
    new-instance v13, Ljava/io/File;

    const-string/jumbo v1, "leak.hprof"

    invoke-direct {v13, v15, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 72
    .local v13, "hprofFile":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V

    .line 74
    new-instance v9, Ljava/io/File;

    const-string/jumbo v1, "leak.dump"

    invoke-direct {v9, v15, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .local v9, "dumpFile":Ljava/io/File;
    const/4 v2, 0x0

    const/4 v11, 0x0

    .local v11, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 76
    .end local v11    # "fos":Ljava/io/FileOutputStream;
    .local v12, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v17, Ljava/io/PrintWriter;

    move-object/from16 v0, v17

    invoke-direct {v0, v12}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 77
    .local v17, "w":Ljava/io/PrintWriter;
    const-string/jumbo v1, "Build: "

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "ro.build.description"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 78
    invoke-virtual/range {v17 .. v17}, Ljava/io/PrintWriter;->println()V

    .line 79
    invoke-virtual/range {v17 .. v17}, Ljava/io/PrintWriter;->flush()V

    .line 80
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/util/leak/LeakReporter;->mLeakDetector:Lcom/android/systemui/util/leak/LeakDetector;

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v1, v3, v0, v4}, Lcom/android/systemui/util/leak/LeakDetector;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 81
    invoke-virtual/range {v17 .. v17}, Ljava/io/PrintWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 82
    if-eqz v12, :cond_0

    :try_start_3
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_0
    :goto_0
    if-eqz v2, :cond_4

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 103
    .end local v9    # "dumpFile":Ljava/io/File;
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .end local v13    # "hprofFile":Ljava/io/File;
    .end local v15    # "leakDir":Ljava/io/File;
    .end local v17    # "w":Ljava/io/PrintWriter;
    :catch_0
    move-exception v10

    .line 104
    .local v10, "e":Ljava/io/IOException;
    const-string/jumbo v1, "LeakReporter"

    const-string/jumbo v2, "Couldn\'t dump heap for leak"

    invoke-static {v1, v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    .end local v10    # "e":Ljava/io/IOException;
    :goto_1
    return-void

    .line 82
    .restart local v9    # "dumpFile":Ljava/io/File;
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    .restart local v13    # "hprofFile":Ljava/io/File;
    .restart local v15    # "leakDir":Ljava/io/File;
    .restart local v17    # "w":Ljava/io/PrintWriter;
    :catch_1
    move-exception v2

    goto :goto_0

    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .end local v17    # "w":Ljava/io/PrintWriter;
    .restart local v11    # "fos":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v1

    .end local v11    # "fos":Ljava/io/FileOutputStream;
    :goto_2
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v2

    move-object/from16 v19, v2

    move-object v2, v1

    move-object/from16 v1, v19

    :goto_3
    if-eqz v11, :cond_1

    :try_start_6
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_1
    :goto_4
    if-eqz v2, :cond_3

    :try_start_7
    throw v2

    :catch_3
    move-exception v3

    if-nez v2, :cond_2

    move-object v2, v3

    goto :goto_4

    :cond_2
    if-eq v2, v3, :cond_1

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_3
    throw v1

    .line 84
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    .restart local v17    # "w":Ljava/io/PrintWriter;
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/util/leak/LeakReporter;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/NotificationManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/app/NotificationManager;

    .line 86
    .local v16, "notiMan":Landroid/app/NotificationManager;
    const-string/jumbo v14, "leak"

    .line 87
    .local v14, "id":Ljava/lang/String;
    new-instance v8, Landroid/app/NotificationChannelCompat;

    const-string/jumbo v1, "Leak Alerts"

    .line 88
    const/4 v2, 0x4

    .line 87
    invoke-direct {v8, v14, v1, v2}, Landroid/app/NotificationChannelCompat;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 89
    .local v8, "channel":Landroid/app/NotificationChannelCompat;
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Landroid/app/NotificationChannelCompat;->enableVibration(Z)V

    .line 91
    move-object/from16 v0, v16

    invoke-static {v0, v8}, Landroid/app/NotificationChannelCompat;->createNotificationChannel(Landroid/app/NotificationManager;Landroid/app/NotificationChannelCompat;)V

    .line 92
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/util/leak/LeakReporter;->mContext:Landroid/content/Context;

    invoke-static {v1, v14}, Landroid/app/NotificationCompat;->newBuilder(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 93
    const/4 v2, 0x1

    .line 92
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 94
    const/4 v2, 0x1

    .line 92
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 95
    const-string/jumbo v2, "Memory Leak Detected"

    .line 92
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 97
    const-string/jumbo v2, "SystemUI has detected %d leaked objects. Tap to send"

    .line 96
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 97
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 96
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 92
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 98
    const v2, 0x10806fd

    .line 92
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v18

    .line 99
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/util/leak/LeakReporter;->mContext:Landroid/content/Context;

    .line 100
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v9}, Lcom/android/systemui/util/leak/LeakReporter;->getIntent(Ljava/io/File;Ljava/io/File;)Landroid/content/Intent;

    move-result-object v3

    .line 101
    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 99
    const/4 v2, 0x0

    .line 101
    const/high16 v4, 0x8000000

    const/4 v5, 0x0

    .line 99
    invoke-static/range {v1 .. v6}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 92
    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 102
    .local v7, "builder":Landroid/app/Notification$Builder;
    const-string/jumbo v1, "LeakReporter"

    invoke-virtual {v7}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_1

    .line 82
    .end local v7    # "builder":Landroid/app/Notification$Builder;
    .end local v8    # "channel":Landroid/app/NotificationChannelCompat;
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .end local v14    # "id":Ljava/lang/String;
    .end local v16    # "notiMan":Landroid/app/NotificationManager;
    .end local v17    # "w":Ljava/io/PrintWriter;
    .restart local v11    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v1

    goto/16 :goto_3

    .end local v11    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v1

    move-object v11, v12

    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .local v11, "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_3

    .end local v11    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v1

    move-object v11, v12

    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_2
.end method
