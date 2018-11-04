.class public Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;
.super Ljava/lang/Object;
.source "PackageScoreCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$RankLruCache;
    }
.end annotation


# static fields
.field private static final DAYS_TO_MILLIS:J

.field private static final DEBUG:Z


# instance fields
.field private mBgHandler:Landroid/os/Handler;

.field private mCurrentDays:I

.field private mOpenHelper:Lcom/android/systemui/miui/statusbar/DatabaseHelper;

.field private mPkgEntities:Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$RankLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$RankLruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalClickCount:I

.field private mTotalShowCount:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->mBgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->updateAll()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;)V
    .locals 0
    .param p1, "pkgEntity"    # Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->updateEntityData(Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;)V
    .locals 0
    .param p1, "entity"    # Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->updateEntity(Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 21
    sget-boolean v0, Lcom/android/systemui/Constants;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->DEBUG:Z

    .line 23
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->DAYS_TO_MILLIS:J

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bgLooper"    # Landroid/os/Looper;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {p1}, Lcom/android/systemui/miui/statusbar/DatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/systemui/miui/statusbar/DatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->mOpenHelper:Lcom/android/systemui/miui/statusbar/DatabaseHelper;

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->mBgHandler:Landroid/os/Handler;

    .line 36
    new-instance v0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$RankLruCache;

    const/16 v1, 0x40

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$RankLruCache;-><init>(Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;I)V

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->mPkgEntities:Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$RankLruCache;

    .line 33
    return-void
.end method

