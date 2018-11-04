.class public Lcom/android/systemui/miui/statusbar/notification/ScoreInfo;
.super Ljava/lang/Object;
.source "ScoreInfo.java"


# instance fields
.field private mCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "n"
    .end annotation
.end field

.field private mExtraInfo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "extra_info"
    .end annotation
.end field

.field private mGroupInterval:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "group_interval"
    .end annotation
.end field

.field private mServerScore:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "server_score"
    .end annotation
.end field

.field private mSortDelay:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sort_delay"
    .end annotation
.end field

.field private mThreshold:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "threshold"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/android/systemui/miui/statusbar/notification/ScoreInfo;->mCount:I

    return v0
.end method

.method public getExtraInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/notification/ScoreInfo;->mExtraInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupInterval()J
    .locals 2

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/android/systemui/miui/statusbar/notification/ScoreInfo;->mGroupInterval:J

    return-wide v0
.end method

.method public getServerScore()D
    .locals 2

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/android/systemui/miui/statusbar/notification/ScoreInfo;->mServerScore:D

    return-wide v0
.end method

.method public getSortDelay()J
    .locals 2

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/android/systemui/miui/statusbar/notification/ScoreInfo;->mSortDelay:J

    return-wide v0
.end method

.method public getThreshold()D
    .locals 2

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/android/systemui/miui/statusbar/notification/ScoreInfo;->mThreshold:D

    return-wide v0
.end method

.method public toJSONObject()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 58
    .local v0, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
