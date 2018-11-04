.class public Lcom/android/systemui/miui/statusbar/LocalScoreRule;
.super Ljava/lang/Object;
.source "LocalScoreRule.java"


# instance fields
.field public desc:Ljava/lang/String;

.field public score:I

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 13
    if-ne p0, p1, :cond_0

    .line 14
    return v1

    .line 16
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/LocalScoreRule;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    .line 17
    :cond_1
    return v2

    :cond_2
    move-object v0, p1

    .line 19
    check-cast v0, Lcom/android/systemui/miui/statusbar/LocalScoreRule;

    .line 20
    .local v0, "scoreRule":Lcom/android/systemui/miui/statusbar/LocalScoreRule;
    iget v3, p0, Lcom/android/systemui/miui/statusbar/LocalScoreRule;->score:I

    iget v4, v0, Lcom/android/systemui/miui/statusbar/LocalScoreRule;->score:I

    if-eq v3, v4, :cond_3

    .line 21
    return v2

    .line 23
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/miui/statusbar/LocalScoreRule;->title:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/systemui/miui/statusbar/LocalScoreRule;->title:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/systemui/miui/statusbar/LocalScoreRule;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 27
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/miui/statusbar/LocalScoreRule;->desc:Ljava/lang/String;

    if-eqz v3, :cond_8

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/LocalScoreRule;->desc:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/systemui/miui/statusbar/LocalScoreRule;->desc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_5
    :goto_0
    return v1

    .line 24
    :cond_6
    iget-object v3, v0, Lcom/android/systemui/miui/statusbar/LocalScoreRule;->title:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 25
    :cond_7
    return v2

    .line 28
    :cond_8
    iget-object v3, v0, Lcom/android/systemui/miui/statusbar/LocalScoreRule;->desc:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 33
    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/LocalScoreRule;->title:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/LocalScoreRule;->title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 34
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/android/systemui/miui/statusbar/LocalScoreRule;->desc:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/LocalScoreRule;->desc:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 35
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/android/systemui/miui/statusbar/LocalScoreRule;->score:I

    add-int v0, v1, v2

    .line 36
    return v0

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 33
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "LocalScoreRule{title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/LocalScoreRule;->title:Ljava/lang/String;

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 43
    const-string/jumbo v1, ", desc=\'"

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/LocalScoreRule;->desc:Ljava/lang/String;

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 44
    const-string/jumbo v1, ", score="

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 44
    iget v1, p0, Lcom/android/systemui/miui/statusbar/LocalScoreRule;->score:I

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 45
    const/16 v1, 0x7d

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