.method private closeCursor(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 318
    if-eqz p1, :cond_0

    .line 319
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 317
    :cond_0
    return-void
.end method

.method private closeDB(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 312
    if-eqz p1, :cond_0

    .line 313
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 311
    :cond_0
    return-void
.end method

.method private getDigitalFormatDate()I
    .locals 6

    .prologue
    .line 335
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 336
    .local v0, "calendar":Ljava/util/Calendar;
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 337
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 338
    .local v3, "year":I
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v2, v4, 0x1

    .line 339
    .local v2, "month":I
    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 340
    .local v1, "day":I
    mul-int/lit16 v4, v3, 0x2710

    mul-int/lit8 v5, v2, 0x64

    add-int/2addr v4, v5

    add-int/2addr v4, v1

    return v4
.end method

.method private getDigitalPreviousMonthDate()I
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 345
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 346
    .local v0, "calendar":Ljava/util/Calendar;
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 347
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 348
    .local v3, "year":I
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v2, v4, 0x1

    .line 349
    .local v2, "month":I
    if-ne v2, v5, :cond_0

    .line 350
    add-int/lit8 v3, v3, -0x1

    .line 351
    const/16 v2, 0xc

    .line 355
    :goto_0
    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 356
    .local v1, "day":I
    mul-int/lit16 v4, v3, 0x2710

    mul-int/lit8 v5, v2, 0x64

    add-int/2addr v4, v5

    add-int/2addr v4, v1

    return v4

    .line 353
    .end local v1    # "day":I
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method private insertOrUpdate(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;)V
    .locals 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "pkgEntity"    # Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->getDigitalFormatDate()I

    move-result v3

    .line 106
    .local v3, "today":I
    invoke-virtual {p2}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "pkgName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .local v2, "sql":Ljava/lang/StringBuilder;
    const-string/jumbo v4, " INSERT OR REPLACE INTO notification_sort "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    const-string/jumbo v4, " (_id, package_name, date, click_count, show_count) "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    const-string/jumbo v4, " VALUES((SELECT _id FROM notification_sort "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const-string/jumbo v4, " WHERE package_name = \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\' "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    const-string/jumbo v4, " AND date = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    const-string/jumbo v4, " , \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\' "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    const-string/jumbo v4, " , "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    const-string/jumbo v4, " , "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->getDailyClick()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    const-string/jumbo v4, " , "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->getDailyShow()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    sget-boolean v4, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 119
    const-string/jumbo v4, "packageScoreCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "insertOrUpdate "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_0
    return-void

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "packageScoreCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "insertOrUpdate Exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isDateChanged()Z
    .locals 6

    .prologue
    .line 324
    const/4 v0, 0x0

    .line 325
    .local v0, "changed":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->DAYS_TO_MILLIS:J

    div-long/2addr v2, v4

    long-to-int v1, v2

    .line 326
    .local v1, "days":I
    iget v2, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->mCurrentDays:I

    if-eq v1, v2, :cond_0

    .line 327
    iput v1, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->mCurrentDays:I

    .line 328
    const/4 v0, 0x1

    .line 330
    :cond_0
    return v0
.end method

.method private openDB()Landroid/database/sqlite/SQLiteDatabase;
    .locals 5

    .prologue
    .line 302
    const/4 v0, 0x0

    .line 304
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->mOpenHelper:Lcom/android/systemui/miui/statusbar/DatabaseHelper;

    invoke-virtual {v2}, Lcom/android/systemui/miui/statusbar/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 308
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return-object v0

    .line 305
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v1

    .line 306
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "packageScoreCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "openDB failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private removeExpiredData(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->getDigitalPreviousMonthDate()I

    move-result v1

    .line 132
    .local v1, "oneMonthAgo":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .local v2, "sql":Ljava/lang/StringBuilder;
    const-string/jumbo v3, " DELETE FROM notification_sort "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    const-string/jumbo v3, " WHERE date < "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    sget-boolean v3, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 136
    const-string/jumbo v3, "packageScoreCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeExpiredData "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_0
    return-void

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "packageScoreCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeExpiredData Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private retrievePackage(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 226
    new-instance v0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;

    invoke-direct {v0, p1}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;-><init>(Ljava/lang/String;)V

    .line 227
    .local v0, "pkgEntity":Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->mPkgEntities:Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$RankLruCache;

    invoke-virtual {v1, p1, v0}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$RankLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->mBgHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$2;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$2;-><init>(Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 225
    return-void
.end method

.method private updateAll()V
    .locals 3

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->openDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 75
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    return-void

    .line 76
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->mPkgEntities:Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$RankLruCache;

    invoke-virtual {v2}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$RankLruCache;->snapshot()Ljava/util/Map;

    move-result-object v1

    .line 77
    .local v1, "entities":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;>;"
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->writeToDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Map;)V

    .line 78
    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->isDateChanged()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 79
    invoke-direct {p0, v0}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->removeExpiredData(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 80
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->updateEntryData(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Map;)V

    .line 81
    invoke-direct {p0, v0}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->updateLocalData(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 83
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 73
    return-void
.end method

.method private updateDailyData(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;)V
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "pkgEntity"    # Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;

    .prologue
    .line 248
    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->getDigitalFormatDate()I

    move-result v6

    .line 249
    .local v6, "today":I
    invoke-virtual {p2}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 251
    .local v3, "pkgName":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 252
    .local v5, "sql":Ljava/lang/StringBuilder;
    const-string/jumbo v7, " SELECT click_count, show_count FROM notification_sort "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    const-string/jumbo v7, " WHERE package_name = \'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\' "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    const-string/jumbo v7, " AND date = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 255
    sget-boolean v7, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 256
    const-string/jumbo v7, "packageScoreCache"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateDailyData "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_0
    const/4 v1, 0x0

    .line 261
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 262
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 263
    const/4 v7, 0x0

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 264
    .local v0, "clickCount":I
    const/4 v7, 0x1

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 265
    .local v4, "showCount":I
    invoke-virtual {p2, v0, v4}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->setDailyData(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    .end local v0    # "clickCount":I
    .end local v4    # "showCount":I
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->closeCursor(Landroid/database/Cursor;)V

    .line 247
    .end local v1    # "cursor":Landroid/database/Cursor;
    :goto_0
    return-void

    .line 267
    :catch_0
    move-exception v2

    .line 268
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v7, "packageScoreCache"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateDailyData exception "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    invoke-direct {p0, v1}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 269
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 270
    invoke-direct {p0, v1}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->closeCursor(Landroid/database/Cursor;)V

    .line 269
    throw v7
.end method

.method private updateEntity(Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;)V
    .locals 2
    .param p1, "entity"    # Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;

    .prologue
    .line 65
    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->isDataChanged()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->openDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 67
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    return-void

    .line 68
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->insertOrUpdate(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;)V

    .line 69
    invoke-direct {p0, v0}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 64
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    return-void
.end method

.method private updateEntityData(Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;)V
    .locals 4
    .param p1, "pkgEntity"    # Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;

    .prologue
    .line 237
    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->openDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 238
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    return-void

    .line 239
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->updateDailyData(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;)V

    .line 240
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->updateHistoryData(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;)V

    .line 241
    invoke-direct {p0, v0}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 242
    sget-boolean v1, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 243
    const-string/jumbo v1, "packageScoreCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateEntityData "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_1
    return-void
.end method

.method private updateEntryData(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Map;)V
    .locals 11
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p2, "entityMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;>;"
    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->getDigitalFormatDate()I

    move-result v7

    .line 149
    .local v7, "today":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .local v6, "sql":Ljava/lang/StringBuilder;
    const-string/jumbo v8, " SELECT package_name, SUM(click_count), SUM(show_count) FROM notification_sort "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    const-string/jumbo v8, " WHERE date < "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 152
    const-string/jumbo v8, " GROUP BY package_name "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    sget-boolean v8, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->DEBUG:Z

    if-eqz v8, :cond_0

    .line 154
    const-string/jumbo v8, "packageScoreCache"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateEntryData "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    const/4 v1, 0x0

    .line 159
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 160
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_2

    .line 161
    :cond_1
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 162
    const/4 v8, 0x0

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 163
    .local v4, "pkgName":Ljava/lang/String;
    const/4 v8, 0x1

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 164
    .local v0, "clickCount":I
    const/4 v8, 0x2

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 166
    .local v5, "showCount":I
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;

    .line 167
    .local v3, "entity":Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;
    if-eqz v3, :cond_1

    .line 168
    invoke-virtual {v3, v0, v5}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->onDateChanged(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 172
    .end local v0    # "clickCount":I
    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v3    # "entity":Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "showCount":I
    :catch_0
    move-exception v2

    .line 173
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v8, "packageScoreCache"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateEntryData exception "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    invoke-direct {p0, v1}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->closeCursor(Landroid/database/Cursor;)V

    .line 146
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 175
    .restart local v1    # "cursor":Landroid/database/Cursor;
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_1

    .line 174
    .end local v1    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v8

    .line 175
    invoke-direct {p0, v1}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->closeCursor(Landroid/database/Cursor;)V

    .line 174
    throw v8
.end method

.method private updateHistoryData(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;)V
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "pkgEntity"    # Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->getDigitalFormatDate()I

    move-result v6

    .line 276
    .local v6, "today":I
    invoke-virtual {p2}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 278
    .local v3, "pkgName":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    .local v5, "sql":Ljava/lang/StringBuilder;
    const-string/jumbo v7, " SELECT SUM(click_count), SUM(show_count) FROM notification_sort "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    const-string/jumbo v7, " WHERE package_name = \'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\' "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    const-string/jumbo v7, " AND date < "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 282
    sget-boolean v7, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 283
    const-string/jumbo v7, "packageScoreCache"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateHistoryData "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_0
    const/4 v1, 0x0

    .line 288
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 289
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 290
    const/4 v7, 0x0

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 291
    .local v0, "clickCount":I
    const/4 v7, 0x1

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 292
    .local v4, "showCount":I
    invoke-virtual {p2, v0, v4}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->setHistoryData(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    .end local v0    # "clickCount":I
    .end local v4    # "showCount":I
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->closeCursor(Landroid/database/Cursor;)V

    .line 274
    .end local v1    # "cursor":Landroid/database/Cursor;
    :goto_0
    return-void

    .line 294
    :catch_0
    move-exception v2

    .line 295
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v7, "packageScoreCache"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateHistoryData exception "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 297
    invoke-direct {p0, v1}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 296
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 297
    invoke-direct {p0, v1}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->closeCursor(Landroid/database/Cursor;)V

    .line 296
    throw v7
.end method

.method private updateLocalData(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->getDigitalFormatDate()I

    move-result v3

    .line 182
    .local v3, "today":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .local v2, "sql":Ljava/lang/StringBuilder;
    const-string/jumbo v4, " SELECT SUM(click_count), SUM(show_count) FROM notification_sort "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    const-string/jumbo v4, " WHERE date < "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 185
    sget-boolean v4, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 186
    const-string/jumbo v4, "packageScoreCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateLocalData "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_0
    const/4 v0, 0x0

    .line 191
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 192
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 193
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->mTotalClickCount:I

    .line 194
    const/4 v4, 0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->mTotalShowCount:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->closeCursor(Landroid/database/Cursor;)V

    .line 202
    .end local v0    # "cursor":Landroid/database/Cursor;
    :goto_0
    sget-boolean v4, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 203
    const-string/jumbo v4, "packageScoreCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateLocalData click="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->mTotalClickCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", show="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->mTotalShowCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_2
    return-void

    .line 196
    :catch_0
    move-exception v1

    .line 197
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v4, "packageScoreCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateLocalData exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    invoke-direct {p0, v0}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 198
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 199
    invoke-direct {p0, v0}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->closeCursor(Landroid/database/Cursor;)V

    .line 198
    throw v4
.end method

.method private writeToDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Map;)V
    .locals 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p2, "entityMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;>;"
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 89
    :try_start_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "packageEntityEntry$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 90
    .local v2, "packageEntityEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;

    .line 91
    .local v1, "packageEntity":Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;
    invoke-virtual {v1}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->isDataChanged()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 92
    invoke-direct {p0, p1, v1}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->insertOrUpdate(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;)V

    .line 93
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->setDataChanged(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 97
    .end local v1    # "packageEntity":Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;
    .end local v2    # "packageEntityEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;>;"
    .end local v3    # "packageEntityEntry$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v4, "packageScoreCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "writeToDatabase Exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 86
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 96
    .restart local v3    # "packageEntityEntry$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    .line 99
    .end local v3    # "packageEntityEntry$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    .line 100
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 99
    throw v4
.end method


# virtual methods
.method public addClick(Ljava/lang/String;)Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 217
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->mPkgEntities:Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$RankLruCache;

    invoke-virtual {v1, p1}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$RankLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 218
    invoke-direct {p0, p1}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->retrievePackage(Ljava/lang/String;)V

    .line 220
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->mPkgEntities:Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$RankLruCache;

    invoke-virtual {v1, p1}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$RankLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;

    .line 221
    .local v0, "packageEntity":Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;
    invoke-virtual {v0}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->addClickCount()V

    .line 222
    return-object v0
.end method

.method public addShow(Ljava/lang/String;)Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 208
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->mPkgEntities:Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$RankLruCache;

    invoke-virtual {v1, p1}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$RankLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 209
    invoke-direct {p0, p1}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->retrievePackage(Ljava/lang/String;)V

    .line 211
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->mPkgEntities:Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$RankLruCache;

    invoke-virtual {v1, p1}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$RankLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;

    .line 212
    .local v0, "packageEntity":Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;
    invoke-virtual {v0}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->addShowCount()V

    .line 213
    return-object v0
.end method

.method public asyncUpdate()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$1;-><init>(Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 55
    return-void
.end method

.method public containsPkg(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->getPkgEntity(Ljava/lang/String;)Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPkgEntity(Ljava/lang/String;)Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->mPkgEntities:Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$RankLruCache;

    invoke-virtual {v0, p1}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$RankLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;

    return-object v0
.end method

.method public getTotalClickCount()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->mTotalClickCount:I

    return v0
.end method

.method public getTotalShowCount()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->mTotalShowCount:I

    return v0
.end method
