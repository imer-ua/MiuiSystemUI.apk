.class public Lcom/xiaomi/mistatistic/sdk/controller/h;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->a:Z

    return-void
.end method

.method private static varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 75
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "log getMessage exception :"

    .line 77
    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 79
    return-object v0
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x1

    sput-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->a:Z

    .line 20
    return-void
.end method

.method private static a(ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 45
    invoke-static {p2}, Lcom/xiaomi/mistatistic/sdk/controller/h;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    packed-switch p0, :pswitch_data_0

    .line 63
    :goto_0
    return-void

    .line 48
    :pswitch_0
    invoke-static {v0, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 51
    :pswitch_1
    invoke-static {v0, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 54
    :pswitch_2
    invoke-static {v0, p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 57
    :pswitch_3
    invoke-static {v0, p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 60
    :pswitch_4
    invoke-static {v0, p3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 46
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static varargs a(ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 23
    invoke-static {p2}, Lcom/xiaomi/mistatistic/sdk/controller/h;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-static {p3, p4}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 25
    packed-switch p0, :pswitch_data_0

    .line 42
    :goto_0
    return-void

    .line 27
    :pswitch_0
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 30
    :pswitch_1
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 33
    :pswitch_2
    invoke-static {v0, v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 36
    :pswitch_3
    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 39
    :pswitch_4
    invoke-static {v0, v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 102
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->a:Z

    if-nez v0, :cond_0

    .line 105
    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x4

    .line 103
    invoke-static {v0, v1, v1, p0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 96
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->a:Z

    if-nez v0, :cond_0

    .line 99
    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 97
    invoke-static {v0, v1, p0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 121
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->a:Z

    if-nez v0, :cond_0

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_0
    invoke-static {v1, p2, p0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static varargs a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 90
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->a:Z

    if-nez v0, :cond_0

    .line 93
    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 91
    invoke-static {v0, v1, p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 127
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->a:Z

    if-nez v0, :cond_0

    .line 130
    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    .line 128
    invoke-static {v1, p1, v0, p0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 152
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->a:Z

    if-nez v0, :cond_0

    .line 155
    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x3

    .line 153
    invoke-static {v0, v1, v1, p0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 146
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->a:Z

    if-nez v0, :cond_0

    .line 149
    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 147
    invoke-static {v0, v1, p0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 196
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->a:Z

    if-nez v0, :cond_0

    .line 199
    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    .line 197
    invoke-static {v0, p2, p0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static varargs b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 140
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->a:Z

    if-nez v0, :cond_0

    .line 143
    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 141
    invoke-static {v0, v1, p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 177
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->a:Z

    if-nez v0, :cond_0

    .line 180
    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x2

    .line 178
    invoke-static {v0, v1, v1, p0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 171
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->a:Z

    if-nez v0, :cond_0

    .line 174
    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 172
    invoke-static {v0, v1, p0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 208
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->a:Z

    if-nez v0, :cond_0

    .line 211
    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    .line 209
    invoke-static {v0, v1, v1, p0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 202
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/h;->a:Z

    if-nez v0, :cond_0

    .line 205
    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    .line 203
    invoke-static {v0, v1, v1, p1}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MI_STAT_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MI_STAT_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "MI_STAT"

    .line 67
    return-object v0
.end method
