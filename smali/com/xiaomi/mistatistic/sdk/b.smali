.class public Lcom/xiaomi/mistatistic/sdk/b;
.super Ljava/lang/Object;
.source "MIStatsExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mistatistic/sdk/b$a;
    }
.end annotation


# static fields
.field private static a:I

.field private static b:Z


# instance fields
.field private final c:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 44
    sput v0, Lcom/xiaomi/mistatistic/sdk/b;->a:I

    .line 46
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaomi/mistatistic/sdk/b;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 155
    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/b;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 156
    return-void
.end method

.method public constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/b;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 160
    return-void
.end method

.method public static a(I)V
    .locals 0

    .prologue
    .line 304
    sput p0, Lcom/xiaomi/mistatistic/sdk/b;->a:I

    .line 305
    return-void
.end method

.method public static a(Lcom/xiaomi/mistatistic/sdk/b$a;Z)V
    .locals 5

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "uploadException, isManually:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;)V

    .line 68
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/b;->b:Z

    if-eqz v0, :cond_1

    .line 71
    if-nez p0, :cond_2

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "the throwable is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_1
    return-void

    .line 71
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/b$a;->a:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/b$a;->a:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    if-nez v0, :cond_4

    .line 76
    :cond_3
    return-void

    .line 75
    :cond_4
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/b$a;->a:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_3

    .line 78
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->isUploadDebugLogEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 83
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 84
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 85
    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/b$a;->a:Ljava/lang/Throwable;

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 87
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 90
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    const-string/jumbo v0, "app_id"

    .line 91
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "app_key"

    .line 92
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "device_uuid"

    .line 93
    new-instance v3, Lcom/xiaomi/mistatistic/sdk/controller/e;

    invoke-direct {v3}, Lcom/xiaomi/mistatistic/sdk/controller/e;-><init>()V

    invoke-virtual {v3}, Lcom/xiaomi/mistatistic/sdk/controller/e;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "device_os"

    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Android "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "device_model"

    .line 95
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "app_version"

    .line 96
    iget-object v3, p0, Lcom/xiaomi/mistatistic/sdk/b$a;->b:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "sdk_version"

    const-string/jumbo v3, "1.9.16"

    .line 97
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "app_channel"

    .line 98
    iget-object v3, p0, Lcom/xiaomi/mistatistic/sdk/b$a;->c:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "app_start_time"

    .line 99
    iget-object v3, p0, Lcom/xiaomi/mistatistic/sdk/b$a;->d:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "app_crash_time"

    .line 100
    iget-object v3, p0, Lcom/xiaomi/mistatistic/sdk/b$a;->e:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "crash_exception_type"

    .line 101
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/xiaomi/mistatistic/sdk/b$a;->a:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/mistatistic/sdk/b$a;->a:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "crash_exception_desc"

    .line 102
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/b$a;->a:Ljava/lang/Throwable;

    instance-of v0, v0, Ljava/lang/OutOfMemoryError;

    if-nez v0, :cond_6

    move-object v0, v1

    :goto_0
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "crash_callstack"

    .line 103
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    if-nez p1, :cond_7

    .line 109
    :goto_1
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/n;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/b$1;

    invoke-direct {v1, v2}, Lcom/xiaomi/mistatistic/sdk/b$1;-><init>(Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 125
    return-void

    :cond_5
    const-string/jumbo v0, "not allowed to upload debug or exception log"

    .line 79
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->d(Ljava/lang/String;)V

    .line 80
    return-void

    :cond_6
    const-string/jumbo v0, "OutOfMemoryError"

    goto :goto_0

    :cond_7
    const-string/jumbo v0, "manual"

    const-string/jumbo v1, "true"

    .line 106
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public static a(Ljava/lang/Throwable;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 239
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/b;->b()Ljava/util/ArrayList;

    move-result-object v0

    .line 240
    new-instance v1, Lcom/xiaomi/mistatistic/sdk/b$a;

    invoke-direct {v1, p0}, Lcom/xiaomi/mistatistic/sdk/b$a;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x5

    if-gt v1, v3, :cond_1

    .line 247
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v3, ".exceptiondetail"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 249
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 254
    if-nez v1, :cond_2

    .line 262
    :cond_0
    :goto_1
    return-void

    .line 243
    :cond_1
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 256
    :cond_2
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 259
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v1, v2

    :goto_2
    :try_start_3
    const-string/jumbo v2, ""

    .line 252
    invoke-static {v2, v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 254
    if-eqz v1, :cond_0

    .line 256
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 259
    :catch_2
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 254
    :goto_3
    if-nez v2, :cond_3

    .line 261
    :goto_4
    throw v0

    .line 256
    :cond_3
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    .line 259
    :catch_3
    move-exception v1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_2
.end method

.method public static a(Z)V
    .locals 2

    .prologue
    .line 54
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 56
    instance-of v1, v0, Lcom/xiaomi/mistatistic/sdk/b;

    if-nez v1, :cond_0

    .line 61
    new-instance v1, Lcom/xiaomi/mistatistic/sdk/b;

    if-nez p0, :cond_1

    :goto_0
    invoke-direct {v1, v0}, Lcom/xiaomi/mistatistic/sdk/b;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 62
    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 63
    const/4 v0, 0x1

    sput-boolean v0, Lcom/xiaomi/mistatistic/sdk/b;->b:Z

    .line 64
    return-void

    .line 58
    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    .line 61
    goto :goto_0
.end method

.method public static b()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/mistatistic/sdk/b$a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 266
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 270
    :try_start_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 271
    if-nez v1, :cond_0

    move-object v1, v2

    .line 282
    :goto_0
    if-nez v0, :cond_2

    move v0, v3

    .line 290
    :goto_1
    if-nez v0, :cond_5

    .line 294
    :goto_2
    return-object v1

    .line 272
    :cond_0
    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, ".exceptiondetail"

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 273
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_0

    .line 274
    :cond_1
    new-instance v1, Ljava/io/ObjectInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v5}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_0

    .line 284
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    move v0, v3

    .line 287
    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_4
    :try_start_3
    const-string/jumbo v3, ""

    .line 279
    invoke-static {v3, v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v0, 0x1

    .line 282
    if-nez v1, :cond_3

    move-object v1, v2

    goto :goto_1

    .line 284
    :cond_3
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :goto_5
    move-object v1, v2

    .line 287
    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_5

    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 282
    :goto_6
    if-nez v1, :cond_4

    .line 289
    :goto_7
    throw v0

    .line 284
    :cond_4
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_7

    .line 287
    :catch_3
    move-exception v1

    goto :goto_7

    .line 292
    :cond_5
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/b;->c()V

    goto :goto_2

    .line 287
    :catchall_1
    move-exception v0

    goto :goto_6

    :catch_4
    move-exception v0

    goto :goto_4
.end method

.method public static c()V
    .locals 3

    .prologue
    .line 298
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, ".exceptiondetail"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 300
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 301
    return-void
.end method

.method public static d()I
    .locals 1

    .prologue
    .line 308
    sget v0, Lcom/xiaomi/mistatistic/sdk/b;->a:I

    return v0
.end method


# virtual methods
.method public a()Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 215
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v3, "crash_time"

    const-wide/16 v4, 0x0

    invoke-static {v0, v3, v4, v5}, Lcom/xiaomi/mistatistic/sdk/controller/k;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v4

    .line 216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    const-wide/32 v6, 0x493e0

    cmp-long v0, v4, v6

    if-gtz v0, :cond_1

    move v0, v1

    :goto_0
    if-nez v0, :cond_2

    .line 218
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v3, "crash_count"

    invoke-static {v0, v3, v1}, Lcom/xiaomi/mistatistic/sdk/controller/k;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 219
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "crash_time"

    .line 220
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 219
    invoke-static {v0, v1, v4, v5}, Lcom/xiaomi/mistatistic/sdk/controller/k;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 235
    :cond_0
    return v2

    :cond_1
    move v0, v2

    .line 216
    goto :goto_0

    .line 223
    :cond_2
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v3, "crash_count"

    invoke-static {v0, v3, v2}, Lcom/xiaomi/mistatistic/sdk/controller/k;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 225
    if-eqz v0, :cond_3

    .line 229
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 230
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "crash_count"

    invoke-static {v3, v4, v0}, Lcom/xiaomi/mistatistic/sdk/controller/k;->b(Landroid/content/Context;Ljava/lang/String;I)V

    const/16 v3, 0xa

    .line 231
    if-le v0, v3, :cond_0

    .line 232
    return v1

    .line 226
    :cond_3
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "crash_time"

    .line 227
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 226
    invoke-static {v3, v4, v6, v7}, Lcom/xiaomi/mistatistic/sdk/controller/k;->b(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_1
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const-string/jumbo v0, "uncaughtException..."

    .line 165
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;)V

    .line 166
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 169
    :goto_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->c()V

    .line 170
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->shouldExceptionUploadImmediately()Z

    move-result v0

    if-nez v0, :cond_1

    .line 180
    invoke-static {p2}, Lcom/xiaomi/mistatistic/sdk/b;->a(Ljava/lang/Throwable;)V

    .line 182
    :goto_1
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/b;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-nez v0, :cond_3

    .line 185
    :goto_2
    return-void

    .line 167
    :cond_0
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_0

    .line 173
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/b;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "crazy crash..."

    .line 176
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 174
    :cond_2
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/b$a;

    invoke-direct {v0, p2}, Lcom/xiaomi/mistatistic/sdk/b$a;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0, v2}, Lcom/xiaomi/mistatistic/sdk/b;->a(Lcom/xiaomi/mistatistic/sdk/b$a;Z)V

    goto :goto_1

    .line 183
    :cond_3
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/b;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_2
.end method
