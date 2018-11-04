.class public Lcom/android/keyguard/MiuiKeyguardFingerprintUtils;
.super Ljava/lang/Object;
.source "MiuiKeyguardFingerprintUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;
    }
.end annotation


# static fields
.field private static sHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static initHandler()V
    .locals 3

    .prologue
    .line 27
    sget-object v1, Lcom/android/keyguard/MiuiKeyguardFingerprintUtils;->sHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 28
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "MiuiKeyguardFingerprintUtils"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 29
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 30
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/android/keyguard/MiuiKeyguardFingerprintUtils;->sHandler:Landroid/os/Handler;

    .line 26
    :cond_0
    return-void
.end method

.method public static processFingerprintResultAnalytics(I)V
    .locals 2
    .param p0, "result"    # I

    .prologue
    .line 35
    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardFingerprintUtils;->initHandler()V

    .line 36
    sget-object v0, Lcom/android/keyguard/MiuiKeyguardFingerprintUtils;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$1;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 34
    return-void
.end method

.method public static processFingerprintResultAnalyticsForA4(I)V
    .locals 10
    .param p0, "result"    # I

    .prologue
    .line 53
    const/4 v1, 0x0

    .line 55
    .local v1, "file":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string/jumbo v5, "/sdcard/MIUI/debug_log/1.dat"

    const-string/jumbo v6, "r"

    invoke-direct {v2, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .end local v1    # "file":Ljava/io/RandomAccessFile;
    .local v2, "file":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x8

    sub-long/2addr v6, v8

    invoke-virtual {v2, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 57
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v4

    .line 59
    .local v4, "value":I
    const-class v5, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const/high16 v5, 0x1140000

    if-ne v4, v5, :cond_2

    const-string/jumbo v3, "yinlan"

    .line 62
    .local v3, "v":Ljava/lang/String;
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "keyguard_fp_identify_result_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 63
    sget-object v6, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 62
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 63
    const-string/jumbo v6, "_"

    .line 62
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 63
    int-to-long v6, p0

    .line 61
    invoke-static {v5, v6, v7}, Lcom/android/keyguard/AnalyticsHelper;->recordCalculateEvent(Ljava/lang/String;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 70
    if-eqz v2, :cond_0

    .line 72
    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_1
    move-object v1, v2

    .line 52
    .end local v2    # "file":Ljava/io/RandomAccessFile;
    .end local v3    # "v":Ljava/lang/String;
    .end local v4    # "value":I
    :cond_1
    :goto_2
    return-void

    .line 60
    .restart local v2    # "file":Ljava/io/RandomAccessFile;
    .restart local v4    # "value":I
    :cond_2
    :try_start_3
    const-string/jumbo v3, "default"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .restart local v3    # "v":Ljava/lang/String;
    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Exception;
    const-class v5, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 64
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "file":Ljava/io/RandomAccessFile;
    .end local v3    # "v":Ljava/lang/String;
    .end local v4    # "value":I
    .restart local v1    # "file":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v0

    .line 65
    .end local v1    # "file":Ljava/io/RandomAccessFile;
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_3
    :try_start_4
    const-class v5, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "keyguard_fp_identify_result_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 68
    int-to-long v6, p0

    .line 66
    invoke-static {v5, v6, v7}, Lcom/android/keyguard/AnalyticsHelper;->recordCalculateEvent(Ljava/lang/String;J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 70
    if-eqz v1, :cond_1

    .line 72
    :try_start_5
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 73
    :catch_2
    move-exception v0

    .line 74
    const-class v5, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 69
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 70
    :goto_4
    if-eqz v1, :cond_3

    .line 72
    :try_start_6
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 69
    :cond_3
    :goto_5
    throw v5

    .line 73
    :catch_3
    move-exception v0

    .line 74
    .restart local v0    # "e":Ljava/lang/Exception;
    const-class v6, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 69
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "file":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "file":Ljava/io/RandomAccessFile;
    .local v1, "file":Ljava/io/RandomAccessFile;
    goto :goto_4

    .line 64
    .end local v1    # "file":Ljava/io/RandomAccessFile;
    .restart local v2    # "file":Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    move-object v1, v2

    .end local v2    # "file":Ljava/io/RandomAccessFile;
    .restart local v1    # "file":Ljava/io/RandomAccessFile;
    goto :goto_3
.end method

.method public static processFingerprintResultAnalyticsForA7(I)V
    .locals 8
    .param p0, "result"    # I

    .prologue
    .line 81
    const/4 v1, 0x0

    .line 83
    .local v1, "file":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string/jumbo v4, "/sdcard/MIUI/debug_log/1.dat"

    const-string/jumbo v5, "r"

    invoke-direct {v2, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    .end local v1    # "file":Ljava/io/RandomAccessFile;
    .local v2, "file":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x4

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 85
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v3

    .line 87
    .local v3, "temperature":I
    const-class v4, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "temperature: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "keyguard_fp_identify_result_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 90
    sget-object v5, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 89
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 90
    const-string/jumbo v5, "_"

    .line 89
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 90
    div-int/lit8 v5, v3, 0xa

    .line 89
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 90
    int-to-long v6, p0

    .line 88
    invoke-static {v4, v6, v7}, Lcom/android/keyguard/AnalyticsHelper;->recordCalculateEvent(Ljava/lang/String;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 97
    if-eqz v2, :cond_0

    .line 99
    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v1, v2

    .line 80
    .end local v2    # "file":Ljava/io/RandomAccessFile;
    .end local v3    # "temperature":I
    :cond_1
    :goto_1
    return-void

    .line 100
    .restart local v2    # "file":Ljava/io/RandomAccessFile;
    .restart local v3    # "temperature":I
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    const-class v4, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 91
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "file":Ljava/io/RandomAccessFile;
    .end local v3    # "temperature":I
    .restart local v1    # "file":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v0

    .line 92
    .end local v1    # "file":Ljava/io/RandomAccessFile;
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-class v4, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "keyguard_fp_identify_result_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 95
    int-to-long v6, p0

    .line 93
    invoke-static {v4, v6, v7}, Lcom/android/keyguard/AnalyticsHelper;->recordCalculateEvent(Ljava/lang/String;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 97
    if-eqz v1, :cond_1

    .line 99
    :try_start_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 100
    :catch_2
    move-exception v0

    .line 101
    const-class v4, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 96
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 97
    :goto_3
    if-eqz v1, :cond_2

    .line 99
    :try_start_5
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 96
    :cond_2
    :goto_4
    throw v4

    .line 100
    :catch_3
    move-exception v0

    .line 101
    .restart local v0    # "e":Ljava/lang/Exception;
    const-class v5, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 96
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "file":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "file":Ljava/io/RandomAccessFile;
    .local v1, "file":Ljava/io/RandomAccessFile;
    goto :goto_3

    .line 91
    .end local v1    # "file":Ljava/io/RandomAccessFile;
    .restart local v2    # "file":Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    move-object v1, v2

    .end local v2    # "file":Ljava/io/RandomAccessFile;
    .restart local v1    # "file":Ljava/io/RandomAccessFile;
    goto :goto_2
.end method
