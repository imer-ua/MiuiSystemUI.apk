.class public Lcom/xiaomi/mistatistic/sdk/controller/f;
.super Ljava/lang/Object;
.source "EventDAO.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Z

.field private static c:Lcom/xiaomi/mistatistic/sdk/controller/i;


# instance fields
.field private d:Z

.field private e:Lcom/xiaomi/mistatistic/sdk/a;

.field private f:Z

.field private g:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string/jumbo v0, ""

    .line 33
    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/f;->a:Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/f;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/f;->d:Z

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/f;->e:Lcom/xiaomi/mistatistic/sdk/a;

    .line 39
    iput-boolean v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/f;->f:Z

    .line 40
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/f$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/mistatistic/sdk/controller/f$1;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/f;)V

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/f;->g:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/controller/f;Lcom/xiaomi/mistatistic/sdk/a;)Lcom/xiaomi/mistatistic/sdk/a;
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/f;->e:Lcom/xiaomi/mistatistic/sdk/a;

    return-object p1
.end method

.method public static a(Landroid/database/Cursor;)Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;
    .locals 9

    .prologue
    .line 360
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;-><init>()V

    const/4 v1, 0x2

    .line 361
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v1, 0x4

    .line 362
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x5

    .line 363
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    .line 364
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    .line 365
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x6

    .line 366
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x7

    .line 367
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 368
    iput-object v5, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->category:Ljava/lang/String;

    .line 369
    iput-object v6, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->key:Ljava/lang/String;

    .line 370
    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->value:Ljava/lang/String;

    .line 371
    iput-wide v2, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->timeStamp:J

    .line 372
    iput-object v4, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->type:Ljava/lang/String;

    .line 373
    iput-object v7, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->extra:Ljava/lang/String;

    .line 374
    iput v8, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->anonymous:I

    .line 375
    return-object v0
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/i;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/i;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    .line 56
    return-void
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/controller/f;Z)Z
    .locals 0

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/f;->f:Z

    return p1
.end method

.method private g()V
    .locals 4

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/f;->f:Z

    if-eqz v0, :cond_0

    .line 76
    :goto_0
    return-void

    .line 65
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/mistatistic/sdk/controller/f;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 67
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/f;->e:Lcom/xiaomi/mistatistic/sdk/a;

    if-nez v1, :cond_1

    .line 71
    :goto_1
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/f;->g:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    const-string/jumbo v1, "ensureServiceBinded"

    .line 73
    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    :try_start_1
    const-string/jumbo v1, "unbind service before bind it again!"

    .line 68
    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/h;->b(Ljava/lang/String;)V

    .line 69
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/f;->g:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 79
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/f;->b:Z

    if-nez v0, :cond_0

    .line 94
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/controller/f;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;

    move-result-object v0

    return-object v0

    .line 80
    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/controller/f;->g()V

    .line 82
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 83
    :cond_1
    iget-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/f;->f:Z

    if-nez v0, :cond_3

    .line 84
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v6, 0x3e8

    cmp-long v0, v4, v6

    if-gtz v0, :cond_4

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    return-object v8

    .line 83
    :cond_3
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/f;->e:Lcom/xiaomi/mistatistic/sdk/a;

    if-eqz v0, :cond_2

    .line 86
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/f;->e:Lcom/xiaomi/mistatistic/sdk/a;

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;

    move-result-object v0

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "process query, result is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/h;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    return-object v0

    :cond_4
    move v0, v1

    .line 84
    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    const-string/jumbo v1, "queryCustomEvent"

    .line 90
    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    return-object v8
.end method

