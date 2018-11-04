.class public abstract Lcom/xiaomi/mistatistic/sdk/MiStatInterface;
.super Ljava/lang/Object;
.source "MiStatInterface.java"


# static fields
.field private static sABTestInitialized:Z

.field private static sInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    sput-boolean v0, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->sInitialized:Z

    .line 53
    sput-boolean v0, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->sABTestInitialized:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkCategoryAndKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 408
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 411
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 414
    :cond_1
    return-void

    :cond_2
    const-string/jumbo v0, "mistat_"

    .line 408
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "category cannot start with mistat_"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string/jumbo v0, "mistat_"

    .line 411
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 412
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "key cannot start with mistat_"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkInitialized()V
    .locals 2

    .prologue
    .line 394
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->sInitialized:Z

    if-eqz v0, :cond_0

    .line 398
    return-void

    .line 395
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "not initialized, do you forget to call initialize when application started?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static enableExceptionCatcher(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 417
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/q;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->isExceptionCatcherEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 424
    :goto_0
    if-nez p0, :cond_2

    const/4 v0, 0x3

    :goto_1
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/b;->a(I)V

    .line 426
    return-void

    :cond_0
    const-string/jumbo v0, "MI_STAT"

    const-string/jumbo v1, "The statistics is disabled."

    .line 418
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    return-void

    .line 422
    :cond_1
    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/b;->a(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    .line 424
    goto :goto_1
.end method

.method public static final enableLog()V
    .locals 0

    .prologue
    .line 156
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a()V

    .line 157
    return-void
.end method

.method public static final initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 59
    return-void
.end method

.method public static final initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 62
    if-eqz p0, :cond_1

    const-string/jumbo v0, "MI_STAT"

    const-string/jumbo v1, "initialize %s, %s, %s, %s"

    const/4 v2, 0x4

    .line 65
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object p1, v2, v5

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "appID or appKey is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Initializing sdk error, reason: context is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_3

    move-object p0, v0

    .line 75
    :cond_3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    :goto_0
    invoke-static {p0, p1, p2, p3}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a()V

    .line 78
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/e;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/controller/e;-><init>()V

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/e;->a()Ljava/lang/String;

    .line 79
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/p;->a()Lcom/xiaomi/mistatistic/sdk/controller/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/p;->b()V

    .line 81
    sput-boolean v5, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->sInitialized:Z

    .line 82
    if-nez p4, :cond_5

    .line 85
    :goto_1
    return-void

    :cond_4
    const-string/jumbo p3, "mistats_default"

    goto :goto_0

    .line 83
    :cond_5
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->enableAutoRecord()Z

    goto :goto_1
.end method

.method public static isExceptionCatcherEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 429
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/b;->d()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public static final recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 254
    invoke-static {p0, p1, p2, p3, v0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    .line 255
    return-void
.end method

.method public static final recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 259
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/q;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkInitialized()V

    .line 264
    invoke-static {p0, p1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkCategoryAndKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v2, p0

    .line 269
    :goto_0
    new-instance v1, Lcom/xiaomi/mistatistic/sdk/data/c;

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/mistatistic/sdk/data/c;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    .line 270
    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->insertEvent(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V

    .line 271
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->c()V

    .line 272
    return-void

    :cond_0
    const-string/jumbo v0, "MI_STAT"

    const-string/jumbo v1, "The statistics is disabled."

    .line 260
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    return-void

    :cond_1
    const-string/jumbo v2, "default_category"

    goto :goto_0
.end method

.method public static final recordCalculateEventAnonymous(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 329
    invoke-static {p0, p1, p2, p3, v0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCalculateEventAnonymous(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    .line 330
    return-void
.end method

.method public static final recordCalculateEventAnonymous(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 334
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/q;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkInitialized()V

    .line 339
    invoke-static {p0, p1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkCategoryAndKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v2, p0

    .line 344
    :goto_0
    new-instance v1, Lcom/xiaomi/mistatistic/sdk/data/c;

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/mistatistic/sdk/data/c;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    const/4 v0, 0x1

    .line 345
    invoke-virtual {v1, v0}, Lcom/xiaomi/mistatistic/sdk/data/c;->setAnonymous(I)V

    .line 346
    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->insertEvent(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V

    .line 347
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->c()V

    .line 348
    return-void

    :cond_0
    const-string/jumbo v0, "MI_STAT"

    const-string/jumbo v1, "The statistics is disabled."

    .line 335
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    return-void

    :cond_1
    const-string/jumbo v2, "default_category"

    goto :goto_0
.end method

.method public static final recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 233
    invoke-static {p0, p1, v0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 234
    return-void
.end method

.method public static final recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 238
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/q;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkInitialized()V

    .line 243
    invoke-static {p0, p1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkCategoryAndKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 248
    :goto_0
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/e;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/data/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 249
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->insertEvent(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V

    .line 250
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->c()V

    .line 251
    return-void

    :cond_0
    const-string/jumbo v0, "MI_STAT"

    const-string/jumbo v1, "The statistics is disabled."

    .line 239
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    return-void

    :cond_1
    const-string/jumbo p0, "default_category"

    goto :goto_0
.end method

.method public static final recordCountEventAnonymous(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 307
    invoke-static {p0, p1, v0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEventAnonymous(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 308
    return-void
.end method

.method public static final recordCountEventAnonymous(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 312
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/q;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkInitialized()V

    .line 317
    invoke-static {p0, p1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkCategoryAndKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 322
    :goto_0
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/e;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/data/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 v1, 0x1

    .line 323
    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/data/e;->setAnonymous(I)V

    .line 324
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->insertEvent(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V

    .line 325
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->c()V

    .line 326
    return-void

    :cond_0
    const-string/jumbo v0, "MI_STAT"

    const-string/jumbo v1, "The statistics is disabled."

    .line 313
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    return-void

    :cond_1
    const-string/jumbo p0, "default_category"

    goto :goto_0
.end method

.method public static final recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 291
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/q;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkInitialized()V

    .line 296
    invoke-static {p0, p1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkCategoryAndKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 301
    :goto_0
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/h;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/data/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->insertEvent(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V

    .line 303
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->c()V

    .line 304
    return-void

    :cond_0
    const-string/jumbo v0, "MI_STAT"

    const-string/jumbo v1, "The statistics is disabled."

    .line 292
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    return-void

    :cond_1
    const-string/jumbo p0, "default_category"

    goto :goto_0
.end method

.method public static final recordStringPropertyEventAnonymous(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 368
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/q;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkInitialized()V

    .line 373
    invoke-static {p0, p1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkCategoryAndKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 378
    :goto_0
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/h;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/data/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 379
    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/data/h;->setAnonymous(I)V

    .line 380
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->insertEvent(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V

    .line 381
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->c()V

    .line 382
    return-void

    :cond_0
    const-string/jumbo v0, "MI_STAT"

    const-string/jumbo v1, "The statistics is disabled."

    .line 369
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    return-void

    :cond_1
    const-string/jumbo p0, "default_category"

    goto :goto_0
.end method

.method public static final setUploadPolicy(IJ)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 138
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/q;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 142
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkInitialized()V

    const/4 v2, 0x4

    .line 143
    if-eq p0, v2, :cond_2

    .line 147
    :cond_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/p;->a()Lcom/xiaomi/mistatistic/sdk/controller/p;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/controller/p;->a(IJ)V

    .line 148
    return-void

    :cond_1
    const-string/jumbo v0, "MI_STAT"

    const-string/jumbo v1, "The statistics is disabled."

    .line 139
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return-void

    :cond_2
    const-wide/32 v2, 0xea60

    .line 143
    cmp-long v2, p1, v2

    if-gez v2, :cond_4

    move v2, v0

    :goto_0
    if-nez v2, :cond_3

    const-wide/32 v2, 0x5265c00

    cmp-long v2, p1, v2

    if-gtz v2, :cond_5

    :goto_1
    if-nez v0, :cond_0

    .line 145
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "interval should be set between 1 minutes and 1 day"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move v2, v1

    .line 143
    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method public static shouldExceptionUploadImmediately()Z
    .locals 2

    .prologue
    .line 433
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/b;->d()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
