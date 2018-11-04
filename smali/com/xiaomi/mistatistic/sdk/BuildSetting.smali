.class public Lcom/xiaomi/mistatistic/sdk/BuildSetting;
.super Ljava/lang/Object;
.source "BuildSetting.java"


# static fields
.field private static a:Z

.field private static b:Z

.field private static c:Ljava/lang/Boolean;

.field private static d:Z

.field private static e:J

.field private static f:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 17
    sput-boolean v0, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->a:Z

    .line 18
    sput-boolean v0, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->b:Z

    const/4 v0, 0x0

    .line 19
    sput-object v0, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->c:Ljava/lang/Boolean;

    .line 20
    const/4 v0, 0x1

    sput-boolean v0, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->d:Z

    const-wide/32 v0, 0xea60

    .line 21
    sput-wide v0, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->e:J

    const-wide/16 v0, 0x0

    .line 22
    sput-wide v0, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->f:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 132
    :try_start_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v0

    .line 133
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/q;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "miui.os.Build"

    .line 134
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "IS_ALPHA_BUILD"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 135
    instance-of v1, v0, Ljava/lang/Boolean;

    if-nez v1, :cond_1

    .line 140
    :goto_0
    return v2

    .line 133
    :cond_0
    return v2

    .line 136
    :cond_1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 139
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static b()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 145
    :try_start_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v0

    .line 146
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/q;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "miui.os.Build"

    .line 147
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "IS_DEVELOPMENT_VERSION"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 148
    instance-of v1, v0, Ljava/lang/Boolean;

    if-nez v1, :cond_1

    .line 153
    :goto_0
    return v2

    .line 146
    :cond_0
    return v2

    .line 149
    :cond_1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 152
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static c()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 158
    :try_start_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v0

    .line 159
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/q;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "miui.os.Build"

    .line 160
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "IS_STABLE_VERSION"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 161
    instance-of v1, v0, Ljava/lang/Boolean;

    if-nez v1, :cond_1

    .line 166
    :goto_0
    return v2

    .line 159
    :cond_0
    return v2

    .line 162
    :cond_1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 165
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getMiuiBuildCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 184
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->a()Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, ""

    .line 187
    return-object v0

    :cond_0
    const-string/jumbo v0, "S"

    .line 181
    return-object v0

    :cond_1
    const-string/jumbo v0, "D"

    .line 183
    return-object v0

    :cond_2
    const-string/jumbo v0, "A"

    .line 185
    return-object v0
.end method

.method public static isCTABuild()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 118
    :try_start_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v0

    .line 119
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/q;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 127
    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "miui.os.Build"

    .line 120
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v2, "IS_CTA_BUILD"

    .line 121
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x0

    .line 122
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 123
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public static isDisabled(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 57
    sget-boolean v1, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->d:Z

    if-eqz v1, :cond_2

    .line 61
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->c:Ljava/lang/Boolean;

    if-nez v1, :cond_3

    .line 62
    :cond_0
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/q;->d(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 65
    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->c:Ljava/lang/Boolean;

    const-string/jumbo v0, "isDisabled false, not miui app or OS "

    .line 66
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->b(Ljava/lang/String;)V

    .line 68
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->f:J

    .line 70
    :goto_1
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 58
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isDisabled false, sRespectUEP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/h;->b(Ljava/lang/String;)V

    .line 59
    return v0

    .line 61
    :cond_3
    sget-wide v2, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->f:J

    sget-wide v4, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->e:J

    invoke-static {v2, v3, v4, v5}, Lcom/xiaomi/mistatistic/sdk/controller/q;->a(JJ)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 62
    :cond_4
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/q;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->isUserExperienceProgramEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->c:Ljava/lang/Boolean;

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    goto :goto_2
.end method

.method public static isInternationalBuild()Z
    .locals 2

    .prologue
    :try_start_0
    const-string/jumbo v0, "miui.os.Build"

    .line 171
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "IS_INTERNATIONAL_BUILD"

    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 171
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method public static isSelfStats()Z
    .locals 1

    .prologue
    .line 45
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->b:Z

    return v0
.end method

.method public static isTest()Z
    .locals 1

    .prologue
    .line 33
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->a:Z

    return v0
.end method

.method public static isUploadDebugLogEnable(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 90
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/q;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string/jumbo v0, "android.provider.MiuiSettings$Secure"

    .line 96
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v2, "isUploadDebugLogEnable"

    const/4 v3, 0x1

    .line 97
    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/ContentResolver;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 98
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v2, 0x1

    .line 99
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isUploadDebugLogEnable: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_0
    return v1

    :cond_0
    const-string/jumbo v0, "MI_STAT"

    const-string/jumbo v2, "The statistics is disabled."

    .line 91
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return v1

    .line 103
    :catch_0
    move-exception v0

    const-string/jumbo v2, "BS"

    const-string/jumbo v3, "isUploadDebugLogEnable exception:"

    .line 102
    invoke-static {v2, v3, v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static isUserExperienceProgramEnabled(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    :try_start_0
    const-string/jumbo v0, "android.provider.MiuiSettings$Secure"

    .line 78
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v2, "isUserExperienceProgramEnable"

    const/4 v3, 0x1

    .line 79
    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/ContentResolver;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 80
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v2, 0x1

    .line 81
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 85
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "UEP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/h;->b(Ljava/lang/String;)V

    .line 86
    return v0

    .line 84
    :catch_0
    move-exception v0

    const-string/jumbo v2, "BS"

    const-string/jumbo v3, "isUserExperienceProgramEnable exception:"

    .line 83
    invoke-static {v2, v3, v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_0
.end method
