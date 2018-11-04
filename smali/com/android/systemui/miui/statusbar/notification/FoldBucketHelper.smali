.class public Lcom/android/systemui/miui/statusbar/notification/FoldBucketHelper;
.super Ljava/lang/Object;
.source "FoldBucketHelper.java"


# static fields
.field private static sFoldBucket:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allowFold()Z
    .locals 2

    .prologue
    .line 62
    sget v0, Lcom/android/systemui/miui/statusbar/notification/FoldBucketHelper;->sFoldBucket:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getFoldBucket()I
    .locals 1

    .prologue
    .line 66
    sget v0, Lcom/android/systemui/miui/statusbar/notification/FoldBucketHelper;->sFoldBucket:I

    return v0
.end method

.method public static init()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 31
    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/FoldBucketHelper;->shouldUpdateRankNum()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 32
    sget-boolean v4, Lcom/android/systemui/Constants;->IS_INTERNATIONAL:Z

    if-eqz v4, :cond_1

    .line 33
    sput v6, Lcom/android/systemui/miui/statusbar/notification/FoldBucketHelper;->sFoldBucket:I

    .line 44
    .local v2, "percent":I
    .local v3, "rand":Ljava/util/Random;
    :goto_0
    const-string/jumbo v4, "persist.sys.notification_rank"

    sget v5, Lcom/android/systemui/miui/statusbar/notification/FoldBucketHelper;->sFoldBucket:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string/jumbo v4, "persist.sys.notification_ver"

    const-string/jumbo v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .end local v2    # "percent":I
    .end local v3    # "rand":Ljava/util/Random;
    .local v0, "defaultFoldBucket":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 35
    .end local v0    # "defaultFoldBucket":Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 36
    .restart local v3    # "rand":Ljava/util/Random;
    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 37
    .restart local v2    # "percent":I
    const/16 v4, 0x5a

    if-ge v2, v4, :cond_2

    .line 38
    sput v7, Lcom/android/systemui/miui/statusbar/notification/FoldBucketHelper;->sFoldBucket:I

    .line 42
    :goto_2
    const-string/jumbo v4, "FoldBucketHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "percent="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",sRandomFoldType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/systemui/miui/statusbar/notification/FoldBucketHelper;->sFoldBucket:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 40
    :cond_2
    const/4 v4, 0x1

    sput v4, Lcom/android/systemui/miui/statusbar/notification/FoldBucketHelper;->sFoldBucket:I

    goto :goto_2

    .line 48
    .end local v2    # "percent":I
    .end local v3    # "rand":Ljava/util/Random;
    :cond_3
    :try_start_0
    const-string/jumbo v4, "persist.sys.notification_rank"

    const-string/jumbo v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    .restart local v0    # "defaultFoldBucket":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/systemui/miui/statusbar/notification/FoldBucketHelper;->sFoldBucket:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_3
    sget v4, Lcom/android/systemui/miui/statusbar/notification/FoldBucketHelper;->sFoldBucket:I

    if-ltz v4, :cond_4

    sget v4, Lcom/android/systemui/miui/statusbar/notification/FoldBucketHelper;->sFoldBucket:I

    if-le v4, v7, :cond_5

    .line 55
    :cond_4
    :goto_4
    sput v6, Lcom/android/systemui/miui/statusbar/notification/FoldBucketHelper;->sFoldBucket:I

    .line 56
    const-string/jumbo v4, "persist.sys.notification_rank"

    sget v5, Lcom/android/systemui/miui/statusbar/notification/FoldBucketHelper;->sFoldBucket:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 50
    :catch_0
    move-exception v1

    .line 51
    .local v1, "e":Ljava/lang/NumberFormatException;
    sput v6, Lcom/android/systemui/miui/statusbar/notification/FoldBucketHelper;->sFoldBucket:I

    goto :goto_3

    .line 54
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_5
    sget-boolean v4, Lcom/android/systemui/Constants;->IS_INTERNATIONAL:Z

    if-eqz v4, :cond_0

    sget v4, Lcom/android/systemui/miui/statusbar/notification/FoldBucketHelper;->sFoldBucket:I

    if-eqz v4, :cond_0

    goto :goto_4
.end method

.method private static shouldUpdateRankNum()Z
    .locals 3

    .prologue
    .line 70
    const-string/jumbo v1, "persist.sys.notification_ver"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "rankVersion":Ljava/lang/String;
    const-string/jumbo v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 72
    const/4 v1, 0x1

    return v1

    .line 74
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
