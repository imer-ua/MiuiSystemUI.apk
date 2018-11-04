.class public Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;
.super Ljava/lang/Object;
.source "PackageEntity.java"


# instance fields
.field private mDailyClick:I

.field private mDailyShow:I

.field private mDataChanged:Z

.field private mHistoryClick:I

.field private mHistoryShow:I

.field private mLock:Ljava/lang/Object;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->mLock:Ljava/lang/Object;

    .line 14
    iput-object p1, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->mPackageName:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public addClickCount()V
    .locals 2

    .prologue
    .line 34
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 35
    :try_start_0
    iget v0, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->mDailyClick:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->mDailyClick:I

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->mDataChanged:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public addShowCount()V
    .locals 2

    .prologue
    .line 41
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 42
    :try_start_0
    iget v0, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->mDailyShow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->mDailyShow:I

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->mDataChanged:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getDailyClick()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->mDailyClick:I

    return v0
.end method

.method public getDailyShow()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->mDailyShow:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalClick()I
    .locals 2

    .prologue
    .line 26
    iget v0, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->mDailyClick:I

    iget v1, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->mHistoryClick:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getTotalShow()I
    .locals 2

    .prologue
    .line 30
    iget v0, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->mDailyShow:I

    iget v1, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->mHistoryShow:I

    add-int/2addr v0, v1

    return v0
.end method

.method public isDataChanged()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->mDataChanged:Z

    return v0
.end method

.method public onDateChanged(II)V
    .locals 2
    .param p1, "click"    # I
    .param p2, "show"    # I

    .prologue
    .line 62
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 63
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->mDailyClick:I

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->mDailyShow:I

    .line 65
    iput p1, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->mHistoryClick:I

    .line 66
    iput p2, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->mHistoryShow:I

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->mDataChanged:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 61
    return-void

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setDailyData(II)V
    .locals 2
    .param p1, "click"    # I
    .param p2, "show"    # I

    .prologue
    .line 48
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 49
    :try_start_0
    iget v0, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->mDailyClick:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->mDailyClick:I

    .line 50
    iget v0, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->mDailyShow:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->mDailyShow:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 47
    return-void

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setDataChanged(Z)V
    .locals 2
    .param p1, "dataChanged"    # Z

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 73
    :try_start_0
    iput-boolean p1, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->mDataChanged:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 71
    return-void

    .line 72
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setHistoryData(II)V
    .locals 2
    .param p1, "click"    # I
    .param p2, "show"    # I

    .prologue
    .line 55
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 56
    :try_start_0
    iput p1, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->mHistoryClick:I

    .line 57
    iput p2, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->mHistoryShow:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 54
    return-void

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PackageEntity{mPackageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->mPackageName:Ljava/lang/String;

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 88
    const/16 v1, 0x27

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 89
    const-string/jumbo v1, ", mDailyClick="

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 89
    iget v1, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->mDailyClick:I

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 90
    const-string/jumbo v1, ", mDailyShow="

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 90
    iget v1, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->mDailyShow:I

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 91
    const-string/jumbo v1, ", mHistoryClick="

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 91
    iget v1, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->mHistoryClick:I

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 92
    const-string/jumbo v1, ", mHistoryShow="

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 92
    iget v1, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->mHistoryShow:I

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 93
    const-string/jumbo v1, ", mDataChanged="

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 93
    iget-boolean v1, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->mDataChanged:Z

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 94
    const/16 v1, 0x7d

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