.method public a(J)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 201
    sget-boolean v1, Lcom/xiaomi/mistatistic/sdk/controller/f;->b:Z

    if-nez v1, :cond_0

    .line 217
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/controller/f;->b(J)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 202
    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/controller/f;->g()V

    .line 204
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 205
    :cond_1
    iget-boolean v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/f;->f:Z

    if-nez v1, :cond_3

    .line 206
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v6, 0x3e8

    cmp-long v1, v4, v6

    if-gtz v1, :cond_5

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_1

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 205
    :cond_3
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/f;->e:Lcom/xiaomi/mistatistic/sdk/a;

    if-eqz v1, :cond_2

    .line 209
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/f;->e:Lcom/xiaomi/mistatistic/sdk/a;

    invoke-interface {v1, p1, p2}, Lcom/xiaomi/mistatistic/sdk/a;->a(J)Ljava/util/List;

    move-result-object v1

    .line 210
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "process getAll, result size is :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    :cond_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    return-object v1

    :cond_5
    move v1, v0

    .line 206
    goto :goto_0

    .line 211
    :catch_0
    move-exception v0

    const-string/jumbo v1, "getAllEventOrderByTimestampDescend"

    .line 213
    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public a(JJ)V
    .locals 3

    .prologue
    .line 412
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/f;->b:Z

    if-nez v0, :cond_0

    .line 423
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/xiaomi/mistatistic/sdk/controller/f;->b(JJ)V

    .line 425
    :goto_0
    return-void

    .line 414
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/mistatistic/sdk/controller/f;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "type"

    const/4 v2, 0x5

    .line 415
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "startTime"

    .line 416
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v1, "endTime"

    .line 417
    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 418
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 421
    :catch_0
    move-exception v0

    const-string/jumbo v1, "deleteEventsByStartAndEndTS"

    .line 420
    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;)V
    .locals 3

    .prologue
    .line 128
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/f;->b:Z

    if-nez v0, :cond_0

    .line 138
    invoke-virtual {p0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/f;->b(Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;)V

    .line 140
    :goto_0
    return-void

    .line 130
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/mistatistic/sdk/controller/f;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "type"

    const/4 v2, 0x1

    .line 131
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "StatEventPojo"

    .line 132
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 133
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    const-string/jumbo v1, "insertNewEvent"

    .line 135
    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/f;->d:Z

    .line 60
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 165
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/f;->b:Z

    if-nez v0, :cond_0

    .line 177
    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/mistatistic/sdk/controller/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :goto_0
    return-void

    .line 167
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/mistatistic/sdk/controller/f;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "type"

    const/4 v2, 0x2

    .line 168
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "key"

    .line 169
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "category"

    .line 170
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "newValue"

    .line 171
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    const-string/jumbo v1, "updateEventByKeyAndCategory"

    .line 174
    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 103
    sget-object v9, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    monitor-enter v9

    .line 105
    :try_start_0
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "mistat_event"

    const-string/jumbo v3, "category=? AND key=?"

    const/4 v2, 0x2

    .line 106
    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v4, v2

    const/4 v2, 0x1

    aput-object p2, v4, v2

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 112
    if-nez v1, :cond_1

    .line 118
    :cond_0
    :goto_0
    if-nez v1, :cond_2

    .line 121
    :goto_1
    :try_start_1
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->close()V

    .line 123
    :goto_2
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    return-object v8

    .line 112
    :cond_1
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a(Landroid/database/Cursor;)Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v8

    goto :goto_0

    .line 119
    :cond_2
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 122
    :catch_0
    move-exception v0

    move-object v1, v8

    :goto_3
    :try_start_4
    const-string/jumbo v2, "EventDAO"

    const-string/jumbo v3, "queryCustomEvent exception"

    .line 116
    invoke-static {v2, v3, v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 118
    if-nez v1, :cond_3

    .line 121
    :goto_4
    :try_start_5
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->close()V

    goto :goto_2

    .line 119
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .line 122
    :catchall_1
    move-exception v0

    .line 118
    :goto_5
    if-nez v8, :cond_4

    .line 121
    :goto_6
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    invoke-virtual {v1}, Lcom/xiaomi/mistatistic/sdk/controller/i;->close()V

    .line 122
    throw v0

    .line 119
    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_6

    .line 122
    :catchall_2
    move-exception v0

    move-object v8, v1

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_3
.end method

.method public b(J)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 222
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 225
    sget-object v11, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    monitor-enter v11

    .line 226
    :try_start_0
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 227
    if-eqz v0, :cond_3

    :try_start_1
    const-string/jumbo v1, "mistat_event"

    const-string/jumbo v3, "ts<?"

    const/4 v2, 0x1

    .line 231
    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 234
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const-string/jumbo v7, "ts DESC"

    const/16 v2, 0x1f4

    .line 238
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 231
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v8

    .line 239
    if-nez v8, :cond_4

    :cond_0
    move-object v1, v8

    .line 256
    :goto_0
    if-nez v1, :cond_6

    .line 265
    :cond_1
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 266
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->close()V

    .line 268
    :goto_1
    if-nez v1, :cond_2

    .line 271
    :cond_2
    monitor-exit v11

    .line 272
    return-object v10

    .line 228
    :cond_3
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v10

    .line 239
    :cond_4
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->moveToLast()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "ts"

    .line 240
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 241
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const-string/jumbo v3, "ts<? AND ts>=? AND anonymous=?"

    const/4 v1, 0x3

    .line 243
    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 244
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x1

    .line 245
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v2, 0x2

    iget-boolean v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/f;->d:Z

    if-nez v1, :cond_5

    const/4 v1, 0x0

    .line 246
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    aput-object v1, v4, v2

    const-string/jumbo v1, "mistat_event"

    const-string/jumbo v7, "ts DESC"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 248
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    move-object v1, v8

    goto :goto_0

    :cond_5
    const/4 v1, 0x1

    .line 246
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v1

    goto :goto_2

    .line 256
    :cond_6
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    :goto_3
    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a(Landroid/database/Cursor;)Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;

    move-result-object v0

    .line 259
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_3

    .line 267
    :catch_0
    move-exception v0

    move-object v1, v9

    :goto_4
    :try_start_5
    const-string/jumbo v2, "EventDAO"

    const-string/jumbo v3, "Error while reading data from DB"

    .line 263
    invoke-static {v2, v3, v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 265
    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 266
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->close()V

    goto :goto_1

    .line 271
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    .line 267
    :catchall_1
    move-exception v0

    move-object v8, v9

    .line 265
    :goto_5
    :try_start_7
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 266
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    invoke-virtual {v1}, Lcom/xiaomi/mistatistic/sdk/controller/i;->close()V

    .line 267
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_2
    move-exception v0

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v8, v1

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v1, v8

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_4
.end method

.method public b()V
    .locals 3

    .prologue
    .line 276
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/f;->b:Z

    if-nez v0, :cond_0

    .line 285
    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/controller/f;->c()V

    .line 287
    :goto_0
    return-void

    .line 278
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/mistatistic/sdk/controller/f;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "type"

    const/4 v2, 0x3

    .line 279
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 280
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 283
    :catch_0
    move-exception v0

    const-string/jumbo v1, "deleteOldEvents"

    .line 282
    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public b(JJ)V
    .locals 7

    .prologue
    .line 428
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "EventDAO"

    const-string/jumbo v2, "deleteEventsByStartAndEndTS, start:%d, end:%d"

    const/4 v3, 0x2

    .line 431
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/h;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 432
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string/jumbo v3, "ts<=? AND ts>=? AND anonymous=?"

    const/4 v0, 0x3

    .line 434
    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 435
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x2

    iget-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/f;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v4, v5

    const-string/jumbo v0, "mistat_event"

    .line 437
    invoke-virtual {v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 442
    :try_start_1
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->close()V

    .line 444
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 445
    return-void

    :cond_0
    const/4 v0, 0x1

    .line 435
    :try_start_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    goto :goto_0

    .line 443
    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v2, "EventDAO"

    const-string/jumbo v3, "Error while deleting event by ts from DB"

    .line 440
    invoke-static {v2, v3, v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 442
    :try_start_4
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->close()V

    goto :goto_1

    .line 444
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 443
    :catchall_1
    move-exception v0

    .line 442
    :try_start_5
    sget-object v2, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    invoke-virtual {v2}, Lcom/xiaomi/mistatistic/sdk/controller/i;->close()V

    .line 443
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public b(Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;)V
    .locals 5

    .prologue
    .line 143
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v0, "category"

    .line 144
    iget-object v2, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->category:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "key"

    .line 145
    iget-object v0, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->key:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->key:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ts"

    .line 146
    iget-wide v2, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->timeStamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v2, "type"

    .line 147
    iget-object v0, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->type:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->type:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "value"

    .line 148
    iget-object v0, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->value:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->value:Ljava/lang/String;

    :goto_2
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "extra"

    .line 149
    iget-object v0, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->extra:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->extra:Ljava/lang/String;

    :goto_3
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "anonymous"

    .line 150
    iget v2, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->anonymous:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 151
    sget-object v2, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    monitor-enter v2

    .line 154
    :try_start_0
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v3, "mistat_event"

    const-string/jumbo v4, ""

    .line 155
    invoke-virtual {v0, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 159
    :try_start_1
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->close()V

    .line 161
    :goto_4
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    return-void

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_1

    :cond_2
    const-string/jumbo v0, ""

    goto :goto_2

    :cond_3
    const-string/jumbo v0, ""

    goto :goto_3

    .line 160
    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v1, "EventDAO"

    .line 157
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error to insert data into DB, key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 159
    :try_start_3
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->close()V

    goto :goto_4

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 160
    :catchall_1
    move-exception v0

    .line 159
    :try_start_4
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    invoke-virtual {v1}, Lcom/xiaomi/mistatistic/sdk/controller/i;->close()V

    .line 160
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 182
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "value"

    .line 183
    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    monitor-enter v1

    .line 187
    :try_start_0
    sget-object v2, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    invoke-virtual {v2}, Lcom/xiaomi/mistatistic/sdk/controller/i;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string/jumbo v3, "mistat_event"

    const-string/jumbo v4, "category=? AND key=?"

    const/4 v5, 0x2

    .line 189
    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 195
    :try_start_1
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->close()V

    .line 197
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 198
    return-void

    .line 196
    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v2, "EventDAO"

    .line 193
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error to update data from DB, key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 195
    :try_start_3
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->close()V

    goto :goto_0

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 196
    :catchall_1
    move-exception v0

    .line 195
    :try_start_4
    sget-object v2, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    invoke-virtual {v2}, Lcom/xiaomi/mistatistic/sdk/controller/i;->close()V

    .line 196
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public c()V
    .locals 8

    .prologue
    .line 291
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xf731400

    .line 292
    sub-long/2addr v0, v2

    .line 293
    sget-object v2, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    monitor-enter v2

    .line 296
    :try_start_0
    sget-object v3, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    invoke-virtual {v3}, Lcom/xiaomi/mistatistic/sdk/controller/i;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string/jumbo v4, "mistat_event"

    const-string/jumbo v5, "ts<=? and category <> ?"

    const/4 v6, 0x2

    .line 297
    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 299
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    const-string/jumbo v1, "mistat_basic"

    aput-object v1, v6, v0

    .line 297
    invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    .line 301
    if-gtz v0, :cond_0

    .line 307
    :goto_0
    :try_start_1
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->close()V

    .line 309
    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 310
    return-void

    :cond_0
    :try_start_2
    const-string/jumbo v1, "quality_monitor"

    const-string/jumbo v3, "delete_old_events"

    .line 302
    int-to-long v4, v0

    invoke-static {v1, v3, v4, v5}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 308
    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v1, "EventDAO"

    const-string/jumbo v3, "Error while deleting out-of-date data from DB"

    .line 305
    invoke-static {v1, v3, v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 307
    :try_start_4
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->close()V

    goto :goto_1

    .line 309
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 308
    :catchall_1
    move-exception v0

    .line 307
    :try_start_5
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    invoke-virtual {v1}, Lcom/xiaomi/mistatistic/sdk/controller/i;->close()V

    .line 308
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public d()I
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 313
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/f;->b:Z

    if-nez v0, :cond_0

    .line 328
    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/controller/f;->e()I

    move-result v0

    return v0

    .line 314
    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/controller/f;->g()V

    .line 316
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 317
    :cond_1
    iget-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/f;->f:Z

    if-nez v0, :cond_3

    .line 318
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v6, 0x3e8

    cmp-long v0, v4, v6

    if-gtz v0, :cond_4

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    return v1

    .line 317
    :cond_3
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/f;->e:Lcom/xiaomi/mistatistic/sdk/a;

    if-eqz v0, :cond_2

    .line 320
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/f;->e:Lcom/xiaomi/mistatistic/sdk/a;

    invoke-interface {v0}, Lcom/xiaomi/mistatistic/sdk/a;->a()I

    move-result v0

    .line 321
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "process getCount , result is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/mistatistic/sdk/controller/h;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    return v0

    :cond_4
    move v0, v1

    .line 318
    goto :goto_0

    .line 322
    :catch_0
    move-exception v0

    const-string/jumbo v2, "getEventCount"

    .line 324
    invoke-static {v2, v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 326
    return v1
.end method

.method public e()I
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x0

    .line 334
    sget-object v9, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    monitor-enter v9

    .line 337
    :try_start_0
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "mistat_event"

    const/4 v2, 0x1

    .line 339
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "count(*)"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 343
    if-nez v1, :cond_1

    .line 350
    :cond_0
    if-nez v1, :cond_3

    .line 353
    :goto_0
    :try_start_1
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->close()V

    .line 355
    :goto_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v10

    .line 343
    :cond_1
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 344
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v0

    .line 350
    if-nez v1, :cond_2

    .line 353
    :goto_2
    :try_start_3
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    invoke-virtual {v1}, Lcom/xiaomi/mistatistic/sdk/controller/i;->close()V

    monitor-exit v9

    .line 345
    return v0

    .line 351
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 355
    :catchall_0
    move-exception v0

    .line 356
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 351
    :cond_3
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 354
    :catch_0
    move-exception v0

    move-object v1, v8

    :goto_3
    :try_start_5
    const-string/jumbo v2, "EventDAO"

    const-string/jumbo v3, "Error while getting count from DB"

    .line 348
    invoke-static {v2, v3, v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 350
    if-nez v1, :cond_4

    .line 353
    :goto_4
    :try_start_6
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->close()V

    goto :goto_1

    .line 351
    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .line 354
    :catchall_1
    move-exception v0

    .line 350
    :goto_5
    if-nez v8, :cond_5

    .line 353
    :goto_6
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    invoke-virtual {v1}, Lcom/xiaomi/mistatistic/sdk/controller/i;->close()V

    .line 354
    throw v0

    .line 351
    :cond_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_6

    .line 354
    :catchall_2
    move-exception v0

    move-object v8, v1

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_3
.end method

.method public f()Z
    .locals 12

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 448
    sget-object v11, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    monitor-enter v11

    .line 453
    :try_start_0
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "mistat_event"

    const-string/jumbo v3, "anonymous=?"

    const/4 v2, 0x1

    .line 454
    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 457
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const-string/jumbo v7, "ts DESC"

    const/16 v2, 0x1f4

    .line 461
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 454
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 462
    if-nez v0, :cond_1

    :cond_0
    move v0, v9

    .line 468
    :goto_0
    :try_start_1
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    invoke-virtual {v1}, Lcom/xiaomi/mistatistic/sdk/controller/i;->close()V

    .line 470
    :goto_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return v0

    .line 462
    :cond_1
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    move v0, v10

    .line 463
    goto :goto_0

    .line 469
    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v1, "EventDAO"

    const-string/jumbo v2, "Error while isExistAnonymousData from DB"

    .line 466
    invoke-static {v1, v2, v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 468
    :try_start_4
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->close()V

    move v0, v9

    .line 469
    goto :goto_1

    :catchall_0
    move-exception v0

    .line 468
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Lcom/xiaomi/mistatistic/sdk/controller/i;

    invoke-virtual {v1}, Lcom/xiaomi/mistatistic/sdk/controller/i;->close()V

    .line 469
    throw v0

    .line 470
    :catchall_1
    move-exception v0

    .line 471
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method
