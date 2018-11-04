.class public Lcom/xiaomi/mistatistic/sdk/controller/l;
.super Ljava/lang/Object;
.source "RemoteDataUploadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mistatistic/sdk/controller/l$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/l;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(J)V
    .locals 4

    .prologue
    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p0

    .line 166
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "next_upload_ts"

    invoke-static {v2, v3, v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/k;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 169
    return-void
.end method

.method private a(JJZ)V
    .locals 3

    .prologue
    .line 116
    :try_start_0
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/f;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/controller/f;-><init>()V

    .line 117
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a(Ljava/lang/Boolean;)V

    .line 118
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a(JJ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/l;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string/jumbo v0, "RDUM"

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "delete done, set Uploading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/mistatistic/sdk/controller/l;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void

    .line 121
    :catch_0
    move-exception v0

    const-string/jumbo v1, "RDUM"

    const-string/jumbo v2, "doDeleting exception: "

    .line 120
    invoke-static {v1, v2, v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/controller/l;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/controller/l;->f()V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/controller/l;JJZ)V
    .locals 1

    .prologue
    .line 22
    invoke-direct/range {p0 .. p5}, Lcom/xiaomi/mistatistic/sdk/controller/l;->a(JJZ)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/controller/l;Ljava/lang/String;JJIZ)V
    .locals 0

    .prologue
    .line 22
    invoke-direct/range {p0 .. p7}, Lcom/xiaomi/mistatistic/sdk/controller/l;->a(Ljava/lang/String;JJIZ)V

    return-void
.end method

.method private a(Ljava/lang/String;JJIZ)V
    .locals 8

    .prologue
    .line 97
    new-instance v6, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/l$2;

    move-object v1, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/mistatistic/sdk/controller/l$2;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/l;JJ)V

    invoke-direct {v6, p1, v0, p6, p7}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;-><init>(Ljava/lang/String;Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c$a;IZ)V

    .line 110
    invoke-virtual {v6}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->a()V

    .line 111
    return-void
.end method

.method private b(Z)V
    .locals 5

    .prologue
    .line 78
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->b()Lcom/xiaomi/mistatistic/sdk/controller/d;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;

    .line 79
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/p;->a()Lcom/xiaomi/mistatistic/sdk/controller/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/mistatistic/sdk/controller/p;->f()J

    move-result-wide v2

    new-instance v4, Lcom/xiaomi/mistatistic/sdk/controller/l$1;

    invoke-direct {v4, p0}, Lcom/xiaomi/mistatistic/sdk/controller/l$1;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/l;)V

    invoke-direct {v1, v2, v3, p1, v4}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;-><init>(JZLcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$a;)V

    .line 78
    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a(Lcom/xiaomi/mistatistic/sdk/controller/d$a;)V

    .line 93
    return-void
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/l;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public static c()Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 173
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "next_upload_ts"

    const-wide/16 v6, 0x0

    .line 172
    invoke-static {v4, v5, v6, v7}, Lcom/xiaomi/mistatistic/sdk/controller/k;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    move v2, v0

    :goto_0
    if-nez v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method static synthetic d()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/l;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 128
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Lcom/xiaomi/mistatistic/sdk/controller/d;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/controller/l$3;

    invoke-direct {v1, p0}, Lcom/xiaomi/mistatistic/sdk/controller/l$3;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/l;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a(Lcom/xiaomi/mistatistic/sdk/controller/d$a;)V

    .line 135
    return-void
.end method

.method private f()V
    .locals 5

    .prologue
    .line 139
    :try_start_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->isUploadForegroundPackageEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-gt v0, v1, :cond_0

    .line 140
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 142
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 143
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 144
    if-eqz v0, :cond_0

    .line 145
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, ","

    .line 151
    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 152
    new-instance v1, Lcom/xiaomi/mistatistic/sdk/data/h;

    const-string/jumbo v2, "mistat_basic"

    const-string/jumbo v3, "foreground_package"

    invoke-direct {v1, v2, v3, v0}, Lcom/xiaomi/mistatistic/sdk/data/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->isInternationalBuild()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    const/4 v0, 0x1

    .line 154
    invoke-virtual {v1, v0}, Lcom/xiaomi/mistatistic/sdk/data/h;->setAnonymous(I)V

    .line 156
    :goto_2
    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->insertEvent(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    const-string/jumbo v1, ""

    .line 160
    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 145
    :cond_4
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 146
    iget v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v4, 0x64

    if-ne v3, v4, :cond_2

    .line 147
    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 153
    :cond_5
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/q;->c()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/mistatistic/sdk/controller/l;->a(Z)V

    .line 30
    return-void
.end method

.method public a(Z)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x2710

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 33
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->isDataUploadingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/l;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_2

    .line 57
    if-nez p1, :cond_5

    .line 61
    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "upload is disabled."

    const/4 v1, 0x0

    .line 34
    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    return-void

    :cond_1
    const-string/jumbo v0, "RDUM"

    const-string/jumbo v1, "Current network is not connected."

    .line 38
    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void

    .line 45
    :cond_2
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/l;->c()Z

    move-result v0

    if-nez v0, :cond_3

    .line 54
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/l;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "upload is not allowed by the server. set Uploading "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/l;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :cond_3
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/controller/l;->e()V

    .line 47
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/f;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/controller/f;-><init>()V

    .line 48
    invoke-direct {p0, v3}, Lcom/xiaomi/mistatistic/sdk/controller/l;->b(Z)V

    .line 49
    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/f;->f()Z

    move-result v0

    if-nez v0, :cond_4

    .line 52
    :goto_1
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/p;->a()Lcom/xiaomi/mistatistic/sdk/controller/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/p;->d()V

    goto :goto_0

    .line 50
    :cond_4
    invoke-direct {p0, v4}, Lcom/xiaomi/mistatistic/sdk/controller/l;->b(Z)V

    goto :goto_1

    :cond_5
    const-string/jumbo v0, "sUploading %s, trigger uploading job with delay %d"

    const/4 v1, 0x2

    .line 58
    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/xiaomi/mistatistic/sdk/controller/l;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;)V

    .line 59
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->b()Lcom/xiaomi/mistatistic/sdk/controller/d;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/controller/l$a;

    invoke-direct {v1, p0}, Lcom/xiaomi/mistatistic/sdk/controller/l$a;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/l;)V

    invoke-virtual {v0, v1, v6, v7}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a(Lcom/xiaomi/mistatistic/sdk/controller/d$a;J)V

    goto/16 :goto_0
.end method
