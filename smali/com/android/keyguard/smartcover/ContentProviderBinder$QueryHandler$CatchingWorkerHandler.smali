.class public Lcom/android/keyguard/smartcover/ContentProviderBinder$QueryHandler$CatchingWorkerHandler;
.super Landroid/content/AsyncQueryHandler$WorkerHandler;
.source "ContentProviderBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/smartcover/ContentProviderBinder$QueryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CatchingWorkerHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/smartcover/ContentProviderBinder$QueryHandler;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/smartcover/ContentProviderBinder$QueryHandler;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/keyguard/smartcover/ContentProviderBinder$QueryHandler;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/keyguard/smartcover/ContentProviderBinder$QueryHandler$CatchingWorkerHandler;->this$1:Lcom/android/keyguard/smartcover/ContentProviderBinder$QueryHandler;

    .line 120
    invoke-direct {p0, p1, p2}, Landroid/content/AsyncQueryHandler$WorkerHandler;-><init>(Landroid/content/AsyncQueryHandler;Landroid/os/Looper;)V

    .line 119
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 127
    :try_start_0
    invoke-super {p0, p1}, Landroid/content/AsyncQueryHandler$WorkerHandler;->handleMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    const-string/jumbo v3, "ContentProviderBinder"

    const-string/jumbo v4, "Exception on background worker thread"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 130
    .end local v0    # "e":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :catch_1
    move-exception v2

    .line 131
    .local v2, "e":Landroid/database/sqlite/SQLiteFullException;
    const-string/jumbo v3, "ContentProviderBinder"

    const-string/jumbo v4, "Exception on background worker thread"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 128
    .end local v2    # "e":Landroid/database/sqlite/SQLiteFullException;
    :catch_2
    move-exception v1

    .line 129
    .local v1, "e":Landroid/database/sqlite/SQLiteDiskIOException;
    const-string/jumbo v3, "ContentProviderBinder"

    const-string/jumbo v4, "Exception on background worker thread"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
