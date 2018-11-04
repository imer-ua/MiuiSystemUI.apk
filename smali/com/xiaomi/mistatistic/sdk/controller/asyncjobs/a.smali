.class public Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;
.super Ljava/lang/Object;
.source "BasicInfoRecordJob.java"

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/controller/d$a;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a:Z

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const-string/jumbo v1, ""

    :try_start_0
    const-string/jumbo v0, "android.os.SystemProperties"

    .line 286
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v2, "get"

    const/4 v3, 0x1

    .line 287
    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x1

    .line 288
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :goto_0
    return-object v0

    .line 291
    :catch_0
    move-exception v0

    const-string/jumbo v2, ""

    .line 290
    invoke-static {v2, v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 277
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    :goto_0
    return-void

    .line 278
    :cond_0
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/h;

    const-string/jumbo v1, "mistat_basic"

    invoke-direct {v0, v1, p0, p1}, Lcom/xiaomi/mistatistic/sdk/data/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->insertEvent(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    :try_start_0
    const-string/jumbo v0, "storage"

    .line 383
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 385
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "getVolumeState"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    .line 386
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "mounted"

    .line 387
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    .line 393
    :goto_0
    return v6

    .line 388
    :cond_0
    return v7

    .line 392
    :catch_0
    move-exception v0

    const-string/jumbo v1, ""

    .line 391
    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private b(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 86
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    const/4 v1, 0x6

    .line 87
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const-string/jumbo v1, "last_day"

    .line 88
    invoke-static {p1, v1, v2}, Lcom/xiaomi/mistatistic/sdk/controller/k;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    if-eq v0, v1, :cond_1

    const-string/jumbo v1, "last_day"

    .line 92
    invoke-static {p1, v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/k;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 94
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/e;

    const-string/jumbo v1, "mistat_basic"

    const-string/jumbo v2, "mistat_dau"

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/data/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->insertEvent(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V

    .line 97
    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->d(Landroid/content/Context;)V

    const-string/jumbo v0, "ro.miui.ui.version.name"

    .line 100
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ui_version"

    .line 101
    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    const-string/jumbo v1, "version"

    .line 105
    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sd"

    .line 109
    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "network"

    .line 113
    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ro.carrier.name"

    .line 116
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "carrier_name"

    .line 117
    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ro.miui.region"

    .line 120
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "region"

    .line 121
    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->isInternationalBuild()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    :goto_0
    const-string/jumbo v0, "mcc"

    .line 138
    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a:Z

    .line 141
    return-void

    .line 89
    :cond_1
    return-void

    .line 123
    :cond_2
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/q;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "imei_md5"

    .line 124
    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/controller/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/controller/q;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "miui_imei_md5"

    .line 128
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/q;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "android_id_md5"

    .line 131
    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/controller/q;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/q;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "serial_num_md5"

    .line 134
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/q;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/q;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static c()V
    .locals 4

    .prologue
    .line 398
    :try_start_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "dau_time"

    const-wide/16 v2, 0x0

    .line 399
    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/k;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/q;->a(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 399
    :cond_1
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/q;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 400
    new-instance v1, Lcom/xiaomi/mistatistic/sdk/data/e;

    const-string/jumbo v2, "mistat_basic"

    const-string/jumbo v3, "mistat_dau_dummy"

    invoke-direct {v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/data/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->insertEvent(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V

    const-string/jumbo v1, "dau_time"

    .line 402
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/k;->b(Landroid/content/Context;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 406
    :catch_0
    move-exception v0

    const-string/jumbo v1, "addDauEventWhenForeground exception: "

    .line 405
    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private c(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-string/jumbo v0, "uep_property"

    .line 145
    invoke-static {p1, v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/k;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 150
    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/controller/q;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 157
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/h;

    const-string/jumbo v1, "mistat_basic"

    const-string/jumbo v2, "UEP"

    const-string/jumbo v3, "not_miui"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/data/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :goto_0
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->insertEvent(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V

    .line 161
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "uep_property"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/controller/k;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 162
    return-void

    .line 146
    :cond_0
    return-void

    .line 151
    :cond_1
    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->isUserExperienceProgramEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 154
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/h;

    const-string/jumbo v1, "mistat_basic"

    const-string/jumbo v2, "UEP"

    const-string/jumbo v3, "no"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/data/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 152
    :cond_2
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/h;

    const-string/jumbo v1, "mistat_basic"

    const-string/jumbo v2, "UEP"

    const-string/jumbo v3, "yes"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/data/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static d(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 297
    :try_start_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->isUploadInstalledPackageEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 300
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    .line 301
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 302
    if-eqz v0, :cond_0

    .line 303
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, ","

    .line 307
    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 308
    new-instance v1, Lcom/xiaomi/mistatistic/sdk/data/h;

    const-string/jumbo v2, "mistat_basic"

    const-string/jumbo v3, "installed_package"

    invoke-direct {v1, v2, v3, v0}, Lcom/xiaomi/mistatistic/sdk/data/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->insertEvent(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 314
    :catch_0
    move-exception v0

    const-string/jumbo v1, ""

    .line 313
    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 303
    :cond_2
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 304
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    :try_start_0
    const-string/jumbo v0, "connectivity"

    .line 319
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 320
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 321
    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "unknown"

    .line 322
    return-object v0

    .line 321
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 324
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 327
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_3

    :goto_0
    const-string/jumbo v0, "unknown"

    .line 355
    return-object v0

    :cond_2
    :try_start_1
    const-string/jumbo v0, "WIFI"

    .line 325
    return-object v0

    .line 328
    :cond_3
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    .line 329
    packed-switch v0, :pswitch_data_0

    const-string/jumbo v0, "unknown"

    .line 349
    return-object v0

    :pswitch_0
    const-string/jumbo v0, "2G"

    .line 335
    return-object v0

    :pswitch_1
    const-string/jumbo v0, "3G"

    .line 345
    return-object v0

    :pswitch_2
    const-string/jumbo v0, "4G"
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 347
    return-object v0

    .line 354
    :catch_0
    move-exception v0

    const-string/jumbo v1, ""

    .line 353
    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 329
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    const-string/jumbo v0, "0"

    const-string/jumbo v0, "1"

    const-string/jumbo v0, "2"

    const-string/jumbo v0, "0"

    .line 364
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "SECONDARY_STORAGE"

    .line 365
    invoke-static {v2}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 366
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 377
    :goto_0
    return-object v0

    .line 367
    :cond_0
    invoke-static {p0, v2}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    const-string/jumbo v0, "2"

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v0, "1"
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 376
    :catch_0
    move-exception v1

    const-string/jumbo v2, ""

    .line 375
    invoke-static {v2, v1}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 53
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v0

    .line 54
    invoke-direct {p0, v0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->b(Landroid/content/Context;)V

    .line 55
    invoke-direct {p0, v0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->c(Landroid/content/Context;)V

    const-string/jumbo v1, "basic_info_reported"

    .line 57
    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/k;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    :goto_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->e()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "basic_info_version"

    const-string/jumbo v3, ""

    .line 71
    invoke-static {v0, v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 72
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    :goto_1
    const-string/jumbo v2, "basic_info_version"

    .line 77
    invoke-static {v0, v2, v1}, Lcom/xiaomi/mistatistic/sdk/controller/k;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a:Z

    if-nez v0, :cond_3

    .line 82
    :goto_2
    return-void

    .line 60
    :cond_1
    invoke-virtual {p0, v0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Landroid/content/Context;)V

    const-string/jumbo v1, "basic_info_reported"

    .line 63
    invoke-static {v0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/controller/k;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 66
    iput-boolean v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a:Z

    goto :goto_0

    .line 72
    :cond_2
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 73
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/b;->c()V

    .line 74
    new-instance v2, Lcom/xiaomi/mistatistic/sdk/data/e;

    const-string/jumbo v3, "mistat_basic"

    const-string/jumbo v4, "upgrade"

    invoke-direct {v2, v3, v4}, Lcom/xiaomi/mistatistic/sdk/data/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-static {v2}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->insertEvent(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V

    goto :goto_1

    .line 80
    :cond_3
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/l;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/controller/l;-><init>()V

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/l;->a()V

    goto :goto_2
.end method

.method public a(Landroid/content/Context;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 166
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/e;

    const-string/jumbo v1, "mistat_basic"

    const-string/jumbo v2, "new"

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/data/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->insertEvent(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V

    .line 169
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/h;

    const-string/jumbo v1, "mistat_basic"

    const-string/jumbo v2, "model"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/data/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->insertEvent(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V

    .line 173
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/h;

    const-string/jumbo v1, "mistat_basic"

    const-string/jumbo v2, "OS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "android"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/data/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->insertEvent(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V

    const-string/jumbo v0, "phone"

    .line 177
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 178
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    .line 179
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 184
    :goto_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->isInternationalBuild()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 203
    :cond_0
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 204
    if-nez v0, :cond_3

    .line 213
    :goto_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "locale"

    .line 214
    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ro.sys.miui_rom_channel_id"

    .line 217
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "channel"

    .line 218
    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ro.product.mod_device"

    .line 221
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "device_name"

    .line 222
    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ro.product.model.real"

    .line 225
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "real_model"

    .line 226
    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/q;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 251
    :goto_3
    return-void

    .line 180
    :cond_1
    new-instance v1, Lcom/xiaomi/mistatistic/sdk/data/h;

    const-string/jumbo v2, "mistat_basic"

    const-string/jumbo v3, "operator"

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lcom/xiaomi/mistatistic/sdk/data/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->insertEvent(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V

    goto :goto_0

    .line 184
    :cond_2
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/q;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/e;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/controller/e;-><init>()V

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/e;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "device_id"

    .line 188
    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "imei_md5"

    .line 190
    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/controller/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "android_id_md5"

    .line 193
    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/controller/q;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/q;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "serial_num_md5"

    .line 196
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/q;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/q;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "mac_md5"

    .line 199
    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/controller/q;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 205
    :cond_3
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 206
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 207
    if-lt v1, v0, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 208
    :goto_4
    new-instance v1, Lcom/xiaomi/mistatistic/sdk/data/h;

    const-string/jumbo v2, "mistat_basic"

    const-string/jumbo v3, "resolution"

    invoke-direct {v1, v2, v3, v0}, Lcom/xiaomi/mistatistic/sdk/data/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->insertEvent(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V

    goto/16 :goto_2

    .line 207
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_5
    :try_start_0
    const-string/jumbo v0, "miui.os.Build"

    .line 231
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "IS_INTERNATIONAL_BUILD"

    .line 232
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    .line 233
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "0"

    :goto_5
    const-string/jumbo v1, "mi"

    .line 234
    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_6
    :try_start_1
    const-string/jumbo v0, "miui.os.Build"

    .line 241
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "IS_ALPHA_BUILD"

    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const-string/jumbo v2, "IS_DEVELOPMENT_VERSION"

    .line 243
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x0

    .line 244
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string/jumbo v0, "S"

    :goto_7
    const-string/jumbo v1, "bc"

    .line 245
    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 248
    :catch_0
    move-exception v0

    const-string/jumbo v1, ""

    .line 247
    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :cond_6
    :try_start_2
    const-string/jumbo v0, "1"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    .line 237
    :catch_1
    move-exception v0

    const-string/jumbo v1, ""

    .line 236
    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_7
    :try_start_3
    const-string/jumbo v0, "A"

    goto :goto_7

    :cond_8
    const-string/jumbo v0, "D"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_7
.end method

.method public b()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x3

    const-string/jumbo v0, "ril.limit_service_mnc"

    .line 255
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ril.limit_service_mcc"

    .line 256
    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 257
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 265
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    :goto_0
    const-string/jumbo v0, ""

    .line 273
    return-object v0

    .line 257
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v3, :cond_0

    .line 258
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 261
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 265
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 268
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 269
    return-object v1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
