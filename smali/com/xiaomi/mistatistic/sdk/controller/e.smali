.class public Lcom/xiaomi/mistatistic/sdk/controller/e;
.super Ljava/lang/Object;
.source "DeviceIdHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mistatistic/sdk/controller/e$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;

.field private static final b:Ljava/lang/Object;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/e;->a:Ljava/lang/Object;

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/e;->b:Ljava/lang/Object;

    .line 28
    sput-object v1, Lcom/xiaomi/mistatistic/sdk/controller/e;->c:Ljava/lang/String;

    .line 29
    sput-object v1, Lcom/xiaomi/mistatistic/sdk/controller/e;->d:Ljava/lang/String;

    .line 30
    sput-object v1, Lcom/xiaomi/mistatistic/sdk/controller/e;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 17
    sput-object p0, Lcom/xiaomi/mistatistic/sdk/controller/e;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    const-string/jumbo v0, "imei_md5"

    const-string/jumbo v1, ""

    .line 135
    invoke-static {p0, v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/e;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 146
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/q;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 152
    :goto_0
    return-object v0

    .line 138
    :cond_0
    return-object v0

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "imei_md5"

    .line 148
    invoke-static {p0, v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/k;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static declared-synchronized c(Landroid/content/Context;)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v0, 0x0

    const-class v1, Lcom/xiaomi/mistatistic/sdk/controller/e;

    monitor-enter v1

    .line 156
    :try_start_0
    sget-object v2, Lcom/xiaomi/mistatistic/sdk/controller/e;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "anonymous_id"

    const-string/jumbo v5, ""

    .line 160
    invoke-static {p0, v4, v5}, Lcom/xiaomi/mistatistic/sdk/controller/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "aigt"

    const-wide/16 v6, 0x0

    .line 161
    invoke-static {p0, v5, v6, v7}, Lcom/xiaomi/mistatistic/sdk/controller/k;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v6

    const-string/jumbo v5, "anonymous_ei"

    const-wide v8, 0x1cf7c5800L

    .line 162
    invoke-static {p0, v5, v8, v9}, Lcom/xiaomi/mistatistic/sdk/controller/k;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v8

    .line 163
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 164
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/e;->e:Ljava/lang/String;

    const-string/jumbo v0, "anonymous_id"

    .line 165
    sget-object v4, Lcom/xiaomi/mistatistic/sdk/controller/e;->e:Ljava/lang/String;

    invoke-static {p0, v0, v4}, Lcom/xiaomi/mistatistic/sdk/controller/k;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string/jumbo v0, "aigt"

    .line 169
    invoke-static {p0, v0, v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/k;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 170
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/e;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 157
    :cond_1
    :try_start_1
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/e;->e:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0

    .line 163
    :cond_2
    sub-long v6, v2, v6

    cmp-long v5, v6, v8

    if-gez v5, :cond_3

    const/4 v0, 0x1

    :cond_3
    if-eqz v0, :cond_0

    .line 167
    :try_start_2
    sput-object v4, Lcom/xiaomi/mistatistic/sdk/controller/e;->e:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic d(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/e;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 75
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/e;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    :goto_0
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/e;->c:Ljava/lang/String;

    return-object v0

    .line 76
    :cond_0
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/e;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 77
    :try_start_0
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/e;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 79
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "device_id"

    const-string/jumbo v3, ""

    .line 81
    invoke-static {v0, v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 82
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 97
    sput-object v2, Lcom/xiaomi/mistatistic/sdk/controller/e;->c:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 101
    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v2, "DIH"

    const-string/jumbo v3, "getDeviceId exception"

    .line 100
    invoke-static {v2, v3, v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 83
    :cond_2
    :try_start_3
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->isInternationalBuild()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 84
    :cond_3
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 85
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 88
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/xiaomi/mistatistic/sdk/controller/e;->c:Ljava/lang/String;

    :goto_2
    const-string/jumbo v2, "device_id"

    .line 95
    sget-object v3, Lcom/xiaomi/mistatistic/sdk/controller/e;->c:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/k;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 83
    :cond_4
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/q;->c()Z

    move-result v2

    if-nez v2, :cond_3

    .line 91
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/q;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 92
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/q;->a()Ljava/lang/String;

    move-result-object v3

    .line 93
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/e;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/mistatistic/sdk/controller/q;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/xiaomi/mistatistic/sdk/controller/e;->c:Ljava/lang/String;

    goto :goto_2

    .line 86
    :cond_5
    sput-object v2, Lcom/xiaomi/mistatistic/sdk/controller/e;->c:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method private static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 111
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/e;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    :goto_0
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/e;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 131
    :goto_1
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/e;->d:Ljava/lang/String;

    return-object v0

    .line 112
    :cond_0
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/e;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 113
    :try_start_0
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/e;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 125
    :goto_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 115
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "DIH"

    const-string/jumbo v2, "cannot get READ_PHONE_STATE permission"

    .line 119
    invoke-static {v0, v2}, Lcom/xiaomi/mistatistic/sdk/controller/h;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 123
    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v2, "DIH"

    const-string/jumbo v3, "getImei exception:"

    .line 122
    invoke-static {v2, v3, v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :cond_2
    :try_start_3
    const-string/jumbo v0, "phone"

    .line 116
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 117
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/e;->d:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :cond_3
    const-string/jumbo v0, "DIH"

    const-string/jumbo v1, "Imei is empty"

    .line 129
    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 33
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/e;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 37
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Lcom/xiaomi/mistatistic/sdk/controller/d;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/controller/e$a;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/xiaomi/mistatistic/sdk/controller/e$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a(Lcom/xiaomi/mistatistic/sdk/controller/d$a;)V

    .line 38
    return-object v3

    .line 34
    :cond_0
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/e;->c:Ljava/lang/String;

    return-object v0
.end method
